	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
	v_lshrrev_b32_e32 v14, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_load_b64 s[28:29], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_or_b32_e32 v2, 16, v14
	v_or_b32_e32 v3, 18, v14
	v_or_b32_e32 v4, 2, v14
	v_or_b32_e32 v5, 20, v14
	v_or_b32_e32 v6, 4, v14
	v_or_b32_e32 v7, 22, v14
	v_or_b32_e32 v8, 6, v14
	v_or_b32_e32 v12, 8, v14
	v_or_b32_e32 v13, 26, v14
	v_or_b32_e32 v9, 24, v14
	v_or_b32_e32 v15, 10, v14
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v3, off offset:4
	scratch_store_b32 off, v4, off offset:8
	scratch_store_b32 off, v5, off offset:12
	scratch_store_b32 off, v6, off offset:16
	scratch_store_b32 off, v7, off offset:20
	scratch_store_b32 off, v8, off offset:24
	scratch_store_b32 off, v9, off offset:28
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s24
	s_bitcmp1_b32 s24, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[90:91], null, s75, v14, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s34, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s10, s52
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 5
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s22, v5
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s22, v7
	v_or_b32_e32 v11, s22, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:32
	scratch_store_b32 off, v13, off offset:36
	v_or_b32_e32 v8, s22, v12
	v_or_b32_e32 v7, s22, v13
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[12:13], null, s75, 18, v[90:91]
	v_mad_u64_u32 v[22:23], null, s75, 20, v[90:91]
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s12, s3, s54
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v29, 28, v14
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v16, s22, v2
	v_or_b32_e32 v17, s22, v3
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s22, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v2, s75, 4, v90
	v_lshl_add_u32 v3, s75, 1, v90
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	v_mov_b32_e32 v4, v12
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[23:24], null, s75, 6, v[90:91]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v30, 12, v14
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_clause 0x5                            ; 28-byte Folded Spill
	scratch_store_b32 off, v15, off offset:40
	scratch_store_b32 off, v3, off offset:56
	scratch_store_b64 off, v[4:5], off offset:60
	scratch_store_b32 off, v29, off offset:44
	scratch_store_b32 off, v2, off offset:52
	scratch_store_b32 off, v30, off offset:48
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v13, s75, 2, v90
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[24:25], null, s75, 22, v[90:91]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s4, s10
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[34:35], null, s75, 12, v[90:91]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s10
	s_cmp_ge_u32 s2, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s22, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s22, v9
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s33, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s53
	s_xor_b32 s13, s52, s53
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s7, 0, s2
	s_ashr_i32 s21, s13, 31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s22, v15
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v15, s75, 3, v90
	v_mad_u64_u32 v[26:27], null, s75, 24, v[90:91]
	v_mad_u64_u32 v[27:28], null, s75, 10, v[90:91]
	v_mad_u64_u32 v[31:32], null, s75, 26, v[90:91]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s22, v14
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s19, s75, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s4, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s71, s54, v19
	v_cmp_gt_i32_e64 s16, s54, v16
	v_cmp_gt_i32_e64 s69, s54, v18
	v_cmp_gt_i32_e64 s70, s54, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s4, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s54, v10
	v_cmp_gt_i32_e64 s6, s54, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s9, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s54, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v162, 0, v0
	s_mov_b32 s85, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s8, s7, s9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s54, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s11, s9, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s54, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s11, s9, s11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s54, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s11, s10, s11
	v_writelane_b32 v255, s5, 1
	s_mul_i32 s14, s11, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 1, v39
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s13, s10, s14
	s_add_i32 s14, s11, 1
	s_sub_i32 s15, s13, s2
	s_cmp_ge_u32 s13, s2
	scratch_store_b32 off, v15, off offset:96 ; 4-byte Folded Spill
	s_cselect_b32 s14, s14, s11
	s_cselect_b32 s11, s15, s13
	s_add_i32 s13, s14, 1
	s_cmp_ge_u32 s11, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s54, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s13, s14
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s12, s22
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s69, s19
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s18, s2, s75
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s18, v90
	v_add_nc_u32_e32 v4, s18, v12
	v_dual_mov_b32 v12, v22 :: v_dual_add_nc_u32 v3, s18, v3
	scratch_store_b32 off, v13, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s18, v2
	v_add_nc_u32_e32 v21, s18, v13
	scratch_store_b64 off, v[12:13], off offset:72 ; 8-byte Folded Spill
	v_dual_mov_b32 v12, v23 :: v_dual_add_nc_u32 v25, s18, v15
	v_mov_b32_e32 v15, v34
	v_add_nc_u32_e32 v23, s18, v23
	v_add_nc_u32_e32 v28, s18, v31
	scratch_store_b64 off, v[12:13], off offset:80 ; 8-byte Folded Spill
	v_mov_b32_e32 v12, v24
	scratch_store_b64 off, v[15:16], off offset:124 ; 8-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v15, 30, v14
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s71, s19
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[12:13], off offset:88 ; 8-byte Folded Spill
	v_mov_b32_e32 v12, v26
	scratch_store_b32 off, v15, off offset:140 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v22, s18, v22
	v_add_nc_u32_e32 v24, s18, v24
	v_add_nc_u32_e32 v26, s18, v26
	scratch_store_b64 off, v[12:13], off offset:100 ; 8-byte Folded Spill
	v_dual_mov_b32 v12, v27 :: v_dual_add_nc_u32 v27, s18, v27
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s54, v7
	v_writelane_b32 v255, s7, 2
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s23, s23, s21
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[12:13], off offset:108 ; 8-byte Folded Spill
	v_mov_b32_e32 v12, v31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s21, s23, s21
	v_writelane_b32 v255, s9, 3
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s23, s21
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[12:13], off offset:116 ; 8-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s22, v30
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[30:31], null, s75, 28, v[90:91]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s22, v29
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v29, s18, v34
	v_mad_u64_u32 v[34:35], null, s75, 14, v[90:91]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v31, 14, v14
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[35:36], null, s75, 30, v[90:91]
	v_mov_b32_e32 v14, v30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s54, v13
	scratch_store_b32 off, v31, off offset:160 ; 4-byte Folded Spill
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v30, s18, v30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s54, v12
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[14:15], off offset:132 ; 8-byte Folded Spill
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s22, v15
	v_or_b32_e32 v15, s22, v31
	v_mov_b32_e32 v31, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s54, v14
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s19
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[31:32], off offset:144 ; 8-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s19
	v_dual_mov_b32 v32, v35 :: v_dual_add_nc_u32 v31, s18, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s19
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s54, v15
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s19
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[32:33], off offset:152 ; 8-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v33, v1, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	buffer_load_u8 v21, v21, s[28:31], 0 offen
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	buffer_load_u8 v25, v25, s[28:31], 0 offen
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s19
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v32, s18, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s70, s19
	v_writelane_b32 v255, s11, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x110, v0
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s19
	v_writelane_b32 v255, s13, 5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x198, v0
	v_cndmask_b32_e32 v29, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s19
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v31, v2, s[28:31], 0 offen
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v22, v22, s[28:31], 0 offen
	buffer_load_u8 v24, v24, s[28:31], 0 offen
	v_cndmask_b32_e32 v2, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s19
	v_writelane_b32 v255, s16, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v26, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v164, 0, v35
	v_cndmask_b32_e32 v28, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s19
	v_writelane_b32 v255, s4, 7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v32, v2, s[28:31], 0 offen
	buffer_load_u8 v26, v26, s[28:31], 0 offen
	buffer_load_u8 v34, v1, s[28:31], 0 offen
	buffer_load_u8 v29, v29, s[28:31], 0 offen
	buffer_load_u8 v28, v28, s[28:31], 0 offen
	buffer_load_u8 v30, v30, s[28:31], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s28, s23
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s29, s55, 31
	v_writelane_b32 v255, s6, 8
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v38, s28
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s28, s29, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v2, 0x88, v0
	v_writelane_b32 v255, s15, 9
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s28, s28, 27
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v165, 0, v36
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s28, s29, s28
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v163, 0, v2
	v_writelane_b32 v255, s8, 10
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s67, s28, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s24, s24, 0x10008
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, v37, v1
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s24, v38
	v_writelane_b32 v255, s10, 11
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v162, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v162, v3 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v162, v31 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v162, v4 offset:576
	ds_store_b8 v163, v21
	ds_store_b8 v163, v23 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v163, v22 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v163, v24 offset:576
	ds_store_b8 v164, v25
	ds_store_b8 v164, v27 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v164, v32 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v164, v26 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v165, v34
	s_waitcnt vmcnt(2)
	ds_store_b8 v165, v29 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v165, v28 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v165, v30 offset:576
	v_writelane_b32 v255, s12, 12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_writelane_b32 v255, s14, 13
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s28, s22, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s35, s22, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s28, s28, s27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s35, s35, s27
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s28, s28, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s28, s55, s28
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s28, s28, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s29, s28, 31
	s_lshr_b32 s29, s29, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s28, s28, s29
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s29, s35, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s28, s28, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s85, s29, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s67, s67, s28
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v3, 0, 1, s34
	s_and_not1_b32 vcc_lo, exec_lo, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s4, 1, v3
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v3, s22, v2
	v_writelane_b32 v255, s4, 14
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s28, s22, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s28, s28, 32
	s_min_i32 s28, s55, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s28, s28, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s29, s28, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s29, s29, 27
	s_add_i32 s28, s28, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s28, s28, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s67, s67, s28
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x38
	s_load_b32 s74, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v64, 16, v0
	v_lshlrev_b32_e32 v36, 1, v0
	v_add_nc_u32_e32 v65, s2, v2
	v_cmp_gt_i32_e64 s2, s54, v3
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s85, s67
	v_cmp_eq_u32_e64 s66, 0, v64
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[56:63], s[0:1], 0x8
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v4, 1, v65
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v43, s27, v18
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v45, s27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0x80000000, v4, s2
	v_subrev_nc_u32_e32 v60, s25, v43
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v47, s27, v20
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v50, s27, v11
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v46, s27, v17
	scratch_store_b32 off, v60, off offset:344 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v45
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v52, s27, v8
	v_add_nc_u32_e32 v55, s27, v7
	v_mov_b32_e32 v7, 0x7632
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s61, 0xffff
	s_mov_b32 s28, s60
	scratch_store_b32 off, v60, off offset:348 ; 4-byte Folded Spill
	buffer_load_u16 v33, v21, s[28:31], 0 offen
	v_subrev_nc_u32_e32 v60, s25, v47
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_add_nc_u32 v54, s27, v9
	v_lshrrev_b32_e32 v35, 2, v64
	v_lshrrev_b32_e32 v18, 4, v39
	scratch_store_b32 off, v60, off offset:352 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v50
	v_mul_u32_u24_e32 v19, 0x88, v1
	v_add_nc_u32_e32 v56, s27, v13
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v21, 14, v0
	scratch_store_b32 off, v60, off offset:356 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v52
	v_add_nc_u32_e32 v58, s27, v15
	v_or3_b32 v185, v18, v19, v35
	v_dual_mov_b32 v19, v17 :: v_dual_add_nc_u32 v44, s27, v16
	v_mov_b32_e32 v77, 0
	scratch_store_b32 off, v60, off offset:360 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v54
	v_mul_u32_u24_e32 v40, 0x44, v21
	v_dual_mov_b32 v21, v17 :: v_dual_add_nc_u32 v48, s27, v10
	v_mov_b32_e32 v85, 0
	scratch_store_b32 off, v60, off offset:364 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v56
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v51, s27, v5
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v111, 31, v0
	scratch_store_b32 off, v60, off offset:368 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v58
	v_add_nc_u32_e32 v53, s27, v6
	v_mov_b32_e32 v6, 0x5410
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v16, 2, v111
	scratch_store_b32 off, v60, off offset:372 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v44
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	v_add_nc_u32_e32 v57, s27, v12
	v_or_b32_e32 v186, v18, v16
	v_mov_b32_e32 v18, v17
	scratch_store_b32 off, v60, off offset:376 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v46
	v_cndmask_b32_e64 v20, 0x88, 0, vcc_lo
	v_dual_mov_b32 v24, v17 :: v_dual_add_nc_u32 v59, s27, v14
	v_mov_b32_e32 v26, v17
	scratch_store_b32 off, v60, off offset:380 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v48
	v_xor_b32_e32 v187, v20, v16
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v28, v17
	v_mov_b32_e32 v30, v17
	scratch_store_b32 off, v60, off offset:384 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v51
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v14, v17
	scratch_store_b32 off, v60, off offset:388 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v53
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v2, 5, v1
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v3, 24, v36
	scratch_store_b32 off, v60, off offset:392 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v55
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v4, 4, v39
	v_mov_b32_e32 v16, v17
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x30
	s_load_b128 s[28:31], s[0:1], 0x6c
	scratch_store_b32 off, v60, off offset:396 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v57
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v36, 60, v36
	v_cndmask_b32_e64 v38, 0x104, 0, vcc_lo
	v_or3_b32 v39, v2, v4, v3
	scratch_store_b32 off, v60, off offset:400 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v60, s25, v59
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v60, off offset:404
	scratch_store_b32 off, v43, off offset:280
	v_add_nc_u32_e32 v43, s26, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:408
	scratch_store_b32 off, v45, off offset:288
	v_add_nc_u32_e32 v43, s26, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:412
	scratch_store_b32 off, v47, off offset:296
	v_add_nc_u32_e32 v43, s26, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:416
	scratch_store_b32 off, v50, off offset:304
	v_add_nc_u32_e32 v43, s26, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:420
	scratch_store_b32 off, v52, off offset:312
	v_add_nc_u32_e32 v43, s26, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:424
	scratch_store_b32 off, v54, off offset:320
	v_add_nc_u32_e32 v43, s26, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:428
	scratch_store_b32 off, v56, off offset:328
	v_add_nc_u32_e32 v43, s26, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:432
	scratch_store_b32 off, v58, off offset:336
	v_add_nc_u32_e32 v43, s26, v58
	v_or_b32_e32 v184, v2, v3
	v_mov_b32_e32 v2, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:436
	scratch_store_b32 off, v44, off offset:284
	v_add_nc_u32_e32 v43, s26, v44
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v37, 1, v0
	v_mov_b32_e32 v4, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:440
	scratch_store_b32 off, v46, off offset:292
	v_add_nc_u32_e32 v43, s26, v46
	v_xor_b32_e32 v36, v38, v36
	v_cndmask_b32_e64 v41, 0x1054, v6, s66
	v_mov_b32_e32 v6, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:444
	scratch_store_b32 off, v48, off offset:300
	v_add_nc_u32_e32 v43, s26, v48
	v_xor_b32_e32 v45, 8, v184
	v_lshl_or_b32 v222, v37, 6, v36
	v_mov_b16_e32 v34.l, 0
	v_mov_b32_e32 v8, v17
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:448
	scratch_store_b32 off, v51, off offset:308
	v_add_nc_u32_e32 v43, s26, v51
	v_lshl_or_b32 v38, v37, 1, v40
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v45
	v_xor_b32_e32 v45, 0x208, v222
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s28, s28, 0x3fb8aa3b
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:452
	scratch_store_b32 off, v53, off offset:316
	v_xor_b32_e32 v46, 16, v184
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v59, off offset:340
	scratch_store_b32 off, v37, off offset:164
	v_xor_b32_e32 v47, 24, v184
	v_xor_b32_e32 v48, 8, v185
	v_dual_mov_b32 v220, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v46
	v_xor_b32_e32 v50, 16, v185
	v_xor_b32_e32 v51, 24, v185
	v_xor_b32_e32 v52, 32, v185
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v5, 2, v0
	v_xor_b32_e32 v54, 48, v185
	v_xor_b32_e32 v56, 64, v185
	v_xor_b32_e32 v58, 0x50, v185
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v188, v1, 8, v5
	v_xor_b32_e32 v60, 0x60, v185
	v_xor_b32_e32 v61, 0x68, v185
	v_xor_b32_e32 v62, 0x70, v185
	v_xor_b32_e32 v63, 0x78, v185
	v_xor_b32_e32 v94, 28, v188
	v_mov_b32_e32 v29, v17
	v_xor_b32_e32 v92, 20, v188
	v_mov_b32_e32 v27, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v183, 4, v64
	v_add_nc_u32_e32 v254, 0, v94
	v_xor_b32_e32 v64, 0x88, v186
	v_add_nc_u32_e32 v252, 0, v92
	v_xor_b32_e32 v66, 0x198, v186
	v_xor_b32_e32 v67, 0x220, v186
	v_xor_b32_e32 v68, 0x2a8, v186
	v_xor_b32_e32 v69, 0x330, v186
	v_xor_b32_e32 v70, 0x3b8, v186
	v_xor_b32_e32 v71, 4, v188
	v_xor_b32_e32 v72, 8, v188
	v_xor_b32_e32 v89, 12, v188
	s_load_b32 s4, s[0:1], 0x7c
	v_cndmask_b32_e64 v42, 0x3276, v7, s66
	v_lshl_or_b32 v41, v41, 8, v41
	v_xor_b32_e32 v91, 16, v188
	v_lshrrev_b32_e32 v110, 5, v0
	s_mov_b32 s8, 0
	v_lshl_or_b32 v42, v42, 8, v42
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_or3_b32 v221, v38, v35, v110
	v_writelane_b32 v255, s8, 15
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v36, 0x760076, v42
	s_xor_b32 s35, s3, s52
	s_mul_f32 s34, s24, 0x4f7ffffe
	v_writelane_b32 v255, s9, 16
	s_ashr_i32 s1, s21, 31
	s_ashr_i32 s21, s35, 31
	v_lshl_or_b32 v36, v36, 4, v36
	s_xor_b32 s27, s33, s21
	s_cvt_u32_f32 s33, s34
	s_sub_i32 s24, 0, s23
	v_writelane_b32 v255, s10, 17
	s_sub_i32 s21, s27, s21
	s_mul_i32 s24, s24, s33
	s_mul_i32 s25, s21, s52
	s_mul_hi_u32 s24, s33, s24
	s_sub_i32 s3, s3, s25
	v_writelane_b32 v255, s11, 18
	s_abs_i32 s25, s3
	s_add_i32 s33, s33, s24
	v_dual_mov_b32 v23, v17 :: v_dual_add_nc_u32 v40, 0, v39
	v_xor_b32_e32 v102, 60, v188
	v_xor_b32_e32 v103, 0x110, v187
	v_xor_b32_e32 v104, 0x220, v187
	v_xor_b32_e32 v105, 0x330, v187
	v_xor_b32_e32 v106, 0x440, v187
	v_xor_b32_e32 v107, 0x550, v187
	v_xor_b32_e32 v108, 0x660, v187
	v_xor_b32_e32 v109, 0x770, v187
	s_ashr_i32 s24, s3, 31
	s_mul_hi_u32 s27, s25, s33
	v_writelane_b32 v255, s12, 19
	v_xad_u32 v44, v39, 16, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s24, s1
	s_mul_i32 s24, s27, s23
	v_lshl_add_u32 v182, v1, 1, 0
	s_sub_i32 s24, s25, s24
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v144, 0, v102
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v146, 0, v104
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v148, 0, v106
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v150, 0, v108
	v_add_nc_u32_e32 v145, 0, v103
	v_add_nc_u32_e32 v147, 0, v105
	v_add_nc_u32_e32 v149, 0, v107
	v_add_nc_u32_e32 v151, 0, v109
	s_add_i32 s25, s27, 1
	s_sub_i32 s33, s24, s23
	v_writelane_b32 v255, s13, 20
	s_cmp_ge_u32 s24, s23
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s22, s31, s22
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s25, s25, s27
	s_cselect_b32 s24, s33, s24
	s_add_i32 s27, s25, 1
	v_writelane_b32 v255, s14, 21
	s_cmp_ge_u32 s24, s23
	v_xor_b32_e32 v93, 24, v188
	s_cselect_b32 s23, s27, s25
	v_xor_b32_e32 v95, 32, v188
	v_writelane_b32 v255, s15, 22
	v_xor_b32_e32 v96, 36, v188
	v_xor_b32_e32 v97, 40, v188
	v_xor_b32_e32 v98, 44, v188
	v_xor_b32_e32 v99, 48, v188
	v_xor_b32_e32 v100, 52, v188
	v_xor_b32_e32 v101, 56, v188
	v_xor_b32_e32 v38, 8, v221
	v_xor_b32_e32 v42, 40, v221
	v_xor_b32_e32 v46, 0x410, v222
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s30
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s74, v0
	v_dual_mov_b32 v31, v17 :: v_dual_add_nc_u32 v138, 0, v95
	v_dual_mov_b32 v9, v17 :: v_dual_add_nc_u32 v154, 0, v98
	v_dual_mov_b32 v11, v17 :: v_dual_add_nc_u32 v142, 0, v100
	v_add_nc_u32_e32 v253, 0, v93
	v_add_nc_u32_e32 v161, 0, v96
	v_add_nc_u32_e32 v139, 0, v97
	v_add_nc_u32_e32 v141, 0, v99
	v_add_nc_u32_e32 v143, 0, v101
	v_and_b32_e32 v153, 0x7060706, v36
	v_add_nc_u32_e32 v159, 0, v38
	v_add_nc_u32_e32 v191, 0, v42
	v_add_nc_u32_e32 v195, 0, v46
	v_mov_b32_e32 v217, 0xff800000
	v_mov_b32_e32 v219, 0xff800000
	v_mov_b32_e32 v169, 0xff800000
	v_mov_b32_e32 v167, 0xff800000
	v_mov_b32_e32 v171, 0xff800000
	v_mov_b32_e32 v173, 0xff800000
	v_mov_b32_e32 v175, 0xff800000
	v_mov_b32_e32 v95, 0xff800000
	v_mov_b32_e32 v93, 0xff800000
	v_mov_b32_e32 v157, 0xff800000
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v181, 0xff800000
	v_mov_b32_e32 v179, 0xff800000
	v_mov_b32_e32 v177, 0xff800000
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_mov_b32 s87, 0x76543210
	s_mov_b32 s76, s62
	s_mov_b32 s80, s58
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v33.l
	v_add_nc_u32_e32 v194, 0, v45
	s_mov_b32 s58, s78
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s77, s63, 0xffff
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v201, s28, v34
	v_add_nc_u32_e32 v43, s26, v53
	v_xor_b32_e32 v53, 40, v185
	v_and_b32_e32 v35, 0x540054, v41
	v_xor_b32_e32 v41, 32, v221
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v206, v201
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:456
	scratch_store_b32 off, v55, off offset:324
	v_dual_mov_b32 v208, v201 :: v_dual_add_nc_u32 v43, s26, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:460
	scratch_store_b32 off, v57, off offset:332
	v_dual_mov_b32 v210, v201 :: v_dual_add_nc_u32 v43, s26, v57
	scratch_store_b32 off, v37, off offset:168 ; 4-byte Folded Spill
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v47
	scratch_store_b32 off, v43, off offset:464 ; 4-byte Folded Spill
	v_dual_mov_b32 v212, v201 :: v_dual_add_nc_u32 v43, s26, v59
	scratch_store_b32 off, v37, off offset:172 ; 4-byte Folded Spill
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v43, off offset:468
	scratch_store_b32 off, v65, off offset:472
	v_mov_b32_e32 v168, 0xff800000
	scratch_store_b32 off, v37, off offset:176 ; 4-byte Folded Spill
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v50
	v_xor_b32_e32 v55, 56, v185
	v_xor_b32_e32 v57, 0x48, v185
	v_xor_b32_e32 v59, 0x58, v185
	scratch_store_b32 off, v37, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v51
	v_xor_b32_e32 v65, 0x110, v186
	v_mov_b32_e32 v214, v201
	v_xad_u32 v43, v39, 8, 0
	scratch_store_b32 off, v37, off offset:184 ; 4-byte Folded Spill
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v52
	v_xad_u32 v39, v39, 24, 0
	ds_load_b64 v[102:103], v40
	ds_load_b64 v[104:105], v43
	ds_load_b64 v[106:107], v44
	ds_load_b64 v[108:109], v39
	scratch_store_b32 off, v37, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v53
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s26, s21, s53
	v_mov_b32_e32 v94, 0xff800000
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s21, s21, s29
	scratch_store_b32 off, v37, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v54
	s_add_i32 s53, s21, s22
	v_mov_b32_e32 v92, 0xff800000
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s21, s23, s1
	v_xor_b32_e32 v39, 16, v221
	scratch_store_b32 off, v37, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v55
	v_xor_b32_e32 v40, 24, v221
	v_xor_b32_e32 v43, 48, v221
	v_xor_b32_e32 v44, 56, v221
	scratch_store_b32 off, v37, off offset:200 ; 4-byte Folded Spill
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v56
	v_xor_b32_e32 v47, 0x618, v222
	v_xor_b32_e32 v48, 0x820, v222
	v_xor_b32_e32 v50, 0xa28, v222
	scratch_store_b32 off, v37, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v180, 0xff800000 :: v_dual_add_nc_u32 v37, 0, v57
	v_xor_b32_e32 v51, 0xc30, v222
	v_xor_b32_e32 v52, 0xe38, v222
	v_mov_b32_e32 v178, 0xff800000
	scratch_store_b32 off, v37, off offset:208 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v58
	s_sub_i32 s1, s21, s1
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v160, 0, v39
	v_mov_b32_e32 v176, 0xff800000
	scratch_store_b32 off, v37, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v59
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s88, s1, s26
	s_add_i32 s1, s53, s3
	v_add_nc_u32_e32 v189, 0, v40
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v207, v201 :: v_dual_add_nc_u32 v190, 0, v41
	scratch_store_b32 off, v37, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v60
	v_dual_mov_b32 v209, v201 :: v_dual_add_nc_u32 v192, 0, v43
	v_add_nc_u32_e32 v193, 0, v44
	v_dual_mov_b32 v211, v201 :: v_dual_add_nc_u32 v196, 0, v47
	scratch_store_b32 off, v37, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v61
	v_add_nc_u32_e32 v197, 0, v48
	v_dual_mov_b32 v213, v201 :: v_dual_add_nc_u32 v198, 0, v50
	v_add_nc_u32_e32 v199, 0, v51
	scratch_store_b32 off, v37, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v62
	v_dual_mov_b32 v215, v201 :: v_dual_add_nc_u32 v200, 0, v52
	.loc	1 821 32                        ; attention.py:821:32
	v_writelane_b32 v255, s1, 23
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s68, s4
	scratch_store_b32 off, v37, off offset:228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v63
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s81, s59, 0xffff
	s_mov_b32 s59, s79
	s_mul_i32 s88, s88, s55
	scratch_store_b32 off, v37, off offset:232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v64
	scratch_store_b32 off, v37, off offset:236 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v65
	scratch_store_b32 off, v37, off offset:240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v66
	scratch_store_b32 off, v37, off offset:244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v67
	scratch_store_b32 off, v37, off offset:248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v68
	scratch_store_b32 off, v37, off offset:252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v69
	scratch_store_b32 off, v37, off offset:256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v70
	scratch_store_b32 off, v37, off offset:260 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v71
	scratch_store_b32 off, v37, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v72
	scratch_store_b32 off, v37, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v89
	v_mov_b32_e32 v89, 0xff800000
	scratch_store_b32 off, v37, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v91
	v_mov_b32_e32 v91, 0xff800000
	scratch_store_b32 off, v37, off offset:276 ; 4-byte Folded Spill
	v_lshl_or_b32 v37, v35, 4, v35
	v_mul_lo_u32 v35, s31, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v152, 0x5040504, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[110:111], null, s4, v111, v[35:36]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[111:112], null, s31, 6, v[110:111]
	v_lshl_add_u32 v202, s31, 1, v110
	v_lshl_add_u32 v203, s31, 2, v110
	v_lshl_add_u32 v204, s31, 3, v110
	v_lshl_add_u32 v205, s31, 4, v110
	v_mad_u64_u32 v[112:113], null, s31, 10, v[110:111]
	v_mad_u64_u32 v[113:114], null, s31, 12, v[110:111]
	v_mad_u64_u32 v[114:115], null, s31, 14, v[110:111]
	v_mad_u64_u32 v[115:116], null, s31, 18, v[110:111]
	v_mad_u64_u32 v[116:117], null, s31, 20, v[110:111]
	v_mad_u64_u32 v[117:118], null, s31, 22, v[110:111]
	v_mad_u64_u32 v[118:119], null, s31, 24, v[110:111]
	v_mad_u64_u32 v[119:120], null, s31, 26, v[110:111]
	v_mad_u64_u32 v[120:121], null, s31, 28, v[110:111]
	v_mad_u64_u32 v[121:122], null, s31, 30, v[110:111]
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s3, v255, 23
	s_mul_i32 s1, s85, s68
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v66, v44
	v_cvt_f32_i32_e32 v44, v45
	v_cvt_f32_i32_e32 v45, v39
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s1, s3, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s1, v110, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v69, v41
	v_cvt_f32_i32_e32 v41, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v48, s1, v202, 1
	v_add_lshl_u32 v71, s1, v203, 1
	v_add_lshl_u32 v96, s1, v111, 1
	v_add_lshl_u32 v98, s1, v204, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s101
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v43
	v_cvt_f32_i32_e32 v43, v46
	v_cvt_f32_i32_e32 v46, v38
	v_cvt_f32_i32_e32 v38, v34
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, s1, v205, 1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s100
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v68, v42
	v_cvt_f32_i32_e32 v42, v47
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v47, s1, v115, 1
	v_cndmask_b32_e64 v71, 0x80000000, v71, s96
	s_mov_b32 s62, s78
	s_mov_b32 s63, s79
	v_add_lshl_u32 v70, s1, v116, 1
	v_cndmask_b32_e64 v96, 0x80000000, v96, s93
	v_add_lshl_u32 v72, s1, v117, 1
	v_cndmask_b32_e64 v98, 0x80000000, v98, s92
	v_add_lshl_u32 v97, s1, v118, 1
	s_clause 0x4
	buffer_load_u16 v40, v40, s[60:63], 0 offen
	buffer_load_u16 v48, v48, s[60:63], 0 offen
	buffer_load_u16 v71, v71, s[60:63], 0 offen
	buffer_load_u16 v96, v96, s[60:63], 0 offen
	buffer_load_u16 v100, v98, s[60:63], 0 offen
	v_add_lshl_u32 v98, s1, v119, 1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s103
	v_cndmask_b32_e64 v47, 0x80000000, v47, s102
	v_cndmask_b32_e64 v70, 0x80000000, v70, s99
	v_cndmask_b32_e64 v72, 0x80000000, v72, s98
	v_cndmask_b32_e64 v97, 0x80000000, v97, s97
	v_cndmask_b32_e64 v98, 0x80000000, v98, s95
	v_add_lshl_u32 v99, s1, v112, 1
	s_clause 0x5
	buffer_load_u16 v37, v37, s[60:63], 0 offen
	buffer_load_u16 v47, v47, s[60:63], 0 offen
	buffer_load_u16 v70, v70, s[60:63], 0 offen
	buffer_load_u16 v72, v72, s[60:63], 0 offen
	buffer_load_u16 v97, v97, s[60:63], 0 offen
	buffer_load_u16 v101, v98, s[60:63], 0 offen
	v_add_lshl_u32 v98, s1, v120, 1
	v_add_lshl_u32 v122, s1, v113, 1
	v_add_lshl_u32 v123, s1, v121, 1
	v_add_lshl_u32 v124, s1, v114, 1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s90
	v_cndmask_b32_e64 v98, 0x80000000, v98, s94
	v_cndmask_b32_e64 v122, 0x80000000, v122, s89
	v_cndmask_b32_e64 v123, 0x80000000, v123, s91
	v_cndmask_b32_e64 v124, 0x80000000, v124, s83
	s_clause 0x4
	buffer_load_u16 v125, v99, s[60:63], 0 offen
	buffer_load_u16 v126, v98, s[60:63], 0 offen
	buffer_load_u16 v122, v122, s[60:63], 0 offen
	buffer_load_u16 v123, v123, s[60:63], 0 offen
	buffer_load_u16 v124, v124, s[60:63], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_mov_b16_e32 v61.h, v61.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v201, v69
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_mov_b16_e32 v58.h, v58.l
	s_waitcnt vmcnt(25)
	v_mov_b16_e32 v51.h, v51.l
	v_mov_b16_e32 v59.h, v59.l
	v_mov_b16_e32 v54.h, v54.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v97.h, v50.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s62, s85, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v214, v35
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s21, s85, 4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v201, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s54, s85, 5
	s_or_b32 s63, s85, 6
	s_or_b32 s84, s85, 9
	s_or_b32 s4, s85, 20
	s_or_b32 s5, s85, 21
	s_or_b32 s6, s85, 22
	s_or_b32 s7, s85, 23
	s_or_b32 s8, s85, 24
	s_or_b32 s9, s85, 25
	s_or_b32 s10, s85, 26
	s_or_b32 s11, s85, 27
	s_or_b32 s12, s85, 28
	s_or_b32 s51, s85, 29
	s_or_b32 s13, s85, 30
	s_or_b32 s14, s85, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v228, v162, v0
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v201, v46
	v_mul_f32_e32 v44, v209, v44
	v_mul_f32_e32 v38, v213, v38
	v_mul_f32_e32 v36, v201, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v127.l, 0xff80, v40.l, s101
	v_cndmask_b16 v128.l, 0xff80, v48.l, s100
	v_cndmask_b16 v99.l, 0xff80, v71.l, s96
	v_cndmask_b16 v98.l, 0xff80, v96.l, s93
	v_cndmask_b16 v96.l, 0xff80, v100.l, s92
	v_cndmask_b16 v127.h, 0xff80, v37.l, s103
	v_cndmask_b16 v128.h, 0xff80, v47.l, s102
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v37, 0, v187
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v99.h, 0xff80, v70.l, s99
	v_cndmask_b16 v98.h, 0xff80, v72.l, s98
	v_cndmask_b16 v96.h, 0xff80, v97.l, s97
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v72.h, 0xff80, v101.l, s95
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v37, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v65.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v97.l, 0
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v72.l, 0xff80, v125.l, s90
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v71.h, 0xff80, v126.l, s94
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v71.l, 0xff80, v122.l, s89
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v70.h, 0xff80, v123.l, s91
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v70.l, 0xff80, v124.l, s83
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v145, v128
	ds_store_b32 v146, v99
	ds_store_b32 v147, v98
	ds_store_b32 v148, v96
	ds_store_b32 v149, v72
	ds_store_b32 v150, v71
	ds_store_b32 v151, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v40, off, off offset:224
	scratch_load_b32 v47, off, off offset:228
	scratch_load_b32 v48, off, off offset:232
	scratch_load_b32 v65, off, off offset:220
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.l, v97.l
	v_mov_b16_e32 v61.l, v97.l
	v_mov_b16_e32 v58.l, v97.l
	v_mov_b16_e32 v51.l, v97.l
	v_mov_b16_e32 v59.l, v97.l
	v_mov_b16_e32 v54.l, v97.l
	v_mov_b16_e32 v53.l, v97.l
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	ds_load_u16 v40, v40
	s_waitcnt vmcnt(2)
	ds_load_u16 v47, v47
	s_waitcnt vmcnt(1)
	ds_load_u16 v48, v48
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v40, v46, v37 :: v_dual_lshlrev_b32 v37, 16, v47
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v46.h, v64.l
	v_mov_b16_e32 v46.l, v97.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v201, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v37
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v48
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v47, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v46.h, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v201, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v39, 0x3fb8aa3b, v37
	v_add_nc_u32_e32 v37, 0, v185
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v39, v47, v46
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v46, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	ds_load_u16 v65, v65
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_u16 v37, v37
	s_waitcnt vmcnt(0)
	ds_load_u16 v47, v46
	scratch_load_b32 v46, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_u16 v48, v46
	scratch_load_b32 v46, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v63, v46
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v46, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v64, v46
	scratch_load_b32 v46, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v100, v46
	scratch_load_b32 v46, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v101, v46
	scratch_load_b32 v46, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v122, v46
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v46, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v37, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v46, v69, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v37
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(5)
	v_lshlrev_b32_e32 v37, 16, v48
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v48, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v37, 16, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v206, v68
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v61, v59
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v207, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v48, v59, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v58.h, v56.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v56, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v37, 16, v64
	v_mul_f32_e32 v37, 0x3fb8aa3b, v37
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v37, v44, v54 :: v_dual_lshlrev_b32 v44, 16, v100
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v54, v210, v43 :: v_dual_mul_f32 v43, 0x3fb8aa3b, v44
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, v54, v53
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v53, v211, v42 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v44
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v42, v53, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v51.h, v52.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v52, v212, v41 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v44
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v44, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v52, v51
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v51, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v52, v51
	scratch_load_b32 v51, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u16 v54, v51
	scratch_load_b32 v51, off, off offset:204 ; 4-byte Folded Reload
	ds_load_u16 v44, v44
	s_waitcnt vmcnt(0)
	ds_load_u16 v53, v51
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v59, v208, v66 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v51.h, v62.l
	v_mov_b16_e32 v51.l, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v56, v59, v58
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v44
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v58.h, v60.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v38, v51
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v38, 16, v65
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v57.l
	v_mov_b16_e32 v38.l, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v53
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v51, v36, v58 :: v_dual_lshlrev_b32 v36, 16, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v33, v97
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	scratch_load_b32 v33, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v55.l
	v_mov_b16_e32 v36.l, v97.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v35, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v35, 16, v54
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v215, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v35.h, v127.l
	v_mov_b16_e32 v127.l, v97.l
	v_mov_b16_e32 v35.l, v97.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v127
	v_cmp_neq_f32_e64 s3, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v35.h, v128.l
	v_mov_b16_e64 v128.l, v97.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s103, vcc_lo
	s_and_b32 s23, s101, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v35
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v128
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s23
	v_lshlrev_b16 v35.l, 8, v35.l
	s_and_b32 vcc_lo, s102, s22
	s_and_b32 s22, s100, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v38, 0, 1, s22
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v35.h, 8, v36.l
	v_add_nc_u32_e32 v36, 0, v186
	v_or_b16 v35.h, v38.l, v35.h
	ds_store_b16 v36, v35
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v99.l
	v_mov_b16_e32 v36.l, v97.l
	v_mov_b16_e32 v99.l, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v36
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v36.h, v98.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v99
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v98.l, v97.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s36, s96, s24
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v96.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s99, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v98
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v96.l, v97.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s93, s26
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v72.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s98, s25
	v_cndmask_b32_e64 v38, 0, 1, s35
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v96
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s92, s30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v71.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v50, 0, 1, s34
	s_and_b32 s27, s97, s27
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v72.l, v97.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, s90, s33
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v36.h, v70.l
	v_mov_b16_e32 v71.l, v97.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v72
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v70.l, v97.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s90, s85, 11
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s40, 0xff800000, v36
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v36, 0, 1, s29
	s_and_b32 s26, s95, s31
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v71
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s89, s38
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v35.l, v36.l
	v_cndmask_b32_e64 v36, 0, 1, s36
	s_and_b32 s25, s94, s37
	v_cndmask_b32_e64 v54, 0, 1, s31
	s_and_b32 s24, s91, s39
	v_lshlrev_b16 v35.l, 8, v35.l
	s_and_b32 s30, s83, s40
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s83, s85, 8
	s_or_b32 s89, s85, 10
	s_or_b32 s91, s85, 12
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v35.l, v36.l, v35.l
	v_cndmask_b32_e64 v36, 0, 1, s28
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s92, s85, 13
	s_or_b32 s93, s85, 14
	s_or_b32 s94, s85, 15
	s_or_b32 s95, s85, 16
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v36.l, 8, v36.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s96, s85, 17
	s_or_b32 s97, s85, 18
	s_or_b32 s98, s85, 19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v36.l, v38.l, v36.l
	v_cndmask_b32_e64 v38, 0, 1, s27
	v_lshlrev_b16 v36.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v36.h, v50.l, v36.h
	v_cndmask_b32_e64 v50, 0, 1, s33
	v_lshlrev_b16 v38.l, 8, v38.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v38.l, v50.l, v38.l
	v_cndmask_b32_e64 v50, 0, 1, s25
	v_lshlrev_b16 v38.h, 8, v50.l
	v_cndmask_b32_e64 v50, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v38.h, v54.l, v38.h
	v_cndmask_b32_e64 v54, 0, 1, s30
	v_lshlrev_b16 v50.l, 8, v50.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v50.l, v54.l, v50.l
	v_add_nc_u32_e32 v54, 0, v221
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v35
	scratch_load_b32 v33, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v35
	scratch_load_b32 v33, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v36
	scratch_load_b32 v33, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v36
	scratch_load_b32 v33, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v38
	scratch_load_b32 v33, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v33, v38
	scratch_load_b32 v33, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v33, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v33, v192
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v193 offset:64
	ds_load_u8_d16 v35, v192 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v191 offset:64
	ds_load_u8_d16_hi v38, v54 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v33.l
	ds_load_u8_d16 v33, v190
	ds_load_u8_d16 v50, v190 offset:64
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s46, 1, v33.l
	ds_load_u8_d16 v33, v189
	ds_load_u8_d16 v36, v189 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v160 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s50, 1, v33.l
	ds_load_u8_d16 v33, v160
	ds_load_u8_d16 v38, v159 offset:64
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s49, 1, v33.l
	ds_load_u8_d16 v33, v159
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s52, 1, v33.l
	ds_load_u8_d16 v33, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s52
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s3, 1, v33.l
	v_and_b16 v33.l, 1, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v226, 0xff800000, v53, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s42, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v56, s50
	v_cndmask_b32_e64 v224, 0xff800000, v34, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v223, 0xff800000, v52, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s44, 1, v33.l
	v_and_b16 v33.l, 1, v35.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v225, 0xff800000, v44, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v48, s49
	v_cndmask_b32_e64 v101, 0xff800000, v40, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v45, s37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	ds_load_u8_d16 v33, v191
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v39, s38
	v_cndmask_b32_e64 v39, 0xff800000, v42, s45
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s48, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v43, s48
	v_cndmask_b32_e64 v43, 0xff800000, v46, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v36, v37, v38
	v_max_f32_e32 v33, v43, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v46, v33, v35, v46
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v50.l
	v_cmp_eq_u16_e64 s41, 1, v33.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v225, v223, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v51, s41
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v100, v101, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v33, v34, v99
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v33, v193
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s47, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v41, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v97.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v39, v40, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v46, v33, v34
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s87, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v96, v49, v33, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v33, 0, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v97.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v33, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v47, v96
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s52
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v43, v96
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[42:43], null, s82, s74, v[0:1]
	.loc	1 882 26                        ; attention.py:882:26
	scratch_load_b32 v43, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s82, s85, 7
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v41, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v47
	scratch_load_b32 v43, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v35
	scratch_load_b32 v43, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s49, v35, v35
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v36
	scratch_load_b32 v43, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v96
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s50
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v37
	ds_store_b32 v252, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v33.h, s52
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v253, v39
	ds_store_b32 v254, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v34.h, s3
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s52, s85, 2
	s_or_b32 s3, s85, 3
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s85, s55
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v41, s87, 0xfedcba98 op_sel:[1,0]
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s62, s55
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v96
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s16, -1, 0
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v33, v34, v41, v152
	v_perm_b32 v34, v34, v41, v153
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v41, s74, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s52, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s3, s55
	v_add_nc_u32_e32 v43, s74, v41
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s21, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s20, -1, 0
	v_add_nc_u32_e32 v44, s74, v43
	s_cmp_lt_i32 s54, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s63, s55
	v_add_nc_u32_e32 v45, s74, v44
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s82, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v44
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s64, -1, 0
	v_add_nc_u32_e32 v46, s74, v45
	s_cmp_lt_i32 s83, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v45, 1, v45
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s84, s55
	v_add_nc_u32_e32 v47, s74, v46
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s89, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v46
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s21, -1, 0
	v_add_nc_u32_e32 v48, s74, v47
	s_cmp_lt_i32 s90, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v47, 1, v47
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s91, s55
	v_add_nc_u32_e32 v50, s74, v48
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s92, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v48
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s102, -1, 0
	v_add_nc_u32_e32 v51, s74, v50
	s_cmp_lt_i32 s93, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v50, 1, v50
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s94, s55
	v_add_nc_u32_e32 v52, s74, v51
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s95, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v51, 1, v51
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s101, -1, 0
	v_add_nc_u32_e32 v53, s74, v52
	s_cmp_lt_i32 s96, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v52, 1, v52
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s97, s55
	v_add_nc_u32_e32 v54, s74, v53
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s98, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v53, 1, v53
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s98, -1, 0
	v_add_nc_u32_e32 v55, s74, v54
	s_cmp_lt_i32 s4, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v54, 1, v54
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s5, s55
	v_add_nc_u32_e32 v56, s74, v55
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s6, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v55, 1, v55
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	v_add_nc_u32_e32 v57, s74, v56
	s_cmp_lt_i32 s7, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v56, 1, v56
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s8, s55
	v_add_nc_u32_e32 v58, s74, v57
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s9, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v57, 1, v57
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s92, -1, 0
	v_add_nc_u32_e32 v59, s74, v58
	s_cmp_lt_i32 s10, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v58, 1, v58
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s11, s55
	v_add_nc_u32_e32 v60, s74, v59
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s12, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v59, 1, v59
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s51, s55
	v_add_nc_u32_e32 v61, s74, v60
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s13, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v60, 1, v60
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s14, s55
	v_add_nc_u32_e32 v62, s74, v61
	s_cselect_b32 s90, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s15
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v61, 1, v61
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s16
	v_add_nc_u32_e32 v63, s74, v62
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v62, 1, v62
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s18
	v_add_nc_u32_e32 v64, s74, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v63, 1, v63
	v_cndmask_b32_e64 v45, 0x80000000, v45, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s53
	v_add_nc_u32_e32 v65, s74, v64
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v64, 1, v64
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s64
	v_add_nc_u32_e32 v66, s74, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s65
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v65
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s54
	v_add_nc_u32_e32 v67, s74, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s21
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v66, 1, v66
	v_cndmask_b32_e64 v52, 0x80000000, v52, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s84
	v_add_nc_u32_e32 v68, s74, v67
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v53, 0x80000000, v53, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v67
	v_cndmask_b32_e64 v54, 0x80000000, v54, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	v_add_nc_u32_e32 v69, s74, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v55, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v68
	v_cndmask_b32_e64 v56, 0x80000000, v56, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	v_add_nc_u32_e32 v70, s74, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v69, 1, v69
	v_cndmask_b32_e64 v58, 0x80000000, v58, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	v_add_nc_u32_e32 v71, s74, v70
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v59, 0x80000000, v59, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v70, 1, v70
	v_cndmask_b32_e64 v60, 0x80000000, v60, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	v_add_nc_u32_e32 v72, s74, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v61, 0x80000000, v61, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v71, 1, v71
	v_cndmask_b32_e64 v62, 0x80000000, v62, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v122, 1, v72
	v_cndmask_b32_e64 v63, 0x80000000, v63, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v72, v72, s74, 1
	v_cndmask_b32_e64 v64, 0x80000000, v64, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s78
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s83, s79
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v138, v226
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v161, v225
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v139, v223
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s62
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v154, v224
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s52
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v141, v100
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s63
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v142, v101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v143, v98
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v144, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1f
	buffer_load_u16 v42, v42, s[80:83], 0 offen
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	buffer_load_u16 v43, v43, s[80:83], 0 offen
	buffer_load_u16 v44, v44, s[80:83], 0 offen
	buffer_load_u16 v45, v45, s[80:83], 0 offen
	buffer_load_u16 v46, v46, s[80:83], 0 offen
	buffer_load_u16 v47, v47, s[80:83], 0 offen
	buffer_load_u16 v48, v48, s[80:83], 0 offen
	buffer_load_u16 v50, v50, s[80:83], 0 offen
	buffer_load_u16 v51, v51, s[80:83], 0 offen
	buffer_load_u16 v52, v52, s[80:83], 0 offen
	buffer_load_u16 v53, v53, s[80:83], 0 offen
	buffer_load_u16 v54, v54, s[80:83], 0 offen
	buffer_load_u16 v55, v55, s[80:83], 0 offen
	buffer_load_u16 v56, v56, s[80:83], 0 offen
	buffer_load_u16 v57, v57, s[80:83], 0 offen
	buffer_load_u16 v58, v58, s[80:83], 0 offen
	buffer_load_u16 v59, v59, s[80:83], 0 offen
	buffer_load_u16 v60, v60, s[80:83], 0 offen
	buffer_load_u16 v61, v61, s[80:83], 0 offen
	buffer_load_u16 v62, v62, s[80:83], 0 offen
	buffer_load_u16 v63, v63, s[80:83], 0 offen
	buffer_load_u16 v64, v64, s[80:83], 0 offen
	buffer_load_u16 v65, v65, s[80:83], 0 offen
	buffer_load_u16 v66, v66, s[80:83], 0 offen
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	buffer_load_u16 v227, v122, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v122, 0, v222
	ds_load_2addr_b32 v[136:137], v122 offset1:32
	ds_load_2addr_b32 v[134:135], v194 offset1:32
	ds_load_2addr_b32 v[130:131], v195 offset1:32
	ds_load_2addr_b32 v[126:127], v196 offset1:32
	ds_load_2addr_b32 v[132:133], v197 offset1:32
	ds_load_2addr_b32 v[128:129], v198 offset1:32
	ds_load_2addr_b32 v[124:125], v199 offset1:32
	ds_load_2addr_b32 v[122:123], v200 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s85, s85, 32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(31)
	ds_store_b16 v228, v42
	s_waitcnt vmcnt(30)
	ds_store_b16 v228, v41 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b16 v228, v43 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b16 v228, v44 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b16 v228, v45 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b16 v228, v46 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b16 v228, v47 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b16 v228, v48 offset:896
	s_waitcnt vmcnt(23)
	ds_store_b16 v228, v50 offset:1024
	s_waitcnt vmcnt(22)
	ds_store_b16 v228, v51 offset:1152
	s_waitcnt vmcnt(21)
	ds_store_b16 v228, v52 offset:1280
	s_waitcnt vmcnt(20)
	ds_store_b16 v228, v53 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b16 v228, v54 offset:1536
	s_waitcnt vmcnt(18)
	ds_store_b16 v228, v55 offset:1664
	s_waitcnt vmcnt(17)
	ds_store_b16 v228, v56 offset:1792
	s_waitcnt vmcnt(16)
	ds_store_b16 v228, v57 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v228, v58 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v228, v59 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v228, v60 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v228, v61 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v228, v62 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v228, v63 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v228, v64 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v228, v65 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v228, v66 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v228, v67 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v228, v68 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v228, v69 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v228, v70 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v228, v71 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v228, v227 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v228, v72 offset:3968
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v97.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s48
	v_cndmask_b32_e64 v37, 0, v37, s46
	v_cndmask_b32_e64 v40, 0, v40, s47
	v_cndmask_b32_e64 v39, 0, v39, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s46, v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v39, v39
	v_add3_u32 v41, v36, v41, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v97.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s85, s67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v36.h, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v41, v152
	v_perm_b32 v36, v36, v41, v153
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v38, v41, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v38.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v41, v152
	v_perm_b32 v38, v38, v41, v153
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v97.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v41, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v41, v152
	v_perm_b32 v40, v40, v41, v153
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v49, v96
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v43, v182 offset:608
	ds_load_u16_d16 v42, v182 offset:352
	ds_load_u16_d16 v57, v182
	ds_load_u16_d16 v59, v182 offset:512
	ds_load_u16_d16 v58, v182 offset:256
	ds_load_u16_d16 v60, v182 offset:768
	ds_load_u16_d16 v51, v182 offset:576
	ds_load_u16_d16 v52, v182 offset:832
	ds_load_u16_d16 v61, v182 offset:1024
	ds_load_u16_d16 v53, v182 offset:1088
	ds_load_u16_d16 v62, v182 offset:1280
	ds_load_u16_d16 v54, v182 offset:1344
	ds_load_u16_d16 v63, v182 offset:1536
	ds_load_u16_d16 v64, v182 offset:1792
	ds_load_u16_d16 v55, v182 offset:1600
	ds_load_u16_d16 v49, v182 offset:64
	ds_load_u16_d16 v50, v182 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v58, v182 offset:384
	ds_load_u16_d16_hi v59, v182 offset:640
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v51, v182 offset:704
	ds_load_u16_d16_hi v60, v182 offset:896
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v182 offset:960
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v61, v182 offset:1152
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v53, v182 offset:1216
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v62, v182 offset:1408
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v54, v182 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v63, v182 offset:1664
	ds_load_u16_d16 v56, v182 offset:1856
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v55, v182 offset:1728
	ds_load_u16_d16_hi v64, v182 offset:1920
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v44, v41
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v42, v182 offset:480
	ds_load_u16_d16 v41, v182 offset:96
	ds_load_u16_d16 v65, v182 offset:32
	ds_load_u16_d16 v66, v182 offset:288
	ds_load_u16_d16_hi v57, v182 offset:128
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v227, 0, v44, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v65, v182 offset:160
	ds_load_u16_d16_hi v49, v182 offset:192
	ds_load_u16_d16_hi v41, v182 offset:224
	ds_load_u16_d16 v67, v182 offset:544
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v66, v182 offset:416
	ds_load_u16_d16_hi v50, v182 offset:448
	ds_load_u16_d16 v44, v182 offset:864
	ds_load_u16_d16 v45, v182 offset:1120
	ds_load_u16_d16 v46, v182 offset:1376
	ds_load_u16_d16 v47, v182 offset:1632
	ds_load_u16_d16_hi v56, v182 offset:1984
	ds_load_u16_d16 v228, v182 offset:2048
	ds_load_u16_d16 v236, v182 offset:2112
	ds_load_u16_d16 v48, v182 offset:1888
	ds_load_u16_d16 v68, v182 offset:800
	ds_load_u16_d16 v69, v182 offset:1056
	ds_load_u16_d16 v70, v182 offset:1312
	ds_load_u16_d16 v71, v182 offset:1568
	ds_load_u16_d16 v72, v182 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v67, v182 offset:672
	ds_load_u16_d16_hi v43, v182 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v227
	v_mul_f32_e32 v18, v18, v227
	v_mul_f32_e32 v19, v19, v227
	v_mul_f32_e32 v20, v20, v227
	v_mul_f32_e32 v21, v21, v227
	v_mul_f32_e32 v22, v22, v227
	v_mul_f32_e32 v23, v23, v227
	v_mul_f32_e32 v24, v24, v227
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v68, v182 offset:928
	ds_load_u16_d16_hi v44, v182 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v69, v182 offset:1184
	ds_load_u16_d16_hi v45, v182 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v70, v182 offset:1440
	ds_load_u16_d16_hi v46, v182 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v71, v182 offset:1696
	ds_load_u16_d16_hi v47, v182 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v72, v182 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v48, v182 offset:2016
	ds_load_u16_d16 v237, v182 offset:2368
	ds_load_u16_d16_hi v236, v182 offset:2240
	ds_load_u16_d16 v57, v182 offset:2080
	ds_load_u16_d16 v244, v182 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v227
	v_mul_f32_e32 v26, v26, v227
	v_mul_f32_e32 v27, v27, v227
	v_mul_f32_e32 v28, v28, v227
	v_mul_f32_e32 v29, v29, v227
	v_mul_f32_e32 v30, v30, v227
	v_mul_f32_e32 v31, v31, v227
	v_mul_f32_e32 v32, v32, v227
	v_mul_f32_e32 v9, v9, v227
	v_mul_f32_e32 v10, v10, v227
	v_mul_f32_e32 v11, v11, v227
	v_mul_f32_e32 v12, v12, v227
	v_mul_f32_e32 v13, v13, v227
	v_mul_f32_e32 v14, v14, v227
	v_mul_f32_e32 v15, v15, v227
	v_mul_f32_e32 v16, v16, v227
	v_mul_f32_e32 v1, v1, v227
	v_mul_f32_e32 v2, v2, v227
	v_mul_f32_e32 v3, v3, v227
	v_mul_f32_e32 v4, v4, v227
	v_mul_f32_e32 v5, v5, v227
	v_mul_f32_e32 v6, v6, v227
	v_mul_f32_e32 v7, v7, v227
	v_mul_f32_e32 v8, v8, v227
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v230, v182 offset:2560
	ds_load_u16_d16 v238, v182 offset:2624
	ds_load_u16_d16 v231, v182 offset:2816
	ds_load_u16_d16 v239, v182 offset:2880
	ds_load_u16_d16 v232, v182 offset:3072
	ds_load_u16_d16 v240, v182 offset:3136
	ds_load_u16_d16 v233, v182 offset:3328
	ds_load_u16_d16 v241, v182 offset:3392
	ds_load_u16_d16 v234, v182 offset:3584
	ds_load_u16_d16 v242, v182 offset:3648
	ds_load_u16_d16 v235, v182 offset:3840
	ds_load_u16_d16 v229, v182 offset:2304
	ds_load_u16_d16_hi v228, v182 offset:2176
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v237, v182 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v230, v182 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v238, v182 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v231, v182 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v239, v182 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v232, v182 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v240, v182 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v233, v182 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v241, v182 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v234, v182 offset:3712
	ds_load_u16_d16 v243, v182 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v242, v182 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v235, v182 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v229, v182 offset:2432
	ds_load_u16_d16 v245, v182 offset:2400
	ds_load_u16_d16 v246, v182 offset:2656
	ds_load_u16_d16 v247, v182 offset:2912
	ds_load_u16_d16 v248, v182 offset:3168
	ds_load_u16_d16 v249, v182 offset:3424
	ds_load_u16_d16 v250, v182 offset:3680
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v225, v96
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v97.l
	v_mov_b16_e32 v35.h, v97.l
	v_mov_b16_e32 v36.h, v97.l
	v_mov_b16_e32 v37.h, v97.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v97.l
	v_mov_b16_e32 v39.h, v97.l
	v_mov_b16_e32 v40.h, v97.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v243, v182 offset:4032
	ds_load_u16_d16 v251, v182 offset:3936
	ds_load_u16_d16 v58, v182 offset:2336
	ds_load_u16_d16 v59, v182 offset:2592
	ds_load_u16_d16 v60, v182 offset:2848
	ds_load_u16_d16 v61, v182 offset:3104
	ds_load_u16_d16 v62, v182 offset:3360
	ds_load_u16_d16 v63, v182 offset:3616
	ds_load_u16_d16 v64, v182 offset:3872
	ds_load_u16_d16_hi v57, v182 offset:2208
	ds_load_u16_d16_hi v244, v182 offset:2272
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v97.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v58, v182 offset:2464
	ds_load_u16_d16_hi v245, v182 offset:2528
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v59, v182 offset:2720
	ds_load_u16_d16_hi v246, v182 offset:2784
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v60, v182 offset:2976
	ds_load_u16_d16_hi v247, v182 offset:3040
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v61, v182 offset:3232
	ds_load_u16_d16_hi v248, v182 offset:3296
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v62, v182 offset:3488
	ds_load_u16_d16_hi v249, v182 offset:3552
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v63, v182 offset:3744
	ds_load_u16_d16_hi v250, v182 offset:3808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v64, v182 offset:4000
	ds_load_u16_d16_hi v251, v182 offset:4064
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
	v_sub_f32_e32 v33, v226, v96
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
	v_permlanex16_b32 v35, v34, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v152
	v_perm_b32 v34, v35, v34, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v224, v96
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
	v_sub_f32_e32 v35, v223, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v152
	v_perm_b32 v36, v37, v36, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v101, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v100, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v152
	v_perm_b32 v38, v39, v38, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v99, v96
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
	v_sub_f32_e32 v39, v98, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v39, v39
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v39, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s87, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v152
	v_perm_b32 v40, v41, v40, v153
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[228:235], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[236:243], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[244:251], v[33:40], v[1:8]
.Ltmp10:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v136 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v136, v136 :: v_dual_max_f32 v35, v134, v134
	v_max_f32_e32 v36, v130, v130
	v_max_f32_e32 v37, v126, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v122, v122
	v_max_f32_e32 v33, v34, v33
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v134 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v35
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s38, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s37, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v35, 31
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v34, v35, v34
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v33, v36, v33
	v_max_f32_e32 v36, v128, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s41, v34, 31
	v_mov_b32_dpp v34, v137 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v37, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s40, v35, 31
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s40, s40
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v135 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v37, v38, v37
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v36, 31
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v135, v135
.Ltmp90:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s39, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v36
	v_max_f32_e32 v38, v38, v38
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s42, v33, 31
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v127, v127
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v36, v36, v36
	v_max_f32_e32 v33, v37, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v37, v131, v131 :: v_dual_max_f32 v34, v34, v36
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s46, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s45, v34, 31
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v133 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s46, s46
	v_max_f32_e64 v42, s45, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s44, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v133, v133 :: v_dual_max_f32 v36, v36, v38
.Ltmp133:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s44, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s43, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v129, v129 :: v_dual_max_f32 v35, v35, v35
.Ltmp137:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s43, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp141:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp142:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v38
	v_max_f32_e32 v35, v35, v36
.Ltmp143:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp144:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v123, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v37, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v34, v36
.Ltmp147:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp148:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v37, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v37, v125, v125 :: v_dual_max_f32 v36, v36, v36
.Ltmp149:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v33, 31
.Ltmp150:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v216, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v45, s4, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v34, v36
.Ltmp155:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp158:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp159:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
.Ltmp161:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp163:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp164:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v38
.Ltmp167:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s6, v35, 31
.Ltmp172:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s37, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp175:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s6, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
.Ltmp177:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v34, 31
.Ltmp178:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s38, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e64 v46, s5, s5
	v_dual_max_f32 v216, v33, v34 :: v_dual_max_f32 v33, v95, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v34, v220, v220
	v_max_f32_e32 v220, v34, v35
	v_max_f32_e32 v34, v158, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v35, v217, v217
.Ltmp179:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp181:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v38
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_readlane_b32 s7, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp186:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp187:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s3, s3
	v_max_f32_e64 v48, s7, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp189:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v217, v35, v36
	v_max_f32_e64 v38, s41, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v37, 31
.Ltmp191:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s42, s42
	v_max_f32_e32 v35, v94, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v130, v217
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v49, s8, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, v35, v36 :: v_dual_max_f32 v36, v218, v218
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v218, v36, v37
	v_dual_max_f32 v36, v93, v93 :: v_dual_sub_f32 v55, v126, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v219, v219
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v219, v37, v38
	v_max_f32_e32 v37, v92, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v134, v220
.Ltmp192:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp193:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v132, v219
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v38, v89, v89
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp195:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s35
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v89, v38, v39 :: v_dual_max_f32 v38, v157, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp196:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp197:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v59, v128, v89 :: v_dual_max_f32 v38, v38, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s22
.Ltmp198:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp199:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s34
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp201:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v169, v39, v40
	v_max_f32_e32 v39, v91, v91
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp203:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v124, v169
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v166, v166
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v57, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp205:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v166, v40, v41
	v_max_f32_e32 v40, v156, v156
.Ltmp206:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v65, v55, -1, -1 op_sel:[1,0]
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp209:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v40, v40, v41 :: v_dual_max_f32 v41, v167, v167
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v55, v55, v65
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp211:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v167, v41, v42
	v_max_f32_e32 v41, v155, v155
.Ltmp212:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s22, v55, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v65, v57, -1, -1 op_sel:[1,0]
.Ltmp213:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v41, v41, v42 :: v_dual_max_f32 v42, v168, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v65 :: v_dual_max_f32 v168, v42, v43
.Ltmp215:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v140, v140
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp217:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v42, v43
	v_max_f32_e32 v43, v170, v170
	v_dual_max_f32 v170, v43, v44 :: v_dual_max_f32 v43, v181, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v43, v43, v44 :: v_dual_max_f32 v44, v174, v174
	v_max_f32_e32 v174, v44, v45
	v_max_f32_e32 v44, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v171, v171
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v137, v167
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v171, v45, v46
	v_max_f32_e32 v45, v179, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v133, v171
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v45, v45, v46 :: v_dual_max_f32 v46, v172, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v172, v46, v47
	v_max_f32_e32 v46, v178, v178
	v_dual_max_f32 v46, v46, v47 :: v_dual_max_f32 v47, v173, v173
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v135, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v173, v47, v48
	v_max_f32_e32 v47, v177, v177
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v47, v47, v48
	v_max_f32_e32 v48, v175, v175
	v_max_f32_e32 v175, v48, v49
	v_max_f32_e32 v48, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v48, v49
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v136, v216
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s23
.Ltmp218:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v63
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v51, -1, -1 op_sel:[1,0]
	v_readlane_b32 s35, v49, 31
.Ltmp222:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v63
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v63, v53, -1, -1 op_sel:[1,0]
	v_readlane_b32 s34, v51, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v63
.Ltmp226:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v63, v122, v166
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp227:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s23, v53, 31
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp229:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s1
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
.Ltmp232:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v131, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v49, v49, v51
.Ltmp234:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s36, v49, 31
.Ltmp236:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v54
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp237:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp238:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v51, -1, -1 op_sel:[1,0]
.Ltmp241:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v129, v172
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v51, v51, v53
.Ltmp243:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v63
.Ltmp244:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s33, v51, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s30
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp248:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v56, v127, v174 :: v_dual_add_f32 v53, v53, v55
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v50, -1, -1 op_sel:[1,0]
	v_readlane_b32 s31, v53, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v55
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v50, 31
	v_permlanex16_b32 v50, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp252:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v64, v123, v175 :: v_dual_add_f32 v49, v49, v50
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s28, v49, 31
.Ltmp254:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v58
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp256:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp258:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v50, -1, -1 op_sel:[1,0]
.Ltmp259:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v50, v50, v51
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp260:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
.Ltmp261:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e32 v52, 0, v52, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v95
.Ltmp262:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v51
.Ltmp263:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp265:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v49, 31
.Ltmp266:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v95, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v95, v33
.Ltmp268:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp270:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp272:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v52, -1, -1 op_sel:[1,0]
.Ltmp273:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v158
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v50, 31
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v52, v52, v55
.Ltmp276:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v85, v85, v49, s35
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v158, v34
	v_mov_b32_e32 v158, v34
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp278:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v52, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp279:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp280:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v62, v125, v173 :: v_dual_add_f32 v51, v51, v52
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v52, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v94
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v51, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp283:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v86, v86, v49, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v94, v35 :: v_dual_mov_b32 v94, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp285:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp287:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v87, v87, v49, s23
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v93, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v93, v36
.Ltmp289:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp290:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v53
.Ltmp292:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v92
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v52, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp294:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v88, v88, v49, s22
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v92, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s24
	v_mov_b32_e32 v92, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp296:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp298:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v81, v81, v49, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v157, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp299:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v157, v38
.Ltmp300:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp301:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v54, v53, -1, -1 op_sel:[1,0]
.Ltmp302:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp303:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v91
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s24, v53, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp305:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v82, v82, v49, s36
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v91, v39
	v_mov_b32_e32 v91, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v156
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v83, v83, v49, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v156, v40
	v_mov_b32_e32 v156, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v84, v84, v49, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v155, v41
	v_mov_b32_e32 v155, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v77, v77, v49, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v140, v42 :: v_dual_mov_b32 v140, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v78, v78, v49, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v181, v43
	v_mov_b32_e32 v181, v43
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v180
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v79, v79, v49, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v180, v44
	v_mov_b32_e32 v180, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v80, v80, v49, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v179, v45
	v_mov_b32_e32 v179, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v178
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v73, v73, v49, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v178, v46
	v_mov_b32_e32 v178, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v74, v74, v49, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v177, v47
	v_mov_b32_e32 v177, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v176
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v75, v75, v49, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v176, v48
	v_mov_b32_e32 v176, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v76, v76, v49, s24
	v_mov_b32_e32 v49, v96
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_lshrrev_b32_e32 v33, 5, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s82, s85, s88
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s4, v255, 15
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s21, s82, s75
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s11, v255, 22
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s85, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s5, v255, 16
	v_readlane_b32 s6, v255, 17
	v_readlane_b32 s7, v255, 18
	v_readlane_b32 s8, v255, 19
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:8
	scratch_load_b64 v[41:42], off, off offset:60
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s9, v255, 20
	v_readlane_b32 s10, v255, 21
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s19, vcc_lo
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0xd                            ; 96-byte Folded Reload
	scratch_load_b64 v[42:43], off, off offset:72
	scratch_load_b64 v[43:44], off, off offset:88
	scratch_load_b64 v[44:45], off, off offset:144
	scratch_load_b64 v[45:46], off, off offset:100
	scratch_load_b64 v[38:39], off, off offset:108
	scratch_load_b64 v[39:40], off, off offset:124
	scratch_load_b32 v40, off, off offset:52
	scratch_load_b64 v[50:51], off, off offset:152
	scratch_load_b32 v34, off, off offset:56
	scratch_load_b32 v35, off, off offset:68
	scratch_load_b64 v[36:37], off, off offset:80
	scratch_load_b32 v37, off, off offset:96
	scratch_load_b64 v[46:47], off, off offset:116
	scratch_load_b64 v[47:48], off, off offset:132
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(15)
	v_or_b32_e32 v33, s85, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v41, s21, v41
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v42, s21, v42
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v43, s21, v43
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v38, s21, v38
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v39, s21, v39
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v40, s21, v40
	v_add_nc_u32_e32 v44, s21, v44
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v34, s21, v34
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v35, s21, v35
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, s21, v36
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, s21, v37
	v_add_nc_u32_e32 v45, s21, v45
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v46, s21, v46
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s21, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v57, s11
	v_dual_mov_b32 v55, s9 :: v_dual_mov_b32 v54, s8
	v_dual_mov_b32 v53, s7 :: v_dual_mov_b32 v52, s6
	v_dual_mov_b32 v51, s5 :: v_dual_mov_b32 v50, s4
	v_dual_mov_b32 v56, s10 :: v_dual_add_nc_u32 v47, s21, v47
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s55, v33
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v33, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, s85, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s35, s55, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s21, v90
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
	ds_store_b8 v162, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v162, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v162, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v162, v41 offset:576
	ds_store_b8 v163, v35
	ds_store_b8 v163, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v163, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v163, v43 offset:576
	ds_store_b8 v164, v37
	ds_store_b8 v164, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v164, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v164, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v165, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v165, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v165, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v165, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[58:61], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[58:59], v[102:103], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[60:61], v[102:103], v[50:57] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[104:105], v[41:48] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[106:107], v[41:48] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v50, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[106:107], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[50:53], v50 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[50:51], v[108:109], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_and_b32_e32 v50, 31, v0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[52:53], v[108:109], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s85, v50
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s55, v66
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s101, s69, s1
	s_and_b32 s100, s71, s1
	s_and_b32 s102, s70, s1
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s89, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s83, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s103, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s99, s3, s1
	v_readlane_b32 s3, v255, 8
	s_and_b32 s98, s3, s1
	v_readlane_b32 s3, v255, 10
	s_and_b32 s97, s3, s1
	v_readlane_b32 s3, v255, 11
	s_and_b32 s95, s3, s1
	v_readlane_b32 s3, v255, 12
	s_and_b32 s94, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v255, 14
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 13
	s_and_b32 s91, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v50, off, off offset:280 ; 4-byte Folded Reload
	s_and_not1_b32 s36, s101, exec_lo
	s_and_not1_b32 s37, s100, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v66, v50
	scratch_load_b32 v50, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s21, vcc_lo, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s101, s36, s21
	s_and_not1_b32 s21, s93, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v66, v50
	scratch_load_b32 v50, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s100, s37, s1
	s_and_not1_b32 s1, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v66, v50
	scratch_load_b32 v50, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v66, v50
	scratch_load_b32 v50, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, exec_lo
	s_or_b32 s93, s21, s22
	s_and_not1_b32 s21, s90, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v66, v50
	scratch_load_b32 v50, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s23, exec_lo
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s89, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v66, v50
	scratch_load_b32 v50, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s24, exec_lo
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s83, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v66, v50
	scratch_load_b32 v50, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s25, exec_lo
	s_or_b32 s89, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v66, v50
	scratch_load_b32 v50, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s26, exec_lo
	s_or_b32 s83, s21, s22
	s_and_not1_b32 s21, s102, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v66, v50
	scratch_load_b32 v50, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s103
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s27, exec_lo
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v66, v50
	scratch_load_b32 v50, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s28, exec_lo
	s_or_b32 s102, s21, s22
	s_and_not1_b32 s21, s98, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v66, v50
	scratch_load_b32 v50, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s29, exec_lo
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v66, v50
	scratch_load_b32 v50, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s30, exec_lo
	s_or_b32 s98, s21, s22
	s_and_not1_b32 s21, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v66, v50
	scratch_load_b32 v50, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s31, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v66, v50
	scratch_load_b32 v50, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s33, exec_lo
	s_or_b32 s95, s21, s22
	s_and_not1_b32 s21, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v66, v50
	scratch_load_b32 v50, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s34, s34, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s34, exec_lo
	s_or_b32 s94, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v66, v50
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s35, s35, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s35, exec_lo
	s_or_b32 s91, s21, s22
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v58, 16, v183
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v50, s85, v183
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 2, v183
	v_or_b32_e32 v52, 4, v183
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v64, s82, v183, 1
	v_or_b32_e32 v60, s85, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 18, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v51, s85, v51
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v61, 30, v183
	.loc	1 0 0                           ; attention.py:0
	v_cmp_gt_i32_e32 vcc_lo, s55, v50
	v_or_b32_e32 v52, s85, v52
	v_or_b32_e32 v62, s85, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 20, v183
	v_or_b32_e32 v53, 6, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v70, s85, v61
	v_add_nc_u32_e32 v61, 20, v64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v54, 8, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v63, s85, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 22, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v53, s85, v53
	v_add_nc_u32_e32 v97, 40, v64
	v_add_nc_u32_e32 v59, 8, v64
	v_or_b32_e32 v54, s85, v54
	v_or_b32_e32 v65, s85, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 24, v183
	v_or_b32_e32 v55, 10, v183
	.loc	1 0 0                           ; attention.py:0
	v_add_nc_u32_e32 v71, 24, v64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, 12, v183
	v_or_b32_e32 v57, 14, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v67, s85, v58
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v58, 26, v183
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v55, s85, v55
	v_or_b32_e32 v56, s85, v56
	v_or_b32_e32 v57, s85, v57
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v68, s85, v58
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v58, 28, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v69, s85, v58
	v_add_nc_u32_e32 v58, 4, v64
	v_cndmask_b32_e32 v50, 0x80000000, v64, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v51
	v_cndmask_b32_e32 v51, 0x80000000, v58, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v52
	v_add_nc_u32_e32 v58, 12, v64
	v_dual_cndmask_b32 v52, 0x80000000, v59 :: v_dual_add_nc_u32 v59, 16, v64
	v_cmp_gt_i32_e32 vcc_lo, s55, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v53, 0x80000000, v58 :: v_dual_add_nc_u32 v72, 28, v64
	v_cmp_gt_i32_e32 vcc_lo, s55, v54
	v_cndmask_b32_e32 v54, 0x80000000, v59, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v55
	v_cndmask_b32_e32 v55, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v56
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v57
	v_cndmask_b32_e32 v57, 0x80000000, v72, vcc_lo
	s_clause 0x7
	buffer_load_u16 v61, v50, s[76:79], 0 offen
	buffer_load_u16 v59, v51, s[76:79], 0 offen
	buffer_load_u16 v58, v52, s[76:79], 0 offen
	buffer_load_u16 v56, v53, s[76:79], 0 offen
	buffer_load_u16 v54, v54, s[76:79], 0 offen
	buffer_load_u16 v53, v55, s[76:79], 0 offen
	buffer_load_u16 v51, v71, s[76:79], 0 offen
	buffer_load_u16 v52, v57, s[76:79], 0 offen
	v_cmp_gt_i32_e32 vcc_lo, s55, v60
	v_add_nc_u32_e32 v57, 44, v64
	v_add_nc_u32_e32 v72, 32, v64
	v_add_nc_u32_e32 v71, 56, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v50, 0x80000000, v72, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v62
	v_add_nc_u32_e32 v62, 48, v64
	v_add_nc_u32_e32 v96, 36, v64
	v_cndmask_b32_e32 v55, 0x80000000, v96, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v63
	v_add_nc_u32_e32 v63, 52, v64
	v_add_nc_u32_e32 v64, 60, v64
	v_cndmask_b32_e32 v60, 0x80000000, v97, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v65
	v_cndmask_b32_e32 v65, 0x80000000, v57, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v67
	v_cndmask_b32_e32 v67, 0x80000000, v62, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v68
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v69
	v_cndmask_b32_e32 v68, 0x80000000, v71, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s55, v70
	v_cndmask_b32_e32 v69, 0x80000000, v64, vcc_lo
	s_clause 0x7
	buffer_load_u16 v50, v50, s[76:79], 0 offen
	buffer_load_u16 v62, v55, s[76:79], 0 offen
	buffer_load_u16 v57, v60, s[76:79], 0 offen
	buffer_load_u16 v55, v65, s[76:79], 0 offen
	buffer_load_u16 v60, v67, s[76:79], 0 offen
	buffer_load_u16 v65, v63, s[76:79], 0 offen
	buffer_load_u16 v64, v68, s[76:79], 0 offen
	buffer_load_u16 v63, v69, s[76:79], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v67, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v66, v67
	scratch_load_b32 v67, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v66, v67
	scratch_load_b32 v67, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v66, v67
	scratch_load_b32 v67, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v66, v67
	scratch_load_b32 v67, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v66, v67
	scratch_load_b32 v67, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v66, v67
	scratch_load_b32 v67, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v66, v67
	scratch_load_b32 v67, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v66, v67
	scratch_load_b32 v67, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v66, v67
	scratch_load_b32 v67, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v66, v67
	scratch_load_b32 v67, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v66, v67
	scratch_load_b32 v67, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v66, v67
	scratch_load_b32 v67, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v66, v67
	scratch_load_b32 v67, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v66, v67
	scratch_load_b32 v67, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s34, v66, v67
	scratch_load_b32 v67, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s35, v66, v67
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v67, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v66, v67
	scratch_load_b32 v67, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s36
	s_and_not1_b32 s36, s101, exec_lo
	s_and_b32 s21, s21, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, exec_lo
	s_or_b32 s101, s36, s21
	s_and_not1_b32 s21, s93, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v66, v67
	scratch_load_b32 v67, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s37
	s_and_not1_b32 s37, s100, exec_lo
	s_and_b32 s1, s1, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s100, s37, s1
	s_and_not1_b32 s1, s96, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v66, v67
	scratch_load_b32 v67, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s96
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v66, v67
	scratch_load_b32 v67, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s93
	s_and_b32 s22, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s21, s22
	s_and_not1_b32 s21, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v66, v67
	scratch_load_b32 v67, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s92
	s_and_b32 s3, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v66, v67
	scratch_load_b32 v67, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s90
	s_and_b32 s22, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s90, s21, s22
	s_and_not1_b32 s21, s83, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v66, v67
	scratch_load_b32 v67, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s89
	s_and_b32 s3, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s89, s1, s3
	s_and_not1_b32 s1, s103, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v66, v67
	scratch_load_b32 v67, off, off offset:440 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s83
	s_and_b32 s22, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s83, s21, s22
	s_and_not1_b32 s21, s102, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v66, v67
	scratch_load_b32 v67, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s103
	s_and_b32 s3, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s103, s1, s3
	s_and_not1_b32 s1, s99, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v66, v67
	scratch_load_b32 v67, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s102
	s_and_b32 s22, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s102, s21, s22
	s_and_not1_b32 s21, s98, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v66, v67
	scratch_load_b32 v67, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s99
	s_and_b32 s3, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s99, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v66, v67
	scratch_load_b32 v67, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s98
	s_and_b32 s22, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s21, s22
	s_and_not1_b32 s21, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v66, v67
	scratch_load_b32 v67, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s97
	s_and_b32 s3, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v66, v67
	scratch_load_b32 v67, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s33, s95
	s_and_b32 s22, s33, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s21, s22
	s_and_not1_b32 s21, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v66, v67
	scratch_load_b32 v67, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s34, s34, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, s94
	s_and_b32 s3, s34, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v66, v67
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, s35, s52
	s_and_b32 s35, s35, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s35, exec_lo
	s_or_b32 s91, s21, s22
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v7, v8
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
	scratch_load_b32 v65, off, off offset:472 ; 4-byte Folded Reload
	v_and_b32_e32 v64, 16, v0
	v_and_b32_e32 v39, 32, v0
	v_lshlrev_b32_e32 v36, 1, v0
.LBB0_13:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 28, v36
	v_lshl_add_u32 v33, v39, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 64, v0
	ds_store_b128 v33, v[85:88]
	ds_store_b128 v33, v[81:84] offset:16
	ds_store_b128 v33, v[77:80] offset:32
	ds_store_b128 v33, v[73:76] offset:48
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	s_barrier
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v65, s74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
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
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	v_cndmask_b32_e64 v38, 0, v22, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
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
	v_cndmask_b32_e64 v39, v36, v33, s66
	v_cndmask_b32_e64 v33, v33, v36, s66
	v_cndmask_b32_e64 v36, v23, v34, s66
	v_cndmask_b32_e64 v23, v34, v23, s66
	v_cndmask_b32_e64 v34, v25, v24, s66
	v_cndmask_b32_e64 v24, v24, v25, s66
	v_cndmask_b32_e64 v25, v27, v26, s66
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v26, v26, v27, s66
	v_cndmask_b32_e64 v27, v30, v28, s66
	v_cndmask_b32_e64 v28, v28, v30, s66
	v_cndmask_b32_e64 v30, 0x1054, v40, s66
	v_cndmask_b32_e64 v40, 0x3276, v41, s66
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v51, 1, v64
	s_mov_b32 s33, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v41, v31, v29, s66
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
	v_cndmask_b32_e64 v29, v29, v31, s66
	v_cndmask_b32_e64 v31, v37, v32, s66
	v_cndmask_b32_e64 v32, v32, v37, s66
	v_cndmask_b32_e64 v37, v38, v35, s66
	v_cndmask_b32_e64 v35, v35, v38, s66
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
.Ltmp306:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 480
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 480
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27888
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 480
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
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
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
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
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
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
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
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
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
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
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 480
    .sgpr_count:     107
    .sgpr_spill_count: 24
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 119
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
