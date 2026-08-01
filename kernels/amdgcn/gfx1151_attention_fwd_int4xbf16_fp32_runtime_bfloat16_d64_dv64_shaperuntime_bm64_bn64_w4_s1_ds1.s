	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[24:27], s[0:1], 0x4c
	s_load_b32 s18, s[0:1], 0x60
                                        ; implicit-def: $vgpr253 : SGPR spill to VGPR lane
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v33, 31, v0
	s_load_b64 s[20:21], s[0:1], 0x0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 4, v2
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v6, 16, v2
	v_or_b32_e32 v7, 20, v2
	v_or_b32_e32 v8, 24, v2
	v_or_b32_e32 v9, 28, v2
	v_or_b32_e32 v10, 32, v2
	v_or_b32_e32 v11, 36, v2
	v_or_b32_e32 v12, 40, v2
	v_or_b32_e32 v13, 44, v2
	v_or_b32_e32 v14, 48, v2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s40
	s_bitcmp1_b32 s40, 8
	v_or_b32_e32 v15, 52, v2
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v253, s5, 0
	s_cselect_b32 s19, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s24
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, 56, v2
	v_or_b32_e32 v17, 60, v2
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[18:19], null, s18, v2, v[33:34]
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off offset:96
	scratch_store_b32 off, v3, off offset:100
	scratch_store_b32 off, v4, off offset:104
	scratch_store_b32 off, v5, off offset:108
	scratch_store_b32 off, v6, off offset:112
	scratch_store_b32 off, v7, off offset:116
	scratch_store_b32 off, v8, off offset:120
	scratch_store_b32 off, v9, off offset:124
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s28, s3, s26
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[22:23], null, s18, 12, v[18:19]
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v10, off offset:128
	scratch_store_b32 off, v11, off offset:132
	scratch_store_b32 off, v12, off offset:136
	scratch_store_b32 off, v13, off offset:140
	scratch_store_b32 off, v14, off offset:144
	scratch_store_b32 off, v15, off offset:148
	scratch_store_b32 off, v16, off offset:152
	scratch_store_b32 off, v17, off offset:156
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v20, s18, 2, v18
	v_mad_u64_u32 v[24:25], null, s18, 20, v[18:19]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s18, 36, v[18:19]
	v_mad_u64_u32 v[25:26], null, s18, 24, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[29:30], null, s18, 40, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[34:35], null, s18, 52, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s6, s4, s6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s6, s7, s6
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s6, s5
	s_cmp_ge_u32 s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s6, s8, s6
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s30, s7, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s4, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s6, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s4, v7
	v_or_b32_e32 v7, s4, v8
	v_or_b32_e32 v8, s4, v9
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v9, s6
	s_sub_i32 s7, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s4, v10
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[26:27], null, s18, 28, v[18:19]
	v_mad_u64_u32 v[30:31], null, s18, 44, v[18:19]
	v_mad_u64_u32 v[35:36], null, s18, 56, v[18:19]
	v_lshl_add_u32 v21, s18, 3, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v23, s18, 4, v18
	v_lshl_add_u32 v27, s18, 5, v18
	v_mad_u64_u32 v[31:32], null, s18, 48, v[18:19]
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[36:37], null, s18, 60, v[18:19]
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s26, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s4, v11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s26, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s4, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s4, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s24, s25
	s_mul_hi_u32 s6, s5, s6
	s_ashr_i32 s29, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s5, s5, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s26, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s5, s2
	s_cmp_ge_u32 s5, s2
	scratch_store_b32 off, v20, off offset:168 ; 4-byte Folded Spill
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s31, s7, s6
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s28, s28, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s26, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s28, s18
	v_mov_b32_e32 v9, v18
	v_add_nc_u32_e32 v19, s2, v21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s26, v5
	v_cmp_gt_i32_e64 s8, s26, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s4, v14
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[9:10], off offset:160 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v9, s2, v18
	v_add_nc_u32_e32 v18, s2, v20
	v_mov_b32_e32 v20, v22
	scratch_store_b32 off, v21, off offset:172 ; 4-byte Folded Spill
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s33, s18, v33
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s26, v11
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v13, s4, v13
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[20:21], off offset:176 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v20, s2, v22
	v_mov_b32_e32 v22, v24
	scratch_store_b32 off, v23, off offset:184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, s2, v23
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s26, v12
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	scratch_store_b64 off, v[22:23], off offset:188 ; 8-byte Folded Spill
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v22, s2, v24
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s4, v15
	v_writelane_b32 v253, s18, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s26, v17
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[23:24], off offset:196 ; 8-byte Folded Spill
	v_dual_mov_b32 v24, v26 :: v_dual_add_nc_u32 v23, s2, v25
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	s_and_b32 s21, s21, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s26, v14
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[24:25], off offset:204 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v24, s2, v26
	v_mov_b32_e32 v26, v28
	scratch_store_b32 off, v27, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v25, s2, v27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s4, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s26, v13
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[26:27], off offset:216 ; 8-byte Folded Spill
	v_dual_mov_b32 v27, v29 :: v_dual_add_nc_u32 v26, s2, v28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s26, v15
	v_cmp_gt_i32_e64 s17, s26, v16
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v65, 0x60, v0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[27:28], off offset:224 ; 8-byte Folded Spill
	v_dual_mov_b32 v28, v30 :: v_dual_add_nc_u32 v27, s2, v29
	v_writelane_b32 v253, s33, 2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 15, v0
	s_mov_b32 s104, 0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[28:29], off offset:232 ; 8-byte Folded Spill
	v_dual_mov_b32 v29, v31 :: v_dual_add_nc_u32 v28, s2, v30
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v240, 0, v0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[29:30], off offset:240 ; 8-byte Folded Spill
	v_dual_mov_b32 v30, v34 :: v_dual_add_nc_u32 v29, s2, v31
	scratch_store_b64 off, v[30:31], off offset:248 ; 8-byte Folded Spill
	v_dual_mov_b32 v31, v35 :: v_dual_add_nc_u32 v30, s2, v34
	scratch_store_b64 off, v[31:32], off offset:256 ; 8-byte Folded Spill
	v_dual_mov_b32 v32, v36 :: v_dual_add_nc_u32 v31, s2, v35
	scratch_store_b64 off, v[32:33], off offset:264 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v32, s2, v36
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s26, v2
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s33
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_xor_b32 s2, s31, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x88, v0
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s33
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s27, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v18, 0, v18
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v20, 0, v20
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v1, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s2, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s5, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 0x110, v0
	v_cndmask_b32_e32 v11, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s33
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v14, v1, s[20:23], 0 offen
	buffer_load_u8 v11, v11, s[20:23], 0 offen
	v_cndmask_b32_e32 v13, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v9, v9, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s33
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v10, v10, s[20:23], 0 offen
	buffer_load_u8 v16, v1, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 26
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v65
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s6, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v19, 0, v19
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s10, s5, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s5, s40, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s5, v21
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v18, off offset:272
	scratch_store_b32 off, v19, off offset:276
	scratch_store_b32 off, v20, off offset:280
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v240, v7
	s_waitcnt vmcnt(12)
	ds_store_b8 v240, v4 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v240, v14 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v240, v11 offset:1536
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
	s_waitcnt vmcnt(0)
	ds_store_b8 v20, v15 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s4, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s4, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s43
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s27, s6
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s104, s7, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s10, s10, s6
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s19
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v1, v69
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s6, 1, v2
	.loc	1 0 0                           ; attention.py:0
	v_writelane_b32 v253, s6, 3
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s4, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s27, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s10, s10, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v2, s4, v1
	v_lshlrev_b32_e32 v66, 6, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s104, s10
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_and_b32_e32 v73, 64, v66
	s_mov_b32 s6, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13                          ; attention.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr73
.LBB0_7:                                ; %Flow607
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s7, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v67, s28, v1
	v_and_b32_e32 v68, 16, v0
	v_lshlrev_b32_e32 v70, 1, v0
	v_cmp_gt_i32_e64 s38, s26, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v71, 64, v0
	v_dual_mov_b32 v3, v8 :: v_dual_lshlrev_b32 v72, 2, v0
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v5, v8
	v_cmp_eq_u32_e64 s39, 0, v68
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v253, s7, 4
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
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
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[52:59], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v67
	v_mov_b16_e32 v2.l, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	v_lshrrev_b32_e32 v9, 2, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v72, off offset:1308
	scratch_store_b32 off, v71, off offset:1304
	v_cndmask_b32_e64 v30, 0x108, 0, vcc_lo
	v_lshl_or_b32 v28, v69, 10, v72
	v_lshlrev_b32_e32 v8, 3, v69
	v_lshl_or_b32 v9, v69, 8, v9
	v_lshlrev_b32_e32 v3, 5, v69
	v_dual_mov_b32 v13, 0x7632 :: v_dual_lshlrev_b32 v4, 4, v65
	v_and_b32_e32 v5, 24, v70
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 6, v71
	v_lshlrev_b32_e32 v7, 4, v0
	v_lshlrev_b32_e32 v11, 1, v71
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s57, 0xffff
	s_mov_b32 s20, s56
	v_or3_b32 v4, v3, v4, v5
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	v_or_b32_e32 v49, v3, v5
	v_xor_b32_e32 v5, 4, v28
	v_or_b32_e32 v71, 62, v45
	v_and_b32_e32 v3, 0x200, v7
	v_xor_b32_e32 v7, 8, v28
	v_xor_b32_e32 v16, 12, v28
	v_add_nc_u32_e32 v5, 0, v5
	v_and_b32_e32 v37, 64, v66
	v_xor_b32_e32 v17, 16, v28
	v_writelane_b32 v253, s44, 5
	v_xor_b32_e32 v18, 20, v28
	v_xor_b32_e32 v19, 24, v28
	s_mov_b32 s60, 0
	v_xor_b32_e32 v20, 28, v28
	v_writelane_b32 v253, s45, 6
	s_mov_b32 s61, s60
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	v_writelane_b32 v253, s46, 7
	s_mov_b32 s65, s60
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	v_xor_b32_e32 v21, 32, v28
	v_writelane_b32 v253, s47, 8
	v_xor_b32_e32 v22, 36, v28
	s_xor_b32 s7, s3, s24
	s_mul_f32 s6, s5, 0x4f7ffffe
	s_clause 0x2
	s_load_b32 s11, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x6c
	v_writelane_b32 v253, s38, 9
	s_ashr_i32 s1, s7, 31
	s_cvt_u32_f32 s6, s6
	s_xor_b32 s7, s30, s1
	v_or_b32_e32 v32, 2, v45
	v_writelane_b32 v253, s60, 10
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v15, s4, v45
	v_xor_b32_e32 v23, 40, v28
	s_sub_i32 s7, s7, s1
	s_sub_i32 s5, 0, s2
	v_writelane_b32 v253, s61, 11
	s_ashr_i32 s0, s8, 31
	s_mul_i32 s8, s7, s24
	s_mul_i32 s5, s5, s6
	v_and_b32_e32 v6, 60, v70
	v_writelane_b32 v253, s62, 12
	v_cndmask_b32_e64 v14, 0x404, 0, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, 4, v45
	s_sub_i32 s3, s3, s8
	v_add_nc_u32_e32 v43, 0, v4
	v_writelane_b32 v253, s63, 13
	v_xad_u32 v33, v4, 8, 0
	v_xad_u32 v34, v4, 16, 0
	v_xad_u32 v35, v4, 24, 0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v32
	v_writelane_b32 v253, s64, 14
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s26, v15
	s_mul_hi_u32 s5, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v38, 6, v45
	s_add_i32 s6, s6, s5
	v_writelane_b32 v253, s65, 15
	s_ashr_i32 s5, s3, 31
	v_xor_b32_e32 v24, 44, v28
	v_xor_b32_e32 v6, v14, v6
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v14, s4, v36
	v_writelane_b32 v253, s66, 16
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s0, s5, s0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v39, 8, v45
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v28, off offset:300
	scratch_store_b32 off, v32, off offset:304
	scratch_store_b32 off, v36, off offset:308
	scratch_store_b32 off, v38, off offset:312
	scratch_store_b32 off, v0, off offset:284
	v_writelane_b32 v253, s67, 17
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v32, s4, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v40, 10, v45
	v_xor_b32_e32 v25, 48, v28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s4, v39
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_writelane_b32 v253, s8, 18
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v41, 12, v45
	v_or_b32_e32 v42, 14, v45
	v_xor_b32_e32 v26, 52, v28
	v_or_b32_e32 v46, 16, v45
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 19
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v14
	v_xor_b32_e32 v27, 56, v28
	v_or3_b32 v74, v3, v6, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v47, 18, v45
	v_xor_b32_e32 v28, 60, v28
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 20
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v32
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v46
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v48, 20, v45
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s4, v47
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 22, v45
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_writelane_b32 v253, s5, 21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v36
	v_add_nc_u32_e32 v31, 0, v37
	v_cndmask_b32_e64 v12, 0x1054, v12, s39
	v_cndmask_b32_e64 v13, 0x3276, v13, s39
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 24, v45
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 22
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, 26, v45
	v_add_nc_u32_e32 v201, v31, v11
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v13, 8, v13
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v13, s4, v51
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v53, 28, v45
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v42, off offset:328
	scratch_store_b32 off, v46, off offset:332
	scratch_store_b32 off, v47, off offset:336
	scratch_store_b32 off, v50, off offset:348
	scratch_store_b32 off, v49, off offset:344
	scratch_store_b32 off, v51, off offset:352
	scratch_store_b32 off, v52, off offset:356
	scratch_store_b32 off, v53, off offset:360
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v46, s43, v15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s4, v52
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v54, 30, v45
	v_or_b32_e32 v55, 32, v45
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	v_or_b32_e32 v56, 34, v45
	v_or_b32_e32 v57, 36, v45
	v_or_b32_e32 v58, 38, v45
	v_or_b32_e32 v59, 40, v45
	v_or_b32_e32 v60, 42, v45
	v_or_b32_e32 v61, 44, v45
	v_or_b32_e32 v62, 46, v45
	v_lshlrev_b32_e32 v10, 1, v65
	v_lshl_add_u32 v166, v69, 1, 0
	v_or_b32_e32 v63, 48, v45
	v_or_b32_e32 v64, 50, v45
	v_or_b32_e32 v65, 52, v45
	v_or_b32_e32 v66, 54, v45
	v_or_b32_e32 v69, 58, v45
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v39, off offset:316
	scratch_store_b32 off, v40, off offset:320
	scratch_store_b32 off, v41, off offset:324
	scratch_store_b32 off, v54, off offset:364
	scratch_store_b32 off, v55, off offset:368
	scratch_store_b32 off, v56, off offset:372
	scratch_store_b32 off, v57, off offset:376
	scratch_store_b32 off, v58, off offset:380
	scratch_store_b32 off, v59, off offset:384
	scratch_store_b32 off, v60, off offset:388
	scratch_store_b32 off, v61, off offset:392
	scratch_store_b32 off, v62, off offset:396
	scratch_store_b32 off, v63, off offset:400
	scratch_store_b32 off, v64, off offset:404
	scratch_store_b32 off, v65, off offset:408
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_add_nc_u32 v47, s43, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s4, v71
	s_abs_i32 s8, s3
	.loc	1 821 33 is_stmt 1              ; attention.py:821:33
	s_mul_i32 s1, s7, s25
	s_mul_hi_u32 s6, s8, s6
	.loc	1 871 27                        ; attention.py:871:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s7, s45
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s46
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v180, 4, v68
	v_mov_b32_e32 v183, 0xff800000
	v_mov_b32_e32 v185, 0xff800000
	v_mov_b32_e32 v187, 0xff800000
	v_mov_b32_e32 v189, 0xff800000
	v_mov_b32_e32 v191, 0xff800000
	v_mov_b32_e32 v193, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v79, 0xff800000
	v_mov_b32_e32 v81, 0xff800000
	v_mov_b32_e32 v83, 0xff800000
	v_mov_b32_e32 v135, 0xff800000
	v_mov_b32_e32 v137, 0xff800000
	v_mov_b32_e32 v245, 0xff800000
	v_mov_b32_e32 v247, 0xff800000
	v_mov_b32_e32 v249, 0xff800000
	v_mov_b32_e32 v181, 0xff800000
	v_mov_b32_e32 v117, 0xff800000
	v_mov_b32_e32 v115, 0xff800000
	v_mov_b32_e32 v113, 0xff800000
	v_mov_b32_e32 v111, 0xff800000
	v_mov_b32_e32 v109, 0xff800000
	v_mov_b32_e32 v107, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	v_mov_b32_e32 v103, 0xff800000
	v_mov_b32_e32 v101, 0xff800000
	v_mov_b32_e32 v99, 0xff800000
	v_mov_b32_e32 v97, 0xff800000
	v_mov_b32_e32 v95, 0xff800000
	v_mov_b32_e32 v197, 0xff800000
	v_mov_b32_e32 v195, 0xff800000
	v_mov_b32_e32 v177, 0xff800000
	v_mov_b32_e32 v157, 0xff800000
	v_mov_b32_e32 v163, 0xff800000
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s58
	s_mov_b32 s20, s54
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_mov_b32_e32 v96, 0xff800000
	v_mov_b32_e32 v98, 0xff800000
	v_mov_b32_e32 v84, 0xff800000
	v_mov_b32_e32 v82, 0xff800000
	v_mov_b32_e32 v100, 0xff800000
	v_mov_b32_e32 v80, 0xff800000
	v_mov_b32_e32 v78, 0xff800000
	v_mov_b32_e32 v152, 0xff800000
	v_mov_b32_e32 v246, 0xff800000
	v_mov_b32_e32 v136, 0xff800000
	v_mov_b32_e32 v170, 0xff800000
	v_mov_b32_e32 v192, 0xff800000
	v_mov_b32_e32 v164, 0xff800000
	v_mov_b32_e32 v248, 0xff800000
	v_mov_b32_e32 v190, 0xff800000
	v_mov_b32_e32 v154, 0xff800000
	v_mov_b32_e32 v188, 0xff800000
	v_mov_b32_e32 v182, 0xff800000
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v134, 0xff800000
	v_mov_b32_e32 v184, 0xff800000
	v_mov_b32_e32 v156, 0xff800000
	v_mov_b32_e32 v194, 0xff800000
	v_mov_b32_e32 v196, 0xff800000
	v_mov_b32_e32 v244, 0xff800000
	v_mov_b32_e32 v158, 0xff800000
	scratch_store_b32 off, v68, off offset:1296 ; 4-byte Folded Spill
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v44, 63, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v29, 2, v44
	v_xor_b32_e32 v72, v30, v29
	v_lshrrev_b32_e32 v30, 5, v0
	scratch_store_b32 off, v71, off offset:428 ; 4-byte Folded Spill
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v29, s4, v40
	v_xor_b32_e32 v40, 8, v49
	v_or3_b32 v73, v9, v8, v30
	scratch_store_b32 off, v72, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v8, s4, v41
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s4, v42
	v_xor_b32_e32 v1, 16, v73
	v_xor_b32_e32 v41, 16, v49
	v_xor_b32_e32 v42, 24, v49
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 23
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v8
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:444
	scratch_store_b32 off, v67, off offset:1292
	scratch_store_b32 off, v73, off offset:436
	v_add_nc_u32_e32 v5, 0, v7
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 24, v73
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 24
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s4, v50
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v67, 56, v45
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:448
	scratch_store_b32 off, v70, off offset:1300
	v_add_nc_u32_e32 v5, 0, v16
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_writelane_b32 v253, s5, 25
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v73
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s4, v53
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v70, 60, v45
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v66, off offset:412
	scratch_store_b32 off, v67, off offset:416
	scratch_store_b32 off, v69, off offset:420
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:452
	scratch_store_b32 off, v37, off offset:1312
	v_add_nc_u32_e32 v5, 0, v17
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_writelane_b32 v253, s5, 26
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 40, v73
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s4, v54
	v_or_b32_e32 v37, s4, v69
	v_or_b32_e32 v30, s4, v66
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v18
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s4, v55
	scratch_store_b32 off, v1, off offset:560 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v73
	v_or_b32_e32 v31, s4, v67
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v49, s43, v32
	v_add_nc_u32_e32 v51, s43, v8
	v_add_nc_u32_e32 v53, s43, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v19
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s4, v56
	v_or_b32_e32 v38, s4, v70
	scratch_store_b32 off, v1, off offset:564 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 56, v73
	scratch_store_b32 off, v70, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v8, 0x840, v72
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v20
	v_or_b32_e32 v20, s4, v57
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v57, s43, v13
	scratch_store_b32 off, v1, off offset:568 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s4, v58
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x48, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v22
	v_or_b32_e32 v22, s4, v59
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v59, s43, v16
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v23
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, s4, v60
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x58, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v24
	v_or_b32_e32 v24, s4, v61
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v61, s43, v18
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v25, s4, v62
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x68, v73
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v69, s43, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, s4, v63
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v73
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v27
	v_or_b32_e32 v27, s4, v64
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x808, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v28
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:500
	scratch_store_b32 off, v48, off offset:340
	v_or_b32_e32 v5, s4, v48
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1010, v74
	v_or_b32_e32 v28, s4, v65
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s47, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v5
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v55, s43, v5
	v_add_nc_u32_e32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_writelane_b32 v253, s5, 28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v7
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1818, v74
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v13, 8, v73
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s5, 31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v16
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v18
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v20
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v22
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v24
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v25
	v_mov_b32_e32 v25, 0
	v_add_nc_u32_e32 v5, 0, v40
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v54, s43, v6
	v_xor_b32_e32 v6, 0x420, v72
	v_writelane_b32 v254, s5, 9
	v_mov_b32_e32 v118, v25
	scratch_store_b32 off, v5, off offset:504 ; 4-byte Folded Spill
	v_dual_mov_b32 v94, v25 :: v_dual_add_nc_u32 v5, 0, v41
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v92, v25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v26
	scratch_store_b32 off, v5, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v42
	ds_load_b64 v[42:43], v43
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2020, v74
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v27
	v_dual_mov_b32 v90, v25 :: v_dual_add_nc_u32 v77, s43, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v104, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 0x210, v72
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v28
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v48, s43, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v88, v25 :: v_dual_add_nc_u32 v5, 0, v5
	v_add_nc_u32_e32 v36, s43, v36
	v_writelane_b32 v254, s5, 12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v30
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v50, s43, v29
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[42:43], off offset:640 ; 8-byte Folded Spill
	ds_load_b64 v[42:43], v33
	ds_load_b64 v[33:34], v34
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x2828, v74
	v_writelane_b32 v254, s5, 13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v31
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v52, s43, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v6
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v58, s43, v15
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v60, s43, v17
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v56, s43, v7
	v_add_nc_u32_e32 v62, s43, v19
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v64, s43, v21
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v66, s43, v23
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:656 ; 8-byte Folded Spill
	ds_load_b64 v[33:34], v35
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x3030, v74
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v116, v25 :: v_dual_add_nc_u32 v63, s43, v20
	v_dual_mov_b32 v120, v25 :: v_dual_and_b32 v3, 0x540054, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:620
	scratch_store_b32 off, v74, off offset:440
	v_xor_b32_e32 v1, 0x3838, v74
	v_lshl_or_b32 v3, v3, 4, v3
	v_dual_mov_b32 v114, v25 :: v_dual_add_nc_u32 v65, s43, v22
	v_writelane_b32 v254, s5, 14
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:664 ; 8-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v46
	scratch_store_b32 off, v5, off offset:520 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, v25 :: v_dual_and_b32 v174, 0x5040504, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:624
	scratch_store_b32 off, v33, off offset:1036
	v_subrev_nc_u32_e32 v33, s41, v47
	v_mov_b32_e32 v3, v25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v37
	v_dual_mov_b32 v112, v25 :: v_dual_add_nc_u32 v67, s43, v24
	scratch_store_b32 off, v33, off offset:1040 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v48
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v38
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v70, s43, v26
	v_xor_b32_e32 v7, 0x630, v72
	scratch_store_b32 off, v33, off offset:1044 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v49
	v_writelane_b32 v254, s5, 16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v39
	v_dual_mov_b32 v110, v25 :: v_dual_add_nc_u32 v71, s43, v27
	v_mov_b32_e32 v108, v25
	scratch_store_b32 off, v33, off offset:1048 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v36
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s5, 17
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s5, s6, s2
	v_dual_mov_b32 v86, v25 :: v_dual_add_nc_u32 v5, 0, v7
	scratch_store_b32 off, v33, off offset:1052 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v50
	v_mov_b32_e32 v7, v25
	s_sub_i32 s5, s8, s5
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s5, s2
	scratch_store_b32 off, v33, off offset:1056 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v51
	s_cmp_ge_u32 s5, s2
	v_dual_mov_b32 v106, v25 :: v_dual_add_nc_u32 v75, s43, v28
	s_cselect_b32 s6, s8, s6
	scratch_store_b32 off, v33, off offset:1060 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v52
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s44, 0x3fb8aa3b
	v_dual_mov_b32 v102, v25 :: v_dual_add_nc_u32 v37, s43, v37
	v_dual_mov_b32 v122, v25 :: v_dual_add_nc_u32 v39, s43, v39
	scratch_store_b32 off, v33, off offset:1064 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v53
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v219, s8, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v76, s43, v30
	v_add_nc_u32_e32 v38, s43, v38
	v_mul_lo_u32 v1, s47, v45
	scratch_store_b32 off, v33, off offset:1068 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v54
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v85, v219
	v_mov_b32_e32 v203, v219
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s9, s5
	s_add_i32 s9, s6, 1
	scratch_store_b32 off, v33, off offset:1072 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v55
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[40:41], null, s11, v44, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s5, s2
	v_writelane_b32 v254, s11, 18
	scratch_store_b32 off, v33, off offset:1076 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v56
	s_cselect_b32 s2, s9, s6
	s_add_i32 s4, s7, s4
	s_xor_b32 s2, s2, s0
	v_xor_b32_e32 v9, 0xa50, v72
	scratch_store_b32 off, v33, off offset:1080 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v57
	s_sub_i32 s0, s2, s0
	v_xor_b32_e32 v1, 0x78, v73
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s0, s0, s1
	s_add_i32 s1, s4, s3
	scratch_store_b32 off, v33, off offset:1084 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v58
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	v_writelane_b32 v254, s1, 19
	s_mul_i32 s0, s0, s27
	v_dual_mov_b32 v123, v25 :: v_dual_and_b32 v4, 0x760076, v12
	scratch_store_b32 off, v33, off offset:1088 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v59
	.loc	1 843 41 is_stmt 1              ; attention.py:843:41
	v_writelane_b32 v254, s0, 20
	v_readlane_b32 s0, v253, 4
	v_xor_b32_e32 v11, 0xc60, v72
	v_xor_b32_e32 v12, 0xe70, v72
	scratch_store_b32 off, v33, off offset:1092 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v60
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s0, v44
	v_dual_mov_b32 v72, v25 :: v_dual_add_nc_u32 v1, 0, v1
	v_lshl_or_b32 v4, v4, 4, v4
	scratch_store_b32 off, v33, off offset:1096 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v61
	v_writelane_b32 v254, s1, 21
	s_lshl_b32 s1, s0, 1
	v_and_b32_e32 v175, 0x7060706, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:636
	scratch_store_b32 off, v33, off offset:1100
	v_subrev_nc_u32_e32 v33, s41, v62
	v_writelane_b32 v254, s1, 22
	s_lshl_b32 s1, s0, 2
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	scratch_store_b32 off, v33, off offset:1104 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v63
	v_writelane_b32 v254, s1, 23
	s_lshl_b32 s1, s0, 3
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	scratch_store_b32 off, v33, off offset:1108 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v64
	v_writelane_b32 v254, s1, 24
	s_lshl_b32 s1, s0, 4
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v179, 0, v10
	scratch_store_b32 off, v33, off offset:1112 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v65
	v_writelane_b32 v254, s1, 25
	s_lshl_b32 s1, s0, 5
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v10, v25
	scratch_store_b32 off, v33, off offset:1116 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_writelane_b32 v254, s1, 26
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v20, v25
	scratch_store_b32 off, v33, off offset:1120 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v67
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	scratch_store_b32 off, v33, off offset:1124 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v69
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v6, v25
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v176, v219 :: v_dual_mov_b32 v119, v25
	scratch_store_b32 off, v33, off offset:1128 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v70
	v_mov_b32_e32 v93, v25
	v_mov_b32_e32 v91, v25
	v_mov_b32_e32 v89, v25
	v_mov_b32_e32 v87, v25
	scratch_store_b32 off, v33, off offset:1132 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v71
	v_mov_b32_e32 v73, v25
	v_mov_b32_e32 v68, v25
	v_mov_b32_e32 v74, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v254, s10, 27
	scratch_store_b32 off, v33, off offset:1136 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v75
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s17, s59, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s21, s55, 0xffff
	scratch_store_b32 off, v33, off offset:1140 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v76
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[42:43], off offset:648
	scratch_store_b32 off, v33, off offset:1144
	v_subrev_nc_u32_e32 v33, s41, v77
	scratch_store_b32 off, v33, off offset:1148 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v37
	scratch_store_b32 off, v33, off offset:1152 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v38
	scratch_store_b32 off, v33, off offset:1156 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s41, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1160
	scratch_store_b32 off, v46, off offset:908
	v_add_nc_u32_e32 v33, s42, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1164
	scratch_store_b32 off, v47, off offset:912
	v_add_nc_u32_e32 v33, s42, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1168
	scratch_store_b32 off, v48, off offset:916
	v_add_nc_u32_e32 v33, s42, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1172
	scratch_store_b32 off, v49, off offset:920
	v_add_nc_u32_e32 v33, s42, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1176
	scratch_store_b32 off, v36, off offset:924
	v_add_nc_u32_e32 v33, s42, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1180
	scratch_store_b32 off, v50, off offset:928
	v_add_nc_u32_e32 v33, s42, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1184
	scratch_store_b32 off, v51, off offset:932
	v_add_nc_u32_e32 v33, s42, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1188
	scratch_store_b32 off, v52, off offset:936
	v_add_nc_u32_e32 v33, s42, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1192
	scratch_store_b32 off, v53, off offset:940
	v_add_nc_u32_e32 v33, s42, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1196
	scratch_store_b32 off, v54, off offset:944
	v_add_nc_u32_e32 v33, s42, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1200
	scratch_store_b32 off, v55, off offset:948
	v_add_nc_u32_e32 v33, s42, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1204
	scratch_store_b32 off, v56, off offset:952
	v_add_nc_u32_e32 v33, s42, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1208
	scratch_store_b32 off, v57, off offset:956
	v_add_nc_u32_e32 v33, s42, v57
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1212
	scratch_store_b32 off, v58, off offset:960
	v_add_nc_u32_e32 v33, s42, v58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1216
	scratch_store_b32 off, v59, off offset:964
	v_add_nc_u32_e32 v33, s42, v59
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1220
	scratch_store_b32 off, v60, off offset:968
	v_add_nc_u32_e32 v33, s42, v60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1224
	scratch_store_b32 off, v61, off offset:972
	v_add_nc_u32_e32 v33, s42, v61
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1228
	scratch_store_b32 off, v62, off offset:976
	v_add_nc_u32_e32 v33, s42, v62
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1232
	scratch_store_b32 off, v63, off offset:980
	v_add_nc_u32_e32 v33, s42, v63
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1236
	scratch_store_b32 off, v64, off offset:984
	v_add_nc_u32_e32 v33, s42, v64
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1240
	scratch_store_b32 off, v65, off offset:988
	v_add_nc_u32_e32 v33, s42, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1244
	scratch_store_b32 off, v66, off offset:992
	v_add_nc_u32_e32 v33, s42, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1248
	scratch_store_b32 off, v39, off offset:1032
	v_add_nc_u32_e32 v33, s42, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1252
	scratch_store_b32 off, v38, off offset:1028
	v_add_nc_u32_e32 v33, s42, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1256
	scratch_store_b32 off, v37, off offset:1024
	v_add_nc_u32_e32 v33, s42, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1260
	scratch_store_b32 off, v77, off offset:1020
	v_add_nc_u32_e32 v33, s42, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1264
	scratch_store_b32 off, v76, off offset:1016
	v_add_nc_u32_e32 v33, s42, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1268
	scratch_store_b32 off, v75, off offset:1012
	v_add_nc_u32_e32 v33, s42, v75
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1272
	scratch_store_b32 off, v71, off offset:1008
	v_add_nc_u32_e32 v33, s42, v71
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1276
	scratch_store_b32 off, v70, off offset:1004
	v_add_nc_u32_e32 v33, s42, v70
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1280
	scratch_store_b32 off, v69, off offset:1000
	v_add_nc_u32_e32 v33, s42, v69
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:1284
	scratch_store_b32 off, v67, off offset:996
	v_dual_mov_b32 v70, v25 :: v_dual_add_nc_u32 v33, s42, v67
	v_mov_b32_e32 v66, v25
	v_dual_mov_b32 v76, 0xff800000 :: v_dual_mov_b32 v71, v25
	scratch_store_b32 off, v33, off offset:1288 ; 4-byte Folded Spill
	v_lshl_add_u32 v33, s47, 1, v40
	v_mov_b32_e32 v69, v25
	v_mov_b32_e32 v67, v25
	v_mov_b32_e32 v65, v25
	v_mov_b32_e32 v77, 0xff800000
	scratch_store_b32 off, v33, off offset:672 ; 4-byte Folded Spill
	v_lshl_add_u32 v33, s47, 2, v40
	v_mov_b32_e32 v75, 0xff800000
	scratch_store_b32 off, v33, off offset:676 ; 4-byte Folded Spill
	v_lshl_add_u32 v33, s47, 3, v40
	scratch_store_b32 off, v33, off offset:680 ; 4-byte Folded Spill
	v_lshl_add_u32 v33, s47, 4, v40
	scratch_store_b32 off, v33, off offset:684 ; 4-byte Folded Spill
	v_lshl_add_u32 v33, s47, 5, v40
	.loc	1 847 25                        ; attention.py:847:25
	scratch_store_b32 off, v33, off offset:688 ; 4-byte Folded Spill
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[33:34], null, s47, 6, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:692 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 10, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:700 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 12, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:708 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 14, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:716 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 18, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:724 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 20, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:732 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 22, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:740 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 24, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:748 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 26, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:756 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 28, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:764 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 30, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:772 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 34, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:780 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 36, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:788 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 38, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:796 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 40, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:804 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 42, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:812 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 44, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:820 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 46, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:828 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 48, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:836 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 50, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:844 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 52, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:852 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 54, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:860 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 56, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:868 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 58, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:876 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 60, v[40:41]
	scratch_store_b64 off, v[33:34], off offset:884 ; 8-byte Folded Spill
	v_mov_b32_e32 v33, v40
	scratch_store_b32 off, v5, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v8
	v_mov_b32_e32 v8, v25
	scratch_store_b64 off, v[33:34], off offset:628 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s47, 62, v[40:41]
	scratch_store_b32 off, v5, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v9
	v_mov_b32_e32 v9, v25
	scratch_store_b32 off, v5, off offset:532 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v11
	scratch_store_b64 off, v[33:34], off offset:892 ; 8-byte Folded Spill
	v_mov_b32_e32 v33, v44
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:288
	scratch_store_b32 off, v45, off offset:296
	scratch_store_b32 off, v5, off offset:536
	v_add_nc_u32_e32 v5, 0, v12
	v_mad_u64_u32 v[33:34], null, s0, v45, v[44:45]
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	scratch_store_b32 off, v5, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v13
	v_mov_b32_e32 v13, v25
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:900
	scratch_store_b32 off, v5, off offset:544
	v_mov_b32_e32 v5, v25
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v148, v57
	v_cvt_f32_i32_e32 v145, v58
	v_cvt_f32_i32_e32 v144, v59
	v_cvt_f32_i32_e32 v57, v60
	v_cvt_f32_i32_e32 v143, v62
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v60, v51
	v_cvt_f32_i32_e32 v59, v52
	v_cvt_f32_i32_e32 v58, v53
	v_cvt_f32_i32_e32 v52, v54
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v147, v42
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
	scratch_load_b32 v33, off, off offset:688
	scratch_load_b64 v[34:35], off, off offset:836
	scratch_load_b64 v[159:160], off, off offset:740
	scratch_load_b64 v[39:40], off, off offset:628
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s3, v254, 18
	v_readlane_b32 s30, v254, 19
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[87:88], off, off offset:780
	scratch_load_b64 v[89:90], off, off offset:724
	s_mov_b32 s31, s19
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s104, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v146, v61
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s30, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s30, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v47
	v_cvt_f32_i32_e32 v47, v48
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(34)
	v_mov_b16_e32 v119.h, v0.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v63, v63
	v_dual_mul_f32 v59, v176, v59 :: v_dual_mul_f32 v52, v203, v52
	v_dual_mul_f32 v53, v219, v53 :: v_dual_mul_f32 v46, v85, v46
	v_dual_mul_f32 v45, v203, v45 :: v_dual_mul_f32 v42, v85, v42
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v37, v85, v37
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[90:91], off, off offset:788
	scratch_load_b64 v[167:168], off, off offset:700
	scratch_load_b64 v[93:94], off, off offset:732
	scratch_load_b64 v[149:150], off, off offset:796
	scratch_load_b64 v[171:172], off, off offset:764
	scratch_load_b64 v[199:200], off, off offset:876
	scratch_load_b64 v[204:205], off, off offset:884
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v176, v50
	v_dual_mul_f32 v58, v85, v58 :: v_dual_mul_f32 v61, v203, v61
	v_mul_f32_e32 v60, v219, v60
	v_mul_f32_e32 v44, v219, v44
	v_mul_f32_e32 v36, v203, v36
	v_mul_f32_e32 v38, v203, v38
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(12)
	v_add_lshl_u32 v33, s3, v33, 2
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v34, s3, v34, 2
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v35, s3, v39, 2
	scratch_load_b32 v39, off, off offset:684 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v33, 0x80000000, v33, s9
	v_cndmask_b32_e64 v34, 0x80000000, v34, s102
	s_clause 0x1
	buffer_load_b32 v33, v33, s[28:31], 0 offen
	buffer_load_b32 v34, v34, s[28:31], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s22
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v39, s3, v39, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	s_clause 0x1
	buffer_load_b32 v40, v35, s[28:31], 0 offen
	buffer_load_b32 v39, v39, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v87, 2
	scratch_load_b64 v[87:88], off, off offset:844 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v33, 0xff800000, v33, s9
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v34, 0xff800000, v34, s102
	v_cndmask_b32_e64 v35, 0x80000000, v35, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s80, s102, vcc_lo
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s3, v87, 2
	scratch_load_b32 v87, off, off offset:672 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v48, 0x80000000, v48, s8
	s_clause 0x1
	buffer_load_b32 v88, v35, s[28:31], 0 offen
	buffer_load_b32 v48, v48, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v89, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, vcc_hi
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v87, s3, v87, 2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s98
	s_clause 0x1
	buffer_load_b32 v87, v87, s[28:31], 0 offen
	buffer_load_b32 v89, v35, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v90, 2
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[90:91], off, off offset:852
	scratch_load_b32 v91, off, off offset:676
	v_cndmask_b32_e64 v35, 0x80000000, v35, s103
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v90, s3, v90, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v91, s3, v91, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v90, 0x80000000, v90, s37
	s_clause 0x1
	buffer_load_b32 v92, v35, s[28:31], 0 offen
	buffer_load_b32 v90, v90, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v93, 2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s99
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s24
	s_clause 0x1
	buffer_load_b32 v91, v91, s[28:31], 0 offen
	buffer_load_b32 v93, v35, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v149, 2
	scratch_load_b64 v[149:150], off, off offset:860 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x80000000, v35, s12
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v94, s3, v149, 2
	scratch_load_b64 v[149:150], off, off offset:692 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	s_clause 0x1
	buffer_load_b32 v150, v35, s[28:31], 0 offen
	buffer_load_b32 v94, v94, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v159, 2
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[159:160], off, off offset:804
	scratch_load_b64 v[160:161], off, off offset:868
	scratch_load_b64 v[161:162], off, off offset:748
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v162, s3, v167, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s14
	scratch_load_b64 v[167:168], off, off offset:708 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v162, 0x80000000, v162, s1
	v_add_lshl_u32 v149, s3, v149, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v149, 0x80000000, v149, s100
	s_clause 0x1
	buffer_load_b32 v149, v149, s[28:31], 0 offen
	buffer_load_b32 v151, v35, s[28:31], 0 offen
	scratch_load_b32 v35, off, off offset:680 ; 4-byte Folded Reload
	v_add_lshl_u32 v161, s3, v161, 2
	v_add_lshl_u32 v159, s3, v159, 2
	v_add_lshl_u32 v160, s3, v160, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v161, 0x80000000, v161, s36
	v_cndmask_b32_e64 v159, 0x80000000, v159, s101
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v160, 0x80000000, v160, s25
	s_clause 0x1
	buffer_load_b32 v159, v159, s[28:31], 0 offen
	buffer_load_b32 v160, v160, s[28:31], 0 offen
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v35, s3, v35, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s34
	s_clause 0x1
	buffer_load_b32 v165, v35, s[28:31], 0 offen
	buffer_load_b32 v161, v161, s[28:31], 0 offen
	v_add_lshl_u32 v35, s3, v167, 2
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[167:168], off, off offset:716
	scratch_load_b64 v[168:169], off, off offset:756
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v169, s3, v171, 2
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[171:172], off, off offset:772
	scratch_load_b64 v[172:173], off, off offset:812
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v173, s3, v199, 2
	scratch_load_b64 v[199:200], off, off offset:820 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x80000000, v35, s23
	v_cndmask_b32_e64 v169, 0x80000000, v169, s6
	v_cndmask_b32_e64 v173, 0x80000000, v173, s15
	v_add_lshl_u32 v167, s3, v167, 2
	v_add_lshl_u32 v168, s3, v168, 2
	v_add_lshl_u32 v171, s3, v171, 2
	v_add_lshl_u32 v172, s3, v172, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v167, 0x80000000, v167, s10
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v178, s3, v199, 2
	scratch_load_b64 v[199:200], off, off offset:828 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v200, s3, v204, 2
	scratch_load_b64 v[204:205], off, off offset:892 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v172, 0x80000000, v172, s35
	v_cndmask_b32_e64 v168, 0x80000000, v168, s7
	v_cndmask_b32_e64 v171, 0x80000000, v171, s11
	v_cndmask_b32_e64 v178, 0x80000000, v178, s33
	v_cndmask_b32_e64 v200, 0x80000000, v200, s13
	s_clause 0x3
	buffer_load_b32 v172, v172, s[28:31], 0 offen
	buffer_load_b32 v173, v173, s[28:31], 0 offen
	buffer_load_b32 v162, v162, s[28:31], 0 offen
	buffer_load_b32 v168, v168, s[28:31], 0 offen
	v_add_lshl_u32 v199, s3, v199, 2
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v202, s3, v204, 2
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v199, 0x80000000, v199, s0
	v_cndmask_b32_e64 v202, 0x80000000, v202, s26
	s_clause 0x7
	buffer_load_b32 v204, v35, s[28:31], 0 offen
	buffer_load_b32 v167, v167, s[28:31], 0 offen
	buffer_load_b32 v169, v169, s[28:31], 0 offen
	buffer_load_b32 v171, v171, s[28:31], 0 offen
	buffer_load_b32 v178, v178, s[28:31], 0 offen
	buffer_load_b32 v199, v199, s[28:31], 0 offen
	buffer_load_b32 v200, v200, s[28:31], 0 offen
	buffer_load_b32 v202, v202, s[28:31], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v35, off, off offset:440
	scratch_load_b32 v235, off, off offset:600
	scratch_load_b32 v236, off, off offset:604
	scratch_load_b32 v237, off, off offset:608
	scratch_load_b32 v238, off, off offset:612
	scratch_load_b32 v239, off, off offset:616
	scratch_load_b32 v241, off, off offset:620
	scratch_load_b32 v242, off, off offset:624
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s88, s9, s3
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v35, 0, v35
	ds_store_2addr_b32 v35, v33, v34 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v39, s4
	v_cndmask_b32_e64 v33, 0xff800000, v40, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b32 v35, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s80
	v_cndmask_b32_e64 v34, 0, 1, s88
	s_and_b32 s93, s4, s39
	s_and_b32 s96, s22, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s93
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s22, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v216.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v88, s5
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v216.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v48, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v235, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v89, vcc_hi
	v_cndmask_b32_e64 v33, 0xff800000, v87, s98
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s90, s5, s3
	s_and_b32 s84, s8, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v235, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s84
	v_cndmask_b32_e64 v34, 0, 1, s90
	s_and_b32 s94, vcc_hi, s39
	s_and_b32 s98, s98, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s94
	v_or_b16 v40.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v92, s103
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v40.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v90, s37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v236, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v93, s24
	v_cndmask_b32_e64 v33, 0xff800000, v91, s99
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s91, s103, s3
	s_and_b32 s87, s37, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v236, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s87
	v_cndmask_b32_e64 v34, 0, 1, s91
	s_and_b32 s95, s24, s39
	s_and_b32 s99, s99, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s95
	v_or_b16 v48.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v150, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v48.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v94, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v237, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v151, s14
	v_cndmask_b32_e64 v33, 0xff800000, v149, s100
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s92, s12, s3
	s_and_b32 s89, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v237, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s89
	v_cndmask_b32_e64 v34, 0, 1, s92
	s_and_b32 s97, s14, s39
	s_and_b32 s100, s100, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s97
	v_or_b16 v149.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v159, s101
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v149.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v160, s25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v238, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v161, s36
	v_cndmask_b32_e64 v33, 0xff800000, v165, s34
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s68, s101, s3
	s_and_b32 s62, s25, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v238, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s62
	v_cndmask_b32_e64 v34, 0, 1, s68
	s_and_b32 s76, s36, s39
	s_and_b32 s79, s34, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s76
	v_or_b16 v150.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v172, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v150.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v173, s15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2)
	ds_store_2addr_b32 v239, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v168, s7
	v_cndmask_b32_e64 v33, 0xff800000, v162, s1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s70, s35, s3
	s_and_b32 s64, s15, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v239, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s64
	v_cndmask_b32_e64 v34, 0, 1, s70
	s_and_b32 s77, s7, s39
	s_and_b32 s81, s1, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s77
	v_or_b16 v151.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v178, s33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v178, v219, v148
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v151.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v200, s13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_b32 v241, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v169, s6
	v_cndmask_b32_e64 v33, 0xff800000, v204, s23
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s72, s33, s3
	s_and_b32 s66, s13, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v241, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s66
	v_cndmask_b32_e64 v34, 0, 1, s72
	s_and_b32 s78, s6, s39
	s_and_b32 s83, s23, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s78
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s23, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v165.h, v34.l, v0.h
	v_cndmask_b32_e64 v34, 0, 1, s83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v199, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v165.l, v34.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v202, s26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v33
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v242, v33, v34 offset0:64 offset1:96
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v34, 0xff800000, v171, s11
	v_cndmask_b32_e64 v33, 0xff800000, v167, s10
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s73, s0, s3
	s_and_b32 s71, s26, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v34
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b32 v242, v33, v34 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v33
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s71
	v_cndmask_b32_e64 v34, 0, 1, s73
	s_and_b32 s82, s11, s39
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s82
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v220, off, off offset:444
	scratch_load_b32 v221, off, off offset:448
	scratch_load_b32 v222, off, off offset:452
	scratch_load_b32 v223, off, off offset:456
	scratch_load_b32 v224, off, off offset:460
	scratch_load_b32 v225, off, off offset:464
	scratch_load_b32 v226, off, off offset:468
	v_or_b16 v169.h, v34.l, v0.h
	v_lshlrev_b16 v0.h, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v33, off, off offset:300
	scratch_load_b32 v227, off, off offset:472
	scratch_load_b32 v228, off, off offset:476
	scratch_load_b32 v229, off, off offset:480
	scratch_load_b32 v230, off, off offset:484
	scratch_load_b32 v231, off, off offset:488
	scratch_load_b32 v232, off, off offset:492
	scratch_load_b32 v233, off, off offset:496
	scratch_load_b32 v234, off, off offset:500
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s86, s10, s38
	v_readlane_b32 s10, v254, 27
	v_cndmask_b32_e64 v34, 0, 1, s86
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v169.l, v34.l, v0.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(15)
	ds_load_2addr_stride64_b32 v[89:90], v220 offset1:2
	s_waitcnt vmcnt(14)
	ds_load_2addr_stride64_b32 v[91:92], v221 offset1:2
	s_waitcnt vmcnt(12)
	ds_load_2addr_stride64_b32 v[93:94], v223 offset1:2
	s_waitcnt vmcnt(11)
	ds_load_2addr_stride64_b32 v[159:160], v224 offset1:2
	s_waitcnt vmcnt(10)
	ds_load_2addr_stride64_b32 v[161:162], v225 offset1:2
	s_waitcnt vmcnt(9)
	ds_load_2addr_stride64_b32 v[167:168], v226 offset1:2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v176, v145
	v_mul_f32_e32 v47, v85, v47
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v39, 0, v33
	ds_load_2addr_stride64_b32 v[33:34], v222 offset1:2
	s_waitcnt vmcnt(7)
	ds_load_2addr_stride64_b32 v[171:172], v227 offset1:2
	s_waitcnt vmcnt(6)
	ds_load_2addr_stride64_b32 v[199:200], v228 offset1:2
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b32 v[204:205], v229 offset1:2
	ds_load_2addr_stride64_b32 v[87:88], v39 offset1:2
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b32 v[206:207], v230 offset1:2
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b32 v[208:209], v231 offset1:2
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b32 v[210:211], v232 offset1:2
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b32 v[212:213], v233 offset1:2
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b32 v[214:215], v234 offset1:2
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v173, off, off offset:432
	scratch_load_b32 v0, off, off offset:516
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v33, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v142.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v142, 0x3fb8aa3b, v89 :: v_dual_mul_f32 v89, v85, v144
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v173, 0, v173
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v40
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	ds_store_b32 v173, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v173.h, v119.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v173.l, v119.l
	v_mov_b16_e32 v87.l, v119.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v148, v178, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v142, v145, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v141.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v91
	v_mul_f32_e32 v145, 0x3fb8aa3b, v93
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v141, v89, v87
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v87.h, v140.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v219, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v145, v89, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v139.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v176, v143
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v143, 0x3fb8aa3b, v159
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v143, v89, v87
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v87.h, v138.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v85, v63
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v63, v89, v87
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v87.h, v133.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v89, v203, v62 :: v_dual_mul_f32 v62, 0x3fb8aa3b, v167
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v62, v89, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v219, v147
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v132, 0x3fb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v132, v89, v87
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v87.h, v131.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v176, v64
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v204
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v64, v89, v87
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v87.h, v130.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v89, v85, v56 :: v_dual_mul_f32 v56, 0x3fb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v56, v89, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v203, v55
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v208
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v89, v87
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v87, 0x3fb8aa3b, v88
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v88.h, v128.l
	v_mov_b16_e32 v88.l, v119.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v87, v61, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v61.h, v127.l
	v_mov_b16_e32 v61.l, v119.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v88, v219, v54
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v210
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v54, v88, v61
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v61.h, v126.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v88, 0x3fb8aa3b, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v88, v50, v61
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v50.h, v125.l
	v_mov_b16_e32 v50.l, v119.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v214
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v61, v47, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v92
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v50.h, v124.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v60, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v50.h, v123.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v122.l
	v_mov_b16_e32 v34.l, v119.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v176, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v176, v43 :: v_dual_fmac_f32 v60, v59, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v94 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v211
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v58, v34
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v160
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v121.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v58, v52, v34
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v162
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v120.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, v53, v34 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v168
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v118.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, v51, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v86.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v172
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v51, v46, v34 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v200
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v45, v34 :: v_dual_mul_f32 v45, 0x3fb8aa3b, v207
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v72.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v45, v44, v34 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v209
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v71.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v43, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v70.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v70, 0x3fb8aa3b, v213 :: v_dual_fmac_f32 v59, v42, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v69.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v69, 0x3fb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v70, v38, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v68.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v176, v49 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v171
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v38, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v219, v41
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v49, v38, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v67.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v67, 0x3fb8aa3b, v215
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v65, v37, v34
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v34.h, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v67, v36, v34
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v48
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v149
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v150
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v151
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v165
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v34, off, off offset:544
	scratch_load_b32 v38, off, off offset:552
	scratch_load_b32 v41, off, off offset:576
	scratch_load_b32 v71, off, off offset:636
	s_waitcnt vmcnt(3)
	ds_load_u8_d16 v0, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v0, v34 offset:128
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v34, off, off offset:436
	scratch_load_b32 v37, off, off offset:548
	scratch_load_b32 v40, off, off offset:568
	scratch_load_b32 v66, off, off offset:592
	scratch_load_b32 v42, off, off offset:580
	scratch_load_b32 v43, off, off offset:588
	scratch_load_b32 v68, off, off offset:596
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s74, 1, v0.l
	v_and_b16 v0.l, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v142, s74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v211, 0xff800000, v69, s40
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v48, 0, v34
	ds_load_u8_d16 v34, v38
	s_waitcnt vmcnt(5)
	ds_load_u8_d16 v0, v37 offset:128
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v34, v37
	ds_load_u8_d16 v36, v48 offset:128
	scratch_load_b32 v37, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s39, 1, v0.l
	ds_load_u8_d16 v0, v38 offset:128
	scratch_load_b32 v38, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v0, v38 offset:128
	ds_load_u8_d16_hi v36, v37 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v47, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s49, 1, v0.l
	ds_load_u8_d16 v0, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v210, 0xff800000, v60, s49
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v0.h
	v_cmp_eq_u16_e64 s51, 1, v0.h
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v207, 0xff800000, v58, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s61, 1, v0.l
	ds_load_u8_d16 v0, v38
	scratch_load_b32 v38, off, off offset:564 ; 4-byte Folded Reload
	ds_load_u8_d16 v37, v40
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v37, v38
	v_and_b16 v0.l, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v252, 0xff800000, v145, s61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s63, 1, v0.l
	ds_load_u8_d16 v0, v38 offset:128
	ds_load_u8_d16 v38, v42 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v143, s63
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v0.l
	ds_load_u8_d16 v0, v40 offset:128
	scratch_load_b32 v40, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s48, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v205, 0xff800000, v53, s48
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
	v_cmp_eq_u16_e64 s55, 1, v0.l
	ds_load_u8_d16 v0, v41
	scratch_load_b32 v41, off, off offset:584 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s45, 1, v0.h
	v_and_b16 v0.h, 1, v38.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v49, s55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v73, 0xff800000, v51, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s46, 1, v0.h
	v_and_b16 v0.h, 1, v38.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v204, 0xff800000, v46, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v65, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	v_cmp_eq_u16_e64 s57, 1, v0.l
	ds_load_u8_d16 v0, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v132, s57
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s54, 1, v0.l
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v0, v41 offset:128
	ds_load_u8_d16_hi v40, v41
	ds_load_u8_d16 v41, v66
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v41, v71 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v64, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s38, 1, v0.l
	ds_load_u8_d16 v0, v43 offset:128
	ds_load_u8_d16 v42, v68 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v42, v66 offset:128
	ds_load_u8_d16 v43, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v200, 0xff800000, v45, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_waitcnt lgkmcnt(1)
	v_and_b16 v0.h, 1, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	v_and_b16 v0.l, 1, v41.l
	v_cmp_eq_u16_e64 s43, 1, v0.h
	v_and_b16 v0.h, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v199, 0xff800000, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s56, 1, v0.l
	ds_load_u8_d16 v0, v68
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u16_e64 s41, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v215, 0xff800000, v54, s56
	v_cndmask_b32_e64 v120, 0xff800000, v70, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s53, 1, v0.l
	v_and_b16 v0.l, 1, v34.h
	v_and_b16 v34.h, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v212, 0xff800000, v88, s53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s69, 1, v0.l
	v_and_b16 v0.l, 1, v37.h
	v_cmp_eq_u16_e64 s52, 1, v34.h
	v_and_b16 v34.h, 1, v36.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v203, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v141, s69
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s65, 1, v0.l
	v_and_b16 v0.l, 1, v37.l
	v_cmp_eq_u16_e64 s50, 1, v34.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v36, v119
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v208, 0xff800000, v87, s52
	v_cndmask_b32_e64 v250, 0xff800000, v63, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s67, 1, v0.l
	v_and_b16 v0.l, 1, v40.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v50, s50
	v_cndmask_b32_e64 v202, 0xff800000, v59, s43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v251, 0xff800000, v62, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v0.l
	v_and_b16 v0.l, 1, v43.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v217, 0xff800000, v56, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v0.l
	ds_load_u8_d16 v0, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v55, s58
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s60, 1, v0.l
	ds_load_u8_d16 v0, v48
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v213, 0xff800000, v61, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, 0xff800000, v67, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v0.l, 1, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s85, 1, v0.l
	v_and_b16 v0.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v148, s85
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s75, 1, v0.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v0, 0xff800000, v52, s47
	ds_store_2addr_stride64_b32 v39, v144, v208 offset1:2
	v_cndmask_b32_e64 v140, 0xff800000, v33, s75
	ds_store_2addr_stride64_b32 v220, v160, v211 offset1:2
	ds_store_2addr_stride64_b32 v221, v139, v209 offset1:2
	ds_store_2addr_stride64_b32 v222, v140, v210 offset1:2
	ds_store_2addr_stride64_b32 v223, v252, v206 offset1:2
	ds_store_2addr_stride64_b32 v224, v138, v207 offset1:2
	ds_store_2addr_stride64_b32 v225, v250, v0 offset1:2
	ds_store_2addr_stride64_b32 v226, v251, v205 offset1:2
	ds_store_2addr_stride64_b32 v227, v86, v73 offset1:2
	ds_store_2addr_stride64_b32 v228, v218, v204 offset1:2
	ds_store_2addr_stride64_b32 v229, v216, v165 offset1:2
	ds_store_2addr_stride64_b32 v230, v217, v200 offset1:2
	ds_store_2addr_stride64_b32 v231, v214, v199 offset1:2
	ds_store_2addr_stride64_b32 v232, v215, v202 offset1:2
	ds_store_2addr_stride64_b32 v233, v212, v120 offset1:2
	ds_store_2addr_stride64_b32 v234, v213, v121 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[45:46], v35 offset1:32
	ds_load_2addr_b32 v[47:48], v235 offset1:32
	ds_load_2addr_b32 v[51:52], v237 offset1:32
	ds_load_2addr_b32 v[49:50], v236 offset1:32
	ds_load_2addr_b32 v[132:133], v35 offset0:64 offset1:96
	ds_load_2addr_b32 v[130:131], v235 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v236 offset0:64 offset1:96
	ds_load_2addr_b32 v[126:127], v237 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v238 offset1:32
	ds_load_2addr_b32 v[71:72], v238 offset0:64 offset1:96
	ds_load_2addr_b32 v[122:123], v239 offset1:32
	ds_load_2addr_b32 v[69:70], v239 offset0:64 offset1:96
	ds_load_2addr_b32 v[55:56], v241 offset1:32
	ds_load_2addr_b32 v[67:68], v241 offset0:64 offset1:96
	ds_load_2addr_b32 v[53:54], v242 offset1:32
	ds_load_2addr_b32 v[65:66], v242 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v130, v130
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v45, v45
	v_max_f32_e32 v36, v47, v47
	v_dual_max_f32 v38, v51, v51 :: v_dual_max_f32 v37, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v33
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v34, v33
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v36, 31
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v46, v46
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v37, v34
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v33, v37
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v38, v33
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v38
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v33, v33, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v38
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s1, v37, 31
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v48, v48
	v_max_f32_e32 v33, v33, v38
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v38
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v34, 31
	v_mov_b32_dpp v34, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v37, v36
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v33, v33, v38
	v_max_f32_e32 v38, v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s3, v33, 31
	v_mov_b32_dpp v33, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v37
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v34, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v39, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v34, 31
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v132, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v38, v38, v39
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v40, s4 :: v_dual_max_f32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v36, 31
	v_mov_b32_e32 v36, s0
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v41, s5 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v33, v33, v34
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v35, v34
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v33, v35
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v37, s1 :: v_dual_mov_b32 v42, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s3
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v38, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v38, s2 :: v_dual_mov_b32 v43, s7
	ds_store_b128 v179, v[36:39]
	ds_store_b128 v179, v[40:43] offset:16
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v126, v126 :: v_dual_max_f32 v38, v127, v127
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v36, v128, v128
	v_max_f32_e32 v34, v34, v35
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v133, v133
	v_max_f32_e32 v36, v37, v36
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v131, v131 :: v_dual_mov_b32 v36, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v35, v34
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v33, 31
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, s0 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v34, s1
	v_max_f32_e32 v35, v37, v35
.Ltmp151:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v35, 31
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v35, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v39, s6
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v179, v[33:36] offset:32
	ds_store_b128 v179, v[37:40] offset:48
	v_mov_b32_dpp v33, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v124, v124 :: v_dual_max_f32 v35, v122, v122
	v_dual_max_f32 v36, v55, v55 :: v_dual_max_f32 v37, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v54, v54
.Ltmp173:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp174:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp190:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp191:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp194:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp196:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v125, v125
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp200:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp202:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v35, v35, v37
.Ltmp203:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp204:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp205:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp207:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp211:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp214:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp215:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s2, v35, 31
.Ltmp216:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v123, v123
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v35, v34
.Ltmp217:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp218:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v56, v56
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp219:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
.Ltmp220:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp221:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v35, v35, v35
.Ltmp222:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp223:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp224:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp225:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp226:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp227:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp228:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp229:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp232:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp233:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v33, 31
.Ltmp234:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp235:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v61, s4 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v62, s5
	v_max_f32_e32 v35, v37, v35
.Ltmp237:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp239:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp241:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp242:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp244:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp245:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp247:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp248:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp249:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp251:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp252:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp253:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s6, v35, 31
.Ltmp254:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v63, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp255:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v37, 31
	ds_load_b128 v[87:90], v201
	ds_load_b128 v[41:44], v201 offset:16
	ds_load_b128 v[37:40], v201 offset:32
	ds_load_b128 v[33:36], v201 offset:48
	v_mov_b32_e32 v59, s2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v64, s7
	ds_store_b128 v179, v[57:60]
	ds_store_b128 v179, v[61:64] offset:16
	v_mov_b32_dpp v57, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v58, v71, v71 :: v_dual_max_f32 v59, v69, v69
	v_dual_max_f32 v60, v67, v67 :: v_dual_max_f32 v61, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v62, v66, v66
	v_max_f32_e32 v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp258:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v57, v58
.Ltmp259:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp260:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v59, v58
.Ltmp261:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp262:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp263:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp264:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp265:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp266:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp267:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp268:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp269:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp271:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp272:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp273:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp274:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp275:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp276:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v60, v59
.Ltmp277:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, -1, -1 op_sel:[1,0]
.Ltmp278:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v58, v58, v60
.Ltmp279:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v58, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp280:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v58, v72, v72
	v_max_f32_e32 v60, v61, v60
.Ltmp281:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp282:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v58, v57
.Ltmp283:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp284:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v59, v61
.Ltmp285:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp286:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp287:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp288:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp290:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp291:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp292:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp293:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp294:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp295:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp297:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v60, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v59, 31
.Ltmp298:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v59, v58
.Ltmp299:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp300:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	v_max_f32_e32 v61, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v59, v59, v59
.Ltmp301:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v60, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp302:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v59
.Ltmp303:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp304:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp305:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp306:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp307:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp308:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp309:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp311:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp312:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp313:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp315:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v58, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp316:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp317:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v58, v58, v59
	v_mov_b32_dpp v59, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v58, 31
.Ltmp318:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_mov_b32 v58, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v61, v59
.Ltmp319:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp320:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v62, v61
.Ltmp321:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp322:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp324:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp325:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp326:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp327:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp328:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp329:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp331:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp332:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp333:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp335:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v61, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v59, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp336:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v62, v62, v62 :: v_dual_mov_b32 v59, s2
.Ltmp337:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v63, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, s5
.Ltmp339:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v61, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v61, s4 :: v_dual_mov_b32 v64, s7
	ds_store_b128 v179, v[57:60] offset:32
	ds_store_b128 v179, v[61:64] offset:48
	v_mov_b32_e32 v63, v87
.Ltmp340:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v90, v90
.Ltmp341:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp342:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v64, v87, v87 :: v_dual_mov_b32 v61, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp343:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp344:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v88, v88
	v_max_f32_e32 v60, v90, v90
.Ltmp345:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v89
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp346:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v59, v89, v89
	v_dual_max_f32 v146, v57, v60 :: v_dual_max_f32 v57, v183, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v149, v64, v63
.Ltmp347:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v88, v41 :: v_dual_mov_b32 v89, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp348:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v148, v62, v61
.Ltmp349:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v183, v57, v149 :: v_dual_max_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp350:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp351:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v41 :: v_dual_mov_b32 v90, v43
.Ltmp352:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v183
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp353:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v147, v59, v58
.Ltmp354:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp355:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp356:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp357:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
.Ltmp358:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v87, v44, v44
.Ltmp359:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp360:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
.Ltmp361:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp362:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v141, v87, v44
.Ltmp363:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v79, v79
.Ltmp364:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp365:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v79, v44, v141
.Ltmp366:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp367:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v52, v79
.Ltmp368:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp369:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
.Ltmp370:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp371:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v45, -1, -1 op_sel:[1,0]
.Ltmp372:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp373:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v57
.Ltmp374:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v185, v185
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp376:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v45, 31
.Ltmp377:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v185, v57, v148
.Ltmp378:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp379:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp380:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp381:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v41, v45
	v_max_f32_e32 v41, v89, v89
.Ltmp382:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp383:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
.Ltmp384:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v143, v42, v41
	v_dual_max_f32 v41, v90, v90 :: v_dual_max_f32 v42, v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp385:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp386:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v142, v43, v41 :: v_dual_max_f32 v41, v154, v154
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp387:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s98
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v76, v42, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v155, v155 :: v_dual_max_f32 v154, v41, v145
.Ltmp388:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp389:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v42, v48, v76 :: v_dual_max_f32 v155, v43, v142
	v_sub_f32_e32 v41, v46, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp390:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp391:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v43, v50, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp392:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp393:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp394:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp395:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v41, 0, v41, s93
.Ltmp396:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v47, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp397:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp398:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp399:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v47, v47, v57
.Ltmp400:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v187, v187
.Ltmp401:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp402:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v47, 31
.Ltmp403:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v187, v57, v147
.Ltmp404:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp405:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v187
.Ltmp406:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp407:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
.Ltmp408:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp409:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v41, -1, -1 op_sel:[1,0]
.Ltmp410:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
.Ltmp411:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp412:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s99
.Ltmp413:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v41, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp414:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v45
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp415:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v41, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v42, 31
.Ltmp416:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v43, v43, v45
.Ltmp417:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s1
	v_mov_b32_e32 v46, s5
.Ltmp418:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp419:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v43, 31
.Ltmp420:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v44, v45 :: v_dual_mov_b32 v45, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp421:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v47, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s7, v44, 31
	v_permlanex16_b32 v57, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v48, s7 :: v_dual_add_f32 v49, v49, v57
.Ltmp422:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v189, v189
.Ltmp423:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v49, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp424:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v189, v57, v146
.Ltmp425:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v43, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp426:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v189
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s100
.Ltmp427:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp428:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp429:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v57
.Ltmp430:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v51, 31
.Ltmp431:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[49:52], v201
	ds_load_b128 v[87:90], v201 offset:16
	ds_load_b128 v[61:64], v201 offset:32
	ds_load_b128 v[57:60], v201 offset:48
.Ltmp432:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v44, s3
	ds_store_b128 v179, v[41:44]
	ds_store_b128 v179, v[45:48] offset:16
.Ltmp433:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v42, v37 :: v_dual_mov_b32 v43, v38
.Ltmp434:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_mov_b32 v44, v39
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp435:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp436:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp437:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v33
.Ltmp438:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp439:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, v34
.Ltmp440:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_mov_b32 v48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp441:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp442:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v159, v37, v42
	v_max_f32_e32 v37, v43, v43
.Ltmp443:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp444:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v40, v40
.Ltmp445:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp446:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_dual_max_f32 v178, v38, v37 :: v_dual_max_f32 v37, v44, v44
.Ltmp447:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp448:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v35, v35, v35
	v_max_f32_e32 v45, v36, v36
	v_max_f32_e32 v151, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp449:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v37, v135, v135 :: v_dual_max_f32 v150, v41, v40
.Ltmp450:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v42, v87
	v_dual_mov_b32 v44, v88 :: v_dual_max_f32 v135, v37, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp451:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v87, v87 :: v_dual_max_f32 v36, v36, v36
.Ltmp452:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp453:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v132, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp454:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp455:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp456:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp457:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp458:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v37, 31
.Ltmp459:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v137, v38, v178
.Ltmp460:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v46, v46 :: v_dual_mov_b32 v46, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp461:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v130, v137
.Ltmp462:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v132, v33, v37 :: v_dual_max_f32 v33, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp463:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp464:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v47, v89, v89
.Ltmp465:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp466:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v130, v34, v33 :: v_dual_max_f32 v33, v48, v48
.Ltmp467:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v245, v245
	v_max_f32_e32 v245, v34, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s90
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v131, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp468:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp469:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp470:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp471:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s84
.Ltmp472:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp473:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp474:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v38, v38, v39
.Ltmp475:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v194, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp476:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp477:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v38, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp478:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v194, v39, v151
.Ltmp479:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp480:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v128, v194 :: v_dual_max_f32 v128, v35, v33
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v244, v244
	v_max_f32_e32 v35, v246, v246
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v244, v33, v132
	v_max_f32_e32 v246, v35, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v133, v244
	v_sub_f32_e32 v35, v129, v246
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s91
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v35, v35
.Ltmp481:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp482:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s87
.Ltmp483:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp484:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v40, v39, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp485:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v39, v39, v40
.Ltmp486:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v196, v196
.Ltmp487:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp488:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v39, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp489:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v196, v40, v150
.Ltmp490:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp491:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v126, v196
.Ltmp492:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v126, v45, v36
.Ltmp493:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v36, v247, v247 :: v_dual_add_f32 v33, v33, v37
.Ltmp494:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp495:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
.Ltmp496:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v88, v88
.Ltmp497:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v247, v36, v126
.Ltmp498:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
.Ltmp499:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
.Ltmp500:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v33, s0 :: v_dual_sub_f32 v36, v127, v247
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp501:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s92
.Ltmp502:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp503:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
.Ltmp504:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, s1
	v_mov_b32_e32 v38, s5
.Ltmp505:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp506:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp507:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp508:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp509:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s89
.Ltmp510:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp511:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v41, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp512:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_add_f32 v40, v40, v41 :: v_dual_max_f32 v41, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp513:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp514:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v40, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp515:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v90, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp516:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mov_b32 v37, s4
.Ltmp517:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v36, 31
	v_mov_b32_e32 v36, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v40, s7
	ds_store_b128 v179, v[33:36] offset:32
	ds_store_b128 v179, v[37:40] offset:48
.Ltmp518:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v49 :: v_dual_max_f32 v33, v52, v52
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp519:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v49, v49 :: v_dual_mov_b32 v36, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp520:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v51
.Ltmp521:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v40, v52, v52 :: v_dual_max_f32 v37, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp522:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp523:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp524:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp525:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v131, v33, v40
.Ltmp526:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v191, v191
.Ltmp527:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v51, v51
	v_max_f32_e32 v162, v35, v34
	v_max_f32_e32 v34, v36, v36
.Ltmp528:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp529:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v191, v33, v162
.Ltmp530:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v161, v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v38, v38 :: v_dual_sub_f32 v33, v124, v191
	v_max_f32_e32 v133, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp531:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp532:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp533:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
.Ltmp534:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp535:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v193, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp536:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
.Ltmp537:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v193, v34, v161
.Ltmp538:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp539:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v122, v193
.Ltmp540:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v129, v43, v33
	v_max_f32_e32 v33, v44, v44
	v_max_f32_e32 v122, v41, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp541:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp542:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v127, v45, v33
	v_max_f32_e32 v33, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v124, v47, v33
.Ltmp543:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp544:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp545:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
.Ltmp546:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_max_f32 v35, v164, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp547:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
.Ltmp548:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v164, v35, v133
	v_max_f32_e32 v34, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v55, v164
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v83, v34, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v123, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp549:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp550:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp551:
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
.Ltmp552:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v153, v153
.Ltmp554:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp555:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v153, v36, v131
	v_dual_max_f32 v35, v134, v134 :: v_dual_sub_f32 v36, v53, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v134, v35, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v56, v134
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s86
.Ltmp556:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp557:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s78
.Ltmp558:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp559:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp560:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v36, v36, v37
.Ltmp561:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v156, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp562:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v36, 31
.Ltmp563:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v156, v37, v122
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp564:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, s3 :: v_dual_sub_f32 v37, v54, v156
	ds_load_b128 v[53:56], v201
	ds_load_b128 v[49:52], v201 offset:16
	ds_load_b128 v[45:48], v201 offset:32
	ds_load_b128 v[41:44], v201 offset:48
.Ltmp565:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v81, v81
.Ltmp566:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp567:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v81, v33, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v125, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s82
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp568:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp569:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s76
.Ltmp570:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp571:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp572:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp573:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp574:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp575:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v33, s0
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp576:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp577:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v34, s1
	v_readlane_b32 s6, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp578:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp579:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, s2 :: v_dual_mov_b32 v38, s5
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s7, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v179, v[33:36]
	ds_store_b128 v179, v[37:40] offset:16
.Ltmp580:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v61 :: v_dual_max_f32 v33, v64, v64
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp581:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v61, v61 :: v_dual_mov_b32 v36, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp582:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v63
.Ltmp583:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v40, v64, v64 :: v_dual_max_f32 v37, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp584:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp585:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp586:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp587:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v169, v33, v40
.Ltmp588:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v198, v198
.Ltmp589:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v63, v63
	v_dual_max_f32 v173, v35, v34 :: v_dual_max_f32 v34, v36, v36
.Ltmp590:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v62, v57 :: v_dual_mov_b32 v63, v58
.Ltmp591:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp592:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v198, v33, v173
.Ltmp593:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v172, v37, v34
	v_max_f32_e32 v34, v38, v38
.Ltmp594:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v64, v59
.Ltmp595:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v71, v198
.Ltmp596:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp597:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v171, v39, v34
	v_max_f32_e32 v58, v58, v58
.Ltmp598:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp599:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp600:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v61, v60, v60
.Ltmp601:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp602:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
.Ltmp603:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp604:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v123, v61, v60
.Ltmp605:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp606:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp607:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_max_f32 v34, v96, v96
.Ltmp608:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp609:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v96, v34, v172
.Ltmp610:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v62, v62 :: v_dual_sub_f32 v34, v69, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v168, v57, v33 :: v_dual_max_f32 v33, v63, v63
.Ltmp611:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v57.h, v119.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp612:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v167, v58, v33
	v_max_f32_e32 v33, v64, v64
	v_max_f32_e32 v125, v59, v33
.Ltmp613:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v248, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s70
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v248, v33, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp615:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v72, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp616:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp617:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp618:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp619:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s62
.Ltmp620:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp621:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v34, v34, v35
.Ltmp622:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp623:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp624:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp625:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v98, v35, v171
	v_max_f32_e32 v34, v249, v249
.Ltmp626:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp627:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v67, v98
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v249, v34, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp628:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp629:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v70, v249
.Ltmp630:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp631:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp632:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp633:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s72
.Ltmp634:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp635:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp636:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s64
	v_readlane_b32 s0, v255, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp637:
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
.Ltmp638:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp639:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v35, v35, v36
.Ltmp640:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v100, v100
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s2, v35, 31
.Ltmp642:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v100, v36, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v35, v181, v181 :: v_dual_add_f32 v34, v34, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v65, v100 :: v_dual_max_f32 v181, v35, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp643:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
	v_readlane_b32 s1, v253, 4
.Ltmp644:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v68, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp645:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp646:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp647:
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
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp649:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v36, v36, v37 :: v_dual_max_f32 v37, v182, v182
.Ltmp650:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v36, 31
.Ltmp651:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v182, v37, v123 :: v_dual_add_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp652:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, s3 :: v_dual_sub_f32 v37, v66, v182
	v_readlane_b32 s6, v35, 31
	v_mov_b32_e32 v35, s2
	s_mov_b32 s2, 0x76543210
.Ltmp653:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp654:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v39, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp655:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s71
.Ltmp656:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp657:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp658:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp659:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v37, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s7
	ds_store_b128 v179, v[33:36] offset:32
	ds_store_b128 v179, v[37:40] offset:48
.Ltmp660:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v218, v216, v217
	v_max3_f32 v34, v214, v215, v212
	v_max3_f32 v35, v213, v208, v211
	v_max3_f32 v36, v73, v204, v165
.Ltmp661:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v119.l
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
.Ltmp662:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v34, v35
	v_max3_f32 v34, v209, v210, v206
	v_max3_f32 v35, v207, v0, v205
.Ltmp663:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.h, v119.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp664:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v34, v35, v36
	v_max_f32_e32 v35, v144, v160
	v_max3_f32 v36, v140, v252, v138
	v_max3_f32 v35, v35, v139, v36
	v_max3_f32 v36, v250, v251, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v35, v36, v33
	v_max_f32_e32 v35, v200, v199
	v_max_f32_e32 v36, v120, v121
	v_max3_f32 v35, v35, v202, v36
.Ltmp665:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v119.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp666:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v34, v35
.Ltmp667:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v119.l
.Ltmp668:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp669:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v118, v170, v33, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v119.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v160, v118
	v_sub_f32_e32 v0, v0, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s74
	v_cndmask_b32_e64 v0, 0, v0, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v144, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s85
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v174
	v_perm_b32 v34, v35, v34, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v140, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v139, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s69
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v174
	v_perm_b32 v36, v37, v36, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v138, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v252, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s61
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v174
	v_perm_b32 v38, v39, v38, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v251, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v250, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v57.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v39, v39
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v57, v39, v57, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v57.h, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v57, v40, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v57, v40, v174
	v_perm_b32 v40, v57, v40, v175
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s79, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s80, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s81, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s82, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s83, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s84, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s85, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s86, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s87, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s88, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s89, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s90, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s91, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s77, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s78, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s76, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s75, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s73, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s74, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s71, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s72, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s69, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s70, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s68, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s67, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s65, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s66, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s63, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s64, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s61, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s62, s27, v57
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v57, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v57, s104, v57
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s104, s104, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s27, v57
	scratch_load_b64 v[57:58], off, off offset:900 ; 8-byte Folded Reload
.Ltmp670:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[57:58], null, s0, s1, v[57:58]
.Ltmp671:
	.loc	1 890 30                        ; attention.py:890:30
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
	v_add_lshl_u32 v138, v57, s0, 1
	s_mul_i32 s0, s1, 48
	v_add_lshl_u32 v139, v57, s0, 1
	s_mul_i32 s0, s1, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v140, v57, s0, 1
	s_mul_i32 s0, s1, 52
	v_add_lshl_u32 v144, v57, s0, 1
	s_mul_i32 s0, s1, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v160, v57, s0, 1
	s_mul_i32 s0, s1, 56
	v_add_lshl_u32 v220, v57, s0, 1
	s_mul_i32 s0, s1, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v221, v57, s0, 1
	s_mul_i32 s0, s1, 60
	v_add_lshl_u32 v222, v57, s0, 1
	s_mul_i32 s0, s1, 62
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v57, v57, s0, 1
	v_readlane_b32 s0, v254, 21
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s79
	s_and_b32 s77, s0, s77
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v58, 0x80000000, v58, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s80
	s_and_b32 s76, s0, s76
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v59, 0x80000000, v59, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s81
	s_and_b32 s75, s0, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v60, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s82
	s_and_b32 s73, s0, s73
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v61, 0x80000000, v61, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s83
	s_and_b32 s71, s0, s71
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v62, 0x80000000, v62, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s84
	s_and_b32 s69, s0, s69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v63, 0x80000000, v63, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s85
	s_and_b32 s68, s0, s68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v64, 0x80000000, v64, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s86
	s_and_b32 s67, s0, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s87
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v223, v58, s[20:23], 0 offen
	buffer_load_u16 v224, v59, s[20:23], 0 offen
	buffer_load_u16 v225, v60, s[20:23], 0 offen
	buffer_load_u16 v226, v61, s[20:23], 0 offen
	buffer_load_u16 v227, v62, s[20:23], 0 offen
	buffer_load_u16 v228, v63, s[20:23], 0 offen
	buffer_load_u16 v229, v64, s[20:23], 0 offen
	buffer_load_u16 v230, v65, s[20:23], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v66, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v63, 0x80000000, v71, s77
	v_cndmask_b32_e64 v59, 0x80000000, v67, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s89
	s_and_b32 s77, s0, s78
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v68, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v64, 0x80000000, v72, s77
	v_cndmask_b32_e64 v61, 0x80000000, v69, s79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s79, s0, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v87, s76
	v_cndmask_b32_e64 v62, 0x80000000, v70, s79
	s_clause 0x7
	buffer_load_u16 v87, v58, s[20:23], 0 offen
	buffer_load_u16 v231, v59, s[20:23], 0 offen
	buffer_load_u16 v232, v60, s[20:23], 0 offen
	buffer_load_u16 v233, v61, s[20:23], 0 offen
	buffer_load_u16 v234, v62, s[20:23], 0 offen
	buffer_load_u16 v235, v63, s[20:23], 0 offen
	buffer_load_u16 v236, v64, s[20:23], 0 offen
	buffer_load_u16 v237, v65, s[20:23], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v88, s75
	v_cndmask_b32_e64 v59, 0x80000000, v89, s73
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s73, s0, s74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v61, 0x80000000, v91, s71
	v_cndmask_b32_e64 v60, 0x80000000, v90, s73
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s71, s0, s72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v63, 0x80000000, v93, s69
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s0, s70
	s_and_b32 s65, s0, s65
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v62, 0x80000000, v92, s71
	v_cndmask_b32_e64 v64, 0x80000000, v94, s69
	v_cndmask_b32_e64 v65, 0x80000000, v138, s68
	s_clause 0x7
	buffer_load_u16 v88, v58, s[20:23], 0 offen
	buffer_load_u16 v89, v59, s[20:23], 0 offen
	buffer_load_u16 v90, v60, s[20:23], 0 offen
	buffer_load_u16 v91, v61, s[20:23], 0 offen
	buffer_load_u16 v92, v62, s[20:23], 0 offen
	buffer_load_u16 v93, v63, s[20:23], 0 offen
	buffer_load_u16 v94, v64, s[20:23], 0 offen
	buffer_load_u16 v138, v65, s[20:23], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v139, s67
	v_cndmask_b32_e64 v59, 0x80000000, v140, s65
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s65, s0, s66
	s_and_b32 s63, s0, s63
	s_and_b32 s61, s0, s61
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v144, s65
	v_cndmask_b32_e64 v61, 0x80000000, v160, s63
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s63, s0, s64
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v63, 0x80000000, v221, s61
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s61, s0, s62
	s_and_b32 s3, s0, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v62, 0x80000000, v220, s63
	v_cndmask_b32_e64 v64, 0x80000000, v222, s61
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x7
	buffer_load_u16 v139, v58, s[20:23], 0 offen
	buffer_load_u16 v140, v59, s[20:23], 0 offen
	buffer_load_u16 v144, v60, s[20:23], 0 offen
	buffer_load_u16 v160, v61, s[20:23], 0 offen
	buffer_load_u16 v220, v62, s[20:23], 0 offen
	buffer_load_u16 v221, v63, s[20:23], 0 offen
	buffer_load_u16 v222, v64, s[20:23], 0 offen
	buffer_load_u16 v238, v57, s[20:23], 0 offen
.Ltmp672:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[69:72], v201
	ds_load_b128 v[65:68], v201 offset:16
	ds_load_b128 v[61:64], v201 offset:32
	ds_load_b128 v[57:60], v201 offset:48
.Ltmp673:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v239, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v170
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s104, s10
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v240, v239
	ds_store_b16 v239, v223
	ds_store_b16 v239, v224 offset:256
	ds_store_b16 v239, v225 offset:512
	ds_store_b16 v239, v226 offset:768
	ds_store_b16 v239, v227 offset:1024
	ds_store_b16 v239, v228 offset:1280
	ds_store_b16 v239, v229 offset:1536
	ds_store_b16 v239, v230 offset:1792
	ds_store_b16 v239, v87 offset:2048
	ds_store_b16 v239, v231 offset:2304
	ds_store_b16 v239, v232 offset:2560
	ds_store_b16 v239, v233 offset:2816
	ds_store_b16 v239, v234 offset:3072
	ds_store_b16 v239, v235 offset:3328
	ds_store_b16 v239, v236 offset:3584
	ds_store_b16 v239, v237 offset:3840
	ds_store_b16 v239, v88 offset:4096
	ds_store_b16 v239, v89 offset:4352
	ds_store_b16 v239, v90 offset:4608
	ds_store_b16 v239, v91 offset:4864
	ds_store_b16 v239, v92 offset:5120
	ds_store_b16 v239, v93 offset:5376
	ds_store_b16 v239, v94 offset:5632
	ds_store_b16 v239, v138 offset:5888
	ds_store_b16 v239, v139 offset:6144
	ds_store_b16 v239, v140 offset:6400
	ds_store_b16 v239, v144 offset:6656
	ds_store_b16 v239, v160 offset:6912
	ds_store_b16 v239, v220 offset:7168
	ds_store_b16 v239, v221 offset:7424
	ds_store_b16 v239, v222 offset:7680
	ds_store_b16 v239, v238 offset:7936
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v87, v170, v118
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v139, v240 :: v_dual_mov_b32 v170, v118
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v138, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v87, v166
	ds_load_u16_d16 v88, v166 offset:256
	ds_load_u16_d16 v89, v166 offset:512
	ds_load_u16_d16 v90, v166 offset:768
	ds_load_u16_d16 v91, v166 offset:1024
	ds_load_u16_d16 v92, v166 offset:1280
	ds_load_u16_d16 v93, v166 offset:1536
	ds_load_u16_d16 v94, v166 offset:1792
	ds_load_u16_d16 v220, v166 offset:32
	ds_load_u16_d16 v221, v166 offset:288
	ds_load_u16_d16 v228, v166 offset:64
	ds_load_u16_d16 v229, v166 offset:320
	ds_load_u16_d16 v237, v166 offset:352
	ds_load_u16_d16 v236, v166 offset:96
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v166 offset:128
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v166 offset:384
	ds_load_u16_d16 v222, v166 offset:544
	ds_load_u16_d16 v223, v166 offset:800
	ds_load_u16_d16 v230, v166 offset:576
	ds_load_u16_d16 v231, v166 offset:832
	ds_load_u16_d16 v239, v166 offset:864
	ds_load_u16_d16 v238, v166 offset:608
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v166 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v90, v166 offset:896
	ds_load_u16_d16 v224, v166 offset:1056
	ds_load_u16_d16 v225, v166 offset:1312
	ds_load_u16_d16 v232, v166 offset:1088
	ds_load_u16_d16 v233, v166 offset:1344
	ds_load_u16_d16 v241, v166 offset:1376
	ds_load_u16_d16 v240, v166 offset:1120
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v166 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v92, v166 offset:1408
	ds_load_u16_d16 v226, v166 offset:1568
	ds_load_u16_d16 v227, v166 offset:1824
	ds_load_u16_d16 v234, v166 offset:1600
	ds_load_u16_d16 v235, v166 offset:1856
	ds_load_u16_d16 v243, v166 offset:1888
	ds_load_u16_d16 v242, v166 offset:1632
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v166 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v94, v166 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v220, v166 offset:160
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v221, v166 offset:416
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v222, v166 offset:672
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v223, v166 offset:928
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v166 offset:1184
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v225, v166 offset:1440
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v226, v166 offset:1696
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v227, v166 offset:1952
	ds_load_u16_d16_hi v228, v166 offset:192
	ds_load_u16_d16_hi v229, v166 offset:448
	ds_load_u16_d16_hi v230, v166 offset:704
	ds_load_u16_d16_hi v231, v166 offset:960
	ds_load_u16_d16_hi v232, v166 offset:1216
	ds_load_u16_d16_hi v233, v166 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v234, v166 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v235, v166 offset:1984
	ds_load_u16_d16_hi v236, v166 offset:224
	ds_load_u16_d16_hi v237, v166 offset:480
	ds_load_u16_d16_hi v238, v166 offset:736
	ds_load_u16_d16_hi v239, v166 offset:992
	ds_load_u16_d16_hi v240, v166 offset:1248
	ds_load_u16_d16_hi v241, v166 offset:1504
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v242, v166 offset:1760
	ds_load_u16_d16_hi v243, v166 offset:2016
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v138, 0, v138, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v138
	v_mul_f32_e32 v26, v26, v138
	v_mul_f32_e32 v27, v27, v138
	v_mul_f32_e32 v28, v28, v138
	v_mul_f32_e32 v29, v29, v138
	v_mul_f32_e32 v30, v30, v138
	v_mul_f32_e32 v32, v32, v138
	v_mul_f32_e32 v31, v31, v138
	v_mul_f32_e32 v9, v9, v138
	v_mul_f32_e32 v10, v10, v138
	v_mul_f32_e32 v11, v11, v138
	v_mul_f32_e32 v12, v12, v138
	v_mul_f32_e32 v13, v13, v138
	v_mul_f32_e32 v14, v14, v138
	v_mul_f32_e32 v15, v15, v138
	v_mul_f32_e32 v16, v16, v138
	v_mul_f32_e32 v17, v17, v138
	v_mul_f32_e32 v18, v18, v138
	v_mul_f32_e32 v19, v19, v138
	v_mul_f32_e32 v20, v20, v138
	v_mul_f32_e32 v21, v21, v138
	v_mul_f32_e32 v22, v22, v138
	v_mul_f32_e32 v23, v23, v138
	v_mul_f32_e32 v24, v24, v138
	v_mul_f32_e32 v1, v1, v138
	v_mul_f32_e32 v2, v2, v138
	v_mul_f32_e32 v3, v3, v138
	v_mul_f32_e32 v4, v4, v138
	v_mul_f32_e32 v5, v5, v138
	v_mul_f32_e32 v6, v6, v138
	v_mul_f32_e32 v7, v7, v138
	v_mul_f32_e32 v8, v8, v138
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[87:94], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[220:227], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[228:235], v[33:40], v[17:24]
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v94, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[236:243], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v218, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
	v_mov_b16_e32 v40.h, v119.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v86, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v86.h, v119.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s55, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s55
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v174
	v_perm_b32 v34, v35, v34, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v217, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v216, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s54, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s54
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v174
	v_perm_b32 v36, v37, v36, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v215, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v214, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s54, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s54
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v174
	v_perm_b32 v38, v39, v38, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v213, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v212, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v86.l, v39.h
	v_cmp_o_f32_e64 s53, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v86, v39, v86, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v86.h, s53
	v_permlanex16_b32 v86, v40, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v86, v40, v174
	v_perm_b32 v40, v86, v40, v175
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v86, v166 offset:2048
	ds_load_u16_d16 v87, v166 offset:2304
	ds_load_u16_d16 v88, v166 offset:2560
	ds_load_u16_d16 v89, v166 offset:2816
	ds_load_u16_d16 v90, v166 offset:3072
	ds_load_u16_d16 v91, v166 offset:3328
	ds_load_u16_d16 v92, v166 offset:3584
	ds_load_u16_d16 v93, v166 offset:3840
	ds_load_u16_d16 v220, v166 offset:2080
	ds_load_u16_d16 v221, v166 offset:2336
	ds_load_u16_d16 v228, v166 offset:2112
	ds_load_u16_d16 v229, v166 offset:2368
	ds_load_u16_d16 v237, v166 offset:2400
	ds_load_u16_d16 v236, v166 offset:2144
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v166 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v166 offset:2432
	ds_load_u16_d16 v222, v166 offset:2592
	ds_load_u16_d16 v223, v166 offset:2848
	ds_load_u16_d16 v230, v166 offset:2624
	ds_load_u16_d16 v231, v166 offset:2880
	ds_load_u16_d16 v239, v166 offset:2912
	ds_load_u16_d16 v238, v166 offset:2656
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v166 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v166 offset:2944
	ds_load_u16_d16 v224, v166 offset:3104
	ds_load_u16_d16 v225, v166 offset:3360
	ds_load_u16_d16 v232, v166 offset:3136
	ds_load_u16_d16 v233, v166 offset:3392
	ds_load_u16_d16 v241, v166 offset:3424
	ds_load_u16_d16 v240, v166 offset:3168
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v166 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v166 offset:3456
	ds_load_u16_d16 v226, v166 offset:3616
	ds_load_u16_d16 v227, v166 offset:3872
	ds_load_u16_d16 v234, v166 offset:3648
	ds_load_u16_d16 v235, v166 offset:3904
	ds_load_u16_d16 v243, v166 offset:3936
	ds_load_u16_d16 v242, v166 offset:3680
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v166 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v166 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v220, v166 offset:2208
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v221, v166 offset:2464
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v222, v166 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v223, v166 offset:2976
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v166 offset:3232
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v225, v166 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v226, v166 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v227, v166 offset:4000
	ds_load_u16_d16_hi v228, v166 offset:2240
	ds_load_u16_d16_hi v229, v166 offset:2496
	ds_load_u16_d16_hi v230, v166 offset:2752
	ds_load_u16_d16_hi v231, v166 offset:3008
	ds_load_u16_d16_hi v232, v166 offset:3264
	ds_load_u16_d16_hi v233, v166 offset:3520
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v234, v166 offset:3776
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v235, v166 offset:4032
	ds_load_u16_d16_hi v236, v166 offset:2272
	ds_load_u16_d16_hi v237, v166 offset:2528
	ds_load_u16_d16_hi v238, v166 offset:2784
	ds_load_u16_d16_hi v239, v166 offset:3040
	ds_load_u16_d16_hi v240, v166 offset:3296
	ds_load_u16_d16_hi v241, v166 offset:3552
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v242, v166 offset:3808
	ds_load_u16_d16_hi v243, v166 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[86:93], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[220:227], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[228:235], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[236:243], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v211, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v119.l
	v_mov_b16_e32 v39.h, v119.l
	v_mov_b16_e32 v40.h, v119.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v208, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s52
	v_readlane_b32 s52, v254, 28
	v_readlane_b32 s53, v254, 29
	v_readlane_b32 s54, v254, 30
	v_readlane_b32 s55, v254, 31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s40, v33, v33
	v_readlane_b32 s56, v255, 0
	v_readlane_b32 s57, v255, 1
	v_readlane_b32 s58, v255, 2
	v_and_b32_e32 v35, 1, v35
	v_readlane_b32 s59, v255, 3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v174
	v_perm_b32 v34, v35, v34, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v210, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v209, v118
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
	v_permlanex16_b32 v37, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v174
	v_perm_b32 v36, v37, v36, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v207, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v206, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s39
	v_cmp_o_f32_e64 s39, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v174
	v_perm_b32 v38, v39, v38, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v205, v118
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v86, v166 offset:4096
	ds_load_u16_d16 v87, v166 offset:4352
	ds_load_u16_d16 v88, v166 offset:4608
	ds_load_u16_d16 v89, v166 offset:4864
	ds_load_u16_d16 v90, v166 offset:5120
	ds_load_u16_d16 v91, v166 offset:5376
	ds_load_u16_d16 v92, v166 offset:5632
	ds_load_u16_d16 v93, v166 offset:5888
	ds_load_u16_d16 v205, v166 offset:4128
	ds_load_u16_d16 v206, v166 offset:4384
	ds_load_u16_d16 v220, v166 offset:4160
	ds_load_u16_d16 v221, v166 offset:4416
	ds_load_u16_d16 v229, v166 offset:4448
	ds_load_u16_d16 v228, v166 offset:4192
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v166 offset:4224
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v166 offset:4480
	ds_load_u16_d16 v207, v166 offset:4640
	ds_load_u16_d16 v208, v166 offset:4896
	ds_load_u16_d16 v222, v166 offset:4672
	ds_load_u16_d16 v223, v166 offset:4928
	ds_load_u16_d16 v231, v166 offset:4960
	ds_load_u16_d16 v230, v166 offset:4704
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v166 offset:4736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v166 offset:4992
	ds_load_u16_d16 v209, v166 offset:5152
	ds_load_u16_d16 v210, v166 offset:5408
	ds_load_u16_d16 v224, v166 offset:5184
	ds_load_u16_d16 v225, v166 offset:5440
	ds_load_u16_d16 v233, v166 offset:5472
	ds_load_u16_d16 v232, v166 offset:5216
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v166 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v166 offset:5504
	ds_load_u16_d16 v211, v166 offset:5664
	ds_load_u16_d16 v212, v166 offset:5920
	ds_load_u16_d16 v226, v166 offset:5696
	ds_load_u16_d16 v227, v166 offset:5952
	ds_load_u16_d16 v235, v166 offset:5984
	ds_load_u16_d16 v234, v166 offset:5728
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v166 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v166 offset:6016
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v205, v166 offset:4256
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v206, v166 offset:4512
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v207, v166 offset:4768
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v208, v166 offset:5024
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v166 offset:5280
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v210, v166 offset:5536
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v211, v166 offset:5792
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v212, v166 offset:6048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s48
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v220, v166 offset:4288
	ds_load_u16_d16_hi v221, v166 offset:4544
	ds_load_u16_d16_hi v222, v166 offset:4800
	ds_load_u16_d16_hi v223, v166 offset:5056
	ds_load_u16_d16_hi v224, v166 offset:5312
	ds_load_u16_d16_hi v225, v166 offset:5568
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v226, v166 offset:5824
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v227, v166 offset:6080
	ds_load_u16_d16_hi v228, v166 offset:4320
	ds_load_u16_d16_hi v229, v166 offset:4576
	ds_load_u16_d16_hi v230, v166 offset:4832
	ds_load_u16_d16_hi v231, v166 offset:5088
	ds_load_u16_d16_hi v232, v166 offset:5344
	ds_load_u16_d16_hi v233, v166 offset:5600
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v234, v166 offset:5856
	ds_load_u16_d16_hi v235, v166 offset:6112
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	v_mov_b16_e32 v39.l, v0.h
	v_mov_b16_e32 v39.h, v119.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v0, v39, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s39
	v_permlanex16_b32 v40, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v39, v40, v0, v174
	v_perm_b32 v40, v40, v0, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v204, v118
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[86:93], v[33:40], v[25:32]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[205:212], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[220:227], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[228:235], v[33:40], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v119.l
	v_mov_b16_e32 v34.h, v119.l
	v_mov_b16_e32 v35.h, v119.l
	v_mov_b16_e32 v36.h, v119.l
	v_mov_b16_e32 v37.h, v119.l
	v_mov_b16_e32 v38.h, v119.l
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.h, v119.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v86, v166 offset:6144
	ds_load_u16_d16 v87, v166 offset:6400
	ds_load_u16_d16 v88, v166 offset:6656
	ds_load_u16_d16 v89, v166 offset:6912
	ds_load_u16_d16 v90, v166 offset:7168
	ds_load_u16_d16 v91, v166 offset:7424
	ds_load_u16_d16 v92, v166 offset:7680
	ds_load_u16_d16 v93, v166 offset:7936
	ds_load_u16_d16 v204, v166 offset:6176
	ds_load_u16_d16 v205, v166 offset:6432
	ds_load_u16_d16 v220, v166 offset:6208
	ds_load_u16_d16 v221, v166 offset:6464
	ds_load_u16_d16 v229, v166 offset:6496
	ds_load_u16_d16 v228, v166 offset:6240
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v166 offset:6272
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v87, v166 offset:6528
	ds_load_u16_d16 v206, v166 offset:6688
	ds_load_u16_d16 v207, v166 offset:6944
	ds_load_u16_d16 v222, v166 offset:6720
	ds_load_u16_d16 v223, v166 offset:6976
	ds_load_u16_d16 v231, v166 offset:7008
	ds_load_u16_d16 v230, v166 offset:6752
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v88, v166 offset:6784
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v89, v166 offset:7040
	ds_load_u16_d16 v208, v166 offset:7200
	ds_load_u16_d16 v209, v166 offset:7456
	ds_load_u16_d16 v224, v166 offset:7232
	ds_load_u16_d16 v225, v166 offset:7488
	ds_load_u16_d16 v233, v166 offset:7520
	ds_load_u16_d16 v232, v166 offset:7264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v166 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v166 offset:7552
	ds_load_u16_d16 v210, v166 offset:7712
	ds_load_u16_d16 v211, v166 offset:7968
	ds_load_u16_d16 v226, v166 offset:7744
	ds_load_u16_d16 v227, v166 offset:8000
	ds_load_u16_d16 v235, v166 offset:8032
	ds_load_u16_d16 v234, v166 offset:7776
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v92, v166 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v93, v166 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	v_mov_b16_e32 v40.h, v119.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v204, v166 offset:6304
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v205, v166 offset:6560
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v206, v166 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v207, v166 offset:7072
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v208, v166 offset:7328
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v166 offset:7584
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v210, v166 offset:7840
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v211, v166 offset:8096
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v33, 1, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v220, v166 offset:6336
	ds_load_u16_d16_hi v221, v166 offset:6592
	ds_load_u16_d16_hi v222, v166 offset:6848
	ds_load_u16_d16_hi v223, v166 offset:7104
	ds_load_u16_d16_hi v224, v166 offset:7360
	ds_load_u16_d16_hi v225, v166 offset:7616
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v226, v166 offset:7872
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v227, v166 offset:8128
	ds_load_u16_d16_hi v228, v166 offset:6368
	ds_load_u16_d16_hi v229, v166 offset:6624
	ds_load_u16_d16_hi v230, v166 offset:6880
	ds_load_u16_d16_hi v231, v166 offset:7136
	ds_load_u16_d16_hi v232, v166 offset:7392
	ds_load_u16_d16_hi v233, v166 offset:7648
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v234, v166 offset:7904
	ds_load_u16_d16_hi v235, v166 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v0, v33, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v73, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v0.h
	v_cmp_o_f32_e64 s39, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v0, v34, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v33.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s39
	v_permlanex16_b32 v34, v0, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v0, v174
	v_perm_b32 v34, v34, v0, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v200, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v0, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v165, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v0, v0
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v0, v36, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v0, v174
	v_perm_b32 v36, v36, v0, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v202, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v0.h
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v199, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v0, 0, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
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
	v_perm_b32 v37, v38, v0, v174
	v_perm_b32 v38, v38, v0, v175
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v121, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v0, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v0, v120, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v0, 0, v0, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v0, v0
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v0, v40, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v39.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v0.l, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v0, v174
	v_perm_b32 v40, v40, v0, v175
.Ltmp674:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v53
.Ltmp675:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[86:93], v[33:40], v[25:32]
.Ltmp676:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp677:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[204:211], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[220:227], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[228:235], v[33:40], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:92
	scratch_load_b32 v87, off, off offset:88
.Ltmp678:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v53, v0 :: v_dual_mov_b32 v0, v55
.Ltmp679:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v53, v50
.Ltmp680:
	.loc	1 897 23                        ; attention.py:897:23
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v88, off, off offset:84
	scratch_load_b32 v89, off, off offset:80
	scratch_load_b32 v90, off, off offset:76
	scratch_load_b32 v91, off, off offset:72
	scratch_load_b32 v92, off, off offset:68
	scratch_load_b32 v93, off, off offset:64
.Ltmp681:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v38, v70 :: v_dual_add_f32 v35, v55, v0
	v_mov_b32_e32 v0, v56
.Ltmp682:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp683:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp684:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v54, v34
.Ltmp685:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v54, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp686:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v70, v38
	v_add_f32_e32 v36, v56, v0
.Ltmp687:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp688:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v54, v66, v54 :: v_dual_add_f32 v37, v69, v0
.Ltmp689:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v71
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp690:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v71, v0 :: v_dual_mov_b32 v0, v72
.Ltmp691:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp692:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v72, v0
.Ltmp693:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v49
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp694:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v49, v49, v0 :: v_dual_mov_b32 v0, v51
.Ltmp695:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp696:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v51, v51, v0 :: v_dual_mov_b32 v0, v52
.Ltmp697:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp698:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v0
.Ltmp699:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v65
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp700:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v65, v0 :: v_dual_mov_b32 v0, v67
.Ltmp701:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v46
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp702:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v55, v67, v0 :: v_dual_mov_b32 v0, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v46, v46, v65
.Ltmp703:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v62
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp704:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v68, v0
.Ltmp705:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp706:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v62, v65
.Ltmp707:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp708:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v0 :: v_dual_mov_b32 v0, v47
.Ltmp709:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp710:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v47, v47, v0 :: v_dual_mov_b32 v0, v48
.Ltmp711:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp712:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v48, v0
.Ltmp713:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v61
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp714:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v61, v61, v0 :: v_dual_mov_b32 v0, v63
.Ltmp715:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp716:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v63, v63, v0 :: v_dual_mov_b32 v0, v64
.Ltmp717:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp718:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v64, v0
.Ltmp719:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v41
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp720:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v0 :: v_dual_mov_b32 v0, v43
.Ltmp721:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp722:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v43, v43, v0 :: v_dual_mov_b32 v0, v44
.Ltmp723:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp724:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v0
.Ltmp725:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v57
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp726:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v0 :: v_dual_mov_b32 v0, v59
.Ltmp727:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp728:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v59, v0 :: v_dual_mov_b32 v0, v60
.Ltmp729:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp730:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v60, v60, v0 :: v_dual_mov_b32 v65, v42
.Ltmp731:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v117, v117
.Ltmp732:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp733:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v0, v149
.Ltmp734:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v65
.Ltmp735:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp736:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v58, v58, v65 :: v_dual_sub_f32 v65, v117, v0
	v_mov_b32_e32 v117, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp737:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v33, v116, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v115, v115
	v_max_f32_e32 v65, v65, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v115, v65
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v113
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v34, v114, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v113, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v147
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v113, v66
	v_mov_b32_e32 v113, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v35, v112, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v111, v111
	v_max_f32_e32 v67, v67, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v111, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v109
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v36, v110, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v68, v68, v162
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v109, v68
	v_mov_b32_e32 v109, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v37, v108, v69
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v107, v107
	v_max_f32_e32 v69, v69, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v70, v107, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v38, v106, v70
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v70, v105, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v133
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v105, v70
	v_mov_b32_e32 v105, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v39, v104, v71
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v103, v103
	v_max_f32_e32 v71, v71, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v103, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v101
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v40, v102, v72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v72, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v145
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v101, v72
	v_mov_b32_e32 v101, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v86, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v99, v99
	v_max_f32_e32 v73, v73, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v86, v99, v73
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v86, 0, v86, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v50, v87, v86
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v86, v97, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v86, v86, v142
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v87, v97, v86
	v_mov_b32_e32 v97, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v87, v87
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v87, 0, v87, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v95
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v88, v87
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v87, v95, v95
	v_max_f32_e32 v87, v87, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v88, v95, v87
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v95, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v88, v88
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v88, 0, v88, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v197
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v89, v88
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v88, v197, v197
	v_max_f32_e32 v88, v88, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v89, v197, v88
	v_mov_b32_e32 v197, v88
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v89, 0, v89, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v195
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v53, v90, v89
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v89, v195, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v89, v89, v127
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v90, v195, v89 :: v_dual_mov_b32 v195, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v90, v90
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v90, 0, v90, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v91, v90
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v90, v177, v177
	v_mov_b32_e32 v118, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v90, v90, v124
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v91, v177, v90
	v_mov_b32_e32 v177, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v91, v91
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v91, 0, v91, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v157
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v92, v91
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v91, v157, v157
	v_max_f32_e32 v91, v91, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v92, v157, v91 :: v_dual_mov_b32 v157, v91
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v92, 0, v92, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v163
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v56, v93, v92
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v92, v163, v163
	v_mov_b32_e32 v240, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v92, v159
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v93, v163, v92
	v_mov_b32_e32 v163, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v93, v93
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v93, 0, v93, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v45, v94, v93
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v93, v158, v158 :: v_dual_mov_b32 v92, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v93, v93, v178
	v_dual_mov_b32 v103, v71 :: v_dual_sub_f32 v94, v158, v93
	v_dual_mov_b32 v158, v93 :: v_dual_mov_b32 v93, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v94, v94
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v94, 0, v94, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v84
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v95, v94
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v94, v84, v84 :: v_dual_mov_b32 v91, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v94, v94, v151
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v95, v84, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v95, v95
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v84, 0, v95, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v95, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v47, v95, v84 :: v_dual_max_f32 v84, v82, v82
	v_mov_b32_e32 v95, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v90, v47
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v102, v84, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v84, v82, v102
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v82, 0, v84, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v84, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v80
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v48, v84, v82
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v82, v80, v80
	v_mov_b32_e32 v84, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v94, v55 :: v_dual_mov_b32 v89, v48
	v_max_f32_e32 v104, v82, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v82, v80, v104
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v80, 0, v82, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v82, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v78
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v61, v82, v80
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v80, v78, v78
	v_mov_b32_e32 v82, v102
	v_mov_b32_e32 v102, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v88, v61
	v_max_f32_e32 v106, v80, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v80, v78, v106
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v78, 0, v80, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v80, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v77
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v62, v80, v78
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v78, v77, v77
	v_mov_b32_e32 v80, v104
	v_dual_mov_b32 v104, v39 :: v_dual_mov_b32 v107, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v87, v62
	v_max_f32_e32 v108, v78, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v78, v77, v108
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v77, 0, v78, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v78, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v75
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v63, v78, v77
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v77, v75, v75 :: v_dual_mov_b32 v78, v106
	v_mov_b32_e32 v106, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v86, v63
	v_max_f32_e32 v110, v77, v169
	v_mov_b32_e32 v99, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v77, v75, v110
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v75, 0, v77, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v77, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v74
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v64, v77, v75 :: v_dual_max_f32 v75, v74, v74
	v_dual_mov_b32 v77, v108 :: v_dual_mov_b32 v108, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v73, v64 :: v_dual_max_f32 v112, v75, v132
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v75, v74, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v75, v75
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v75, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	scratch_load_b32 v75, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v152
	.loc	1 897 23                        ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v75, v74
	scratch_load_b32 v75, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v152, v152
	v_mov_b32_e32 v72, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v114, v74, v130
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v152, v114
	v_mov_b32_e32 v152, v114
	v_dual_mov_b32 v114, v34 :: v_dual_mov_b32 v111, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v136
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v75, v74
	scratch_load_b32 v75, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v74, v136, v136 :: v_dual_mov_b32 v71, v42
	v_max_f32_e32 v116, v74, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v136, v116
	v_mov_b32_e32 v136, v116
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v192
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v75, v74
	scratch_load_b32 v75, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v192, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v70, v43 :: v_dual_max_f32 v119, v74, v126
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v192, v119
	v_mov_b32_e32 v192, v119
	v_mov_b32_e32 v116, v33
	v_mov_b32_e32 v119, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v190
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v75, v74
	scratch_load_b32 v75, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v74, v190, v190 :: v_dual_mov_b32 v69, v44
	v_max_f32_e32 v120, v74, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v190, v120
	v_dual_mov_b32 v190, v120 :: v_dual_mov_b32 v115, v65
	v_mov_b32_e32 v120, v52
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v188
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v57, v75, v74
	scratch_load_b32 v75, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v188, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v68, v57 :: v_dual_max_f32 v121, v74, v167
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v188, v121
	v_mov_b32_e32 v188, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v186
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v75, v74
	scratch_load_b32 v75, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v186, v186
	v_mov_b32_e32 v67, v58
	v_max_f32_e32 v122, v74, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v186, v122
	v_mov_b32_e32 v186, v122
	v_mov_b32_e32 v122, v50
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v184
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v59, v75, v74
	scratch_load_b32 v75, off, off          ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v74, v184, v184
	v_mov_b32_e32 v66, v59
	v_mov_b32_e32 v121, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v123, v74, v123
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v184, v123
	v_dual_mov_b32 v184, v123 :: v_dual_mov_b32 v123, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v60, v75, v74 :: v_dual_mov_b32 v75, v110
	v_mov_b32_e32 v74, v112
	v_mov_b32_e32 v112, v35
	v_mov_b32_e32 v110, v36
	v_mov_b32_e32 v65, v60
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v33, off, off offset:100
	scratch_load_b32 v34, off, off offset:104
	scratch_load_b32 v35, off, off offset:108
	scratch_load_b32 v36, off, off offset:120
	scratch_load_b64 v[41:42], off, off offset:216
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s0, v254, 20
	v_readlane_b32 s1, v253, 2
	.loc	1 823 32                        ; attention.py:823:32
	s_mov_b32 s54, s18
	s_mov_b32 s55, s19
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v123, off offset:92
	scratch_store_b32 off, v122, off offset:88
	scratch_store_b32 off, v121, off offset:84
	scratch_store_b32 off, v120, off offset:80
	scratch_store_b32 off, v119, off offset:76
	scratch_store_b32 off, v118, off offset:72
	scratch_store_b32 off, v94, off offset:68
	scratch_store_b32 off, v93, off offset:64
	scratch_store_b32 off, v92, off offset:60
	scratch_store_b32 off, v91, off offset:56
	scratch_store_b32 off, v90, off offset:52
	scratch_store_b32 off, v89, off offset:48
	scratch_store_b32 off, v88, off offset:44
	scratch_store_b32 off, v87, off offset:40
	scratch_store_b32 off, v86, off offset:36
	scratch_store_b32 off, v73, off offset:32
	scratch_store_b32 off, v72, off offset:28
	scratch_store_b32 off, v71, off offset:24
	scratch_store_b32 off, v70, off offset:20
	scratch_store_b32 off, v69, off offset:16
	scratch_store_b32 off, v68, off offset:12
	scratch_store_b32 off, v67, off offset:8
	scratch_store_b32 off, v66, off offset:4
	scratch_store_b32 off, v65, off
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s8, s104, s0
	v_readlane_b32 s0, v253, 1
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[42:43], off, off offset:224
	scratch_load_b64 v[43:44], off, off offset:240
	scratch_load_b64 v[44:45], off, off offset:232
	scratch_load_b64 v[45:46], off, off offset:248
	s_mul_i32 s0, s8, s0
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[46:47], off, off offset:256
	scratch_load_b64 v[47:48], off, off offset:264
	scratch_load_b32 v48, off, off offset:344
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v0, s104, v0
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v33, s104, v33
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v34, s104, v34
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v35, s104, v35
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v36, s104, v36
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v33, off, off offset:116
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s38, s27, v34
	v_cmp_gt_i32_e64 s42, s27, v36
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:132
	scratch_load_b32 v36, off, off offset:140
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s39, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:136 ; 4-byte Folded Reload
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
	v_or_b32_e32 v0, s104, v0
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v33, s104, v33
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, s104, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s40, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s41, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v33, off, off offset:128
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v36, s104, v36
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s45, s27, v34
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v34, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s47, s27, v36
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[36:37], off, off offset:160 ; 8-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v35, s104, v35
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[37:38], off, off offset:188
	scratch_load_b64 v[38:39], off, off offset:196
	scratch_load_b64 v[39:40], off, off offset:204
	scratch_load_b32 v40, off, off offset:212
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s46, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, s104, v0
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v33, s104, v33
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v34, s104, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s43, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s44, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:144
	scratch_load_b32 v33, off, off offset:148
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s50, s27, v34
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v34, off, off offset:172 ; 4-byte Folded Reload
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
	v_or_b32_e32 v35, s104, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s51, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s104, v0
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v33, s104, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s48, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s49, s27, v33
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v33, off, off offset:168 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s0, v36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:176
	scratch_load_b32 v36, off, off offset:184
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
	s_and_b32 vcc_lo, s1, s38
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s39
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s40
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s41
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s42
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s43
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s44
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
	s_and_b32 vcc_lo, s1, s45
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s46
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	s_clause 0x1
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s47
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s49
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s50
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v41, v41, s[52:55], 0 offen
	buffer_load_u8 v45, v45, s[52:55], 0 offen
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s51
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
	s_mov_b64 s[0:1], s[52:53]
	s_waitcnt vmcnt(15)
	ds_store_b8 v240, v0
	s_waitcnt vmcnt(12)
	ds_store_b8 v240, v36 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v240, v40 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v240, v43 offset:1536
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	v_writelane_b32 v254, s0, 28
	v_writelane_b32 v255, s4, 0
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v33
	ds_store_b8 v0, v37 offset:512
	ds_store_b8 v0, v41 offset:1024
	ds_store_b8 v0, v45 offset:1536
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	v_writelane_b32 v254, s1, 29
	v_writelane_b32 v255, s5, 1
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v34
	ds_store_b8 v0, v38 offset:512
	ds_store_b8 v0, v42 offset:1024
	ds_store_b8 v0, v46 offset:1536
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	v_writelane_b32 v254, s2, 30
	v_writelane_b32 v255, s6, 2
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v35
	ds_store_b8 v0, v39 offset:512
	ds_store_b8 v0, v44 offset:1024
	ds_store_b8 v0, v47 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[90:91], off, off offset:640
	scratch_load_b32 v0, off, off offset:504
	scratch_load_b64 v[120:121], off, off offset:288
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[33:36], v48 offset1:1
	ds_load_2addr_stride64_b64 v[86:89], v48 offset0:2 offset1:3
	v_writelane_b32 v254, s3, 31
	v_writelane_b32 v255, s7, 3
	.loc	1 828 33                        ; attention.py:828:33
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
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s0, v253, 18
	v_readlane_b32 s2, v254, 10
	v_writelane_b32 v255, s8, 4
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[86:87], v[90:91], v[65:72] neg_lo:[1,1,0]
	scratch_load_b64 v[86:87], off, off offset:648 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[90:91], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[35:36], v[90:91], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[90:91], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v143, s104, v120
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s60, s27, v143
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s22, s0, s60
	v_readlane_b32 s0, v253, 19
	s_and_b32 s102, s2, s60
	v_readlane_b32 s2, v254, 11
	s_and_b32 s98, s0, s60
	v_readlane_b32 s0, v253, 20
	s_and_b32 s99, s0, s60
	v_readlane_b32 s0, v253, 21
	s_and_b32 s100, s0, s60
	v_readlane_b32 s0, v253, 22
	s_and_b32 s34, s0, s60
	v_readlane_b32 s0, v253, 23
	s_and_b32 s1, s0, s60
	v_readlane_b32 s0, v253, 24
	s_and_b32 s23, s0, s60
	v_readlane_b32 s0, v253, 25
	s_and_b32 s10, s0, s60
	v_readlane_b32 s0, v253, 26
	s_and_b32 s4, s0, s60
	v_readlane_b32 s0, v253, 27
	s_and_b32 vcc_hi, s0, s60
	v_readlane_b32 s0, v253, 28
	s_and_b32 s24, s0, s60
	v_readlane_b32 s0, v253, 29
	s_and_b32 s14, s0, s60
	v_readlane_b32 s0, v253, 30
	s_and_b32 s36, s0, s60
	v_readlane_b32 s0, v253, 31
	s_and_b32 s7, s0, s60
	v_readlane_b32 s0, v254, 0
	s_and_b32 s6, s0, s60
	v_readlane_b32 s0, v254, 1
	s_and_b32 s11, s0, s60
	v_readlane_b32 s0, v254, 2
	s_and_b32 s9, s0, s60
	v_readlane_b32 s0, v254, 3
	s_and_b32 s5, s0, s60
	v_readlane_b32 s0, v254, 4
	s_and_b32 s103, s0, s60
	v_readlane_b32 s0, v254, 5
	s_and_b32 s12, s0, s60
	v_readlane_b32 s0, v254, 6
	s_and_b32 s101, s0, s60
	v_readlane_b32 s0, v254, 7
	s_and_b32 s35, s0, s60
	v_readlane_b32 s0, v254, 8
	s_and_b32 s33, s0, s60
	v_readlane_b32 s0, v254, 9
	s_and_b32 s0, s0, s60
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[86:87], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[86:87], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[86:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[86:87], v[33:40] neg_lo:[1,1,0]
	scratch_load_b64 v[86:87], off, off offset:656 ; 8-byte Folded Reload
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[86:87], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[86:87], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[86:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[86:87], v[33:40] neg_lo:[1,1,0]
	scratch_load_b64 v[86:87], off, off offset:664 ; 8-byte Folded Reload
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 2, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 4, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 6, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s41, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 8, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s43, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 10, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s46, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 12, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s50, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 14, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s51, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 16, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s52, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 18, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s53, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 20, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s54, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 22, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s55, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 24, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s56, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 26, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s57, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 28, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s58, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 30, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s59, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 32, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s61, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 34, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s62, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 36, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s63, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 38, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s64, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 40, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s65, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 42, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s66, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 44, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s67, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 46, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s68, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 48, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 50, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s40, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 52, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s42, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 54, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s48, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 56, v180
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s44, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 58, v180
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[86:87], v[57:64] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v65, s8, v180, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[86:87], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[86:87], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[86:87], v[33:40] neg_lo:[1,1,0]
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s45, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 60, v180
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v66, 4, v65
	v_add_nc_u32_e32 v67, 8, v65
	v_add_nc_u32_e32 v68, 12, v65
	v_add_nc_u32_e32 v69, 16, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v70, 20, v65
	v_add_nc_u32_e32 v71, 24, v65
	v_add_nc_u32_e32 v72, 28, v65
	v_add_nc_u32_e32 v73, 32, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s47, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 62, v180
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v86, 36, v65
	v_add_nc_u32_e32 v87, 40, v65
	v_add_nc_u32_e32 v88, 44, v65
	v_add_nc_u32_e32 v89, 48, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s104, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v90, 52, v65
	v_add_nc_u32_e32 v91, 56, v65
	v_add_nc_u32_e32 v92, 60, v65
	v_add_nc_u32_e32 v93, 64, v65
	v_add_nc_u32_e32 v94, 0x44, v65
	v_add_nc_u32_e32 v119, 0x48, v65
	v_add_nc_u32_e32 v125, 0x4c, v65
	v_add_nc_u32_e32 v126, 0x50, v65
	v_add_nc_u32_e32 v127, 0x54, v65
	v_add_nc_u32_e32 v128, 0x58, v65
	v_add_nc_u32_e32 v129, 0x5c, v65
	v_add_nc_u32_e32 v130, 0x60, v65
	v_add_nc_u32_e32 v131, 0x64, v65
	v_add_nc_u32_e32 v132, 0x68, v65
	v_add_nc_u32_e32 v133, 0x6c, v65
	v_add_nc_u32_e32 v138, 0x70, v65
	v_add_nc_u32_e32 v139, 0x74, v65
	v_add_nc_u32_e32 v140, 0x78, v65
	v_add_nc_u32_e32 v141, 0x7c, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s49, s27, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v0, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e64 v65, 0x80000000, v66, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 14
	s_and_b32 s8, s2, s60
	v_readlane_b32 s2, v254, 12
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v66, 0x80000000, v67, s39
	v_cndmask_b32_e64 v67, 0x80000000, v68, s41
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s25, s3, s60
	v_readlane_b32 s3, v254, 15
	s_and_b32 s37, s2, s60
	v_readlane_b32 s2, v254, 13
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v68, 0x80000000, v69, s43
	v_cndmask_b32_e64 v69, 0x80000000, v70, s46
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s15, s3, s60
	v_readlane_b32 s3, v254, 16
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v70, 0x80000000, v71, s50
	v_cndmask_b32_e64 v71, 0x80000000, v72, s51
	v_cndmask_b32_e64 v72, 0x80000000, v73, s52
	v_cndmask_b32_e64 v73, 0x80000000, v86, s53
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s13, s3, s60
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v253, 3
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v86, 0x80000000, v87, s54
	v_cndmask_b32_e64 v118, 0x80000000, v88, s55
	v_cndmask_b32_e64 v120, 0x80000000, v89, s56
	v_cndmask_b32_e64 v121, 0x80000000, v90, s57
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 17
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v122, 0x80000000, v91, s58
	v_cndmask_b32_e64 v123, 0x80000000, v92, s59
	v_cndmask_b32_e64 v124, 0x80000000, v93, s61
	v_cndmask_b32_e64 v144, 0x80000000, v94, s62
	v_cndmask_b32_e64 v145, 0x80000000, v119, s63
	v_cndmask_b32_e64 v146, 0x80000000, v125, s64
	v_cndmask_b32_e64 v147, 0x80000000, v126, s65
	v_cndmask_b32_e64 v148, 0x80000000, v127, s66
	v_cndmask_b32_e64 v149, 0x80000000, v128, s67
	v_cndmask_b32_e64 v150, 0x80000000, v129, s68
	v_cndmask_b32_e64 v151, 0x80000000, v130, s38
	v_cndmask_b32_e64 v159, 0x80000000, v131, s40
	v_cndmask_b32_e64 v160, 0x80000000, v132, s42
	v_cndmask_b32_e64 v161, 0x80000000, v133, s48
	v_cndmask_b32_e64 v162, 0x80000000, v138, s44
	v_cndmask_b32_e64 v165, 0x80000000, v139, s45
	v_cndmask_b32_e64 v167, 0x80000000, v140, s47
	v_cndmask_b32_e64 v168, 0x80000000, v141, s49
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, s2, s60
	s_and_b32 s26, s3, s60
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v87, off, off offset:908 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v143, v87
	scratch_load_b32 v87, off, off offset:912 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s30, vcc_lo, s22
	s_and_not1_b32 s22, s22, exec_lo
	s_and_b32 s30, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_or_b32 s22, s22, s30
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v143, v87
	scratch_load_b32 v87, off, off offset:916 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s98
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v143, v87
	scratch_load_b32 v87, off, off offset:920 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s30, s31, exec_lo
	s_and_not1_b32 s31, s100, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v143, v87
	scratch_load_b32 v87, off, off offset:924 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s39, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s38, exec_lo
	s_or_b32 s100, s31, s38
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v143, v87
	scratch_load_b32 v87, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s40, s34
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v143, v87
	scratch_load_b32 v87, off, off offset:932 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s41, s1
	s_and_not1_b32 s1, s1, exec_lo
	s_and_b32 s31, s40, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s1, s1, s31
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v143, v87
	scratch_load_b32 v87, off, off offset:936 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s42, s23
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v143, v87
	scratch_load_b32 v87, off, off offset:940 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s42, s43, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v143, v87
	scratch_load_b32 v87, off, off offset:944 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s44, s4
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v143, v87
	scratch_load_b32 v87, off, off offset:948 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s44, s45, vcc_hi
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s31, s44, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v143, v87
	scratch_load_b32 v87, off, off offset:952 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s45, s46, s24
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v143, v87
	scratch_load_b32 v87, off, off offset:956 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s46, s47, s14
	s_and_not1_b32 s14, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v143, v87
	scratch_load_b32 v87, off, off offset:960 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s47, s48, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v143, v87
	scratch_load_b32 v87, off, off offset:964 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s48, s49, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v143, v87
	scratch_load_b32 v87, off, off offset:968 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s49, s50, s6
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v143, v87
	scratch_load_b32 v87, off, off offset:972 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s50, s51, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v143, v87
	scratch_load_b32 v87, off, off offset:976 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s51, s52, s9
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v143, v87
	scratch_load_b32 v87, off, off offset:980 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s52, s53, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v143, v87
	scratch_load_b32 v87, off, off offset:984 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s53, s54, s103
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v143, v87
	scratch_load_b32 v87, off, off offset:988 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s54, s55, s12
	s_and_not1_b32 s12, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v143, v87
	scratch_load_b32 v87, off, off offset:992 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s55, s56, s101
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v143, v87
	scratch_load_b32 v87, off, off offset:996 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s56, s57, s35
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v143, v87
	scratch_load_b32 v87, off, off offset:1000 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s57, s58, s33
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v143, v87
	scratch_load_b32 v87, off, off offset:1004 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s58, s59, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v143, v87
	scratch_load_b32 v87, off, off offset:1008 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s59, s60, s102
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v143, v87
	scratch_load_b32 v87, off, off offset:1012 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s60, s61, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v143, v87
	scratch_load_b32 v87, off, off offset:1016 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s61, s62, s37
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v143, v87
	scratch_load_b32 v87, off, off offset:1020 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s62, s63, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v143, v87
	scratch_load_b32 v87, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s63, s64, s25
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v143, v87
	scratch_load_b32 v87, off, off offset:1028 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s64, s65, s15
	s_and_not1_b32 s15, s15, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v143, v87
	scratch_load_b32 v87, off, off offset:1032 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s65, s66, s13
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v143, v87
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s66, s67, s26
	s_and_not1_b32 s67, s98, exec_lo
	s_and_not1_b32 s26, s26, exec_lo
	s_or_b32 s98, s67, s3
	s_and_not1_b32 s3, s99, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s99, s3, s30
	s_and_not1_b32 s3, s34, exec_lo
	s_and_b32 s30, s39, exec_lo
	s_or_b32 s34, s3, s30
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s23, s41, exec_lo
	s_and_b32 s30, s42, exec_lo
	s_or_b32 s23, s3, s23
	s_or_b32 s10, s10, s30
	s_and_not1_b32 s3, s4, exec_lo
	s_and_b32 s4, s43, exec_lo
	s_and_not1_b32 s30, vcc_hi, exec_lo
	s_or_b32 s4, s3, s4
	s_or_b32 vcc_hi, s30, s31
	s_and_not1_b32 s3, s24, exec_lo
	s_and_b32 s24, s45, exec_lo
	s_and_b32 s30, s46, exec_lo
	s_or_b32 s24, s3, s24
	s_or_b32 s14, s14, s30
	s_and_not1_b32 s3, s36, exec_lo
	s_and_b32 s30, s47, exec_lo
	s_and_b32 s31, s48, exec_lo
	s_or_b32 s36, s3, s30
	s_and_not1_b32 s3, s6, exec_lo
	s_and_b32 s6, s49, exec_lo
	s_and_b32 s30, s50, exec_lo
	s_or_b32 s6, s3, s6
	s_or_b32 s11, s11, s30
	s_and_not1_b32 s3, s9, exec_lo
	s_and_b32 s9, s51, exec_lo
	s_and_b32 s30, s52, exec_lo
	s_or_b32 s9, s3, s9
	s_or_b32 s5, s5, s30
	s_and_not1_b32 s3, s103, exec_lo
	s_and_b32 s30, s53, exec_lo
	s_or_b32 s7, s7, s31
	s_or_b32 s103, s3, s30
	s_and_not1_b32 s3, s101, exec_lo
	s_and_b32 s30, s55, exec_lo
	s_and_b32 s31, s54, exec_lo
	s_or_b32 s101, s3, s30
	s_and_not1_b32 s3, s33, exec_lo
	s_and_b32 s30, s57, exec_lo
	s_or_b32 s12, s12, s31
	s_and_not1_b32 s31, s35, exec_lo
	s_and_b32 s35, s56, exec_lo
	s_or_b32 s33, s3, s30
	s_and_not1_b32 s3, s102, exec_lo
	s_and_b32 s30, s59, exec_lo
	s_or_b32 s35, s31, s35
	s_and_b32 s31, s58, exec_lo
	s_or_b32 s102, s3, s30
	s_and_not1_b32 s3, s37, exec_lo
	s_and_b32 s30, s61, exec_lo
	s_or_b32 s0, s0, s31
	s_and_b32 s31, s60, exec_lo
	s_or_b32 s37, s3, s30
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s25, s63, exec_lo
	s_and_b32 s30, s64, exec_lo
	s_or_b32 s8, s8, s31
	s_and_b32 s31, s62, exec_lo
	s_or_b32 s25, s3, s25
	s_or_b32 s15, s15, s30
	s_and_not1_b32 s3, s13, exec_lo
	s_and_b32 s13, s65, exec_lo
	s_and_b32 s30, s66, exec_lo
	s_or_b32 s2, s2, s31
	s_or_b32 s13, s3, s13
	s_or_b32 s26, s26, s30
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v119, v0, s[16:19], 0 offen
	buffer_load_u16 v142, v65, s[16:19], 0 offen
	buffer_load_u16 v141, v66, s[16:19], 0 offen
	buffer_load_u16 v0, v67, s[16:19], 0 offen
	buffer_load_u16 v140, v68, s[16:19], 0 offen
	buffer_load_u16 v139, v69, s[16:19], 0 offen
	buffer_load_u16 v138, v70, s[16:19], 0 offen
	buffer_load_u16 v133, v71, s[16:19], 0 offen
	buffer_load_u16 v65, v72, s[16:19], 0 offen
	buffer_load_u16 v132, v73, s[16:19], 0 offen
	buffer_load_u16 v131, v86, s[16:19], 0 offen
	buffer_load_u16 v130, v118, s[16:19], 0 offen
	buffer_load_u16 v129, v120, s[16:19], 0 offen
	buffer_load_u16 v127, v121, s[16:19], 0 offen
	buffer_load_u16 v126, v122, s[16:19], 0 offen
	buffer_load_u16 v125, v123, s[16:19], 0 offen
	buffer_load_u16 v128, v124, s[16:19], 0 offen
	buffer_load_u16 v68, v144, s[16:19], 0 offen
	buffer_load_u16 v124, v145, s[16:19], 0 offen
	buffer_load_u16 v123, v146, s[16:19], 0 offen
	buffer_load_u16 v122, v147, s[16:19], 0 offen
	buffer_load_u16 v121, v148, s[16:19], 0 offen
	buffer_load_u16 v120, v149, s[16:19], 0 offen
	buffer_load_u16 v118, v150, s[16:19], 0 offen
	buffer_load_u16 v86, v151, s[16:19], 0 offen
	buffer_load_u16 v73, v159, s[16:19], 0 offen
	buffer_load_u16 v67, v160, s[16:19], 0 offen
	buffer_load_u16 v72, v161, s[16:19], 0 offen
	buffer_load_u16 v71, v162, s[16:19], 0 offen
	buffer_load_u16 v70, v165, s[16:19], 0 offen
	buffer_load_u16 v69, v167, s[16:19], 0 offen
	buffer_load_u16 v66, v168, s[16:19], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s3, v253, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v87, off, off offset:1036 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v143, v87
	scratch_load_b32 v87, off, off offset:1040 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v143, v87
	scratch_load_b32 v87, off, off offset:1044 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v143, v87
	scratch_load_b32 v87, off, off offset:1048 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v143, v87
	scratch_load_b32 v87, off, off offset:1052 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v143, v87
	scratch_load_b32 v87, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v143, v87
	scratch_load_b32 v87, off, off offset:1060 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v143, v87
	scratch_load_b32 v87, off, off offset:1064 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v143, v87
	scratch_load_b32 v87, off, off offset:1068 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v143, v87
	scratch_load_b32 v87, off, off offset:1072 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v143, v87
	scratch_load_b32 v87, off, off offset:1076 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v143, v87
	scratch_load_b32 v87, off, off offset:1080 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v143, v87
	scratch_load_b32 v87, off, off offset:1084 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v143, v87
	scratch_load_b32 v87, off, off offset:1088 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v143, v87
	scratch_load_b32 v87, off, off offset:1092 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v143, v87
	scratch_load_b32 v87, off, off offset:1096 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v143, v87
	scratch_load_b32 v87, off, off offset:1100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v143, v87
	scratch_load_b32 v87, off, off offset:1104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v143, v87
	scratch_load_b32 v87, off, off offset:1108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v143, v87
	scratch_load_b32 v87, off, off offset:1112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v143, v87
	scratch_load_b32 v87, off, off offset:1116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v143, v87
	scratch_load_b32 v87, off, off offset:1120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v143, v87
	scratch_load_b32 v87, off, off offset:1124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v143, v87
	scratch_load_b32 v87, off, off offset:1128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v143, v87
	scratch_load_b32 v87, off, off offset:1132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v143, v87
	scratch_load_b32 v87, off, off offset:1136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v143, v87
	scratch_load_b32 v87, off, off offset:1140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v143, v87
	scratch_load_b32 v87, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v143, v87
	scratch_load_b32 v87, off, off offset:1148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v143, v87
	scratch_load_b32 v87, off, off offset:1152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s65, v143, v87
	scratch_load_b32 v87, off, off offset:1156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s66, v143, v87
	scratch_load_b32 v87, off, off offset:1160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s67, v143, v87
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v87, off, off offset:1164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v143, v87
	scratch_load_b32 v87, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s30, vcc_lo, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s22
	s_and_not1_b32 s22, s22, exec_lo
	s_and_b32 s30, s30, exec_lo
	s_or_b32 s22, s22, s30
	s_and_not1_b32 s30, s99, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v143, v87
	scratch_load_b32 v87, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s69
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s3, s98
	s_and_b32 s31, s31, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v143, v87
	scratch_load_b32 v87, off, off offset:1176 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s38, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s38, s99
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v143, v87
	scratch_load_b32 v87, off, off offset:1180 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s71
	s_and_b32 s39, s39, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s39, s39, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v143, v87
	scratch_load_b32 v87, off, off offset:1184 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s72
	s_and_b32 s40, s40, s34
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v143, v87
	scratch_load_b32 v87, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s41, s73
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s41, s41, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v143, v87
	scratch_load_b32 v87, off, off offset:1192 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s42, s74
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s42, s42, s23
	s_and_not1_b32 s23, s23, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v143, v87
	scratch_load_b32 v87, off, off offset:1196 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s43, s43, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v143, v87
	scratch_load_b32 v87, off, off offset:1200 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s44, s76
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s44, s44, s4
	s_and_not1_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v143, v87
	scratch_load_b32 v87, off, off offset:1204 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s45, s45, s77
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s45, s45, vcc_hi
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v143, v87
	scratch_load_b32 v87, off, off offset:1208 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s46, s46, s78
	s_and_b32 s46, s46, s24
	s_and_not1_b32 s24, s24, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v143, v87
	scratch_load_b32 v87, off, off offset:1212 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s47, s47, s79
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s47, s47, s14
	s_and_not1_b32 s14, s14, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v143, v87
	scratch_load_b32 v87, off, off offset:1216 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s48, s48, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s48, s48, s36
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v143, v87
	scratch_load_b32 v87, off, off offset:1220 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s49, s49, s81
	s_and_b32 s49, s49, s7
	s_and_not1_b32 s7, s7, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v143, v87
	scratch_load_b32 v87, off, off offset:1224 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s50, s50, s6
	s_and_not1_b32 s6, s6, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v143, v87
	scratch_load_b32 v87, off, off offset:1228 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s51, s83
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s51, s51, s11
	s_and_not1_b32 s11, s11, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v143, v87
	scratch_load_b32 v87, off, off offset:1232 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s52, s52, s84
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s52, s52, s9
	s_and_not1_b32 s9, s9, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v143, v87
	scratch_load_b32 v87, off, off offset:1236 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s53, s85
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s53, s53, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v143, v87
	scratch_load_b32 v87, off, off offset:1240 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s54, s54, s103
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v143, v87
	scratch_load_b32 v87, off, off offset:1244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s55, s55, s87
	s_and_b32 s55, s55, s12
	s_and_not1_b32 s12, s12, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v143, v87
	scratch_load_b32 v87, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s56, s56, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s56, s56, s101
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v143, v87
	scratch_load_b32 v87, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s57, s57, s89
	s_and_b32 s57, s57, s35
	s_and_not1_b32 s35, s35, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v143, v87
	scratch_load_b32 v87, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s58, s58, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s58, s58, s33
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v143, v87
	scratch_load_b32 v87, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s59, s91
	s_and_b32 s59, s59, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v143, v87
	scratch_load_b32 v87, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s60, s60, s102
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v143, v87
	scratch_load_b32 v87, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s61, s61, s93
	s_and_b32 s61, s61, s8
	s_and_not1_b32 s8, s8, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v143, v87
	scratch_load_b32 v87, off, off offset:1268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s62, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s62, s62, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v143, v87
	scratch_load_b32 v87, off, off offset:1264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s63, s63, s95
	s_and_b32 s63, s63, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s96, v143, v87
	scratch_load_b32 v87, off, off offset:1260 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s64, s64, s96
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s64, s64, s25
	s_and_not1_b32 s25, s25, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s97, v143, v87
	scratch_load_b32 v87, off, off offset:1256 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s65, s65, s97
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s65, s65, s15
	s_and_not1_b32 s15, s15, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v143, v87
	scratch_load_b32 v87, off, off offset:1252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s66, s66, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s66, s66, s13
	s_and_not1_b32 s13, s13, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v143, v87
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s67, s3
	s_and_not1_b32 s67, s98, exec_lo
	s_and_b32 s3, s3, s26
	s_or_b32 s98, s67, s31
	s_and_b32 s31, s38, exec_lo
	s_and_not1_b32 s38, s100, exec_lo
	s_or_b32 s99, s30, s31
	s_and_not1_b32 s30, s34, exec_lo
	s_and_b32 s31, s40, exec_lo
	s_or_b32 s100, s38, s39
	s_and_b32 s38, s41, exec_lo
	s_or_b32 s34, s30, s31
	s_and_b32 s30, s42, exec_lo
	s_and_b32 s31, s43, exec_lo
	s_or_b32 s1, s1, s38
	s_or_b32 s23, s23, s30
	s_or_b32 s10, s10, s31
	s_and_b32 s30, s44, exec_lo
	s_and_not1_b32 s31, vcc_hi, exec_lo
	s_and_b32 s38, s45, exec_lo
	s_or_b32 s4, s4, s30
	s_or_b32 vcc_hi, s31, s38
	s_and_b32 s30, s46, exec_lo
	s_and_b32 s31, s47, exec_lo
	s_or_b32 s24, s24, s30
	s_or_b32 s14, s14, s31
	s_and_not1_b32 s30, s36, exec_lo
	s_and_b32 s31, s48, exec_lo
	s_and_b32 s38, s49, exec_lo
	s_or_b32 s36, s30, s31
	s_and_b32 s30, s50, exec_lo
	s_and_b32 s31, s51, exec_lo
	s_or_b32 s6, s6, s30
	s_or_b32 s11, s11, s31
	s_and_b32 s30, s52, exec_lo
	s_and_b32 s31, s53, exec_lo
	s_or_b32 s9, s9, s30
	s_or_b32 s5, s5, s31
	s_and_not1_b32 s30, s103, exec_lo
	s_and_b32 s31, s54, exec_lo
	s_or_b32 s7, s7, s38
	s_or_b32 s103, s30, s31
	s_and_not1_b32 s30, s101, exec_lo
	s_and_b32 s31, s56, exec_lo
	s_and_b32 s38, s55, exec_lo
	s_or_b32 s101, s30, s31
	s_and_not1_b32 s30, s33, exec_lo
	s_and_b32 s31, s58, exec_lo
	s_or_b32 s12, s12, s38
	s_and_b32 s38, s57, exec_lo
	s_or_b32 s33, s30, s31
	s_and_not1_b32 s30, s102, exec_lo
	s_and_b32 s31, s60, exec_lo
	s_or_b32 s35, s35, s38
	s_and_b32 s38, s59, exec_lo
	s_or_b32 s102, s30, s31
	s_and_not1_b32 s30, s37, exec_lo
	s_and_b32 s31, s62, exec_lo
	s_or_b32 s0, s0, s38
	s_and_b32 s38, s61, exec_lo
	s_or_b32 s37, s30, s31
	s_and_b32 s30, s64, exec_lo
	s_or_b32 s8, s8, s38
	s_and_b32 s38, s63, exec_lo
	s_and_b32 s31, s65, exec_lo
	s_or_b32 s25, s25, s30
	s_and_b32 s30, s66, exec_lo
	s_and_not1_b32 s26, s26, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s2, s2, s38
	s_or_b32 s15, s15, s31
	s_or_b32 s13, s13, s30
	s_or_b32 s26, s26, s3
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v68, off, off offset:1296
	scratch_load_b32 v67, off, off offset:1292
	scratch_load_b32 v70, off, off offset:1300
	scratch_load_b32 v71, off, off offset:1304
	scratch_load_b32 v72, off, off offset:1308
	scratch_load_b32 v73, off, off offset:1312
	v_readlane_b32 s44, v253, 5
	v_readlane_b32 s38, v253, 9
	v_readlane_b32 s45, v253, 6
	v_readlane_b32 s46, v253, 7
	v_readlane_b32 s47, v253, 8
	s_waitcnt vmcnt(5)
	v_cmp_eq_u32_e64 s39, 0, v68
.LBB0_15:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, 0, v71
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v65, 0x80, v72
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_readlane_b32 s2, v253, 4
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[37:40] offset:16
	v_and_b32_e32 v33, 28, v70
	v_lshrrev_b32_e32 v34, 1, v71
	s_waitcnt vmcnt(0)
	v_add3_u32 v35, 0, v73, v65
	ds_store_b128 v0, v[49:52] offset:128
	ds_store_b128 v0, v[53:56] offset:144
	ds_store_b128 v0, v[45:48] offset:32
	ds_store_b128 v0, v[61:64] offset:48
	ds_store_b128 v0, v[41:44] offset:160
	ds_store_b128 v0, v[57:60] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v33, v35, v34, v33
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
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
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v34
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v35, v0, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v39, v54, v40
	v_fma_f32 v39, -v41, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v45, v54
	v_fmac_f32_e32 v37, v39, v53
	v_div_scale_f32 v39, null, v0, v0, v9
	v_fma_f32 v42, -v34, v43, 1.0
	v_mul_f32_e32 v40, v33, v49
	v_div_fixup_f32 v28, v36, v0, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v39
	v_div_scale_f32 v36, s3, v31, v0, v31
	v_fmac_f32_e32 v43, v42, v43
	v_fma_f32 v35, -v47, v40, v33
	v_fma_f32 v41, -v41, v37, v46
	v_div_scale_f32 v42, s5, v32, v0, v32
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v40, v35, v49 :: v_dual_mul_f32 v35, v36, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v44, 1.0
	v_mul_f32_e32 v45, v42, v43
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v47, v40, v33
	v_div_scale_f32 v47, null, v0, v0, v10
	v_fmac_f32_e32 v44, v46, v44
	v_div_fmas_f32 v37, v41, v53, v37
	v_fma_f32 v41, -v48, v35, v36
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, s1, v9, v0, v9
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
	v_div_scale_f32 v41, null, v0, v0, v11
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
	v_div_scale_f32 v38, s3, v10, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v39, v36, v46
	v_div_scale_f32 v46, null, v0, v0, v13
	v_div_scale_f32 v42, null, v0, v0, v12
	v_div_fmas_f32 v33, v33, v44, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v44, s1, v12, v0, v12
	v_fmac_f32_e32 v40, v37, v40
	v_rcp_f32_e32 v37, v41
	v_rcp_f32_e32 v35, v42
	v_div_scale_f32 v39, s4, v11, v0, v11
	v_div_fixup_f32 v32, v34, v0, v32
	v_div_fixup_f32 v9, v33, v0, v9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v45, -v41, v37, 1.0
	v_fmac_f32_e32 v36, v49, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	v_cmp_o_f32_e64 s33, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v45, v37
	v_mul_f32_e32 v43, v38, v40
	v_fma_f32 v45, -v42, v35, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v26, v66, 0x7fff
	v_cmp_o_f32_e64 s34, v26, v26
	v_cmp_o_f32_e64 s35, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v43, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s33
	v_bfe_u32 v65, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v43, v34, v40 :: v_dual_mul_f32 v34, v39, v37
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v30, 16, 1
	v_cmp_o_f32_e64 s33, v28, v28
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v47, v43, v38
	v_fma_f32 v38, -v41, v34, v39
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v34, v38, v37 :: v_dual_mul_f32 v47, v44, v35
	v_div_fmas_f32 v33, v33, v40, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v40, s3, v13, v0, v13
	v_fma_f32 v38, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v33, v0, v10
	v_fma_f32 v33, -v41, v34, v39
	v_div_scale_f32 v41, null, v0, v0, v15
	v_fmac_f32_e32 v47, v38, v35
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v40, v36
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v43, -v45, v48, 1.0
	v_fma_f32 v34, -v42, v47, v44
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v37, -v46, v38, v40
	v_div_scale_f32 v44, null, v0, v0, v16
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, s5, v14, v0, v14
	v_div_fmas_f32 v34, v34, v35, v47
	v_fmac_f32_e32 v38, v37, v36
	v_rcp_f32_e32 v35, v44
	v_fmac_f32_e32 v48, v43, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v41, v42, 1.0
	v_div_fixup_f32 v11, v33, v0, v11
	v_div_fixup_f32 v12, v34, v0, v12
	v_fma_f32 v33, -v46, v38, v40
	v_div_scale_f32 v34, s1, v15, v0, v15
	v_fmac_f32_e32 v42, v47, v42
	v_mul_f32_e32 v43, v39, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v0, v0, v18
	v_div_fmas_f32 v33, v33, v36, v38
	v_mul_f32_e32 v38, v34, v42
	v_fma_f32 v37, -v45, v43, v39
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fmac_f32_e32 v43, v37, v48
	v_fma_f32 v37, -v44, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v45, v43, v39
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v17
	v_div_scale_f32 v39, s3, v16, v0, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v48, v43
	v_rcp_f32_e32 v40, v37
	v_fma_f32 v43, -v41, v38, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v0, v14
	v_rcp_f32_e32 v36, v46
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fma_f32 v33, -v44, v45, v39
	v_fmac_f32_e32 v38, v43, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v37, v40, 1.0
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v33, v35
	v_fma_f32 v34, -v41, v38, v34
	v_div_scale_f32 v41, null, v0, v0, v19
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v33, s4, v17, v0, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v41
	v_div_fmas_f32 v34, v34, v42, v38
	v_fma_f32 v38, -v44, v45, v39
	v_fma_f32 v47, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v38, v35, v45
	v_div_fixup_f32 v15, v34, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v35, v0, v16
	v_fma_f32 v35, -v48, v50, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_mul_f32_e32 v39, v33, v40
	v_div_scale_f32 v44, s5, v19, v0, v19
	v_fmac_f32_e32 v36, v47, v36
	v_fmac_f32_e32 v50, v35, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v37, v39, v33
	v_mul_f32_e32 v45, v44, v43
	v_div_scale_f32 v35, s3, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v47, v40
	v_fma_f32 v34, -v41, v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v0, v0, v21
	v_fmac_f32_e32 v45, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v39
	v_rcp_f32_e32 v34, v37
	v_mul_f32_e32 v49, v42, v36
	v_div_scale_f32 v40, null, v0, v0, v22
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v39, v35, v50
	v_fma_f32 v38, -v46, v49, v42
	v_div_fixup_f32 v17, v33, v0, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v38, v36
	v_fma_f32 v38, -v46, v49, v42
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v41, v45, v44
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v18, v36, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v43, v45
	v_fma_f32 v43, -v48, v39, v35
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_div_fixup_f32 v19, v38, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v36, -v40, v42, 1.0
	v_mul_f32_e32 v33, v41, v34
	v_div_scale_f32 v38, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v48, v39, v35
	v_fmac_f32_e32 v42, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v37, v33, v41
	v_div_scale_f32 v36, s4, v22, v0, v22
	v_rcp_f32_e32 v44, v38
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v33, v43, v34
	v_div_fmas_f32 v35, v35, v50, v39
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v24
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v35, v0, v20
	v_fma_f32 v35, -v37, v33, v41
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v35, v34, v33
	v_fmac_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v21, v33, v0, v21
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v24, v0, v24
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
	v_div_fixup_f32 v22, v36, v0, v22
	v_fmac_f32_e32 v42, v39, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v49, -v41, v47, 1.0
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	v_fma_f32 v33, -v43, v42, v33
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v35, v0, v23
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v33, v0, v24
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v41, v38, v49
	v_fma_f32 v34, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_rcp_f32_e32 v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v33, v0, v3
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v46, 1.0
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v39, v45, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v37, v41, 1.0
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
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fma_f32 v35, -v35, v51, v45
	v_div_fmas_f32 v33, v33, v36, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v2, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v2, v67, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v28, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v10, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s35
	v_add3_u32 v28, v29, v65, 0x7fff
	v_add3_u32 v29, v30, v66, 0x7fff
	v_cmp_o_f32_e64 s35, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s33
	v_bfe_u32 v27, v31, 16, 1
	v_bfe_u32 v30, v32, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v11, s0
	v_cndmask_b32_e64 v36, 0, v12, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s34
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s35
	v_bfe_u32 v29, v33, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s33, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v32, v32
	v_bfe_u32 v31, v34, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v13, s0
	v_cndmask_b32_e64 v38, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v33, v29, 0x7fff
	v_cmp_o_f32_e64 s35, v33, v33
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s33
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s34
	v_bfe_u32 v30, v35, 16, 1
	v_bfe_u32 v32, v36, 16, 1
	v_add3_u32 v31, v34, v31, 0x7fff
	v_cmp_o_f32_e64 s33, v34, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v15, s0
	v_cndmask_b32_e64 v40, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s35
	v_add3_u32 v30, v35, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v35, v35
	v_add3_u32 v32, v36, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v36, v36
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s33
	v_bfe_u32 v31, v37, 16, 1
	v_bfe_u32 v33, v38, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v17, s0
	v_cndmask_b32_e64 v42, 0, v18, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s34
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s35
	v_bfe_u32 v32, v39, 16, 1
	v_add3_u32 v31, v37, v31, 0x7fff
	v_cmp_o_f32_e64 s33, v37, v37
	v_add3_u32 v33, v38, v33, 0x7fff
	v_cmp_o_f32_e64 s34, v38, v38
	v_bfe_u32 v34, v40, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v19, s0
	v_cndmask_b32_e64 v44, 0, v20, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v32, v39, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s33
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s34
	v_bfe_u32 v33, v41, 16, 1
	v_bfe_u32 v35, v42, 16, 1
	v_add3_u32 v34, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s33, v40, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v21, s0
	v_cndmask_b32_e64 v46, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s35
	v_add3_u32 v33, v41, v33, 0x7fff
	v_cmp_o_f32_e64 s34, v41, v41
	v_add3_u32 v35, v42, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v42, v42
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s33
	v_bfe_u32 v34, v43, 16, 1
	v_bfe_u32 v36, v44, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v23, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s34
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s35
	v_bfe_u32 v35, v45, 16, 1
	v_add3_u32 v34, v43, v34, 0x7fff
	v_cmp_o_f32_e64 s33, v43, v43
	v_add3_u32 v36, v44, v36, 0x7fff
	v_cmp_o_f32_e64 s34, v44, v44
	v_bfe_u32 v37, v46, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v48, 0, v1, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v35, v45, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v45, v45
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s33
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s34
	v_bfe_u32 v36, v47, 16, 1
	v_bfe_u32 v38, v24, 16, 1
	v_add3_u32 v37, v46, v37, 0x7fff
	v_cmp_o_f32_e64 s33, v46, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v3, s0
	v_cndmask_b32_e64 v55, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s35
	v_add3_u32 v36, v47, v36, 0x7fff
	v_cmp_o_f32_e64 s34, v47, v47
	v_add3_u32 v38, v24, v38, 0x7fff
	v_cmp_o_f32_e64 s35, v24, v24
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s33
	v_bfe_u32 v24, v48, 16, 1
	v_bfe_u32 v37, v49, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v51, 0, v4, s0
	v_cndmask_b32_e64 v53, 0, v5, s0
	v_cndmask_b32_e64 v54, 0, v6, s0
	v_cndmask_b32_e64 v56, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s34
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s35
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v24, v48, v24, 0x7fff
	v_cmp_o_f32_e64 s33, v48, v48
	v_add3_u32 v37, v49, v37, 0x7fff
	v_cmp_o_f32_e64 s34, v49, v49
	v_bfe_u32 v41, v55, 16, 1
	v_bfe_u32 v39, v51, 16, 1
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cmp_o_f32_e64 s35, v50, v50
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s33
	v_cndmask_b16 v24.h, 0x7fff, v37.h, s34
	v_bfe_u32 v37, v53, 16, 1
	v_bfe_u32 v40, v54, 16, 1
	v_bfe_u32 v42, v56, 16, 1
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s36, v55, v55
	v_add3_u32 v39, v51, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s35
	v_cmp_o_f32_e64 s33, v51, v51
	v_add3_u32 v37, v53, v37, 0x7fff
	v_cmp_o_f32_e64 s34, v53, v53
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e64 s35, v54, v54
	v_add3_u32 v42, v56, v42, 0x7fff
	v_cmp_o_f32_e64 s37, v56, v56
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s36
	v_mov_b32_e32 v41, 0x5410
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s33
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s34
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s35
	v_cndmask_b16 v39.h, 0x7fff, v42.h, s37
	v_cndmask_b32_e64 v40, v28, v25, s39
	v_cndmask_b32_e64 v25, v25, v28, s39
	v_cndmask_b32_e64 v28, v27, v26, s39
	v_cndmask_b32_e64 v26, v26, v27, s39
	v_cndmask_b32_e64 v27, v31, v29, s39
	v_cndmask_b32_e64 v29, v29, v31, s39
	v_cndmask_b32_e64 v31, v32, v30, s39
	v_mov_b32_e32 v42, 0x7632
	v_cndmask_b32_e64 v30, v30, v32, s39
	v_cndmask_b32_e64 v32, v35, v33, s39
	v_cndmask_b32_e64 v33, v33, v35, s39
	v_cndmask_b32_e64 v35, 0x1054, v41, s39
	v_cndmask_b32_e64 v41, 0x3276, v42, s39
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v52, 1, v68
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v42, v36, v34, s39
	v_cndmask_b32_e64 v34, v34, v36, s39
	v_lshl_or_b32 v35, v35, 8, v35
	v_lshl_or_b32 v41, v41, 8, v41
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v57, 1, v52
	v_or_b32_e32 v58, 2, v52
	v_or_b32_e32 v59, 3, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v35, 0x540054, v35
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v60, 4, v52
	v_or_b32_e32 v61, 5, v52
	v_or_b32_e32 v62, 6, v52
	v_or_b32_e32 v63, 7, v52
	v_or_b32_e32 v64, 16, v52
	v_or_b32_e32 v23, 17, v52
	v_or_b32_e32 v22, 18, v52
	v_or_b32_e32 v21, 19, v52
	v_or_b32_e32 v20, 20, v52
	v_or_b32_e32 v19, 21, v52
	v_or_b32_e32 v18, 22, v52
	v_or_b32_e32 v17, 23, v52
	v_or_b32_e32 v16, 32, v52
	v_or_b32_e32 v15, 33, v52
	v_or_b32_e32 v14, 34, v52
	v_or_b32_e32 v13, 35, v52
	v_or_b32_e32 v12, 36, v52
	v_or_b32_e32 v11, 37, v52
	v_or_b32_e32 v10, 38, v52
	v_or_b32_e32 v9, 39, v52
	v_or_b32_e32 v8, 48, v52
	v_or_b32_e32 v7, 49, v52
	v_or_b32_e32 v6, 50, v52
	v_or_b32_e32 v5, 51, v52
	v_or_b32_e32 v4, 52, v52
	v_or_b32_e32 v3, 53, v52
	v_or_b32_e32 v1, 54, v52
	v_or_b32_e32 v0, 55, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 0x760076, v41
	v_lshl_or_b32 v35, v35, 4, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s2, v52
	v_cmp_gt_i32_e64 s30, s2, v57
	v_cmp_gt_i32_e64 s29, s2, v58
	v_cmp_gt_i32_e64 s28, s2, v59
	v_cmp_gt_i32_e64 s27, s2, v60
	v_cmp_gt_i32_e64 s26, s2, v61
	v_cmp_gt_i32_e64 s25, s2, v62
	v_cmp_gt_i32_e64 s24, s2, v63
	v_cmp_gt_i32_e64 s23, s2, v64
	v_cmp_gt_i32_e64 s22, s2, v23
	v_cmp_gt_i32_e64 s21, s2, v22
	v_cmp_gt_i32_e64 s20, s2, v21
	v_cmp_gt_i32_e64 s19, s2, v20
	v_cmp_gt_i32_e64 s18, s2, v19
	v_cmp_gt_i32_e64 s17, s2, v18
	v_cmp_gt_i32_e64 s16, s2, v17
	v_cmp_gt_i32_e64 s15, s2, v16
	v_cmp_gt_i32_e64 s14, s2, v15
	v_cmp_gt_i32_e64 s13, s2, v14
	v_cmp_gt_i32_e64 s12, s2, v13
	v_cmp_gt_i32_e64 s11, s2, v12
	v_cmp_gt_i32_e64 s10, s2, v11
	v_cmp_gt_i32_e64 s9, s2, v10
	v_cmp_gt_i32_e64 s5, s2, v9
	v_cmp_gt_i32_e64 s4, s2, v8
	v_cmp_gt_i32_e64 s3, s2, v7
	v_cmp_gt_i32_e64 s1, s2, v6
	v_cmp_gt_i32_e64 s0, s2, v5
	v_cmp_gt_i32_e32 vcc_lo, s2, v4
	v_cmp_gt_i32_e64 s8, s2, v3
	v_cmp_gt_i32_e64 s7, s2, v1
	v_cmp_gt_i32_e64 s6, s2, v0
	s_mov_b32 s2, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v36, v37, v24, s39
	v_cndmask_b32_e64 v24, v24, v37, s39
	v_cndmask_b32_e64 v37, v39, v38, s39
	v_cndmask_b32_e64 v38, v38, v39, s39
	v_permlanex16_b32 v25, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v39, v41, 4, v41
	v_and_b32_e32 v35, 0x5040504, v35
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v52, v2, v52, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s31, s38, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x7060706, v39
	v_permlanex16_b32 v34, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v25, v40, v35
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v56, v2, v57, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s31
	v_add_lshl_u32 v57, v2, v58, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s30, s38, s30
	s_and_b32 s29, s38, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v25, v25, v40, v39
	v_perm_b32 v40, v26, v28, v35
	v_perm_b32 v26, v26, v28, v39
	v_perm_b32 v28, v29, v27, v35
	v_perm_b32 v27, v29, v27, v39
	v_perm_b32 v29, v30, v31, v35
	v_perm_b32 v30, v30, v31, v39
	v_perm_b32 v31, v33, v32, v35
	v_perm_b32 v32, v33, v32, v39
	v_perm_b32 v33, v34, v42, v35
	v_perm_b32 v34, v34, v42, v39
	v_perm_b32 v42, v24, v36, v35
	v_perm_b32 v24, v24, v36, v39
	v_perm_b32 v35, v38, v37, v35
	v_perm_b32 v36, v38, v37, v39
	v_mov_b16_e32 v37.l, v41.h
	v_mov_b16_e32 v37.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v56, 0x80000000, v56, s30
	buffer_store_b16 v41, v52, s[44:47], 0 offen
	v_add_lshl_u32 v41, v2, v59, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s29
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s28, s38, s28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v25.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v37, v56, s[44:47], 0 offen
	buffer_store_b16 v25, v57, s[44:47], 0 offen
	v_add_lshl_u32 v25, v2, v60, 1
	v_cndmask_b32_e64 v37, 0x80000000, v41, s28
	v_add_lshl_u32 v41, v2, v61, 1
	v_add_lshl_u32 v52, v2, v62, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s27, s38, s27
	s_and_b32 s26, s38, s26
	s_and_b32 s25, s38, s25
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v40.h
	v_mov_b16_e32 v39.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s27
	v_cndmask_b32_e64 v41, 0x80000000, v41, s26
	v_cndmask_b32_e64 v52, 0x80000000, v52, s25
	v_add_lshl_u32 v4, v2, v4, 1
	s_clause 0x1
	buffer_store_b16 v68, v37, s[44:47], 0 offen
	buffer_store_b16 v40, v25, s[44:47], 0 offen
	v_add_lshl_u32 v25, v2, v63, 1
	v_add_lshl_u32 v23, v2, v23, 1
	v_add_lshl_u32 v21, v2, v21, 1
	v_add_lshl_u32 v19, v2, v19, 1
	v_add_lshl_u32 v17, v2, v17, 1
	v_add_lshl_u32 v15, v2, v15, 1
	v_add_lshl_u32 v13, v2, v13, 1
	v_add_lshl_u32 v11, v2, v11, 1
	v_add_lshl_u32 v9, v2, v9, 1
	v_add_lshl_u32 v7, v2, v7, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v3, v2, v3, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v26.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v39, v41, s[44:47], 0 offen
	buffer_store_b16 v26, v52, s[44:47], 0 offen
	v_add_lshl_u32 v26, v2, v64, 1
	v_add_lshl_u32 v22, v2, v22, 1
	v_add_lshl_u32 v20, v2, v20, 1
	v_add_lshl_u32 v18, v2, v18, 1
	v_add_lshl_u32 v16, v2, v16, 1
	v_add_lshl_u32 v14, v2, v14, 1
	v_add_lshl_u32 v12, v2, v12, 1
	v_add_lshl_u32 v10, v2, v10, 1
	v_add_lshl_u32 v8, v2, v8, 1
	v_add_lshl_u32 v6, v2, v6, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s38, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s24, s38, s24
	s_and_b32 s22, s38, s22
	s_and_b32 s20, s38, s20
	s_and_b32 s18, s38, s18
	s_and_b32 s16, s38, s16
	s_and_b32 s14, s38, s14
	s_and_b32 s12, s38, s12
	s_and_b32 s10, s38, s10
	s_and_b32 s5, s38, s5
	s_and_b32 s3, s38, s3
	s_and_b32 s0, s38, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s38, s8
	s_and_b32 s23, s38, s23
	s_and_b32 s21, s38, s21
	s_and_b32 s19, s38, s19
	s_and_b32 s17, s38, s17
	s_and_b32 s15, s38, s15
	s_and_b32 s13, s38, s13
	s_and_b32 s11, s38, s11
	s_and_b32 s9, s38, s9
	s_and_b32 s4, s38, s4
	s_and_b32 s1, s38, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v2, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v68.h
	v_mov_b16_e32 v43.l, v27.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v28.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v30.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v29.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v32.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v34.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v33.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v51.l, v24.h
	v_mov_b16_e32 v51.h, v68.h
	v_mov_b16_e32 v53.l, v42.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s24
	v_cndmask_b32_e64 v23, 0x80000000, v23, s22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s38, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s23
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
	v_mov_b16_e32 v55.l, v35.h
	v_mov_b16_e32 v55.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s38, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v54.l, v36.h
	v_mov_b16_e32 v54.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v38, v25, s[44:47], 0 offen
	buffer_store_b16 v28, v26, s[44:47], 0 offen
	buffer_store_b16 v44, v23, s[44:47], 0 offen
	buffer_store_b16 v27, v22, s[44:47], 0 offen
	buffer_store_b16 v43, v21, s[44:47], 0 offen
	buffer_store_b16 v29, v20, s[44:47], 0 offen
	buffer_store_b16 v46, v19, s[44:47], 0 offen
	buffer_store_b16 v30, v18, s[44:47], 0 offen
	buffer_store_b16 v45, v17, s[44:47], 0 offen
	buffer_store_b16 v31, v16, s[44:47], 0 offen
	buffer_store_b16 v48, v15, s[44:47], 0 offen
	buffer_store_b16 v32, v14, s[44:47], 0 offen
	buffer_store_b16 v47, v13, s[44:47], 0 offen
	buffer_store_b16 v33, v12, s[44:47], 0 offen
	buffer_store_b16 v50, v11, s[44:47], 0 offen
	buffer_store_b16 v34, v10, s[44:47], 0 offen
	buffer_store_b16 v49, v9, s[44:47], 0 offen
	buffer_store_b16 v42, v8, s[44:47], 0 offen
	buffer_store_b16 v53, v7, s[44:47], 0 offen
	buffer_store_b16 v24, v6, s[44:47], 0 offen
	buffer_store_b16 v51, v5, s[44:47], 0 offen
	buffer_store_b16 v35, v4, s[44:47], 0 offen
	buffer_store_b16 v55, v2, s[44:47], 0 offen
	buffer_store_b16 v36, v1, s[44:47], 0 offen
	buffer_store_b16 v54, v0, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp738:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1320
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1320
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46880
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1320
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
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
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
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
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
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
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
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
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
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
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
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
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
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1320
    .sgpr_count:     107
    .sgpr_spill_count: 69
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 329
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
