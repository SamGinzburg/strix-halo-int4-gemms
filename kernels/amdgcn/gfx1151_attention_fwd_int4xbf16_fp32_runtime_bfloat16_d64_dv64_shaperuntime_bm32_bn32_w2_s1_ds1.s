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
	s_load_b128 s[52:55], s[0:1], 0x4c
	s_load_b32 s75, s[0:1], 0x60
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
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v9, 8, v2
	v_or_b32_e32 v10, 10, v2
	v_or_b32_e32 v11, 12, v2
	v_or_b32_e32 v12, 14, v2
	v_or_b32_e32 v13, 16, v2
	v_or_b32_e32 v14, 18, v2
	v_or_b32_e32 v15, 20, v2
	v_or_b32_e32 v16, 22, v2
	v_or_b32_e32 v17, 24, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s24
	s_bitcmp1_b32 s24, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s75, v2, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s52
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[27:28], null, s75, 18, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s54
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s75, 20, v[66:67]
	v_mad_u64_u32 v[25:26], null, s75, 14, v[66:67]
	v_lshl_add_u32 v211, s75, 1, v66
	v_mad_u64_u32 v[29:30], null, s75, 22, v[66:67]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 26, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v19, 28, v2
	v_or_b32_e32 v20, 30, v2
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v5, s22, v2
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	v_lshl_add_u32 v65, s75, 2, v66
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[133:134], null, s75, 6, v[66:67]
	v_mad_u64_u32 v[30:31], null, s75, 24, v[66:67]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v3, off
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v8, off offset:8
	scratch_store_b32 off, v9, off offset:12
	scratch_store_b32 off, v10, off offset:16
	scratch_store_b32 off, v11, off offset:20
	scratch_store_b32 off, v12, off offset:24
	scratch_store_b32 off, v13, off offset:28
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s22, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s75, 26, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[134:135], null, s75, 10, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s75, 28, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[135:136], null, s75, 12, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[77:78], null, s75, 30, v[66:67]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s22, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s33, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s53
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v116, s75, 3, v66
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v136, s75, 4, v66
	v_mov_b32_e32 v24, v25
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_clause 0x7                            ; 36-byte Folded Spill
	scratch_store_b32 off, v14, off offset:32
	scratch_store_b32 off, v15, off offset:36
	scratch_store_b32 off, v16, off offset:40
	scratch_store_b32 off, v17, off offset:44
	scratch_store_b32 off, v18, off offset:48
	scratch_store_b32 off, v19, off offset:52
	scratch_store_b32 off, v20, off offset:56
	scratch_store_b64 off, v[24:25], off offset:60
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s19, s75, v33
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s22, v8
	v_or_b32_e32 v9, s22, v9
	v_or_b32_e32 v10, s22, v10
	v_or_b32_e32 v11, s22, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s22, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s21, s54, v9
	v_cmp_gt_i32_e64 s23, s54, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s22, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s54, v11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s22, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s54, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s22, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s52, s53
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s2
	v_mov_b32_e32 v26, v27
	s_sub_i32 s4, s4, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[26:27], off offset:68 ; 8-byte Folded Spill
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s4, s9, s4
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s54, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s4, s8, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s54, v6
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s5, s2, s75
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s54, v7
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s5, v66
	v_add_nc_u32_e32 v2, s5, v211
	v_add_nc_u32_e32 v26, s5, v27
	v_mov_b32_e32 v27, v28
	v_add_nc_u32_e32 v3, s5, v65
	v_add_nc_u32_e32 v4, s5, v133
	v_add_nc_u32_e32 v21, s5, v116
	v_add_nc_u32_e32 v22, s5, v134
	scratch_store_b64 off, v[27:28], off offset:76 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v27, s5, v28
	v_dual_mov_b32 v28, v29 :: v_dual_add_nc_u32 v23, s5, v135
	v_add_nc_u32_e32 v24, s5, v25
	v_add_nc_u32_e32 v25, s5, v136
	v_add_nc_u32_e32 v31, s5, v76
	scratch_store_b64 off, v[28:29], off offset:84 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v28, s5, v29
	v_dual_mov_b32 v29, v30 :: v_dual_add_nc_u32 v32, s5, v77
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s54, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s22, v12
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[29:30], off offset:92 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v29, s5, v30
	v_add_nc_u32_e32 v30, s5, v75
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s54, v5
	v_cmp_gt_i32_e64 s14, s54, v15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s22, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s54, v16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s22, v18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s54, v12
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s22, v19
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s54, v17
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s22, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s21, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s54, v18
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s23, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s54, v19
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s19
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
	s_and_b32 vcc_lo, s12, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s20, s54, v20
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s19
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
	s_and_b32 vcc_lo, s11, s19
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
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
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
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s55, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	v_writelane_b32 v255, s21, 5
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v35, 0x110, v0
	v_xor_b32_e32 v36, 0x198, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v39
	v_writelane_b32 v255, s23, 6
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s23, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v138, 0, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s5, s23
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v139, 0, v2
	v_writelane_b32 v255, s10, 7
	v_add_nc_u32_e32 v140, 0, v35
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v38, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v141, 0, v36
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 27
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, v37, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s6, s5
	s_mov_b32 s85, 0
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s86, s5, 0xffffffe0
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s5, s24, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
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
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s5, v38
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s22, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s21, s22, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, s27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s21, s21, s27
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s55, s6
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s21, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s85, s7, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s86, s86, s6
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v3, 0, 1, s28
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s6, 1, v3
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v3, s22, v2
	v_writelane_b32 v255, s6, 8
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s22, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 32
	s_min_i32 s6, s55, s6
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
	s_min_i32 s86, s86, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x38
	s_load_b32 s74, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v68, 16, v0
	v_lshlrev_b32_e32 v35, 1, v0
	v_add_nc_u32_e32 v67, s2, v2
	v_cmp_gt_i32_e64 s2, s54, v3
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s85, s86
	v_cmp_eq_u32_e64 s40, 0, v68
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[56:63], s[0:1], 0x8
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v21, 1, v67
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v42, s27, v5
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v43, s27, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_lshrrev_b32_e32 v6, 2, v68
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v159, 4, v68
	v_subrev_nc_u32_e32 v68, s25, v42
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v44, s27, v7
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v79, s27, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v67, off offset:292
	scratch_store_b32 off, v68, off offset:164
	v_subrev_nc_u32_e32 v68, s25, v43
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v45, s27, v8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s61, 0xffff
	s_mov_b32 s36, s60
	scratch_store_b32 off, v68, off offset:168 ; 4-byte Folded Spill
	buffer_load_u16 v33, v21, s[36:39], 0 offen
	v_subrev_nc_u32_e32 v68, s25, v44
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v46, s27, v9
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v47, s27, v10
	scratch_store_b32 off, v68, off offset:172 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v45
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v48, s27, v11
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v67, s27, v12
	scratch_store_b32 off, v68, off offset:176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v46
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v69, s27, v13
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v70, s27, v14
	scratch_store_b32 off, v68, off offset:180 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v47
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v71, s27, v15
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v72, s27, v16
	scratch_store_b32 off, v68, off offset:184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v48
	v_dual_mov_b32 v12, 0x7632 :: v_dual_add_nc_u32 v73, s27, v17
	v_dual_mov_b32 v11, 0x5410 :: v_dual_add_nc_u32 v74, s27, v18
	scratch_store_b32 off, v68, off offset:188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v67
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v78, s27, v19
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_lshlrev_b32 v9, 2, v0
	scratch_store_b32 off, v68, off offset:192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v69
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v25, v17
	v_mov_b32_e32 v27, v17
	scratch_store_b32 off, v68, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v70
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v31, v17
	v_lshl_or_b32 v177, v1, 8, v9
	v_mov_b32_e32 v9, v17
	scratch_store_b32 off, v68, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v71
	v_cndmask_b32_e64 v40, 0x1054, v11, s40
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v15, v17
	scratch_store_b32 off, v68, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v72
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x6c
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v2, 5, v1
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v3, 24, v35
	scratch_store_b32 off, v68, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v73
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v4, 4, v39
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_lshl_add_u32 v158, v1, 1, 0
	scratch_store_b32 off, v68, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v74
	v_mov_b32_e32 v1, v17
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_and_b32 v5, 60, v35
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_and_b32 v35, 1, v0
	scratch_store_b32 off, v68, off offset:216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v78
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_and_b32 v7, 14, v0
	v_cndmask_b32_e64 v8, 0x104, 0, vcc_lo
	v_or3_b32 v37, v2, v4, v3
	scratch_store_b32 off, v68, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v68, s25, v79
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v68, off offset:224
	scratch_store_b32 off, v42, off offset:100
	v_add_nc_u32_e32 v42, s26, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:228
	scratch_store_b32 off, v43, off offset:104
	v_add_nc_u32_e32 v42, s26, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:232
	scratch_store_b32 off, v44, off offset:108
	v_add_nc_u32_e32 v42, s26, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:236
	scratch_store_b32 off, v45, off offset:112
	v_add_nc_u32_e32 v42, s26, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:240
	scratch_store_b32 off, v46, off offset:116
	v_add_nc_u32_e32 v42, s26, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:244
	scratch_store_b32 off, v47, off offset:120
	v_add_nc_u32_e32 v42, s26, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:248
	scratch_store_b32 off, v48, off offset:124
	v_add_nc_u32_e32 v42, s26, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:252
	scratch_store_b32 off, v67, off offset:128
	v_add_nc_u32_e32 v42, s26, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:256
	scratch_store_b32 off, v69, off offset:132
	v_add_nc_u32_e32 v42, s26, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:260
	scratch_store_b32 off, v70, off offset:136
	v_add_nc_u32_e32 v42, s26, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:264
	scratch_store_b32 off, v71, off offset:140
	v_add_nc_u32_e32 v42, s26, v71
	v_or_b32_e32 v176, v2, v3
	v_mov_b32_e32 v3, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:268
	scratch_store_b32 off, v72, off offset:144
	v_add_nc_u32_e32 v42, s26, v72
	v_lshrrev_b32_e32 v10, 4, v39
	v_xor_b32_e32 v36, v8, v5
	v_lshl_or_b32 v38, v35, 1, v6
	v_mul_u32_u24_e32 v39, 0x44, v7
	v_cndmask_b32_e64 v41, 0x3276, v12, s40
	v_mov_b32_e32 v5, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:272
	scratch_store_b32 off, v73, off offset:148
	v_add_nc_u32_e32 v42, s26, v73
	v_lshrrev_b32_e32 v87, 5, v0
	v_mov_b16_e32 v34.l, 0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v88, 31, v0
	v_mov_b32_e32 v7, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:276
	scratch_store_b32 off, v74, off offset:152
	v_add_nc_u32_e32 v42, s26, v74
	v_or3_b32 v212, v38, v39, v87
	v_lshl_or_b32 v39, v40, 8, v40
	v_lshl_or_b32 v40, v41, 8, v41
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s25, s28, 0x3fb8aa3b
	s_load_b32 s8, s[0:1], 0x7c
	v_lshl_or_b32 v178, v88, 2, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v42, off offset:280
	scratch_store_b32 off, v78, off offset:156
	v_mov_b32_e32 v18, v17
	scratch_store_b32 off, v79, off offset:160 ; 4-byte Folded Spill
	v_lshl_or_b32 v213, v35, 6, v36
	v_add_nc_u32_e32 v35, 0, v37
	v_xor_b32_e32 v80, 0x88, v178
	v_xor_b32_e32 v81, 0x110, v178
	v_xor_b32_e32 v82, 0x198, v178
	v_xor_b32_e32 v83, 0x220, v178
	v_xor_b32_e32 v84, 0x2a8, v178
	v_xor_b32_e32 v85, 0x330, v178
	v_xad_u32 v36, v37, 8, 0
	v_xad_u32 v38, v37, 16, 0
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v39, 0x540054, v39
	v_xad_u32 v37, v37, 24, 0
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v239, 0, v81
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v241, 0, v83
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v243, 0, v85
	v_add_nc_u32_e32 v238, 0, v80
	v_add_nc_u32_e32 v240, 0, v82
	v_add_nc_u32_e32 v242, 0, v84
	s_xor_b32 s35, s3, s52
	s_mul_f32 s34, s5, 0x4f7ffffe
	v_xor_b32_e32 v86, 0x3b8, v178
	s_ashr_i32 s1, s4, 31
	s_ashr_i32 s4, s35, 31
	s_cvt_u32_f32 s6, s34
	s_xor_b32 s5, s33, s4
	v_add_nc_u32_e32 v244, 0, v86
	s_sub_i32 s24, 0, s23
	s_sub_i32 s4, s5, s4
	s_mul_i32 s24, s24, s6
	s_mul_i32 s5, s4, s52
	v_xor_b32_e32 v41, 8, v176
	s_sub_i32 s3, s3, s5
	s_mul_hi_u32 s5, s6, s24
	s_abs_i32 s21, s3
	s_add_i32 s6, s6, s5
	s_ashr_i32 s5, s3, 31
	s_mul_hi_u32 s6, s21, s6
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s5, s1
	s_mul_i32 s5, s6, s23
	v_xor_b32_e32 v43, 24, v176
	s_sub_i32 s5, s21, s5
	s_add_i32 s21, s6, 1
	s_sub_i32 s24, s5, s23
	s_cmp_ge_u32 s5, s23
	v_xor_b32_e32 v44, 4, v177
	v_xor_b32_e32 v45, 8, v177
	v_xor_b32_e32 v46, 12, v177
	v_xor_b32_e32 v47, 16, v177
	v_xor_b32_e32 v48, 20, v177
	v_xor_b32_e32 v67, 24, v177
	v_xor_b32_e32 v68, 28, v177
	v_xor_b32_e32 v69, 32, v177
	v_xor_b32_e32 v70, 36, v177
	v_xor_b32_e32 v71, 40, v177
	v_xor_b32_e32 v72, 44, v177
	s_cselect_b32 s6, s21, s6
	s_cselect_b32 s5, s24, s5
	s_add_i32 s21, s6, 1
	s_cmp_ge_u32 s5, s23
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v221, 0, v44
	v_dual_mov_b32 v26, v17 :: v_dual_add_nc_u32 v223, 0, v46
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v225, 0, v47
	v_dual_mov_b32 v30, v17 :: v_dual_add_nc_u32 v227, 0, v67
	v_dual_mov_b32 v32, v17 :: v_dual_add_nc_u32 v229, 0, v69
	v_dual_mov_b32 v10, v17 :: v_dual_add_nc_u32 v231, 0, v71
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s7, s4, s53
	v_xor_b32_e32 v73, 48, v177
	v_xor_b32_e32 v74, 52, v177
	v_add_nc_u32_e32 v218, 0, v41
	v_add_nc_u32_e32 v220, 0, v43
	v_add_nc_u32_e32 v222, 0, v45
	v_add_nc_u32_e32 v226, 0, v48
	v_add_nc_u32_e32 v228, 0, v68
	v_add_nc_u32_e32 v230, 0, v70
	v_add_nc_u32_e32 v232, 0, v72
	v_xor_b32_e32 v41, 8, v212
	v_xor_b32_e32 v43, 24, v212
	v_xor_b32_e32 v44, 32, v212
	v_xor_b32_e32 v45, 40, v212
	v_xor_b32_e32 v46, 48, v212
	v_xor_b32_e32 v47, 56, v212
	v_xor_b32_e32 v48, 0x208, v213
	v_xor_b32_e32 v67, 0x410, v213
	v_xor_b32_e32 v68, 0x618, v213
	v_xor_b32_e32 v69, 0x820, v213
	v_xor_b32_e32 v70, 0xa28, v213
	v_xor_b32_e32 v71, 0xc30, v213
	v_xor_b32_e32 v72, 0xe38, v213
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s22, s31, s22
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s4, s4, s29
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s21, s6
	s_add_i32 s53, s4, s22
	s_xor_b32 s4, s5, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s74, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s4, s1
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v168, 0xff800000
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_mov_b32 v172, 0xff800000
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_mov_b32 v170, 0xff800000
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_mov_b32 v174, 0xff800000
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_mov_b32 v182, 0xff800000
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_mov_b32 v130, 0xff800000
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_mov_b32 v124, 0xff800000
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_mov_b32 v252, 0xff800000
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_mov_b32 v246, 0xff800000
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_mov_b32 v236, 0xff800000
	v_dual_mov_b32 v247, 0xff800000 :: v_dual_mov_b32 v224, 0xff800000
	v_dual_mov_b32 v245, 0xff800000 :: v_dual_mov_b32 v216, 0xff800000
	v_dual_mov_b32 v217, 0xff800000 :: v_dual_mov_b32 v214, 0xff800000
	v_dual_mov_b32 v215, 0xff800000 :: v_dual_mov_b32 v202, 0xff800000
	v_dual_mov_b32 v12, v17 :: v_dual_add_nc_u32 v233, 0, v73
	v_add_nc_u32_e32 v234, 0, v74
	v_add_nc_u32_e32 v248, 0, v41
	v_add_nc_u32_e32 v250, 0, v43
	v_add_nc_u32_e32 v253, 0, v45
	v_add_nc_u32_e32 v254, 0, v46
	v_add_nc_u32_e32 v114, 0, v47
	v_add_nc_u32_e32 v137, 0, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v33.l
	v_and_b32_e32 v40, 0x760076, v40
	v_add_nc_u32_e32 v115, 0, v67
	v_add_nc_u32_e32 v132, 0, v68
	v_add_nc_u32_e32 v117, 0, v69
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v131, s25, v34
	v_add_nc_u32_e32 v42, s26, v78
	v_xor_b32_e32 v78, 56, v177
	v_dual_mov_b32 v14, v17 :: v_dual_add_nc_u32 v251, 0, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v180, v131
	v_mov_b32_e32 v179, v131
	scratch_store_b32 off, v42, off offset:284 ; 4-byte Folded Spill
	v_dual_mov_b32 v181, v131 :: v_dual_add_nc_u32 v42, s26, v79
	v_xor_b32_e32 v79, 60, v177
	v_dual_mov_b32 v16, v17 :: v_dual_add_nc_u32 v235, 0, v78
	scratch_store_b32 off, v42, off offset:288 ; 4-byte Folded Spill
	v_xor_b32_e32 v42, 16, v176
	v_add_nc_u32_e32 v237, 0, v79
	ds_load_b64 v[78:79], v35
	ds_load_b64 v[80:81], v36
	ds_load_b64 v[82:83], v38
	ds_load_b64 v[84:85], v37
	v_mul_lo_u32 v35, s31, v87
	v_lshl_or_b32 v36, v39, 4, v39
	v_dual_mov_b32 v22, v17 :: v_dual_add_nc_u32 v219, 0, v42
	v_xor_b32_e32 v42, 16, v212
	v_lshl_or_b32 v37, v40, 4, v40
	v_mov_b32_e32 v8, v17
	v_add_nc_u32_e32 v118, 0, v70
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[86:87], null, s8, v88, v[35:36]
	v_add_nc_u32_e32 v249, 0, v42
	v_add_nc_u32_e32 v119, 0, v71
	v_add_nc_u32_e32 v120, 0, v72
	v_and_b32_e32 v122, 0x5040504, v36
	v_and_b32_e32 v123, 0x7060706, v37
	s_mov_b32 s83, 0x31027000
	v_mad_u64_u32 v[87:88], null, s31, 6, v[86:87]
	v_lshl_add_u32 v125, s31, 1, v86
	v_lshl_add_u32 v126, s31, 2, v86
	v_lshl_add_u32 v127, s31, 3, v86
	v_lshl_add_u32 v128, s31, 4, v86
	s_mov_b32 s82, 0x7ffffffe
	s_mov_b32 s64, 0
	v_mad_u64_u32 v[88:89], null, s31, 10, v[86:87]
	v_mad_u64_u32 v[89:90], null, s31, 12, v[86:87]
	v_mad_u64_u32 v[90:91], null, s31, 14, v[86:87]
	v_mad_u64_u32 v[91:92], null, s31, 18, v[86:87]
	v_mad_u64_u32 v[92:93], null, s31, 20, v[86:87]
	v_mad_u64_u32 v[93:94], null, s31, 22, v[86:87]
	v_mad_u64_u32 v[94:95], null, s31, 24, v[86:87]
	v_mad_u64_u32 v[95:96], null, s31, 26, v[86:87]
	v_mad_u64_u32 v[96:97], null, s31, 28, v[86:87]
	v_mad_u64_u32 v[97:98], null, s31, 30, v[86:87]
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s30
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s88, s1, s7
	s_mov_b32 s87, 0x76543210
	s_mov_b32 s65, s64
	s_mov_b32 s66, s64
	s_mov_b32 s67, s64
	s_mov_b32 s68, s64
	s_mov_b32 s69, s64
	s_mov_b32 s70, s64
	s_mov_b32 s71, s64
	s_mov_b32 s80, s62
	s_mov_b32 s60, s58
	s_mov_b32 s58, s82
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s10, s8
	s_and_b32 s81, s63, 0xffff
	s_and_b32 s77, s77, 0xffff
	s_and_b32 s61, s59, 0xffff
	s_mov_b32 s59, s83
	s_add_i32 s53, s53, s3
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s88, s88, s55
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	s_mul_i32 s1, s85, s10
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v187, v42
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s53, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v86, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v41, v44
	v_cvt_f32_i32_e32 v44, v35
	v_cvt_f32_i32_e32 v35, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v38, s1, v125, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v183, v45
	v_cvt_f32_i32_e32 v45, v34
	v_cvt_f32_i32_e32 v34, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v39, s1, v126, 2
	v_add_lshl_u32 v71, s1, v128, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v186, v43
	v_cvt_f32_i32_e32 v43, v36
	v_cvt_f32_i32_e32 v36, v33
	v_cvt_f32_i32_e32 v33, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s1, v87, 2
	v_add_lshl_u32 v72, s1, v91, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v113, v46
	v_cvt_f32_i32_e32 v46, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v48, s1, v127, 2
	v_add_lshl_u32 v68, s1, v88, 2
	v_add_lshl_u32 v69, s1, v89, 2
	v_add_lshl_u32 v70, s1, v90, 2
	v_add_lshl_u32 v73, s1, v92, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s101
	v_add_lshl_u32 v74, s1, v93, 2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s100
	v_add_lshl_u32 v142, s1, v94, 2
	v_add_lshl_u32 v143, s1, v95, 2
	v_add_lshl_u32 v144, s1, v96, 2
	v_add_lshl_u32 v145, s1, v97, 2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s96
	v_cndmask_b32_e64 v71, 0x80000000, v71, s103
	s_mov_b32 s78, s82
	s_mov_b32 s79, s83
	v_cndmask_b32_e64 v40, 0x80000000, v40, s93
	v_cndmask_b32_e64 v72, 0x80000000, v72, s102
	v_cndmask_b32_e64 v48, 0x80000000, v48, s92
	v_cndmask_b32_e64 v68, 0x80000000, v68, s90
	v_cndmask_b32_e64 v69, 0x80000000, v69, s89
	v_cndmask_b32_e64 v70, 0x80000000, v70, s63
	v_cndmask_b32_e64 v73, 0x80000000, v73, s99
	s_clause 0x7
	buffer_load_b32 v37, v37, s[76:79], 0 offen
	buffer_load_b32 v38, v38, s[76:79], 0 offen
	buffer_load_b32 v39, v39, s[76:79], 0 offen
	buffer_load_b32 v40, v40, s[76:79], 0 offen
	buffer_load_b32 v48, v48, s[76:79], 0 offen
	buffer_load_b32 v68, v68, s[76:79], 0 offen
	buffer_load_b32 v69, v69, s[76:79], 0 offen
	buffer_load_b32 v70, v70, s[76:79], 0 offen
	v_cndmask_b32_e64 v74, 0x80000000, v74, s98
	v_cndmask_b32_e64 v142, 0x80000000, v142, s97
	v_cndmask_b32_e64 v143, 0x80000000, v143, s95
	v_cndmask_b32_e64 v144, 0x80000000, v144, s94
	v_cndmask_b32_e64 v145, 0x80000000, v145, s91
	s_clause 0x7
	buffer_load_b32 v71, v71, s[76:79], 0 offen
	buffer_load_b32 v72, v72, s[76:79], 0 offen
	buffer_load_b32 v73, v73, s[76:79], 0 offen
	buffer_load_b32 v74, v74, s[76:79], 0 offen
	buffer_load_b32 v142, v142, s[76:79], 0 offen
	buffer_load_b32 v143, v143, s[76:79], 0 offen
	buffer_load_b32 v144, v144, s[76:79], 0 offen
	buffer_load_b32 v145, v145, s[76:79], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v67, v131, v67
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v146.h, v185.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v185.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v46, v181, v46 :: v_dual_mul_f32 v45, v131, v45
	v_mul_f32_e32 v42, v181, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v146.l, v185.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v180, v47
	v_dual_mul_f32 v43, v180, v43 :: v_dual_mul_f32 v36, v131, v36
	v_mul_f32_e32 v35, v179, v35
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v185.h, v98.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s4, s85, 1
	s_or_b32 s5, s85, 2
	s_or_b32 s7, s85, 3
	s_or_b32 s21, s85, 4
	s_or_b32 s84, s85, 5
	s_or_b32 s8, s85, 6
	s_or_b32 vcc_hi, s85, 7
	s_or_b32 s104, s85, 8
	s_or_b32 s79, s85, 24
	s_or_b32 s78, s85, 25
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v179, v44
	v_dual_mul_f32 v34, v180, v34 :: v_dual_mul_f32 v33, v181, v33
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v198, 0xff800000, v37, s101
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v37, 0, v213
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v199, 0xff800000, v38, s100
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s96
	s_waitcnt vmcnt(11)
	v_cndmask_b32_e64 v188, 0xff800000, v48, s92
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v48, 0, v177
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v201, 0xff800000, v71, s103
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v200, 0xff800000, v72, s102
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v192, 0xff800000, v73, s99
	v_cndmask_b32_e64 v40, 0xff800000, v40, s93
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v193, 0xff800000, v74, s98
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v194, 0xff800000, v142, s97
	v_cndmask_b32_e64 v189, 0xff800000, v68, s90
	v_cndmask_b32_e64 v190, 0xff800000, v69, s89
	v_cndmask_b32_e64 v191, 0xff800000, v70, s63
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v195, 0xff800000, v143, s95
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v196, 0xff800000, v144, s94
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v197, 0xff800000, v145, s91
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v37, v198, v201 offset1:32
	ds_store_2addr_b32 v137, v199, v200 offset1:32
	ds_store_2addr_b32 v115, v39, v192 offset1:32
	ds_store_2addr_b32 v132, v40, v193 offset1:32
	ds_store_2addr_b32 v117, v188, v194 offset1:32
	ds_store_2addr_b32 v118, v189, v195 offset1:32
	ds_store_2addr_b32 v119, v190, v196 offset1:32
	ds_store_2addr_b32 v120, v191, v197 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v38, v48
	ds_load_b32 v68, v221
	ds_load_b32 v69, v222
	ds_load_b32 v70, v226
	ds_load_b32 v71, v227
	ds_load_b32 v72, v228
	ds_load_b32 v203, v223
	ds_load_b32 v74, v225
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v73, v179, v187
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v201
	v_cmp_neq_f32_e64 s1, 0xff800000, v198
	v_cmp_neq_f32_e64 s22, 0xff800000, v200
	v_cmp_neq_f32_e64 s3, 0xff800000, v199
	v_cmp_neq_f32_e64 s24, 0xff800000, v193
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s25, s103, vcc_lo
	s_and_b32 s33, s101, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s23, s102, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v192
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v39
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v68, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v69
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v70, 0x3fb8aa3b, v70 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v71
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v67, v146
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v67.h, v112.l
	v_mov_b16_e64 v67.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v74, 0x3fb8aa3b, v74
	v_mul_f32_e32 v40, 0x3fb8aa3b, v203
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s27, s99, s22
	s_and_b32 s36, s96, vcc_lo
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v68, v73, v67 :: v_dual_mul_f32 v73, v180, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v110.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s100, s3
	s_and_b32 s26, s98, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v194
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s93, s1
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v69, v73, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v73, v131, v183
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v188
	v_cmp_neq_f32_e64 s38, 0xff800000, v195
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s24, s97, s31
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v189
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v74, v73, v67 :: v_dual_mul_f32 v73, v179, v113
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v108.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s92, s3
	s_and_b32 s22, s95, s38
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v196
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s90, s28
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v70, v73, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v67.h, v106.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v190
	v_cmp_neq_f32_e64 s40, 0xff800000, v197
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s1, s94, s39
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v191
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v71, v47, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v47.h, v105.l
	v_mov_b16_e64 v47.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v72
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s89, s29
	s_and_b32 vcc_lo, s91, s40
	v_cndmask_b32_e64 v39, 0, 1, s29
	s_and_b32 s28, s63, s37
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v67, v46, v47
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b32 v47, v230
	ds_load_b32 v72, v231
	ds_load_b32 v73, v232
	ds_load_b32 v105, v233
	ds_load_b32 v106, v234
	ds_load_b32 v108, v235
	ds_load_b32 v109, v237
	ds_load_b32 v110, v229
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v46.h, v111.l
	v_mov_b16_e64 v46.l, v185.l
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s103, s85, 9
	s_or_b32 s102, s85, 10
	s_or_b32 s101, s85, 11
	s_or_b32 s100, s85, 12
	s_or_b32 s99, s85, 13
	s_or_b32 s98, s85, 14
	s_or_b32 s97, s85, 15
	s_or_b32 s96, s85, 16
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s95, s85, 17
	s_or_b32 s94, s85, 18
	s_or_b32 s93, s85, 19
	s_or_b32 s92, s85, 20
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v45, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v45.h, v107.l
	v_mov_b16_e64 v45.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v72
	v_mul_f32_e32 v72, 0x3fb8aa3b, v108
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s91, s85, 21
	s_or_b32 s90, s85, 22
	s_or_b32 s89, s85, 23
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v46, v44, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v44.h, v104.l
	v_mov_b16_e64 v44.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v73
	v_mul_f32_e32 v73, 0x3fb8aa3b, v109
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s63, s85, 26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v43, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v43.h, v103.l
	v_mov_b16_e64 v43.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v105
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v44, v42, v43
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v42.h, v102.l
	v_mov_b16_e64 v42.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v43, v36, v42
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v36.h, v101.l
	v_mov_b16_e64 v36.l, v185.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v42, 0x3fb8aa3b, v106
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v42, v35, v36
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v35.h, v100.l
	v_mov_b16_e64 v35.l, v185.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v72, v34, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v99.l
	v_mov_b16_e64 v34.l, v185.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s30
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v73, v33, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s25
	v_cndmask_b32_e64 v34, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.h, 8, v34.l
	v_add_nc_u32_e32 v34, 0, v178
	v_or_b16 v33.h, v35.l, v33.h
	ds_store_b16 v34, v33
	v_cndmask_b32_e64 v34, 0, 1, s27
	v_cndmask_b32_e64 v35, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s36
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s26
	v_lshlrev_b16 v34.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v34.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s24
	v_lshlrev_b16 v34.h, 8, v35.l
	v_cndmask_b32_e64 v35, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v34.h, v36.l, v34.h
	v_cndmask_b32_e64 v36, 0, 1, s31
	v_lshlrev_b16 v35.l, 8, v35.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s1
	v_lshlrev_b16 v35.h, 8, v36.l
	v_cndmask_b32_e64 v36, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v35.h, v39.l, v35.h
	v_cndmask_b32_e64 v39, 0, 1, s28
	v_lshlrev_b16 v36.l, 8, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v36.l, v39.l, v36.l
	ds_store_b16_d16_hi v238, v33
	ds_store_b16 v239, v33
	ds_store_b16 v240, v34
	ds_store_b16_d16_hi v241, v34
	ds_store_b16 v242, v35
	ds_store_b16_d16_hi v243, v35
	ds_store_b16 v244, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v249
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v250 offset:64
	ds_load_u8_d16 v34, v249 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v248 offset:64
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v181, v41 :: v_dual_add_nc_u32 v36, 0, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v40, v39, v185
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v35, v36 offset:64
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s3, 1, v33.l
	ds_load_u8_d16 v33, v248
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s3
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v33.l
	ds_load_u8_d16 v33, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v68, s50
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s51, 1, v33.l
	ds_load_u8_d16 v33, v254
	ds_load_u8_d16_hi v35, v114 offset:64
	ds_load_u8_d16 v36, v254 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v253 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v33.l
	ds_load_u8_d16 v33, v253
	ds_load_u8_d16 v39, v251 offset:64
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s48, 1, v33.l
	ds_load_u8_d16 v33, v251
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v70, s48
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	v_cmp_eq_u16_e64 s42, 1, v33.l
	v_and_b16 v33.l, 1, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v45, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v38, s51
	v_cndmask_b32_e64 v38, 0xff800000, v74, s46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v190, 0xff800000, v46, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v33.l
	v_and_b16 v33.l, 1, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, 0xff800000, v47, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v73, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v72, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v35.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v42, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v33.l
	ds_load_u8_d16 v33, v250
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v42.h, v185.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, 0xff800000, v43, s43
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s52, 1, v33.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v68
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v40, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v98, v38, v41
	v_max3_f32 v35, v33, v69, v35
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v39.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v71, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v192, v190, v191
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v44, s41
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[43:44], null, s62, s74, v[0:1]
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s62, s85, 27
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v188, v189, v186
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v36, v33, v36, v187
.Ltmp8:
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v33, v114
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v48, v34
	ds_store_b32 v221, v68
	ds_store_b32 v222, v69
	ds_store_b32 v223, v98
	ds_store_b32 v225, v38
	ds_store_b32 v226, v41
	ds_store_b32 v227, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v67, s47
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v39, v40, v193
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v228, v40
	ds_store_b32 v229, v193
	ds_store_b32 v230, v192
	ds_store_b32 v231, v190
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v35, v33, v36
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v185.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v232, v191
	ds_store_b32 v233, v188
	ds_store_b32 v234, v189
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, s87, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v235, v186
	ds_store_b32 v237, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v183, v184, v33, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v185.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v68, v183
	v_sub_f32_e32 v34, v34, v183
	v_sub_f32_e32 v39, v39, v183
	v_sub_f32_e32 v38, v38, v183
	v_sub_f32_e32 v40, v40, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
	v_cndmask_b32_e64 v34, 0, v34, s51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s45
	v_cndmask_b32_e64 v38, 0, v38, s46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v40, 0, v40, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s50, v33, v33
	v_cmp_o_f32_e64 s51, v34, v34
	v_cmp_o_f32_e64 s46, v38, v38
	v_cmp_o_f32_e64 s45, v39, v39
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_mov_b16_e64 v35.h, v185.l
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v33.h, s50
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s51
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s51, s85, 30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v35, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v35, v122
	v_perm_b32 v34, v34, v35, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v98, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s52
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s52, s85, 28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s50, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v35, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v69, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v36.h
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v36, v36, v42, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v35.h, s50
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s50, s85, 29
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.l, 0x7fff, v36.h, s3
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s3, s85, 31
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s85, s55
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s4, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v42, s87, 0xfedcba98 op_sel:[1,0]
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s5, s55
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s7, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v36, v42, v122
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s21, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v36, v36, v42, v123
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s84, s55
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v42, s74, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s8, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 vcc_hi, s55
	v_add_nc_u32_e32 v44, s74, v42
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s104, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s103, s55
	v_add_nc_u32_e32 v45, s74, v44
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s102, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s101, s55
	v_add_nc_u32_e32 v46, s74, v45
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s100, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s99, s55
	v_add_nc_u32_e32 v47, s74, v46
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s98, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s97, s55
	v_add_nc_u32_e32 v48, s74, v47
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s96, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v47, 1, v47
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s95, s55
	v_add_nc_u32_e32 v67, s74, v48
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s94, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s93, s55
	v_add_nc_u32_e32 v68, s74, v67
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s92, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s91, s55
	v_add_nc_u32_e32 v69, s74, v68
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s90, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v68
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s89, s55
	v_add_nc_u32_e32 v70, s74, v69
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s79, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v69, 1, v69
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s78, s55
	v_add_nc_u32_e32 v71, s74, v70
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s63, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v70, 1, v70
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s62, s55
	v_add_nc_u32_e32 v72, s74, v71
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s52, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v71, 1, v71
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s50, s55
	v_add_nc_u32_e32 v73, s74, v72
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v72, 1, v72
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s3, s55
	v_add_nc_u32_e32 v74, s74, v73
	s_cselect_b32 s52, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s6
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v73, 1, v73
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s4
	v_add_nc_u32_e32 v98, s74, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s49
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v74, 1, v74
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s54
	v_add_nc_u32_e32 v99, s74, v98
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s21
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v98, 1, v98
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s84
	v_add_nc_u32_e32 v100, s74, v99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s8
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s62, s82
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s63, s83
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v99, 1, v99
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s5
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v43, v43, s[60:63], 0 offen
	buffer_load_u16 v42, v42, s[60:63], 0 offen
	buffer_load_u16 v44, v44, s[60:63], 0 offen
	buffer_load_u16 v45, v45, s[60:63], 0 offen
	buffer_load_u16 v46, v46, s[60:63], 0 offen
	buffer_load_u16 v47, v47, s[60:63], 0 offen
	buffer_load_u16 v48, v48, s[60:63], 0 offen
	buffer_load_u16 v67, v67, s[60:63], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s85, s85, 32
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	s_clause 0x7
	buffer_load_u16 v68, v68, s[60:63], 0 offen
	buffer_load_u16 v69, v69, s[60:63], 0 offen
	buffer_load_u16 v70, v70, s[60:63], 0 offen
	buffer_load_u16 v71, v71, s[60:63], 0 offen
	buffer_load_u16 v72, v72, s[60:63], 0 offen
	buffer_load_u16 v73, v73, s[60:63], 0 offen
	buffer_load_u16 v74, v74, s[60:63], 0 offen
	buffer_load_u16 v142, v98, s[60:63], 0 offen
	v_add_nc_u32_e32 v98, s74, v100
	v_lshlrev_b32_e32 v100, 1, v100
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	v_add_nc_u32_e32 v101, s74, v98
	v_lshlrev_b32_e32 v98, 1, v98
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v100, s3
	v_add_nc_u32_e32 v102, s74, v101
	v_lshlrev_b32_e32 v101, 1, v101
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	v_add_nc_u32_e32 v103, s74, v102
	v_lshlrev_b32_e32 v102, 1, v102
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	v_add_nc_u32_e32 v104, s74, v103
	v_lshlrev_b32_e32 v103, 1, v103
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v102, 0x80000000, v102, s3
	v_add_nc_u32_e32 v105, s74, v104
	v_lshlrev_b32_e32 v104, 1, v104
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v103, 0x80000000, v103, s3
	v_add_nc_u32_e32 v106, s74, v105
	v_lshlrev_b32_e32 v105, 1, v105
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v104, 0x80000000, v104, s3
	v_add_nc_u32_e32 v107, s74, v106
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v106, 1, v106
	v_cndmask_b32_e64 v105, 0x80000000, v105, s3
	s_clause 0x7
	buffer_load_u16 v143, v99, s[60:63], 0 offen
	buffer_load_u16 v144, v100, s[60:63], 0 offen
	buffer_load_u16 v145, v98, s[60:63], 0 offen
	buffer_load_u16 v146, v101, s[60:63], 0 offen
	buffer_load_u16 v147, v102, s[60:63], 0 offen
	buffer_load_u16 v148, v103, s[60:63], 0 offen
	buffer_load_u16 v149, v104, s[60:63], 0 offen
	buffer_load_u16 v150, v105, s[60:63], 0 offen
	v_add_nc_u32_e32 v98, s74, v107
	v_lshlrev_b32_e32 v99, 1, v107
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v100, 0x80000000, v106, s3
	v_add_nc_u32_e32 v101, s74, v98
	v_lshlrev_b32_e32 v98, 1, v98
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v99, 0x80000000, v99, s3
	v_add_nc_u32_e32 v102, s74, v101
	v_lshlrev_b32_e32 v101, 1, v101
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	v_add_nc_u32_e32 v103, s74, v102
	v_lshlrev_b32_e32 v102, 1, v102
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v101, 0x80000000, v101, s3
	v_add_nc_u32_e32 v104, s74, v103
	v_lshlrev_b32_e32 v103, 1, v103
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v102, 0x80000000, v102, s3
	v_lshlrev_b32_e32 v105, 1, v104
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s50
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v104, v104, s74, 1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v105, 0x80000000, v105, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s52
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s85, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v104, 0x80000000, v104, s3
	s_clause 0x7
	buffer_load_u16 v151, v100, s[60:63], 0 offen
	buffer_load_u16 v152, v99, s[60:63], 0 offen
	buffer_load_u16 v153, v98, s[60:63], 0 offen
	buffer_load_u16 v154, v101, s[60:63], 0 offen
	buffer_load_u16 v155, v102, s[60:63], 0 offen
	buffer_load_u16 v156, v103, s[60:63], 0 offen
	buffer_load_u16 v157, v105, s[60:63], 0 offen
	buffer_load_u16 v194, v104, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b32 v[112:113], v37 offset1:32
	ds_load_2addr_b32 v[110:111], v137 offset1:32
	ds_load_2addr_b32 v[108:109], v115 offset1:32
	ds_load_2addr_b32 v[106:107], v132 offset1:32
	ds_load_2addr_b32 v[104:105], v117 offset1:32
	ds_load_2addr_b32 v[102:103], v118 offset1:32
	ds_load_2addr_b32 v[100:101], v119 offset1:32
	ds_load_2addr_b32 v[98:99], v120 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v37, v138, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b16 v37, v43
	s_waitcnt vmcnt(30)
	ds_store_b16 v37, v42 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b16 v37, v44 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b16 v37, v45 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v37, v46 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b16 v37, v47 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b16 v37, v48 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b16 v37, v67 offset:896
	s_waitcnt vmcnt(23)
	ds_store_b16 v37, v68 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v37, v69 offset:1152
	s_waitcnt vmcnt(21)
	ds_store_b16 v37, v70 offset:1280
	s_waitcnt vmcnt(20)
	ds_store_b16 v37, v71 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b16 v37, v72 offset:1536
	s_waitcnt vmcnt(18)
	ds_store_b16 v37, v73 offset:1664
	s_waitcnt vmcnt(17)
	ds_store_b16 v37, v74 offset:1792
	s_waitcnt vmcnt(16)
	ds_store_b16 v37, v142 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v37, v143 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v37, v144 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v37, v145 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v37, v146 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v37, v147 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v37, v148 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v37, v149 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v37, v150 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v37, v151 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v37, v152 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v37, v153 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v37, v154 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v37, v155 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v37, v156 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v37, v157 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v37, v194 offset:3968
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v41, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v185.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v43, v158 offset:608
	ds_load_u16_d16 v42, v158 offset:352
	ds_load_u16_d16 v194, v158
	ds_load_u16_d16 v196, v158 offset:512
	ds_load_u16_d16 v195, v158 offset:256
	ds_load_u16_d16 v197, v158 offset:768
	ds_load_u16_d16 v205, v158 offset:576
	ds_load_u16_d16 v206, v158 offset:832
	ds_load_u16_d16 v198, v158 offset:1024
	ds_load_u16_d16 v207, v158 offset:1088
	ds_load_u16_d16 v199, v158 offset:1280
	ds_load_u16_d16 v208, v158 offset:1344
	ds_load_u16_d16 v200, v158 offset:1536
	ds_load_u16_d16 v201, v158 offset:1792
	ds_load_u16_d16 v209, v158 offset:1600
	ds_load_u16_d16 v203, v158 offset:64
	ds_load_u16_d16 v204, v158 offset:320
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v195, v158 offset:384
	ds_load_u16_d16_hi v196, v158 offset:640
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v205, v158 offset:704
	ds_load_u16_d16_hi v197, v158 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v206, v158 offset:960
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v198, v158 offset:1152
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v207, v158 offset:1216
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v199, v158 offset:1408
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v208, v158 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v200, v158 offset:1664
	ds_load_u16_d16 v210, v158 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v209, v158 offset:1728
	ds_load_u16_d16_hi v201, v158 offset:1920
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	v_mov_b16_e64 v41.h, v185.l
	v_mov_b16_e32 v41.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v38, v41, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s46
	v_permlanex16_b32 v41, v38, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v122
	v_perm_b32 v38, v41, v38, v123
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e64 v41.h, v185.l
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e64 v40.h, v185.l
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s45
	v_permlanex16_b32 v40, v41, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v40, v41, v122
	v_perm_b32 v40, v40, v41, v123
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v184, v183
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v44, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v42, v158 offset:480
	ds_load_u16_d16 v41, v158 offset:96
	ds_load_u16_d16 v142, v158 offset:32
	ds_load_u16_d16 v143, v158 offset:288
	ds_load_u16_d16_hi v194, v158 offset:128
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v44, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v142, v158 offset:160
	ds_load_u16_d16_hi v203, v158 offset:192
	ds_load_u16_d16_hi v41, v158 offset:224
	ds_load_u16_d16 v144, v158 offset:544
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v143, v158 offset:416
	ds_load_u16_d16_hi v204, v158 offset:448
	ds_load_u16_d16 v44, v158 offset:864
	ds_load_u16_d16 v45, v158 offset:1120
	ds_load_u16_d16 v46, v158 offset:1376
	ds_load_u16_d16 v47, v158 offset:1632
	ds_load_u16_d16_hi v210, v158 offset:1984
	ds_load_u16_d16 v184, v158 offset:2048
	ds_load_u16_d16 v150, v158 offset:2112
	ds_load_u16_d16 v48, v158 offset:1888
	ds_load_u16_d16 v145, v158 offset:800
	ds_load_u16_d16 v146, v158 offset:1056
	ds_load_u16_d16 v147, v158 offset:1312
	ds_load_u16_d16 v148, v158 offset:1568
	ds_load_u16_d16 v149, v158 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v144, v158 offset:672
	ds_load_u16_d16_hi v43, v158 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v68
	v_mul_f32_e32 v18, v18, v68
	v_mul_f32_e32 v19, v19, v68
	v_mul_f32_e32 v20, v20, v68
	v_mul_f32_e32 v21, v21, v68
	v_mul_f32_e32 v22, v22, v68
	v_mul_f32_e32 v23, v23, v68
	v_mul_f32_e32 v24, v24, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v145, v158 offset:928
	ds_load_u16_d16_hi v44, v158 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v158 offset:1184
	ds_load_u16_d16_hi v45, v158 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v147, v158 offset:1440
	ds_load_u16_d16_hi v46, v158 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v148, v158 offset:1696
	ds_load_u16_d16_hi v47, v158 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v149, v158 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[194:201], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v48, v158 offset:2016
	ds_load_u16_d16 v151, v158 offset:2368
	ds_load_u16_d16_hi v150, v158 offset:2240
	ds_load_u16_d16 v194, v158 offset:2080
	ds_load_u16_d16 v67, v158 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v68
	v_mul_f32_e32 v26, v26, v68
	v_mul_f32_e32 v27, v27, v68
	v_mul_f32_e32 v28, v28, v68
	v_mul_f32_e32 v29, v29, v68
	v_mul_f32_e32 v30, v30, v68
	v_mul_f32_e32 v31, v31, v68
	v_mul_f32_e32 v32, v32, v68
	v_mul_f32_e32 v9, v9, v68
	v_mul_f32_e32 v10, v10, v68
	v_mul_f32_e32 v11, v11, v68
	v_mul_f32_e32 v12, v12, v68
	v_mul_f32_e32 v13, v13, v68
	v_mul_f32_e32 v14, v14, v68
	v_mul_f32_e32 v15, v15, v68
	v_mul_f32_e32 v16, v16, v68
	v_mul_f32_e32 v1, v1, v68
	v_mul_f32_e32 v2, v2, v68
	v_mul_f32_e32 v3, v3, v68
	v_mul_f32_e32 v4, v4, v68
	v_mul_f32_e32 v5, v5, v68
	v_mul_f32_e32 v6, v6, v68
	v_mul_f32_e32 v7, v7, v68
	v_mul_f32_e32 v8, v8, v68
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[142:149], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[203:210], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v195, v158 offset:2336
	ds_load_u16_d16 v196, v158 offset:2592
	ds_load_u16_d16 v197, v158 offset:2848
	ds_load_u16_d16 v198, v158 offset:3104
	ds_load_u16_d16 v199, v158 offset:3360
	ds_load_u16_d16 v200, v158 offset:3616
	ds_load_u16_d16 v201, v158 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v194, v158 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v67, v158 offset:2272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v192, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v185.l
	v_mov_b16_e64 v35.h, v185.l
	v_mov_b16_e64 v36.h, v185.l
	v_mov_b16_e64 v37.h, v185.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v38.h, v185.l
	v_mov_b16_e64 v39.h, v185.l
	v_mov_b16_e64 v40.h, v185.l
	v_mov_b16_e64 v41.h, v185.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s44
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v193, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s43, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s43
	v_permlanex16_b32 v35, v34, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v122
	v_perm_b32 v34, v35, v34, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v191, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v190, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s40, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s40
	v_permlanex16_b32 v37, v36, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v122
	v_perm_b32 v36, v37, v36, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v189, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v188, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s39, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s39
	v_permlanex16_b32 v39, v38, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v122
	v_perm_b32 v38, v39, v38, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v187, v183
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v186, v183
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v186, v158 offset:2560
	ds_load_u16_d16 v152, v158 offset:2624
	ds_load_u16_d16 v187, v158 offset:2816
	ds_load_u16_d16 v153, v158 offset:2880
	ds_load_u16_d16 v188, v158 offset:3072
	ds_load_u16_d16 v154, v158 offset:3136
	ds_load_u16_d16 v189, v158 offset:3328
	ds_load_u16_d16 v155, v158 offset:3392
	ds_load_u16_d16 v190, v158 offset:3584
	ds_load_u16_d16 v156, v158 offset:3648
	ds_load_u16_d16 v191, v158 offset:3840
	ds_load_u16_d16 v185, v158 offset:2304
	ds_load_u16_d16_hi v184, v158 offset:2176
	ds_load_u16_d16_hi v151, v158 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v186, v158 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v152, v158 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v187, v158 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v153, v158 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v188, v158 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v154, v158 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v189, v158 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v155, v158 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v190, v158 offset:3712
	ds_load_u16_d16 v157, v158 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v156, v158 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v191, v158 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v185, v158 offset:2432
	ds_load_u16_d16 v68, v158 offset:2400
	ds_load_u16_d16 v69, v158 offset:2656
	ds_load_u16_d16 v70, v158 offset:2912
	ds_load_u16_d16 v71, v158 offset:3168
	ds_load_u16_d16 v72, v158 offset:3424
	ds_load_u16_d16 v73, v158 offset:3680
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v157, v158 offset:4032
	ds_load_u16_d16 v74, v158 offset:3936
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v195, v158 offset:2464
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v68, v158 offset:2528
	ds_load_u16_d16_hi v196, v158 offset:2720
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v69, v158 offset:2784
	ds_load_u16_d16_hi v197, v158 offset:2976
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v70, v158 offset:3040
	ds_load_u16_d16_hi v198, v158 offset:3232
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v71, v158 offset:3296
	ds_load_u16_d16_hi v199, v158 offset:3488
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v72, v158 offset:3552
	ds_load_u16_d16_hi v200, v158 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v73, v158 offset:3808
	ds_load_u16_d16_hi v201, v158 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v74, v158 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v39.h
	v_cmp_o_f32_e64 s37, v39, v39
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s37
	v_permlanex16_b32 v41, v40, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v122
	v_perm_b32 v40, v41, v40, v123
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[184:191], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[194:201], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[150:157], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[67:74], v[33:40], v[1:8]
.Ltmp15:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v112, v112 :: v_dual_max_f32 v35, v110, v110
	v_dual_max_f32 v36, v108, v108 :: v_dual_max_f32 v37, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v104, v104
	v_dual_max_f32 v39, v102, v102 :: v_dual_mov_b32 v184, v183
	v_max_f32_e32 v33, v34, v33
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v108 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v104 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v39
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v33, 31
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v39
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v37, v33
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v39 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s41, v34, 31
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v100 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v37
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v35, 31
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v36, v36, v37
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v98 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s38, v36, 31
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v37
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v113, v113
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s37, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	v_max_f32_e32 v38, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v111, v111
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s40, v33, 31
	v_mov_b32_dpp v33, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s40, s40
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s45, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v107 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s45, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s21, v35, 31
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s21, s21
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v38
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v105 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s43, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v35, v35, v35
.Ltmp135:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s43, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s42, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v105, v105
.Ltmp139:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s42, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v35, v36, v35
	v_max_f32_e32 v36, v103, v103
	v_max_f32_e32 v38, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v37, v33
	v_max_f32_e32 v37, v101, v101
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s44, v33, 31
	v_mov_b32_dpp v33, v103 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp144:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s44, s44
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v101 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v99 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp182:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s3, s3
	v_max_f32_e64 v45, s4, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v38
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp186:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s41, s41
	v_max_f32_e64 v46, s5, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v33, v160, v160
.Ltmp192:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s6, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v160, v33, v34
	v_max_f32_e32 v33, v182, v182
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s7, v36, 31
.Ltmp196:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s39, s39
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v48, s7, s7
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v34, v161, v161
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp200:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s37, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v161, v34, v35
	v_max_f32_e32 v34, v130, v130
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v37, 31
.Ltmp202:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s38, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
	v_max_f32_e32 v35, v162, v162
	v_max_f32_e64 v67, s8, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v162, v35, v36 :: v_dual_max_f32 v35, v129, v129
	v_max_f32_e32 v35, v35, v36
	v_max_f32_e32 v36, v163, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v163, v36, v37
	v_max_f32_e32 v36, v124, v124
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v167, v167
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v110, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v167, v37, v38
	v_max_f32_e32 v37, v121, v121
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v164, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v164, v38, v39
	v_max_f32_e32 v38, v252, v252
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v102, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v38, v38, v39 :: v_dual_max_f32 v39, v165, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v165, v39, v40
	v_max_f32_e32 v39, v247, v247
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v166, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s31
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v166, v40, v41
	v_max_f32_e32 v40, v246, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp204:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v98, v98, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v40, v41
	v_max_f32_e32 v41, v168, v168
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp206:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v73, v106, v163 :: v_dual_max_f32 v168, v41, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v245, v245
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp208:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v113, v168
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v41, v41, v42 :: v_dual_max_f32 v42, v172, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v102, v102, v102 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v172, v42, v43
	v_max_f32_e32 v42, v236, v236
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v111, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s25
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v71, v108, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v169, v43, v44
	v_max_f32_e32 v43, v224, v224
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp212:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v72, v109, v169 :: v_dual_max_f32 v43, v43, v44
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v170, v170
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp214:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v170, v44, v45
	v_max_f32_e32 v44, v217, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp216:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v107, v170
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v171, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp218:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v171, v45, v46
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp220:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v216, v216
	v_max_f32_e32 v45, v45, v46
	v_max_f32_e32 v46, v173, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v173, v46, v47
	v_max_f32_e32 v46, v215, v215
	v_max_f32_e32 v46, v46, v47
	v_max_f32_e32 v47, v174, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v174, v47, v48 :: v_dual_max_f32 v47, v214, v214
	v_max_f32_e32 v47, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v48, v175, v175 :: v_dual_sub_f32 v101, v101, v174
	v_dual_max_f32 v175, v48, v67 :: v_dual_max_f32 v48, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v99, v175
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v48, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v112, v160
	v_sub_f32_e32 v104, v104, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v106, v67, -1, -1 op_sel:[1,0]
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v67, 31
.Ltmp225:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v69
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp229:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s36
.Ltmp230:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v71
.Ltmp233:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s35
.Ltmp234:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s35, v67, 31
.Ltmp235:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp237:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s29
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v73, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v71, v71, v73
.Ltmp241:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp243:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s33, v71, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp244:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s34
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s34, v69, 31
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v67, v67, v69
.Ltmp247:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v67, 31
.Ltmp250:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp252:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v73, v73, v73 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp254:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s26
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v73, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v73, v73, v104
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v102, -1, -1 op_sel:[1,0]
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s31, v73, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v102, v102, v104 :: v_dual_sub_f32 v105, v105, v171
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v102, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v69, v69, v71
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v68, -1, -1 op_sel:[1,0]
	v_readlane_b32 s25, v69, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v71
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v68, 31
	v_permlanex16_b32 v68, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp267:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v72
.Ltmp268:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp269:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v70, 31
	v_readlane_b32 s6, v67, 31
.Ltmp271:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v182, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s27
	v_cndmask_b32_e64 v68, 0, v68, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp272:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp273:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp274:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v69, v68, -1, -1 op_sel:[1,0]
.Ltmp276:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v71, v71, v72 :: v_dual_add_f32 v68, v68, v69
.Ltmp277:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v71, 31
	v_readlane_b32 s7, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp279:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v103
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp280:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp283:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v69, 31
.Ltmp285:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v70, v70, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v70, v70, v70 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v70, v70, v70 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp287:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v70, -1, -1 op_sel:[1,0]
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp289:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v70, 31
.Ltmp291:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v182
	v_mov_b32_e32 v182, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp293:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v130
.Ltmp294:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp295:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v67, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v130, v34
	v_mov_b32_e32 v130, v34
.Ltmp296:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp297:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
.Ltmp298:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp299:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v72, v71, -1, -1 op_sel:[1,0]
.Ltmp300:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp302:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v67, s35
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v129, v35
	v_mov_b32_e32 v129, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp303:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v71, 31
.Ltmp304:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v124
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v63, v63, v67, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v124, v36
	v_mov_b32_e32 v124, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v64, v64, v67, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v121, v37
	v_mov_b32_e32 v121, v37
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v252
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v57, v57, v67, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v252, v38 :: v_dual_mov_b32 v252, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v67, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v247, v39
	v_mov_b32_e32 v247, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v246
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v67, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v246, v40 :: v_dual_mov_b32 v246, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v67, s25
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v245, v41
	v_mov_b32_e32 v245, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v236
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v53, v53, v67, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v236, v42 :: v_dual_mov_b32 v236, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v54, v54, v67, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v224, v43 :: v_dual_mov_b32 v224, v43
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v217
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v55, v55, v67, s21
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v217, v44
	v_mov_b32_e32 v217, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v56, v56, v67, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v216, v45 :: v_dual_mov_b32 v216, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v215
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v49, v49, v67, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v215, v46
	v_mov_b32_e32 v215, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v50, v50, v67, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v214, v47 :: v_dual_mov_b32 v214, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v202
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v51, v51, v67, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v67, v202, v48 :: v_dual_mov_b32 v202, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v52, v52, v67, s1
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[41:42], off, off offset:68
	scratch_load_b64 v[42:43], off, off offset:76
	scratch_load_b64 v[43:44], off, off offset:84
	s_add_i32 s62, s85, s88
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s85, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s4, s62, s75
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v105, s71 :: v_dual_add_nc_u32 v34, s4, v211
	v_dual_mov_b32 v102, s68 :: v_dual_add_nc_u32 v35, s4, v65
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off
	scratch_load_b64 v[44:45], off, off offset:60
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v103, s69 :: v_dual_add_nc_u32 v36, s4, v133
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v100, s66 :: v_dual_add_nc_u32 v37, s4, v116
	v_dual_mov_b32 v101, s67 :: v_dual_add_nc_u32 v38, s4, v134
	v_dual_mov_b32 v98, s64 :: v_dual_add_nc_u32 v39, s4, v135
	v_dual_mov_b32 v99, s65 :: v_dual_add_nc_u32 v40, s4, v136
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s4, v76
	v_add_nc_u32_e32 v48, s4, v77
	scratch_load_b64 v[45:46], off, off offset:92 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v46, s4, v75
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v104, s70 :: v_dual_add_nc_u32 v41, s4, v41
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v42, s4, v42
	v_add_nc_u32_e32 v43, s4, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s85, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v44, s4, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v45, s4, v45
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s35, s55, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s4, v66
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
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v218 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[80:81], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v219 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[82:83], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[67:70], v220 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[84:85], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v67, 31, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[84:85], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v113, s85, v67
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v113
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s63, s11, s1
	s_and_b32 s103, s12, s1
	s_and_b32 s102, s13, s1
	s_and_b32 s99, s14, s1
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s98, s15, s1
	s_and_b32 s97, s16, s1
	s_and_b32 s95, s17, s1
	s_and_b32 s94, s18, s1
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s91, s20, s1
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s89, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 8
	s_and_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v67, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v113, v67
	scratch_load_b32 v67, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s4, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v113, v67
	scratch_load_b32 v67, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s100
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v113, v67
	scratch_load_b32 v67, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v113, v67
	scratch_load_b32 v67, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s22, s93
	s_and_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v113, v67
	scratch_load_b32 v67, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s23, s92
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v113, v67
	scratch_load_b32 v67, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s24, s90
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v113, v67
	scratch_load_b32 v67, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s25, s89
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v113, v67
	scratch_load_b32 v67, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s26, s63
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v113, v67
	scratch_load_b32 v67, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s27, s103
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v113, v67
	scratch_load_b32 v67, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s28, s102
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v113, v67
	scratch_load_b32 v67, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s29, s99
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v113, v67
	scratch_load_b32 v67, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s30, s98
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v113, v67
	scratch_load_b32 v67, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s31, s97
	s_and_not1_b32 s31, s101, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_or_b32 s101, s31, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s90, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s90, s4, s5
	s_and_not1_b32 s4, s63, exec_lo
	s_and_b32 s5, s22, exec_lo
	s_or_b32 s63, s4, s5
	s_and_not1_b32 s4, s102, exec_lo
	s_and_b32 s5, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s102, s4, s5
	s_and_not1_b32 s4, s98, exec_lo
	s_and_b32 s5, s26, exec_lo
	s_or_b32 s98, s4, s5
	s_and_not1_b32 s4, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v113, v67
	scratch_load_b32 v67, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s33, s95
	s_and_not1_b32 s33, s100, exec_lo
	s_and_b32 s5, s28, exec_lo
	s_or_b32 s100, s33, s1
	s_and_not1_b32 s1, s96, exec_lo
	s_or_b32 s95, s4, s5
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_and_not1_b32 s4, s91, exec_lo
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s89, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s89, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v113, v67
	scratch_load_b32 v67, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s34, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s29, exec_lo
	s_or_b32 s94, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v113, v67
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s35, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s30, exec_lo
	s_or_b32 s91, s4, s5
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v98, 16, v159
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v67, s85, v159
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v68, 2, v159
	v_or_b32_e32 v69, 4, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v102, s62, v159, 1
	v_or_b32_e32 v99, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 18, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v68, s85, v68
	v_cmp_gt_i32_e32 vcc_lo, s55, v67
	v_or_b32_e32 v69, s85, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v70, 6, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v100, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 20, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v109, 28, v102
	v_add_nc_u32_e32 v105, 8, v102
	v_add_nc_u32_e32 v144, 36, v102
	v_cndmask_b32_e32 v67, 0x80000000, v102, vcc_lo
	v_or_b32_e32 v101, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 22, v159
	.loc	1 0 0                           ; attention.py:0
	v_cmp_gt_i32_e32 vcc_lo, s55, v68
	v_or_b32_e32 v70, s85, v70
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 8, v159
	v_or_b32_e32 v72, 10, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v103, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 24, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v108, 24, v102
	v_or_b32_e32 v71, s85, v71
	v_or_b32_e32 v72, s85, v72
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 12, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v104, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 26, v159
	v_or_b32_e32 v106, 30, v159
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v145, 40, v102
	v_or_b32_e32 v73, s85, v73
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, 14, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v107, s85, v98
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 28, v159
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v142, s85, v106
	v_add_nc_u32_e32 v143, 32, v102
	v_add_nc_u32_e32 v106, 20, v102
	v_or_b32_e32 v74, s85, v74
	v_or_b32_e32 v111, s85, v98
	v_add_nc_u32_e32 v98, 4, v102
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cndmask_b32_e32 v68, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v69
	v_dual_cndmask_b32 v69, 0x80000000, v105 :: v_dual_add_nc_u32 v98, 12, v102
	v_cmp_gt_i32_e32 vcc_lo, s55, v70
	v_add_nc_u32_e32 v105, 16, v102
	v_cndmask_b32_e32 v70, 0x80000000, v98, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v71, 0x80000000, v105, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v72
	v_cndmask_b32_e32 v72, 0x80000000, v106, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v73
	v_cndmask_b32_e32 v73, 0x80000000, v108, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v74
	v_cndmask_b32_e32 v74, 0x80000000, v109, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v99
	s_clause 0x7
	buffer_load_u16 v185, v67, s[80:83], 0 offen
	buffer_load_u16 v112, v68, s[80:83], 0 offen
	buffer_load_u16 v110, v69, s[80:83], 0 offen
	buffer_load_u16 v98, v70, s[80:83], 0 offen
	buffer_load_u16 v109, v71, s[80:83], 0 offen
	buffer_load_u16 v108, v72, s[80:83], 0 offen
	buffer_load_u16 v106, v73, s[80:83], 0 offen
	buffer_load_u16 v105, v74, s[80:83], 0 offen
	v_add_nc_u32_e32 v69, 44, v102
	v_add_nc_u32_e32 v71, 48, v102
	v_dual_cndmask_b32 v67, 0x80000000, v143 :: v_dual_add_nc_u32 v72, 52, v102
	v_cmp_gt_i32_e32 vcc_lo, s55, v100
	v_add_nc_u32_e32 v73, 56, v102
	v_add_nc_u32_e32 v74, 60, v102
	v_cndmask_b32_e32 v68, 0x80000000, v144, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v101
	v_cndmask_b32_e32 v70, 0x80000000, v145, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v103
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v104
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v107
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v111
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v142
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	s_clause 0x7
	buffer_load_u16 v102, v67, s[80:83], 0 offen
	buffer_load_u16 v111, v68, s[80:83], 0 offen
	buffer_load_u16 v107, v70, s[80:83], 0 offen
	buffer_load_u16 v104, v69, s[80:83], 0 offen
	buffer_load_u16 v103, v71, s[80:83], 0 offen
	buffer_load_u16 v101, v72, s[80:83], 0 offen
	buffer_load_u16 v100, v73, s[80:83], 0 offen
	buffer_load_u16 v99, v74, s[80:83], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v113, v67
	scratch_load_b32 v67, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v113, v67
	scratch_load_b32 v67, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v113, v67
	scratch_load_b32 v67, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v113, v67
	scratch_load_b32 v67, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v113, v67
	scratch_load_b32 v67, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v113, v67
	scratch_load_b32 v67, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v113, v67
	scratch_load_b32 v67, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v113, v67
	scratch_load_b32 v67, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v113, v67
	scratch_load_b32 v67, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v113, v67
	scratch_load_b32 v67, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v113, v67
	scratch_load_b32 v67, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v113, v67
	scratch_load_b32 v67, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v113, v67
	scratch_load_b32 v67, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v113, v67
	scratch_load_b32 v67, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v113, v67
	scratch_load_b32 v67, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s35, v113, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v113, v67
	scratch_load_b32 v67, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, s101
	s_and_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v113, v67
	scratch_load_b32 v67, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, s100
	s_and_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v113, v67
	scratch_load_b32 v67, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s96
	s_and_b32 s3, s3, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v113, v67
	scratch_load_b32 v67, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, s93
	s_and_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v113, v67
	scratch_load_b32 v67, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s6, s92
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v113, v67
	scratch_load_b32 v67, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s24, s41
	s_and_b32 s7, s7, s90
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v113, v67
	scratch_load_b32 v67, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s89
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v113, v67
	scratch_load_b32 v67, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s26, s43
	s_and_b32 s22, s22, s63
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v113, v67
	scratch_load_b32 v67, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s103
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v113, v67
	scratch_load_b32 v67, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s28, s45
	s_and_b32 s24, s24, s102
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v113, v67
	scratch_load_b32 v67, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s99
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v113, v67
	scratch_load_b32 v67, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s30, s47
	s_and_b32 s26, s26, s98
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v113, v67
	scratch_load_b32 v67, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s31, s48
	s_and_not1_b32 s31, s101, exec_lo
	s_and_b32 s27, s27, s97
	s_or_b32 s101, s31, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s90, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_or_b32 s90, s4, s5
	s_and_not1_b32 s4, s63, exec_lo
	s_and_b32 s5, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s63, s4, s5
	s_and_not1_b32 s4, s102, exec_lo
	s_and_b32 s5, s24, exec_lo
	s_or_b32 s102, s4, s5
	s_and_not1_b32 s4, s98, exec_lo
	s_and_b32 s5, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s4, s5
	s_and_not1_b32 s4, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v113, v67
	scratch_load_b32 v67, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s33, s50
	s_and_not1_b32 s33, s100, exec_lo
	s_and_b32 s28, s28, s95
	s_or_b32 s100, s33, s1
	s_and_not1_b32 s1, s96, exec_lo
	s_and_b32 s5, s28, exec_lo
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s95, s4, s5
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s89, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_and_not1_b32 s4, s91, exec_lo
	s_or_b32 s89, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v113, v67
	scratch_load_b32 v67, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s34, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s94
	s_and_b32 s3, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v113, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s35, s52
	s_and_b32 s30, s30, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s30, exec_lo
	s_or_b32 s91, s4, s5
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
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	scratch_load_b32 v67, off, off offset:292 ; 4-byte Folded Reload
	v_and_b32_e32 v68, 16, v0
	v_and_b32_e32 v39, 32, v0
	v_lshlrev_b32_e32 v35, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s40, 0, v68
.LBB0_13:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v34, 28, v35
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
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_add3_u32 v0, v0, v34, v39
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v39, null, v0, v0, v20
	v_div_scale_f32 v33, null, v0, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v45, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v57, v48
	v_fmac_f32_e32 v46, v55, v46
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_mul_f32_e32 v57, v40, v48
	v_mul_f32_e32 v55, v36, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v43, v50, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_fmac_f32_e32 v47, v56, v47
	v_fma_f32 v62, -v39, v57, v40
	v_fma_f32 v60, -v35, v55, v36
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_scale_f32 v44, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v55, v60, v46
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_fmac_f32 v57, v62, v48
	v_mul_f32_e32 v54, v34, v45
	v_mul_f32_e32 v56, v38, v47
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v33, v54, v34
	v_fma_f32 v61, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v52, null, v0, v0, v24
	v_fmac_f32_e32 v54, v59, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v61, v47
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
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
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, null, v0, v0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v36, v0, v20
	v_fma_f32 v36, -v52, v39, 1.0
	v_mul_f32_e32 v58, v42, v49
	v_rcp_f32_e32 v40, v35
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fixup_f32 v18, v34, v0, v18
	v_fma_f32 v33, -v43, v37, v51
	v_div_scale_f32 v34, s1, v23, v0, v23
	v_fmac_f32_e32 v39, v36, v39
	v_fma_f32 v63, -v41, v58, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v33, v50
	v_div_scale_f32 v36, s3, v24, v0, v24
	v_fma_f32 v45, -v35, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v63, v49
	v_mul_f32_e32 v33, v34, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v40, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v58, v42
	v_fma_f32 v41, -v43, v37, v51
	v_fma_f32 v42, -v44, v33, v34
	v_mul_f32_e32 v43, v36, v39
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, s4, v25, v0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_fma_f32 v42, -v52, v43, v36
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v44, v33, v34
	v_fmac_f32_e32 v43, v42, v39
	v_div_fmas_f32 v38, v38, v49, v58
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v42, null, v0, v0, v27
	v_div_fmas_f32 v37, v41, v50, v37
	v_rcp_f32_e32 v41, v46
	v_div_fixup_f32 v21, v38, v0, v21
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v37, v0, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v41, 1.0
	v_div_fmas_f32 v34, v34, v39, v43
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v38, v41
	v_rcp_f32_e32 v38, v42
	v_div_fixup_f32 v24, v34, v0, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v38, 1.0
	v_dual_fmac_f32 v38, v43, v38 :: v_dual_mul_f32 v37, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v35, v37, v45
	v_fmac_f32_e32 v37, v36, v40
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v35, v37, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_scale_f32 v35, s3, v27, v0, v27
	v_div_fmas_f32 v33, v33, v40, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v36, 1.0
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v33, v0, v25
	v_dual_fmac_f32 v36, v43, v36 :: v_dual_mul_f32 v39, v44, v41
	v_div_scale_f32 v43, null, v0, v0, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
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
	v_div_scale_f32 v41, s1, v29, v0, v29
	v_fma_f32 v44, -v43, v48, 1.0
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v46, v39, v36 :: v_dual_mul_f32 v35, v41, v37
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, s5, v30, v0, v30
	v_div_fmas_f32 v33, v33, v38, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, -v47, v46, v40
	v_fma_f32 v38, -v45, v35, v41
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v47, null, v0, v0, v32
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v42, null, v0, v0, v31
	v_div_fmas_f32 v34, v34, v36, v46
	v_dual_fmac_f32 v35, v38, v37 :: v_dual_mul_f32 v44, v39, v48
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	v_div_fixup_f32 v27, v33, v0, v27
	v_fma_f32 v33, -v45, v35, v41
	v_fma_f32 v38, -v43, v44, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
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
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_mul_f32_e32 v37, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fmac_f32_e32 v35, v46, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
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
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
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
	v_div_fixup_f32 v32, v36, v0, v32
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
	v_cndmask_b32_e64 v32, 0, v32, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v41, -v37, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v35, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_div_fmas_f32 v33, v36, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v40, v42, 1.0
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v35, v42
	v_fma_f32 v34, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_fmas_f32 v34, v34, v37, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3)
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
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v46, 1.0
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
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
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v51, v40, v39
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	v_cndmask_b32_e64 v37, 0, v21, s0
	v_cndmask_b32_e64 v38, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v33, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	v_cndmask_b32_e64 v47, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v67, s74
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v34, 16, 1
	v_add3_u32 v65, v33, v65, 0x7fff
	v_bfe_u32 v67, v35, 16, 1
	v_cmp_o_f32_e64 s33, v33, v33
	v_cmp_o_f32_e64 s34, v34, v34
	v_add3_u32 v33, v34, v66, 0x7fff
	v_cmp_o_f32_e64 s35, v35, v35
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v9, s0
	v_cndmask_b32_e64 v40, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
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
	v_cndmask_b32_e64 v42, 0, v12, s0
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
	v_cndmask_b32_e64 v43, 0, v13, s0
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
	v_cndmask_b32_e64 v45, 0, v15, s0
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
	v_lshrrev_b32_e32 v51, 1, v68
	s_mov_b32 s33, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v41, v31, v29, s40
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v56, 1, v51
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s74, v51
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v57, 2, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v40, 0x760076, v40
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v58, 3, v51
	v_or_b32_e32 v59, 4, v51
	v_or_b32_e32 v60, 5, v51
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v30, v30, 4, v30
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v61, 6, v51
	v_or_b32_e32 v62, 7, v51
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
	v_cmp_gt_i32_e64 s30, s74, v56
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s31, s2, s31
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s74, v57
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
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
	v_cmp_gt_i32_e64 s28, s74, v58
	v_cmp_gt_i32_e64 s27, s74, v59
	v_cmp_gt_i32_e64 s26, s74, v60
	v_cmp_gt_i32_e64 s25, s74, v61
	v_cmp_gt_i32_e64 s24, s74, v62
	v_cmp_gt_i32_e64 s23, s74, v63
	v_cmp_gt_i32_e64 s22, s74, v64
	v_cmp_gt_i32_e64 s21, s74, v22
	v_cmp_gt_i32_e64 s20, s74, v21
	v_cmp_gt_i32_e64 s19, s74, v20
	v_cmp_gt_i32_e64 s18, s74, v19
	v_cmp_gt_i32_e64 s17, s74, v18
	v_cmp_gt_i32_e64 s16, s74, v17
	v_cmp_gt_i32_e64 s15, s74, v16
	v_cmp_gt_i32_e64 s14, s74, v15
	v_cmp_gt_i32_e64 s13, s74, v14
	v_cmp_gt_i32_e64 s12, s74, v13
	v_cmp_gt_i32_e64 s11, s74, v12
	v_cmp_gt_i32_e64 s10, s74, v11
	v_cmp_gt_i32_e64 s9, s74, v10
	v_cmp_gt_i32_e64 s5, s74, v9
	v_cmp_gt_i32_e64 s4, s74, v8
	v_cmp_gt_i32_e64 s3, s74, v7
	v_cmp_gt_i32_e64 s1, s74, v6
	v_cmp_gt_i32_e64 s0, s74, v5
	v_cmp_gt_i32_e32 vcc_lo, s74, v4
	v_cmp_gt_i32_e64 s8, s74, v3
	v_cmp_gt_i32_e64 s7, s74, v2
	v_cmp_gt_i32_e64 s6, s74, v0
	s_mov_b32 s74, 0x7ffffffe
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
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s28, s2, s28
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v39.h
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v33, 0x80000000, v33, s27
	v_cndmask_b32_e64 v40, 0x80000000, v40, s26
	v_cndmask_b32_e64 v51, 0x80000000, v51, s25
	v_add_lshl_u32 v4, v1, v4, 1
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
	.loc	1 1049 36                       ; attention.py:1049:36
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
	.loc	1 1049 17                       ; attention.py:1049:17
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
.Ltmp305:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 300
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 300
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26348
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 300
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
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
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
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
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
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
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
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
    .private_segment_fixed_size: 300
    .sgpr_count:     107
    .sgpr_spill_count: 9
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 74
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
