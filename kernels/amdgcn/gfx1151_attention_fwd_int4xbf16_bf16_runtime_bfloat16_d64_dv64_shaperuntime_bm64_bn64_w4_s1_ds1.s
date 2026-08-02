	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
	v_and_b32_e32 v65, 31, v0
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
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s30, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, 56, v2
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 60, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[18:19], null, s18, v2, v[65:66]
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v2, off offset:136
	scratch_store_b32 off, v3, off offset:140
	scratch_store_b32 off, v4, off offset:144
	scratch_store_b32 off, v5, off offset:148
	scratch_store_b32 off, v6, off offset:152
	scratch_store_b32 off, v7, off offset:156
	scratch_store_b32 off, v8, off offset:160
	scratch_store_b32 off, v9, off offset:164
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s30, v2
	v_or_b32_e32 v2, s30, v3
	v_or_b32_e32 v3, s30, v4
	v_or_b32_e32 v4, s30, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s30, v6
	v_or_b32_e32 v6, s30, v7
	v_or_b32_e32 v7, s30, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s30, v9
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s28, s3, s26
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[22:23], null, s18, 12, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s18, 36, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s4, s6
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v10, off offset:168
	scratch_store_b32 off, v11, off offset:172
	scratch_store_b32 off, v12, off offset:176
	scratch_store_b32 off, v13, off offset:180
	scratch_store_b32 off, v14, off offset:184
	scratch_store_b32 off, v15, off offset:188
	scratch_store_b32 off, v16, off offset:192
	scratch_store_b32 off, v17, off offset:196
	s_add_i32 s4, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s30, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v20, s18, 2, v18
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s4, s2, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s4, s7, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[29:30], null, s18, 40, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[30:31], null, s18, 44, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[24:25], null, s18, 20, v[18:19]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s25
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[31:32], null, s18, 48, v[18:19]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s6, s2
	s_sub_i32 s7, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[25:26], null, s18, 24, v[18:19]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v9, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[32:33], null, s18, 52, v[18:19]
	v_mad_u64_u32 v[26:27], null, s18, 28, v[18:19]
	v_mad_u64_u32 v[33:34], null, s18, 56, v[18:19]
	v_lshl_add_u32 v21, s18, 3, v18
	v_lshl_add_u32 v23, s18, 4, v18
	v_lshl_add_u32 v27, s18, 5, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[34:35], null, s18, 60, v[18:19]
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	v_cmp_gt_i32_e64 s9, s26, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s30, v11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s26, v8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s30, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s6, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s26, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s30, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s26, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s7, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s30, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s7, s6, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s26, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s24, s25
	s_mul_hi_u32 s6, s5, s6
	s_ashr_i32 s29, s7, 31
	s_mul_i32 s8, s6, s2
	s_add_i32 s7, s6, 1
	s_sub_i32 s5, s5, s8
	scratch_store_b32 off, v20, off offset:208 ; 4-byte Folded Spill
	s_sub_i32 s8, s5, s2
	s_cmp_ge_u32 s5, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s30, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s6, s7, s6
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s6, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s26, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s31, s7, s6
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s28, s28, s30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s26, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s28, s18
	v_mov_b32_e32 v9, v18
	v_add_nc_u32_e32 v19, s2, v21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s26, v5
	v_cmp_gt_i32_e64 s8, s26, v6
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[9:10], off offset:200 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v9, s2, v18
	v_add_nc_u32_e32 v18, s2, v20
	v_mov_b32_e32 v20, v22
	scratch_store_b32 off, v21, off offset:212 ; 4-byte Folded Spill
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s33, s18, v65
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s26, v14
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v16, s30, v16
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[20:21], off offset:216 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v20, s2, v22
	v_mov_b32_e32 v22, v24
	scratch_store_b32 off, v23, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v21, s2, v23
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s33
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s26, v13
	.loc	1 773 26 is_stmt 1              ; attention.py:773:26
	scratch_store_b64 off, v[22:23], off offset:228 ; 8-byte Folded Spill
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v22, s2, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s30, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s26, v15
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[23:24], off offset:236 ; 8-byte Folded Spill
	v_dual_mov_b32 v24, v26 :: v_dual_add_nc_u32 v23, s2, v25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s26, v16
	v_writelane_b32 v253, s18, 1
	v_cmp_gt_i32_e64 s18, s26, v17
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[24:25], off offset:244 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v24, s2, v26
	v_mov_b32_e32 v26, v28
	scratch_store_b32 off, v27, off offset:252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v25, s2, v27
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 0x60, v0
	v_writelane_b32 v253, s33, 2
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[26:27], off offset:256 ; 8-byte Folded Spill
	v_dual_mov_b32 v27, v29 :: v_dual_add_nc_u32 v26, s2, v28
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v67, 15, v0
	.loc	1 773 26                        ; attention.py:773:26
	scratch_store_b64 off, v[27:28], off offset:264 ; 8-byte Folded Spill
	v_dual_mov_b32 v28, v30 :: v_dual_add_nc_u32 v27, s2, v29
	scratch_store_b64 off, v[28:29], off offset:272 ; 8-byte Folded Spill
	v_dual_mov_b32 v29, v31 :: v_dual_add_nc_u32 v28, s2, v30
	scratch_store_b64 off, v[29:30], off offset:280 ; 8-byte Folded Spill
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v29, s2, v31
	scratch_store_b64 off, v[30:31], off offset:288 ; 8-byte Folded Spill
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v30, s2, v32
	scratch_store_b64 off, v[31:32], off offset:296 ; 8-byte Folded Spill
	v_dual_mov_b32 v32, v34 :: v_dual_add_nc_u32 v31, s2, v33
	scratch_store_b64 off, v[32:33], off offset:304 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v32, s2, v34
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s26, v2
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s33
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_xor_b32 s2, s31, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s33
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s27, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v5, 0x80000000, v21 :: v_dual_add_nc_u32 v18, 0, v18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 0x110, v0
	v_cndmask_b32_e32 v6, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v7, 0x80000000, v23 :: v_dual_add_nc_u32 v22, 0, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v8, v1, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s33
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s10, s2, s29
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s10
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s5, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v12, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s33
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s33
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v9, v9, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s33
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v10, v10, s[20:23], 0 offen
	buffer_load_u8 v14, v14, s[20:23], 0 offen
	v_cndmask_b32_e32 v16, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v11, v11, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v17, v1, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 26
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v66
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s6, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v19, 0, v19
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s13, s5, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s5, s40, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v20, 0, v20
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s5, v21
	s_mov_b32 s7, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v22, off offset:312
	scratch_store_b32 off, v18, off offset:316
	scratch_store_b32 off, v19, off offset:320
	scratch_store_b32 off, v20, off offset:324
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v22, v8
	s_waitcnt vmcnt(12)
	ds_store_b8 v22, v5 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v22, v9 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v22, v12 offset:1536
	ds_store_b8 v18, v2
	ds_store_b8 v18, v6 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v18, v10 offset:1024
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
	s_add_i32 s6, s30, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s30, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s6, s6, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s43
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
	s_max_i32 s7, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s7, s7, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s13, s13, s6
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s19
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v1, v67
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
	s_add_i32 s6, s30, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s27, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 26
	s_add_i32 s6, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s13, s13, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_or_b32_e32 v2, s30, v1
	v_lshlrev_b32_e32 v68, 6, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s7, s13
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_and_b32_e32 v74, 64, v68
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13                          ; attention.py:0:13
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr74
.LBB0_7:                                ; %Flow408
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s6, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v71, 1, v0
	v_and_b32_e32 v70, 16, v0
	v_add_nc_u32_e32 v69, s28, v1
	v_cmp_gt_i32_e64 s40, s26, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v72, 64, v0
	v_dual_mov_b32 v4, v8 :: v_dual_lshlrev_b32 v73, 2, v0
	v_mov_b32_e32 v7, v8
	v_cmp_eq_u32_e64 s46, 0, v70
	v_mov_b32_e32 v6, v8
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
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[52:59], s[0:1], 0x8
	v_dual_mov_b32 v18, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v69
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v253, s44, 4
	s_mov_b32 s60, 0
	s_xor_b32 s9, s3, s24
	v_cndmask_b32_e64 v1, 0x80000000, v1, s40
	s_mov_b32 s61, s60
	v_writelane_b32 v253, s45, 5
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	s_mov_b32 s65, s60
	v_writelane_b32 v253, s46, 6
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 6, v72
	s_mul_f32 s8, s5, 0x4f7ffffe
	v_writelane_b32 v253, s47, 7
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x6c
	s_and_b32 s21, s57, 0xffff
	s_mov_b32 s20, s56
	s_ashr_i32 s1, s9, 31
	buffer_load_u16 v7, v1, s[20:23], 0 offen
	v_writelane_b32 v253, s40, 8
	s_xor_b32 s4, s4, s1
	v_and_b32_e32 v20, 7, v0
	s_cvt_u32_f32 s8, s8
	v_or_b32_e32 v22, s30, v3
	v_writelane_b32 v253, s60, 9
	s_sub_i32 s1, s4, s1
	s_sub_i32 s5, 0, s2
	s_mul_i32 s9, s1, s24
	s_mul_i32 s5, s5, s8
	v_writelane_b32 v253, s61, 10
	v_and_b32_e32 v204, 63, v0
	v_and_b32_e32 v17, 0x70, v71
	v_lshlrev_b32_e32 v28, 4, v20
	s_sub_i32 s3, s3, s9
	v_writelane_b32 v253, s62, 11
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v44, 2, v22
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s26, v22
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s0, s10, 31
	v_writelane_b32 v253, s63, 12
	s_add_i32 s8, s8, s5
	s_ashr_i32 s5, s3, 31
	v_lshrrev_b32_e32 v1, 5, v0
	v_lshrrev_b32_e32 v15, 3, v72
	v_writelane_b32 v253, s64, 13
	v_lshlrev_b32_e32 v27, 7, v204
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v48, 4, v22
	v_xor_b32_e32 v17, v28, v17
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s5, s0
	v_writelane_b32 v253, s65, 14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v44
	scratch_store_b32 off, v69, off offset:1484 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v8, 3, v67
	v_lshrrev_b32_e32 v9, 2, v70
	v_writelane_b32 v253, s66, 15
	v_lshl_or_b32 v16, v67, 8, v1
	v_lshl_or_b32 v69, v67, 10, v73
	v_lshlrev_b32_e32 v1, 1, v66
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
	v_writelane_b32 v253, s67, 16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v52, 6, v22
	v_or3_b32 v27, v27, v15, v17
	v_dual_mov_b32 v19, 0x7632 :: v_dual_lshlrev_b32 v4, 5, v67
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s9, 17
	v_lshlrev_b32_e32 v6, 4, v66
	v_mov_b16_e32 v2.l, 0
	v_lshlrev_b32_e32 v13, 2, v65
	v_and_b32_e32 v10, 32, v0
	v_writelane_b32 v253, s0, 18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v48
	v_bfe_i32 v0, v0, 3, 1
	v_cndmask_b32_e64 v21, 0x208, 0, vcc_lo
	v_or3_b32 v66, v16, v9, v8
	v_xor_b32_e32 v16, 4, v69
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v55, 8, v22
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 19
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v52
	v_add_nc_u32_e32 v186, 0, v1
	v_xor_b32_e32 v1, 16, v27
	v_and_b32_e32 v29, 0x410, v0
	v_mul_u32_u24_e32 v20, 0x90, v20
	v_xor_b32_e32 v13, v21, v13
	v_xor_b32_e32 v21, 8, v69
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v58, 10, v22
	v_add_nc_u32_e32 v16, 0, v16
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 20
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v55
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_add_nc_u32 v1, 0, v1
	v_and_b32_e32 v14, 60, v71
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v40, 16, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v43, 18, v22
	v_or_b32_e32 v47, 20, v22
	v_lshlrev_b32_e32 v12, 9, v67
	v_lshlrev_b32_e32 v11, 1, v72
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v51, 22, v22
	v_xor_b32_e32 v30, 12, v69
	v_and_b32_e32 v67, 64, v68
	v_cndmask_b32_e64 v23, 0x108, 0, vcc_lo
	v_or_b32_e32 v57, 26, v22
	v_xor_b32_e32 v31, 16, v69
	v_xor_b32_e32 v32, 20, v69
	v_add_nc_u32_e32 v26, 0, v67
	v_or_b32_e32 v39, 32, v22
                                        ; implicit-def: $vgpr254 : SGPR spill to VGPR lane
	v_or_b32_e32 v42, 34, v22
	v_or_b32_e32 v46, 36, v22
	v_or_b32_e32 v50, 38, v22
	v_add_nc_u32_e32 v170, v26, v11
	v_xor_b32_e32 v37, 24, v69
	v_or_b32_e32 v54, 40, v22
	v_or_b32_e32 v56, 42, v22
	v_xor_b32_e32 v38, 28, v69
	v_lshlrev_b32_e32 v24, 4, v10
	v_cndmask_b32_e64 v25, 0x404, 0, vcc_lo
	v_or_b32_e32 v41, 50, v22
	v_or_b32_e32 v45, 52, v22
	v_or_b32_e32 v49, 54, v22
	v_or_b32_e32 v53, 56, v22
	v_or_b32_e32 v28, 58, v22
	v_or_b32_e32 v59, 60, v22
	v_or_b32_e32 v36, 62, v22
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v74, s43, v22
	v_xor_b32_e32 v14, v25, v14
	v_xor_b32_e32 v25, 8, v66
	v_xor_b32_e32 v26, 16, v66
	v_xor_b32_e32 v61, 0x50, v66
	v_xor_b32_e32 v62, 0x58, v66
	v_xor_b32_e32 v63, 0x60, v66
	v_xor_b32_e32 v64, 0x68, v66
	v_xor_b32_e32 v65, 0x70, v66
	v_cndmask_b32_e64 v18, 0x1054, v18, s46
	v_cndmask_b32_e64 v19, 0x3276, v19, s46
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s39, v3
	s_abs_i32 s9, s3
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s39, s30
	v_lshl_or_b32 v18, v18, 8, v18
	v_lshl_or_b32 v19, v19, 8, v19
	s_mul_hi_u32 s8, s9, s8
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s4, s1, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s10, s8, 1
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_add_nc_u32 v85, s43, v28
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v58, s43, v58
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_add_nc_u32 v52, s43, v52
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v48, s43, v48
	v_dual_mov_b32 v243, 0xff800000 :: v_dual_add_nc_u32 v44, s43, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v79, 4, v72
	v_lshrrev_b32_e32 v80, 4, v70
	v_mov_b32_e32 v166, 0xff800000
	v_mov_b32_e32 v180, 0xff800000
	v_mov_b32_e32 v202, 0xff800000
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s58
	s_mov_b32 s20, s54
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:652
	scratch_store_b32 off, v66, off offset:336
	v_xor_b32_e32 v1, 32, v27
	v_dual_mov_b32 v200, 0xff800000 :: v_dual_mov_b32 v115, 0xff800000
	v_mov_b32_e32 v113, 0xff800000
	v_mov_b32_e32 v103, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	v_mov_b32_e32 v99, 0xff800000
	v_mov_b32_e32 v205, 0xff800000
	v_mov_b32_e32 v101, 0xff800000
	v_mov_b32_e32 v181, 0xff800000
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v27
	v_mov_b32_e32 v155, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	v_mov_b32_e32 v149, 0xff800000
	v_mov_b32_e32 v107, 0xff800000
	v_add_nc_u32_e32 v1, 0, v1
	v_mov_b32_e32 v109, 0xff800000
	v_mov_b32_e32 v111, 0xff800000
	v_mov_b32_e32 v117, 0xff800000
	v_mov_b32_e32 v119, 0xff800000
	scratch_store_b32 off, v1, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v27
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_mov_b32 v195, 0xff800000
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_mov_b32 v197, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mov_b32 v199, 0xff800000 :: v_dual_mov_b32 v196, 0xff800000
	v_mov_b32_e32 v182, 0xff800000
	scratch_store_b32 off, v1, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v27
	v_mov_b32_e32 v120, 0xff800000
	v_mov_b32_e32 v118, 0xff800000
	v_mov_b32_e32 v116, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v114, 0xff800000 :: v_dual_add_nc_u32 v1, 0, v1
	v_mov_b32_e32 v112, 0xff800000
	v_mov_b32_e32 v110, 0xff800000
	v_mov_b32_e32 v108, 0xff800000
	v_mov_b32_e32 v106, 0xff800000
	scratch_store_b32 off, v1, off offset:668 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v27
	v_mov_b32_e32 v104, 0xff800000
	v_mov_b32_e32 v102, 0xff800000
	v_mov_b32_e32 v100, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_add_nc_u32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:672
	scratch_store_b32 off, v27, off offset:384
	v_xor_b32_e32 v1, 0x70, v27
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_mov_b32 v169, 0xff800000
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_mov_b32 v167, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v1
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_mov_b32 v212, 0xff800000
	v_mov_b32_e32 v153, 0xff800000
	v_mov_b32_e32 v165, 0xff800000
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:676
	scratch_store_b32 off, v72, off offset:1496
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v7.l
	v_and_b32_e32 v5, 24, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v60, v4, v5
	v_or3_b32 v6, v4, v6, v5
	v_lshrrev_b32_e32 v4, 4, v10
	v_lshlrev_b32_e32 v5, 2, v204
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v60, off offset:332
	scratch_store_b32 off, v16, off offset:352
	scratch_store_b32 off, v71, off offset:1492
	v_xor_b32_e32 v71, v20, v29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, 12, v22
	v_add_nc_u32_e32 v16, 0, v21
	v_or3_b32 v4, v4, v12, v11
	v_or_b32_e32 v12, 24, v22
	v_xor_b32_e32 v68, v23, v5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:356
	scratch_store_b32 off, v73, off offset:1500
	v_lshl_or_b32 v73, v10, 3, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, 14, v22
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 23
	v_add_nc_u32_e32 v16, 0, v30
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v23, 28, v22
	v_or_b32_e32 v11, 30, v22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 44, v22
	scratch_store_b32 off, v16, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v16, 0, v31
	v_xor_b32_e32 v1, 16, v71
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 24
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v40
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 46, v22
	scratch_store_b32 off, v16, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v16, 0, v32
	v_add_nc_u32_e32 v1, 0, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v43
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v16, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v16, 0, v37
	v_xad_u32 v33, v6, 8, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 26
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v47
	v_xad_u32 v34, v6, 16, 0
	scratch_store_b32 off, v16, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v16, 0, v38
	v_xad_u32 v35, v6, 24, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 27
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v51
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 48, v22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:376
	scratch_store_b32 off, v1, off offset:680
	v_xor_b32_e32 v16, 8, v60
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 28
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v12
	v_xor_b32_e32 v1, 32, v71
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v84, s43, v6
	v_xor_b32_e32 v21, 16, v60
	v_xor_b32_e32 v22, 24, v60
	v_writelane_b32 v253, s0, 29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v57
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v29, 24, v66
	v_xor_b32_e32 v30, 32, v66
	v_xor_b32_e32 v31, 40, v66
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v23
	scratch_store_b32 off, v1, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v71
	v_xor_b32_e32 v32, 48, v66
	v_xor_b32_e32 v37, 56, v66
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v253, s0, 31
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v11
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v38, 64, v66
	v_xor_b32_e32 v60, 0x48, v66
	v_xor_b32_e32 v66, 0x78, v66
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v39
	scratch_store_b32 off, v1, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v71
	v_or3_b32 v75, v4, v9, v8
	v_xor_b32_e32 v8, 0x420, v68
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v42
	v_add_nc_u32_e32 v1, 0, v1
	v_xor_b32_e32 v9, 0x630, v68
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v83, s43, v10
	v_add_nc_u32_e32 v76, s43, v13
	v_writelane_b32 v254, s0, 2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v46
	v_xor_b32_e32 v13, 0xe70, v68
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v78, s43, v23
	v_xor_b32_e32 v15, 0x820, v73
	v_xor_b32_e32 v17, 0x1040, v73
	v_writelane_b32 v254, s0, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v50
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v82, s43, v5
	v_add_nc_u32_e32 v50, s43, v50
	v_add_nc_u32_e32 v46, s43, v46
	v_add_nc_u32_e32 v42, s43, v42
	v_writelane_b32 v254, s0, 4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v54
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v54, s43, v54
	v_add_nc_u32_e32 v39, s43, v39
	v_add_nc_u32_e32 v40, s43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_writelane_b32 v254, s0, 5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v56
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v56, s43, v56
	v_writelane_b32 v254, s0, 6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v10
	v_xor_b32_e32 v10, 0x840, v68
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v6
	v_add_nc_u32_e32 v6, 0, v16
	v_xor_b32_e32 v16, 0xc30, v73
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 9
	scratch_store_b32 off, v6, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v21
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v41
	v_xor_b32_e32 v21, 0x78, v75
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v41, s43, v41
	scratch_store_b32 off, v6, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v22
	v_writelane_b32 v254, s0, 10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v45
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v45, s43, v45
	scratch_store_b32 off, v6, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v25
	v_mov_b32_e32 v25, 0
	v_add_nc_u32_e32 v81, s43, v11
	v_xor_b32_e32 v11, 0xa50, v68
	v_add_nc_u32_e32 v77, s43, v12
	v_xor_b32_e32 v12, 0xc60, v68
	v_mov_b32_e32 v86, v25
	scratch_store_b32 off, v1, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v71
	v_mov_b32_e32 v133, v25
	v_mov_b32_e32 v131, v25
	v_mov_b32_e32 v129, v25
	v_mov_b32_e32 v127, v25
	v_dual_mov_b32 v72, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:404 ; 4-byte Folded Spill
	v_dual_mov_b32 v125, v25 :: v_dual_add_nc_u32 v6, 0, v26
	scratch_store_b32 off, v1, off offset:696 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v71
	v_mov_b32_e32 v123, v25
	v_mov_b32_e32 v121, v25
	v_mov_b32_e32 v93, v25
	v_mov_b32_e32 v91, v25
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, v25 :: v_dual_add_nc_u32 v6, 0, v29
	v_mov_b32_e32 v87, v25
	scratch_store_b32 off, v1, off offset:700 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v71
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v4, 0x540054, v18
	v_mov_b32_e32 v135, v25
	v_xor_b32_e32 v18, 0x1450, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v30
	v_mov_b32_e32 v30, v25
	v_or3_b32 v24, v14, v24, v67
	scratch_store_b32 off, v1, off offset:704 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x820, v71
	v_xor_b32_e32 v14, 0x410, v73
	v_dual_mov_b32 v134, v25 :: v_dual_and_b32 v5, 0x760076, v19
	v_xor_b32_e32 v19, 0x1860, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v31
	v_lshl_or_b32 v4, v4, 4, v4
	v_writelane_b32 v254, s0, 11
	scratch_store_b32 off, v1, off offset:708 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x830, v71
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v49
	v_dual_mov_b32 v132, v25 :: v_dual_and_b32 v245, 0x5040504, v4
	v_mov_b32_e32 v27, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v32
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v53
	scratch_store_b32 off, v1, off offset:712 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x810, v71
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v53, s43, v53
	v_add_nc_u32_e32 v49, s43, v49
	v_writelane_b32 v254, s0, 13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v28
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v37
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v57, s43, v57
	v_writelane_b32 v254, s0, 14
	scratch_store_b32 off, v1, off offset:716 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x860, v71
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v59
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v59, s43, v59
	v_add_nc_u32_e32 v51, s43, v51
	v_add_nc_u32_e32 v47, s43, v47
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v38
	v_writelane_b32 v254, s0, 15
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s0, s8, s2
	scratch_store_b32 off, v1, off offset:720 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x870, v71
	s_sub_i32 s9, s9, s0
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s0, s3, s38
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s11, s9, s2
	s_cmp_ge_u32 s9, s2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v60
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	scratch_store_b32 off, v1, off offset:724 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x840, v71
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s2
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s1, s37
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s8, s10, s8
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v61
	v_writelane_b32 v254, s14, 16
	s_add_i32 s2, s3, s12
	scratch_store_b32 off, v1, off offset:728 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x850, v71
	s_xor_b32 s3, s8, s5
	s_add_i32 s0, s2, s0
	s_sub_i32 s3, s3, s5
	.loc	1 821 32                        ; attention.py:821:32
	v_writelane_b32 v254, s0, 17
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v62
	ds_load_b64 v[61:62], v0
	.loc	1 821 33 is_stmt 0              ; attention.py:821:33
	s_add_i32 s3, s3, s4
	scratch_store_b32 off, v1, off offset:732 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1040, v71
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s0, s3, s27
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v43, s43, v43
	.loc	1 843 41                        ; attention.py:843:41
	v_writelane_b32 v254, s0, 18
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s26, v36
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v63
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v36, s43, v36
	v_add_nc_u32_e32 v55, s43, v55
	scratch_store_b32 off, v1, off offset:736 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1050, v71
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s36, 0x3fb8aa3b
	.loc	1 762 27                        ; attention.py:762:27
	v_writelane_b32 v254, s0, 19
	s_lshl_b32 s0, s6, 5
	v_lshl_or_b32 v5, v5, 4, v5
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v64
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[61:62], off offset:792 ; 8-byte Folded Spill
	ds_load_b64 v[61:62], v33
	scratch_store_b32 off, v1, off offset:740 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1060, v71
	ds_load_b64 v[33:34], v34
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v60, s1, v2
	v_writelane_b32 v254, s0, 20
	s_lshl_b32 s0, s6, 4
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v65
	v_mov_b32_e32 v65, v25
	v_writelane_b32 v254, s0, 21
	scratch_store_b32 off, v1, off offset:744 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1070, v71
	s_lshl_b32 s0, s6, 3
	v_and_b32_e32 v246, 0x7060706, v5
	v_writelane_b32 v254, s0, 22
	s_lshl_b32 s0, s6, 1
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v66
	.loc	1 892 65                        ; attention.py:892:65
	v_writelane_b32 v254, s0, 23
	v_mov_b32_e32 v26, v25
	scratch_store_b32 off, v1, off offset:748 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1010, v71
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v31, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 0x210, v68
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v5, v25
	scratch_store_b32 off, v1, off offset:752 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1020, v71
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v6, 0, v6
	v_mov_b32_e32 v130, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v128, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v8
	v_xor_b32_e32 v8, 16, v75
	v_mov_b32_e32 v126, v25
	scratch_store_b32 off, v1, off offset:756 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1030, v71
	v_mov_b32_e32 v124, v25
	v_mov_b32_e32 v122, v25
	v_mov_b32_e32 v92, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v90, v25 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v9
	v_xor_b32_e32 v9, 24, v75
	v_mov_b32_e32 v88, v25
	scratch_store_b32 off, v1, off offset:760 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1860, v71
	v_mov_b32_e32 v66, v25
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v254, s13, 24
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s17, s59, 0xffff
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v10
	v_xor_b32_e32 v10, 32, v75
	s_and_b32 s29, s29, 0xffff
	scratch_store_b32 off, v1, off offset:764 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1870, v71
	s_and_b32 s21, s55, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:476 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v11
	v_xor_b32_e32 v11, 40, v75
	scratch_store_b32 off, v1, off offset:768 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1840, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:480 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v12
	v_xor_b32_e32 v12, 48, v75
	scratch_store_b32 off, v1, off offset:772 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1850, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v13
	v_xor_b32_e32 v13, 56, v75
	scratch_store_b32 off, v1, off offset:776 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1820, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v14
	v_xor_b32_e32 v14, 64, v75
	scratch_store_b32 off, v1, off offset:780 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x1830, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:784
	scratch_store_b32 off, v71, off offset:344
	v_xor_b32_e32 v1, 0x1810, v71
	v_mov_b32_e32 v71, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v6, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v15
	v_xor_b32_e32 v15, 0x48, v75
	scratch_store_b32 off, v6, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v16
	v_xor_b32_e32 v16, 0x50, v75
	scratch_store_b32 off, v6, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v17
	v_xor_b32_e32 v17, 0x58, v75
	scratch_store_b32 off, v6, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v18
	v_xor_b32_e32 v18, 0x60, v75
	scratch_store_b32 off, v6, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v19
	scratch_store_b32 off, v67, off offset:1504 ; 4-byte Folded Spill
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v67, s43, v20
	v_xor_b32_e32 v20, 0x1c70, v73
	v_xor_b32_e32 v19, 0x68, v75
	scratch_store_b32 off, v6, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v6, 0, v20
	v_xor_b32_e32 v20, 0x70, v75
	scratch_store_b32 off, v6, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 8, v75
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v6
	v_mov_b32_e32 v6, v25
	scratch_store_b32 off, v4, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v8
	v_mov_b32_e32 v8, v25
	scratch_store_b32 off, v4, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v9
	v_mov_b32_e32 v9, v25
	scratch_store_b32 off, v4, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v10
	v_mov_b32_e32 v10, v25
	scratch_store_b32 off, v4, off offset:532 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v11
	v_mov_b32_e32 v11, v25
	scratch_store_b32 off, v4, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v12
	v_mov_b32_e32 v12, v25
	scratch_store_b32 off, v4, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v13
	v_mov_b32_e32 v13, v25
	scratch_store_b32 off, v4, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v14
	v_mov_b32_e32 v14, v25
	scratch_store_b32 off, v4, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v15
	v_mov_b32_e32 v15, v25
	scratch_store_b32 off, v4, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v16
	v_mov_b32_e32 v16, v25
	scratch_store_b32 off, v4, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v17
	v_mov_b32_e32 v17, v25
	scratch_store_b32 off, v4, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v18
	v_mov_b32_e32 v18, v25
	scratch_store_b32 off, v4, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v19
	v_mov_b32_e32 v19, v25
	scratch_store_b32 off, v4, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v20
	v_mov_b32_e32 v20, v25
	.loc	1 758 19                        ; attention.py:758:19
	scratch_store_b32 off, v4, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 0, v21
	v_mov_b32_e32 v21, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[37:38], null, s14, v204, v[3:4]
	v_xor_b32_e32 v3, 32, v69
	v_add_nc_u32_e32 v2, 0, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_add_u32 v0, s39, 5, v37
	scratch_store_b32 off, v1, off offset:788 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v3, v25
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:576
	scratch_store_b32 off, v0, off offset:824
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v0, s39, 4, v37
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[61:62], off offset:800 ; 8-byte Folded Spill
	v_mov_b32_e32 v4, v25
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s39, 3, v37
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:808 ; 8-byte Folded Spill
	ds_load_b64 v[33:34], v35
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:816
	scratch_store_b32 off, v70, off offset:1488
	scratch_store_b32 off, v0, off offset:832
	v_lshl_add_u32 v0, s39, 2, v37
	v_mad_u64_u32 v[33:34], null, s39, 60, v[37:38]
	scratch_store_b32 off, v2, off offset:592 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 36, v69
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	v_lshl_add_u32 v0, s39, 1, v37
	v_mov_b32_e32 v70, v25
	scratch_store_b64 off, v[33:34], off offset:884 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 62, v[37:38]
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v36
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v0, off offset:1228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v59
	scratch_store_b64 off, v[33:34], off offset:892 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 58, v[37:38]
	scratch_store_b32 off, v0, off offset:1232 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v85
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:900
	scratch_store_b32 off, v0, off offset:1236
	v_add_nc_u32_e32 v0, s42, v53
	v_mad_u64_u32 v[33:34], null, s39, 56, v[37:38]
	scratch_store_b32 off, v0, off offset:1240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v49
	scratch_store_b64 off, v[33:34], off offset:908 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 54, v[37:38]
	scratch_store_b32 off, v0, off offset:1244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v45
	scratch_store_b32 off, v0, off offset:1248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v41
	scratch_store_b64 off, v[33:34], off offset:916 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 52, v[37:38]
	scratch_store_b32 off, v0, off offset:1252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v84
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:924
	scratch_store_b32 off, v0, off offset:1256
	v_add_nc_u32_e32 v0, s42, v83
	v_mad_u64_u32 v[33:34], null, s39, 50, v[37:38]
	scratch_store_b32 off, v0, off offset:1260 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v82
	scratch_store_b64 off, v[33:34], off offset:932 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 48, v[37:38]
	scratch_store_b32 off, v0, off offset:1264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v56
	scratch_store_b32 off, v0, off offset:1268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v54
	scratch_store_b64 off, v[33:34], off offset:940 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 46, v[37:38]
	scratch_store_b32 off, v0, off offset:1272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v50
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:948
	scratch_store_b32 off, v0, off offset:1276
	v_add_nc_u32_e32 v0, s42, v46
	v_mad_u64_u32 v[33:34], null, s39, 44, v[37:38]
	scratch_store_b32 off, v0, off offset:1280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v42
	scratch_store_b64 off, v[33:34], off offset:956 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 42, v[37:38]
	scratch_store_b32 off, v0, off offset:1284 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v39
	scratch_store_b32 off, v0, off offset:1288 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v81
	scratch_store_b64 off, v[33:34], off offset:964 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 40, v[37:38]
	scratch_store_b32 off, v0, off offset:1292 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v78
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:972
	scratch_store_b32 off, v0, off offset:1296
	v_add_nc_u32_e32 v0, s42, v57
	v_mad_u64_u32 v[33:34], null, s39, 38, v[37:38]
	scratch_store_b32 off, v0, off offset:1300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v77
	scratch_store_b64 off, v[33:34], off offset:980 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 36, v[37:38]
	scratch_store_b32 off, v0, off offset:1304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v51
	scratch_store_b32 off, v0, off offset:1308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v47
	scratch_store_b64 off, v[33:34], off offset:988 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 34, v[37:38]
	scratch_store_b32 off, v0, off offset:1312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v43
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:996
	scratch_store_b32 off, v0, off offset:1316
	v_add_nc_u32_e32 v0, s42, v40
	v_mad_u64_u32 v[33:34], null, s39, 30, v[37:38]
	scratch_store_b32 off, v0, off offset:1320 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v76
	scratch_store_b64 off, v[33:34], off offset:1004 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 28, v[37:38]
	scratch_store_b32 off, v0, off offset:1324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v67
	scratch_store_b32 off, v0, off offset:1328 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v58
	scratch_store_b64 off, v[33:34], off offset:1012 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 26, v[37:38]
	scratch_store_b32 off, v0, off offset:1332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v55
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[33:34], off offset:1020
	scratch_store_b32 off, v0, off offset:1336
	v_add_nc_u32_e32 v0, s42, v52
	v_mad_u64_u32 v[33:34], null, s39, 24, v[37:38]
	scratch_store_b32 off, v0, off offset:1340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v48
	scratch_store_b64 off, v[33:34], off offset:1028 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 22, v[37:38]
	scratch_store_b32 off, v0, off offset:1344 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v44
	scratch_store_b32 off, v0, off offset:1348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s42, v74
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1352
	scratch_store_b32 off, v36, off offset:1224
	v_subrev_nc_u32_e32 v0, s41, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1356
	scratch_store_b32 off, v59, off offset:1220
	v_subrev_nc_u32_e32 v0, s41, v59
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1360
	scratch_store_b32 off, v85, off offset:1216
	v_subrev_nc_u32_e32 v0, s41, v85
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1364
	scratch_store_b32 off, v53, off offset:1212
	v_subrev_nc_u32_e32 v0, s41, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1368
	scratch_store_b32 off, v49, off offset:1208
	v_subrev_nc_u32_e32 v0, s41, v49
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1372
	scratch_store_b32 off, v45, off offset:1204
	v_subrev_nc_u32_e32 v0, s41, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1376
	scratch_store_b32 off, v41, off offset:1200
	v_subrev_nc_u32_e32 v0, s41, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1380
	scratch_store_b32 off, v84, off offset:1196
	v_subrev_nc_u32_e32 v0, s41, v84
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1384
	scratch_store_b32 off, v83, off offset:1192
	v_subrev_nc_u32_e32 v0, s41, v83
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1388
	scratch_store_b32 off, v82, off offset:1188
	v_subrev_nc_u32_e32 v0, s41, v82
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1392
	scratch_store_b32 off, v56, off offset:1184
	v_subrev_nc_u32_e32 v0, s41, v56
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1396
	scratch_store_b32 off, v54, off offset:1180
	v_subrev_nc_u32_e32 v0, s41, v54
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1400
	scratch_store_b32 off, v50, off offset:1176
	v_subrev_nc_u32_e32 v0, s41, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1404
	scratch_store_b32 off, v46, off offset:1172
	v_subrev_nc_u32_e32 v0, s41, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1408
	scratch_store_b32 off, v42, off offset:1168
	v_subrev_nc_u32_e32 v0, s41, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1412
	scratch_store_b32 off, v39, off offset:1164
	v_subrev_nc_u32_e32 v0, s41, v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1416
	scratch_store_b32 off, v81, off offset:1160
	v_subrev_nc_u32_e32 v0, s41, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1420
	scratch_store_b32 off, v78, off offset:1156
	v_subrev_nc_u32_e32 v0, s41, v78
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1424
	scratch_store_b32 off, v57, off offset:1152
	v_subrev_nc_u32_e32 v0, s41, v57
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1428
	scratch_store_b32 off, v77, off offset:1148
	v_subrev_nc_u32_e32 v0, s41, v77
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1432
	scratch_store_b32 off, v51, off offset:1144
	v_subrev_nc_u32_e32 v0, s41, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1436
	scratch_store_b32 off, v47, off offset:1140
	v_subrev_nc_u32_e32 v0, s41, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1440
	scratch_store_b32 off, v43, off offset:1136
	v_subrev_nc_u32_e32 v0, s41, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1444
	scratch_store_b32 off, v40, off offset:1132
	v_subrev_nc_u32_e32 v0, s41, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1448
	scratch_store_b32 off, v76, off offset:1128
	v_subrev_nc_u32_e32 v0, s41, v76
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1452
	scratch_store_b32 off, v67, off offset:1124
	v_subrev_nc_u32_e32 v0, s41, v67
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1456
	scratch_store_b32 off, v58, off offset:1120
	v_subrev_nc_u32_e32 v0, s41, v58
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1460
	scratch_store_b32 off, v55, off offset:1116
	v_subrev_nc_u32_e32 v0, s41, v55
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1464
	scratch_store_b32 off, v52, off offset:1112
	v_subrev_nc_u32_e32 v0, s41, v52
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1468
	scratch_store_b32 off, v48, off offset:1108
	v_subrev_nc_u32_e32 v0, s41, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1472
	scratch_store_b32 off, v44, off offset:1104
	v_subrev_nc_u32_e32 v0, s41, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1476
	scratch_store_b32 off, v74, off offset:1100
	v_subrev_nc_u32_e32 v0, s41, v74
	.loc	1 847 25                        ; attention.py:847:25
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1480
	scratch_store_b32 off, v60, off offset:844
	scratch_store_b32 off, v60, off offset:848
	scratch_store_b32 off, v60, off offset:852
	scratch_store_b32 off, v60, off offset:856
	scratch_store_b32 off, v60, off offset:860
	scratch_store_b32 off, v60, off offset:864
	scratch_store_b32 off, v60, off offset:868
	scratch_store_b32 off, v60, off offset:872
	scratch_store_b32 off, v60, off offset:876
	scratch_store_b32 off, v60, off offset:588
	scratch_store_b32 off, v60, off offset:880
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v68, off offset:340 ; 4-byte Folded Spill
	v_dual_mov_b32 v76, 0xff800000 :: v_dual_mov_b32 v81, 0xff800000
	v_mov_b32_e32 v85, v25
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0xff800000
	scratch_store_b32 off, v73, off offset:348 ; 4-byte Folded Spill
	v_mov_b32_e32 v68, v25
	v_mov_b32_e32 v67, v25
	v_mov_b32_e32 v73, 0xff800000
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v75, off offset:380
	scratch_store_b32 off, v2, off offset:596
	v_xor_b32_e32 v2, 40, v69
	v_mov_b32_e32 v84, 0xff800000
	v_mov_b32_e32 v82, 0xff800000
	v_dual_mov_b32 v78, 0xff800000 :: v_dual_mov_b32 v77, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v75, 0xff800000 :: v_dual_add_nc_u32 v2, 0, v2
	v_dual_mov_b32 v74, 0xff800000 :: v_dual_mov_b32 v83, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:580
	scratch_store_b32 off, v2, off offset:600
	v_xor_b32_e32 v2, 44, v69
	scratch_store_b64 off, v[33:34], off offset:1036 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 20, v[37:38]
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:604 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 48, v69
	scratch_store_b64 off, v[33:34], off offset:1044 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 18, v[37:38]
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:608 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 52, v69
	scratch_store_b64 off, v[33:34], off offset:1052 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 14, v[37:38]
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 56, v69
	scratch_store_b64 off, v[33:34], off offset:1060 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 12, v[37:38]
	v_add_nc_u32_e32 v2, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:616
	scratch_store_b32 off, v69, off offset:328
	v_xor_b32_e32 v2, 60, v69
	scratch_store_b64 off, v[33:34], off offset:1068 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 10, v[37:38]
	v_dual_mov_b32 v69, v25 :: v_dual_add_nc_u32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:620 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x808, v24
	scratch_store_b64 off, v[33:34], off offset:1076 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s39, 6, v[37:38]
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:624 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x1010, v24
	scratch_store_b64 off, v[33:34], off offset:1084 ; 8-byte Folded Spill
	v_mad_u64_u32 v[33:34], null, s6, v79, v[204:205]
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:628 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x1818, v24
	scratch_store_b64 off, v[33:34], off offset:1092 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:632 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x2020, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x2828, v24
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:640 ; 4-byte Folded Spill
	v_xor_b32_e32 v2, 0x3030, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:644
	scratch_store_b32 off, v24, off offset:388
	v_xor_b32_e32 v2, 0x3838, v24
	v_mov_b32_e32 v24, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v2, 0, v2
	scratch_store_b32 off, v2, off offset:648 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, v25
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[141:142], off, off offset:988
	scratch_load_b64 v[160:161], off, off offset:1044
	.loc	1 870 25                        ; attention.py:870:25
	v_readlane_b32 s3, v254, 16
	v_readlane_b32 s30, v254, 17
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s31, s19
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v150, v57
	v_cvt_f32_i32_e32 v138, v60
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s7, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v64
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s30, s3
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s30, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v60, v51
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v64, v42
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v43, v36
	v_cvt_f32_i32_e32 v42, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v36, v39
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b64 v[38:39], off, off offset:940 ; 8-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v139, v59
	v_cvt_f32_i32_e32 v59, v52
	v_cvt_f32_i32_e32 v52, v55
	v_cvt_f32_i32_e32 v55, v44
	v_cvt_f32_i32_e32 v44, v34
	v_cvt_f32_i32_e32 v34, v35
	.loc	1 879 36                        ; attention.py:879:36
	scratch_load_b32 v35, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v140, v58
	v_cvt_f32_i32_e32 v58, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v45
	v_cvt_f32_i32_e32 v45, v33
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v85, v61
	v_cvt_f32_i32_e32 v61, v63
	v_cvt_f32_i32_e32 v63, v49
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v50, v46
	v_cvt_f32_i32_e32 v46, v48
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(34)
	v_mov_b16_e64 v135.h, v135.l
	s_waitcnt vmcnt(31)
	v_mov_b16_e64 v132.h, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v62
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(30)
	v_mov_b16_e64 v131.h, v131.l
	s_waitcnt vmcnt(29)
	v_mov_b16_e64 v130.h, v130.l
	s_waitcnt vmcnt(26)
	v_mov_b16_e64 v128.h, v128.l
	s_waitcnt vmcnt(25)
	v_mov_b16_e32 v127.h, v127.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_mov_b16_e32 v126.h, v126.l
	s_waitcnt vmcnt(22)
	v_mov_b16_e32 v124.h, v124.l
	s_waitcnt vmcnt(20)
	v_mov_b16_e32 v122.h, v122.l
	v_mov_b16_e32 v123.h, v123.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v92.h, v92.l
	v_mov_b16_e32 v125.h, v125.l
	v_mov_b16_e32 v121.h, v121.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v90.h, v90.l
	v_mov_b16_e32 v93.h, v93.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v88.h, v88.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v87.h, v87.l
	v_mov_b16_e32 v91.h, v91.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v72.h, v72.l
	v_mov_b16_e32 v89.h, v89.l
	v_mov_b16_e32 v86.h, v86.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v70.h, v70.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v71.h, v71.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[175:176], off, off offset:1060
	scratch_load_b64 v[151:152], off, off offset:884
	scratch_load_b64 v[183:184], off, off offset:1004
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v158, s3, v160, 1
	scratch_load_b32 v160, off, off offset:836 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v158, 0x80000000, v158, s26
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v160, s3, v160, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v160, 0x80000000, v160, s99
	s_clause 0x1
	buffer_load_u16 v163, v158, s[28:31], 0 offen
	buffer_load_u16 v164, v160, s[28:31], 0 offen
	scratch_load_b64 v[160:161], off, off offset:1036 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v158, s3, v160, 1
	scratch_load_b64 v[160:161], off, off offset:1084 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v158, 0x80000000, v158, s97
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v160, s3, v160, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v160, 0x80000000, v160, s100
	s_clause 0x1
	buffer_load_u16 v172, v158, s[28:31], 0 offen
	buffer_load_u16 v174, v160, s[28:31], 0 offen
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v158, off, off offset:832
	scratch_load_b64 v[39:40], off, off offset:996
	scratch_load_b64 v[160:161], off, off offset:1076
	v_add_lshl_u32 v0, s3, v38, 1
	v_add_lshl_u32 v35, s3, v35, 1
	scratch_load_b64 v[161:162], off, off offset:1068 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v162, s3, v175, 1
	scratch_load_b64 v[175:176], off, off offset:1028 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v0, 0x80000000, v0, s9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s8
	s_clause 0x1
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v38, v35, s[28:31], 0 offen
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[176:177], off, off offset:1020
	scratch_load_b64 v[177:178], off, off offset:1012
	v_cndmask_b32_e64 v162, 0x80000000, v162, s10
	v_add_lshl_u32 v158, s3, v158, 1
	v_add_lshl_u32 v35, s3, v39, 1
	scratch_load_b64 v[39:40], off, off offset:932 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v40, s3, v141, 1
	scratch_load_b64 v[141:142], off, off offset:924 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v158, 0x80000000, v158, s33
	v_cndmask_b32_e64 v35, 0x80000000, v35, s22
	v_add_lshl_u32 v175, s3, v175, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_add_lshl_u32 v160, s3, v160, 1
	v_add_lshl_u32 v161, s3, v161, 1
	v_cndmask_b16 v38.h, 0xff80, v0.l, s9
	scratch_load_b32 v0, off, off offset:828 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v175, 0x80000000, v175, s14
	v_add_lshl_u32 v176, s3, v176, 1
	v_add_lshl_u32 v177, s3, v177, 1
	v_cndmask_b32_e64 v160, 0x80000000, v160, s101
	s_clause 0x1
	buffer_load_u16 v178, v158, s[28:31], 0 offen
	buffer_load_u16 v175, v175, s[28:31], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v161, s11
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	v_cndmask_b32_e64 v177, 0x80000000, v177, s104
	v_cndmask_b16 v38.l, 0xff80, v38.l, s8
	v_add_lshl_u32 v158, s3, v183, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v179, 0x80000000, v158, s23
	s_clause 0x5
	buffer_load_u16 v183, v160, s[28:31], 0 offen
	buffer_load_u16 v160, v161, s[28:31], 0 offen
	buffer_load_u16 v158, v162, s[28:31], 0 offen
	buffer_load_u16 v176, v176, s[28:31], 0 offen
	buffer_load_u16 v162, v177, s[28:31], 0 offen
	buffer_load_u16 v161, v179, s[28:31], 0 offen
	v_mov_b16_e64 v177.h, v38.l
	v_add_lshl_u32 v39, s3, v39, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v48, s3, v141, 1
	scratch_load_b64 v[141:142], off, off offset:980 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v39, s37
	v_cndmask_b32_e64 v48, 0x80000000, v48, s4
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v137, s3, v141, 1
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[141:142], off, off offset:972
	scratch_load_b64 v[142:143], off, off offset:964
	scratch_load_b64 v[143:144], off, off offset:956
	scratch_load_b64 v[144:145], off, off offset:916
	scratch_load_b64 v[145:146], off, off offset:948
	scratch_load_b64 v[146:147], off, off offset:908
	scratch_load_b64 v[147:148], off, off offset:900
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v148, s3, v151, 1
	scratch_load_b64 v[151:152], off, off offset:892 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v137, 0x80000000, v137, s36
	v_cndmask_b32_e64 v148, 0x80000000, v148, s15
	v_add_lshl_u32 v141, s3, v141, 1
	v_add_lshl_u32 v142, s3, v142, 1
	v_add_lshl_u32 v143, s3, v143, 1
	v_add_lshl_u32 v144, s3, v144, 1
	v_add_lshl_u32 v145, s3, v145, 1
	v_add_lshl_u32 v146, s3, v146, 1
	v_add_lshl_u32 v147, s3, v147, 1
	v_cndmask_b32_e64 v141, 0x80000000, v141, s103
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v151, s3, v151, 1
	v_cndmask_b32_e64 v142, 0x80000000, v142, s1
	v_cndmask_b32_e64 v143, 0x80000000, v143, s5
	v_cndmask_b32_e64 v144, 0x80000000, v144, s24
	v_cndmask_b32_e64 v145, 0x80000000, v145, vcc_hi
	v_cndmask_b32_e64 v146, 0x80000000, v146, s12
	v_cndmask_b32_e64 v147, 0x80000000, v147, s35
	v_cndmask_b32_e64 v152, 0x80000000, v151, s34
	s_clause 0xd
	buffer_load_u16 v159, v35, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v137, v137, s[28:31], 0 offen
	buffer_load_u16 v141, v141, s[28:31], 0 offen
	buffer_load_u16 v142, v142, s[28:31], 0 offen
	buffer_load_u16 v151, v143, s[28:31], 0 offen
	buffer_load_u16 v35, v145, s[28:31], 0 offen
	buffer_load_u16 v143, v39, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v144, v144, s[28:31], 0 offen
	buffer_load_u16 v145, v146, s[28:31], 0 offen
	buffer_load_u16 v146, v147, s[28:31], 0 offen
	buffer_load_u16 v157, v148, s[28:31], 0 offen
	buffer_load_u16 v152, v152, s[28:31], 0 offen
	scratch_load_b64 v[147:148], off, off offset:580 ; 8-byte Folded Reload
	v_add_lshl_u32 v0, s3, v0, 1
	s_waitcnt vmcnt(13)
	v_cndmask_b16 v40.h, 0xff80, v163.l, s26
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s25
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v39, s3, v147, 1
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[147:148], off, off offset:1052
	scratch_load_b32 v148, off, off offset:840
	v_cndmask_b32_e64 v39, 0x80000000, v39, s102
	s_clause 0x1
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v147, s3, v147, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v148, s3, v148, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v147, 0x80000000, v147, s13
	v_cndmask_b32_e64 v148, 0x80000000, v148, s98
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v39.h, 0xff80, v0.l, s25
	v_cndmask_b16 v39.l, 0xff80, v39.l, s102
	s_clause 0x1
	buffer_load_u16 v147, v147, s[28:31], 0 offen
	buffer_load_u16 v148, v148, s[28:31], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_2addr_b32 v0, v39, v38 offset1:32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v0.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v38.l, v0.l
	v_mov_b16_e64 v177.l, v0.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v135.l, v0.l
	v_mov_b16_e64 v132.l, v0.l
	v_mov_b16_e64 v131.l, v0.l
	v_mov_b16_e64 v130.l, v0.l
	v_mov_b16_e64 v128.l, v0.l
	v_mov_b16_e32 v127.l, v0.l
	v_mov_b16_e32 v126.l, v0.l
	v_mov_b16_e32 v124.l, v0.l
	v_mov_b16_e32 v122.l, v0.l
	v_mov_b16_e32 v123.l, v0.l
	v_mov_b16_e32 v92.l, v0.l
	v_mov_b16_e32 v125.l, v0.l
	v_mov_b16_e32 v121.l, v0.l
	v_mov_b16_e32 v90.l, v0.l
	v_mov_b16_e32 v93.l, v0.l
	v_mov_b16_e32 v88.l, v0.l
	v_mov_b16_e32 v87.l, v0.l
	v_mov_b16_e32 v91.l, v0.l
	v_mov_b16_e32 v72.l, v0.l
	v_mov_b16_e32 v89.l, v0.l
	v_mov_b16_e32 v86.l, v0.l
	v_mov_b16_e32 v70.l, v0.l
	v_mov_b16_e32 v71.l, v0.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v38.h, v39.l
	v_mov_b16_e32 v39.l, v0.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v177
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s76, s9, s39
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v38
	v_cmp_neq_f32_e64 s3, 0xff800000, v39
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s86, s8, s38
	v_cndmask_b32_e64 v38, 0, 1, s76
	v_cndmask_b32_e64 v39, 0, 1, s86
	s_and_b32 s96, s102, vcc_lo
	s_and_b32 s93, s25, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s93
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v38.h, 0xff80, v143.l, s37
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v143, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v177.h, v39.l, v0.h
	v_cndmask_b32_e64 v39, 0, 1, s96
	v_lshlrev_b16 v0.h, 8, v38.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v38.l, 0xff80, v159.l, s22
	v_cndmask_b16 v39.h, 0xff80, v147.l, s13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v177.l, v39.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v39.l, 0xff80, v148.l, s98
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v143, v39, v38 offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v143.h, v38.l
	v_mov_b16_e32 v38.l, v0.l
	v_mov_b16_e64 v143.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v38
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v38.h, v39.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v143
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v39.l, v0.l
	v_cndmask_b16 v143.h, 0xff80, v161.l, s23
	v_cndmask_b16 v143.l, 0xff80, v158.l, s10
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s82, s37, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v38
	v_cmp_neq_f32_e64 s38, 0xff800000, v39
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s89, s22, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_mov_b32 s22, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s82
	v_cndmask_b32_e64 v39, 0, 1, s89
	s_and_b32 s94, s13, s38
	s_and_b32 s98, s98, s39
	v_readlane_b32 s13, v254, 24
	v_lshlrev_b16 v0.h, 8, v38.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v38.h, v39.l, v0.h
	v_cndmask_b32_e64 v39, 0, 1, s94
	v_mov_b16_e32 v38.l, v39.l
	v_cndmask_b32_e64 v39, 0, 1, s98
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v39.h, 0xff80, v48.l, s4
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v48, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v38.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v38.l, v39.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v39.l, 0xff80, v40.l, s2
	v_cndmask_b16 v40.l, 0xff80, v164.l, s99
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v48, v40, v39 offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v48.h, v39.l
	v_mov_b16_e32 v39.l, v0.l
	v_mov_b16_e32 v48.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v39.h, v40.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v40.l, v0.l
	v_cndmask_b16 v48.h, 0xff80, v172.l, s97
	v_cndmask_b16 v48.l, 0xff80, v174.l, s100
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s85, s4, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v39
	v_cmp_neq_f32_e64 s38, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s91, s2, s3
	v_cndmask_b32_e64 v39, 0, 1, s85
	v_cndmask_b32_e64 v40, 0, 1, s91
	s_and_b32 s99, s99, s39
	s_and_b32 s95, s26, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v39.l
	v_or_b16 v39.h, v40.l, v0.h
	v_cndmask_b32_e64 v40, 0, 1, s95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v40.l
	v_cndmask_b32_e64 v40, 0, 1, s99
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v40.h, 0xff80, v144.l, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v39.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v39.l, v40.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v40.l, 0xff80, v137.l, s36
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v137, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v137, v48, v40 offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.h, v40.l
	v_mov_b16_e32 v40.l, v0.l
	v_mov_b16_e64 v137.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v40.h, v48.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v137
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v48.l, v0.l
	v_cndmask_b16 v137.h, 0xff80, v175.l, s14
	v_cndmask_b16 v137.l, 0xff80, v178.l, s33
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s88, s24, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v40
	v_cmp_neq_f32_e64 s38, 0xff800000, v48
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s92, s36, s3
	v_cndmask_b32_e64 v40, 0, 1, s88
	v_cndmask_b32_e64 v48, 0, 1, s92
	s_and_b32 s100, s100, s39
	s_and_b32 s97, s97, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v40.l
	v_or_b16 v40.h, v48.l, v0.h
	v_cndmask_b32_e64 v48, 0, 1, s97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v40.l, v48.l
	v_cndmask_b32_e64 v48, 0, 1, s100
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v48.h, 0xff80, v145.l, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v40.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v40.l, v48.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v48.l, 0xff80, v141.l, s103
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v141, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v141, v137, v48 offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v141.h, v48.l
	v_mov_b16_e32 v48.l, v0.l
	v_mov_b16_e64 v141.l, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v48
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v48.h, v137.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v141
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.l, v0.l
	v_cndmask_b16 v141.h, 0xff80, v176.l, s0
	v_cndmask_b16 v141.l, 0xff80, v183.l, s101
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s69, s12, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v48
	v_cmp_neq_f32_e64 s38, 0xff800000, v137
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s70, s103, s3
	v_cndmask_b32_e64 v48, 0, 1, s69
	v_cndmask_b32_e64 v137, 0, 1, s70
	s_and_b32 s79, s33, s39
	s_and_b32 s78, s14, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v48.l
	v_or_b16 v48.h, v137.l, v0.h
	v_cndmask_b32_e64 v137, 0, 1, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v48.l, v137.l
	v_cndmask_b32_e64 v137, 0, 1, s79
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v137.h, 0xff80, v146.l, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v0.h, 8, v48.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v48.l, v137.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v137.l, 0xff80, v142.l, s1
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v142, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v142, v141, v137 offset1:32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v142.h, v137.l
	v_mov_b16_e64 v142.l, v0.l
	v_mov_b16_e64 v137.l, v0.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v142
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v142.l, 0xff80, v35.l, vcc_hi
	.loc	1 880 35                        ; attention.py:880:35
	scratch_load_b32 v35, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v137
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.h, v141.l
	v_mov_b16_e64 v141.l, v0.l
	v_cndmask_b16 v142.h, 0xff80, v152.l, s34
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s72, s1, s3
	s_and_b32 s71, s35, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v137
	v_cmp_neq_f32_e64 s38, 0xff800000, v141
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v137, 0, 1, s71
	v_cndmask_b32_e64 v141, 0, 1, s72
	s_and_b32 s81, s101, s39
	s_and_b32 s80, s0, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v137.l
	v_cndmask_b32_e64 v137, 0, 1, s80
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b16 v137.h, 0xff80, v157.l, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v159.h, v141.l, v0.h
	v_cndmask_b32_e64 v141, 0, 1, s81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v137.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v137.l, 0xff80, v151.l, s5
	v_cndmask_b16 v141.h, 0xff80, v162.l, s104
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v159.l, v141.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v141.l, 0xff80, v160.l, s11
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v35, v141, v137 offset1:32
	scratch_load_b32 v35, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v35, v143, v142 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v35, off, off offset:380
	scratch_load_b32 v152, off, off offset:524
	scratch_load_b32 v164, off, off offset:536
	scratch_load_b32 v183, off, off offset:572
	scratch_load_b32 v190, off, off offset:560
	scratch_load_b32 v194, off, off offset:548
	scratch_load_b32 v185, off, off offset:564
	scratch_load_b32 v179, off, off offset:576
	scratch_load_b32 v163, off, off offset:540
	scratch_load_b32 v192, off, off offset:552
	scratch_load_b32 v184, off, off offset:568
	scratch_load_b32 v172, off, off offset:532
	scratch_load_b32 v162, off, off offset:544
	scratch_load_b32 v191, off, off offset:556
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(8)
	ds_load_u16 v193, v194 offset:256
	ds_load_u16 v194, v194
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v35, 0, v35
	ds_load_u16 v144, v35
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v145, v35 offset:256
	scratch_load_b32 v35, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_u16 v147, v35
	ds_load_u16 v148, v35 offset:256
	scratch_load_b32 v35, off, off offset:520 ; 4-byte Folded Reload
	ds_load_u16 v146, v152 offset:256
	ds_load_u16 v160, v164 offset:256
	ds_load_u16 v174, v185
	ds_load_u16 v187, v192
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v175, v179
	s_waitcnt vmcnt(0)
	ds_load_u16 v151, v35 offset:256
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_u16 v152, v152
	ds_load_u16 v157, v35
	ds_load_u16 v158, v172 offset:256
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v176, v183
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_u16 v188, v191
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v35, v162
	ds_load_u16 v161, v163
	ds_load_u16 v162, v162 offset:256
	ds_load_u16 v163, v163 offset:256
	ds_load_u16 v164, v164
	ds_load_u16 v172, v172
	ds_load_u16 v178, v184
	ds_load_u16 v179, v179 offset:256
	ds_load_u16 v183, v183 offset:256
	ds_load_u16 v184, v184 offset:256
	ds_load_u16 v185, v185 offset:256
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_u16 v189, v190
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_u16 v190, v190 offset:256
	ds_load_u16 v191, v191 offset:256
	ds_load_u16 v192, v192 offset:256
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v201, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v201, 0, v201
	ds_store_b32 v201, v177
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v177.h, v137.l
	v_mov_b16_e64 v177.l, v0.l
	v_mov_b16_e64 v137.l, v0.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v177
	scratch_load_b32 v177, off, off offset:856 ; 4-byte Folded Reload
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v137
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.h, v141.l
	v_mov_b16_e64 v141.l, v0.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s75, s5, s3
	s_and_b32 s73, s15, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v137
	v_cmp_neq_f32_e64 s38, 0xff800000, v141
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v137, 0, 1, s73
	s_and_b32 s87, s11, s39
	s_and_b32 s83, s104, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v0.h, 8, v137.l
	v_cndmask_b32_e64 v137, 0, 1, s75
	v_or_b16 v141.h, v137.l, v0.h
	v_cndmask_b32_e64 v137, 0, 1, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v0.h, 8, v137.l
	v_cndmask_b32_e64 v137, 0, 1, s87
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v137.h, v142.l
	v_mov_b16_e64 v142.l, v0.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v141.l, v137.l, v0.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
	v_cmp_neq_f32_e64 s3, 0xff800000, v137
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v137.h, v143.l
	v_mov_b16_e64 v143.l, v0.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s74, s34, vcc_lo
	s_and_b32 s77, vcc_hi, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v137
	v_cmp_neq_f32_e64 s38, 0xff800000, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v137, 0, 1, s74
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v143.h, v136.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s90, s10, s39
	s_and_b32 s84, s23, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v0.h, 8, v137.l
	v_cndmask_b32_e64 v137, 0, 1, s77
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s23, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v142, 0, 1, s84
	v_or_b16 v137.h, v137.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v137.l, v142.l
	v_cndmask_b32_e64 v142, 0, 1, s90
	v_lshlrev_b16 v0.h, 8, v137.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v137.l, v142.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v142, 16, v144
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v137.l, v137.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v0.h, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v144, v177, v150
	v_mul_f32_e32 v64, v177, v64
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v136, v144, v143
	scratch_load_b32 v144, off, off offset:860 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v143, v144, v140 :: v_dual_lshlrev_b32 v142, 16, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v140, 0x3fb8aa3b, v142
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v142.h, v134.l
	v_mov_b16_e64 v142.l, v0.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v144, v59
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v140, v143, v135
	scratch_load_b32 v143, off, off offset:864 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v135, 16, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v134, 0x3fb8aa3b, v135
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v135, 16, v147
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v139, v143, v139
	v_mul_f32_e32 v58, v143, v58
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v134, v139, v142
	scratch_load_b32 v142, off, off offset:868 ; 4-byte Folded Reload
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v139.h, v133.l
	v_mov_b16_e64 v139.l, v0.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v133, 0x3fb8aa3b, v135
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v138, v142, v138 :: v_dual_lshlrev_b32 v135, 16, v172
	v_mul_f32_e32 v53, v142, v53
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v133, v138, v139
	scratch_load_b32 v139, off, off offset:872 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v138, v139, v85 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v135
	v_mul_f32_e32 v50, v139, v50
	v_mul_f32_e32 v52, v139, v52
	v_mul_f32_e32 v60, v177, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, v138, v132
	scratch_load_b32 v138, off, off offset:876 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v135, v138, v62 :: v_dual_lshlrev_b32 v132, 16, v164
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v132 :: v_dual_mul_f32 v47, v138, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v138, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v62, v135, v131
	scratch_load_b32 v135, off, off offset:880 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v131, 16, v161
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v132, v135, v61 :: v_dual_mul_f32 v61, 0x3fb8aa3b, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v131.h, v129.l
	v_mov_b16_e64 v131.l, v0.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v135, v46
	v_mul_f32_e32 v45, v135, v45
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v61, v132, v130
	scratch_load_b32 v132, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v63, v132, v63 :: v_dual_lshlrev_b32 v130, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v129, 0x3fb8aa3b, v130 :: v_dual_mul_f32 v44, v132, v44
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v132, v43
	v_mul_f32_e32 v41, v132, v41
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v129, v63, v131
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v63, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v63, v64, v128
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v64, 16, v188
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v128, v144, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v64
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v64, 16, v189
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v56, v128, v127
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v127, v143, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v55, 0x3fb8aa3b, v64 :: v_dual_lshlrev_b32 v64, 16, v174
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v127, v126
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v126, v142, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v54, 0x3fb8aa3b, v64
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v64, 16, v178
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v64, v50, v124
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v50, 16, v176
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v47, v123
	v_dual_fmac_f32 v54, v126, v125 :: v_dual_lshlrev_b32 v47, 16, v175
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v46, v122
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v46, 16, v146
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v46, v60, v121
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v60, 16, v148
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v60, v59, v93 :: v_dual_lshlrev_b32 v59, 16, v158
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v59, v58, v92
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v58, 16, v160
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v58, v53, v91
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v53, 16, v163
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v53, v52, v90
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v52, 16, v162
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v52, v51, v89
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v51, 16, v193
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v51, v45, v88
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v45, 16, v192
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v45, v44, v87 :: v_dual_lshlrev_b32 v44, 16, v190
	scratch_load_b32 v87, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v44, 0x3fb8aa3b, v44
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v43, v86
	scratch_load_b32 v86, off, off offset:844 ; 4-byte Folded Reload
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v43, 16, v185
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v33, v87, v33
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v49, v86, v49
	v_mul_f32_e32 v42, v86, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, v42, v72
	scratch_load_b32 v72, off, off offset:848 ; 4-byte Folded Reload
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v42, 16, v184
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_mul_f32 v37, v72, v37
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v72, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v42, v37, v71
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v37, 16, v183
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.l, v0.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v87, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v71, v36, v70 :: v_dual_lshlrev_b32 v36, 16, v151
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v69, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v36, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v69, v49, v37
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v37.h, v66.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v36, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v49, v41, v37
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v37.h, v68.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v41, 0x3fb8aa3b, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v67.l
	v_mov_b16_e32 v36.l, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v41, v34, v37 :: v_dual_lshlrev_b32 v34, 16, v179
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v66, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v66, v33, v36
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	scratch_load_b32 v33, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v38
	scratch_load_b32 v33, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v39
	scratch_load_b32 v33, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v40
	scratch_load_b32 v33, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v48
	scratch_load_b32 v33, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v159
	scratch_load_b32 v33, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v141
	scratch_load_b32 v33, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v33, off, off offset:336
	scratch_load_b32 v34, off, off offset:404
	scratch_load_b32 v36, off, off offset:408
	scratch_load_b32 v37, off, off offset:412
	scratch_load_b32 v39, off, off offset:444
	scratch_load_b32 v40, off, off offset:456
	scratch_load_b32 v48, off, off offset:460
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v38, 0, v33
	s_waitcnt vmcnt(5)
	ds_load_u8_d16_hi v33, v34
	ds_load_u8_d16 v34, v34 offset:128
	s_waitcnt vmcnt(4) lgkmcnt(0)
	ds_load_u8_d16_hi v34, v36
	ds_load_u8_d16 v36, v36 offset:128
	s_waitcnt vmcnt(3) lgkmcnt(0)
	ds_load_u8_d16_hi v36, v37
	ds_load_u8_d16 v37, v37 offset:128
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v37, v38
	ds_load_u8_d16 v33, v38 offset:128
	scratch_load_b32 v38, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s47, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v225, 0xff800000, v129, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s66, 1, v33.l
	v_and_b16 v33.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v140, s66
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s50, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	scratch_load_b32 v34, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v228, 0xff800000, v69, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s63, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s42, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	scratch_load_b32 v36, off, off offset:420 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v226, 0xff800000, v46, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s65, 1, v33.l
	v_and_b16 v33.l, 1, v37.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v133, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s46, 1, v33.l
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v33, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v34 offset:128
	s_waitcnt vmcnt(0)
	ds_load_u8_d16 v34, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v36 offset:128
	ds_load_u8_d16 v36, v38
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v38 offset:128
	scratch_load_b32 v38, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v227, 0xff800000, v60, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s62, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, 0xff800000, v85, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v223, 0xff800000, v59, s40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s64, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	scratch_load_b32 v34, off, off offset:432 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v62, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s45, 1, v33.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v224, 0xff800000, v58, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s61, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	scratch_load_b32 v36, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v61, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v221, 0xff800000, v53, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(2)
	ds_load_u8_d16 v37, v38
	ds_load_u8_d16 v33, v38 offset:128
	scratch_load_b32 v38, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s49, 1, v33.l
	s_waitcnt vmcnt(2)
	ds_load_u8_d16 v33, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v34 offset:128
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v34, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v36 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v222, 0xff800000, v52, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s55, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v252, 0xff800000, v49, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v51, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s57, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	scratch_load_b32 v34, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v251, 0xff800000, v63, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v220, 0xff800000, v45, s41
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt vmcnt(1)
	ds_load_u8_d16 v36, v38
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v39 offset:128
	ds_load_u8_d16 v38, v38 offset:128
	s_waitcnt lgkmcnt(1)
	v_and_b16 v33.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s54, 1, v33.l
	ds_load_u8_d16 v33, v39
	scratch_load_b32 v39, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v249, 0xff800000, v56, s54
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s59, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	ds_load_u8_d16 v36, v40 offset:128
	s_waitcnt vmcnt(0) lgkmcnt(0)
	ds_load_u8_d16_hi v36, v39 offset:128
	v_cmp_eq_u16_e64 s44, 1, v33.l
	ds_load_u8_d16 v33, v34
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v34 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v250, 0xff800000, v55, s59
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u8_d16 v34, v39
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v48 offset:128
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v44, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s56, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v247, 0xff800000, v54, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v215, 0xff800000, v43, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v33.l
	ds_load_u8_d16 v33, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v248, 0xff800000, v64, s58
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s53, 1, v33.l
	ds_load_u8_d16 v33, v48
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v229, 0xff800000, v50, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s60, 1, v33.l
	v_and_b16 v33.l, 1, v38.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v230, 0xff800000, v47, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s52, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v217, 0xff800000, v41, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s51, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v42, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v132, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v71, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s48, 1, v33.l
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v33, 16, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v66, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v33, 0x3fb8aa3b, v33
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v33, v34, v0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b16 v0.h, 1, v37.h
	.loc	1 882 26                        ; attention.py:882:26
	scratch_load_b32 v34, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s68, 1, v0.h
	v_and_b16 v0.h, 1, v37.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v136, s68
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s67, 1, v0.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v134, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v0.h, v0.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v33, s67
	scratch_load_b32 v33, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, 0, v34
	ds_store_2addr_stride64_b32 v34, v138, v225 offset1:2
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v139, v228 offset1:2
	scratch_load_b32 v33, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v136, v226 offset1:2
	scratch_load_b32 v33, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v158, v227 offset1:2
	scratch_load_b32 v33, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v164, v223 offset1:2
	scratch_load_b32 v33, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v157, v224 offset1:2
	scratch_load_b32 v33, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v135, v221 offset1:2
	scratch_load_b32 v33, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v159, v222 offset1:2
	scratch_load_b32 v33, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v252, v219 offset1:2
	scratch_load_b32 v33, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v251, v220 offset1:2
	scratch_load_b32 v33, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v249, v217 offset1:2
	scratch_load_b32 v33, off, off offset:604 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v250, v218 offset1:2
	scratch_load_b32 v33, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v247, v215 offset1:2
	scratch_load_b32 v33, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v248, v216 offset1:2
	scratch_load_b32 v33, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v229, v213 offset1:2
	scratch_load_b32 v33, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v33, v230, v214 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:388
	scratch_load_b32 v42, off, off offset:624
	scratch_load_b32 v43, off, off offset:628
	scratch_load_b32 v44, off, off offset:632
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v33, 0, v33
	s_waitcnt vmcnt(2)
	ds_load_2addr_b32 v[47:48], v42 offset1:32
	s_waitcnt vmcnt(1)
	ds_load_2addr_b32 v[49:50], v43 offset1:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[51:52], v44 offset1:32
	ds_load_2addr_b32 v[131:132], v33 offset0:64 offset1:96
	ds_load_2addr_b32 v[129:130], v42 offset0:64 offset1:96
	ds_load_2addr_b32 v[127:128], v43 offset0:64 offset1:96
	ds_load_2addr_b32 v[125:126], v44 offset0:64 offset1:96
	ds_load_2addr_b32 v[45:46], v33 offset1:32
	scratch_load_b32 v33, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[123:124], v33 offset1:32
	ds_load_2addr_b32 v[71:72], v33 offset0:64 offset1:96
	scratch_load_b32 v33, off, off offset:640 ; 4-byte Folded Reload
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v35, v45, v45
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v47, v47 :: v_dual_max_f32 v37, v49, v49
	v_dual_max_f32 v38, v51, v51 :: v_dual_max_f32 v39, v52, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v34, v34, v34
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[121:122], v33 offset1:32
	ds_load_2addr_b32 v[69:70], v33 offset0:64 offset1:96
	scratch_load_b32 v33, off, off offset:644 ; 4-byte Folded Reload
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[55:56], v33 offset1:32
	ds_load_2addr_b32 v[67:68], v33 offset0:64 offset1:96
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	scratch_load_b32 v33, off, off offset:648 ; 4-byte Folded Reload
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt vmcnt(0)
	ds_load_2addr_b32 v[53:54], v33 offset1:32
	ds_load_2addr_b32 v[65:66], v33 offset0:64 offset1:96
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v131 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v36
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v34, v36
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v37, v34, v37
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v37, v48, v48
	v_max_f32_e32 v34, v38, v34
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v38
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v38
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v38
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v35, 31
	v_mov_b32_dpp v35, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s0, v36, 31
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v37, v36
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_dual_mov_b32 v35, s1 :: v_dual_max_f32 v36, v36, v37
	v_mov_b32_dpp v37, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v34, v34, v38
	v_max_f32_e32 v38, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v34, 31
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v38, v37
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v34, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, v38, v39
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s5, v36, 31
	v_mov_b32_e32 v36, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v39
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v39
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s8, v37, 31
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v37, s3 :: v_dual_mov_b32 v40, s8
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v39 :: v_dual_mov_b32 v39, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v38, 31
	v_dual_mov_b32 v38, s4 :: v_dual_mov_b32 v41, s9
	ds_store_b128 v186, v[34:37]
	ds_store_b128 v186, v[38:41] offset:16
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v131, v131 :: v_dual_max_f32 v35, v129, v129
	v_dual_max_f32 v36, v127, v127 :: v_dual_max_f32 v37, v125, v125
	v_max_f32_e32 v38, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v129 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v127 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v132, v132
	v_max_f32_e32 v36, v37, v36
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, v36, v37
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	v_mov_b32_dpp v33, v132 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v35, v35, v37
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v130 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v36, v36, v37
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v35, v35, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s2, v35, 31
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v130, v130
	v_max_f32_e32 v34, v35, v34
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v33, s0 :: v_dual_max_f32 v34, v34, v35
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_dpp v35, v128 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v34, 31
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v34, s1
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v128, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v37, v35
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v36, s3 :: v_dual_max_f32 v37, v37, v37
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s8, v35, 31
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v35, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v39, s8
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp176:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s9
	ds_store_b128 v186, v[33:36] offset:32
	ds_store_b128 v186, v[37:40] offset:48
	v_mov_b32_dpp v33, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v123, v123 :: v_dual_max_f32 v35, v121, v121
	v_dual_max_f32 v36, v55, v55 :: v_dual_max_f32 v37, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v54, v54
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v35, v34
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp188:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp189:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v34, v35
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp193:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp194:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp195:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp196:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp197:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
.Ltmp198:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp199:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v36, v35
.Ltmp200:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v36, v34, -1, -1 op_sel:[1,0]
.Ltmp201:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v36
.Ltmp202:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp203:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v34, v124, v124
.Ltmp204:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp205:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp207:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
.Ltmp208:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp209:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v34, v34
	v_max_f32_e32 v35, v35, v37
.Ltmp210:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp211:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp213:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp214:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp215:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp216:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp217:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp218:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp220:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
.Ltmp221:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v37
.Ltmp222:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s2, v35, 31
.Ltmp223:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v122, v122
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v34, v35, v34
.Ltmp224:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp225:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v56, v56
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp226:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v36, 31
.Ltmp227:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v35
.Ltmp228:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v35, v35, v35
.Ltmp229:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp232:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp233:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp234:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp235:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp236:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp237:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp238:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v33, -1, -1 op_sel:[1,0]
.Ltmp239:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v33, v33, v35
.Ltmp240:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s4, v33, 31
.Ltmp241:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp242:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v61, s4 :: v_dual_max_f32 v34, v34, v35
	v_mov_b32_dpp v35, v56 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_mov_b32 v62, s5
	v_max_f32_e32 v35, v37, v35
.Ltmp244:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v54 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp245:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp246:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp247:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp248:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp250:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp251:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp252:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp253:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp254:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp255:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp256:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp257:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp258:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp259:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v35, v38
.Ltmp260:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s8, v35, 31
.Ltmp261:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_mov_b32 v63, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp262:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v37, 31
	ds_load_b128 v[85:88], v170
	ds_load_b128 v[41:44], v170 offset:16
	ds_load_b128 v[37:40], v170 offset:32
	ds_load_b128 v[33:36], v170 offset:48
	v_mov_b32_e32 v57, s0
	v_mov_b32_e32 v59, s2
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v64, s9
	s_barrier
	ds_store_b128 v186, v[57:60]
	ds_store_b128 v186, v[61:64] offset:16
	v_mov_b32_dpp v57, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp263:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v58, v71, v71 :: v_dual_max_f32 v59, v69, v69
	v_dual_max_f32 v60, v67, v67 :: v_dual_max_f32 v61, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v62, v66, v66
	v_max_f32_e32 v57, v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp264:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp265:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v57, v58
.Ltmp266:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp267:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v59, v58
.Ltmp268:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp269:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp270:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp271:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp272:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp273:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp274:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp275:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp276:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp277:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp278:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s0, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp279:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp280:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp281:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp282:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp283:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v60, v59
.Ltmp284:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v60, v58, -1, -1 op_sel:[1,0]
.Ltmp285:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v58, v58, v60
.Ltmp286:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v60, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s1, v58, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp287:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v58, v72, v72
	v_max_f32_e32 v60, v61, v60
.Ltmp288:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp289:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v58, v57
.Ltmp290:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp291:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v59, v61
.Ltmp292:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp293:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp294:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp295:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp297:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp298:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp299:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp300:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v60 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp301:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v60, v60, v61
.Ltmp302:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp303:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v59, v59, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp304:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v61, v60, -1, -1 op_sel:[1,0]
	v_readlane_b32 s2, v59, 31
.Ltmp305:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v58, v59, v58
.Ltmp306:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp307:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	v_max_f32_e32 v61, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v59, v59, v59
.Ltmp308:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s3, v60, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp309:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v59
.Ltmp310:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v60, s3 :: v_dual_max_f32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp311:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v59
.Ltmp312:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp313:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp314:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp315:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp316:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp317:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp318:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v59, v58 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp319:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v58, v58, v59
.Ltmp320:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp321:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
	v_max_f32_e32 v57, v57, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp322:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v59, v58, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v57, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp323:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp324:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v57, s0 :: v_dual_max_f32 v58, v58, v59
	v_mov_b32_dpp v59, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s5, v58, 31
.Ltmp325:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_mov_b32 v58, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v59, v61, v59
.Ltmp326:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp327:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v62, v61
.Ltmp328:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp329:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp330:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp331:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp332:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp333:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp334:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp335:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp336:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v59 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp337:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp338:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v61 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp339:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v61, v61, v62
.Ltmp340:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v59, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp341:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v59, v59, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp342:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v62, v61, -1, -1 op_sel:[1,0]
	v_readlane_b32 s8, v59, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp343:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v62, v62, v62 :: v_dual_mov_b32 v59, s2
.Ltmp344:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v63, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp345:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, s5
.Ltmp346:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s9, v61, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v61, s4 :: v_dual_mov_b32 v64, s9
	ds_store_b128 v186, v[57:60] offset:32
	ds_store_b128 v186, v[61:64] offset:48
	v_mov_b32_e32 v63, v85
.Ltmp347:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v88, v88
.Ltmp348:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp349:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v64, v85, v85 :: v_dual_mov_b32 v61, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp350:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp351:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v62, v86, v86
	v_max_f32_e32 v60, v88, v88
.Ltmp352:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v58, v87
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp353:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v59, v87, v87 :: v_dual_max_f32 v172, v57, v60
.Ltmp354:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v181, v181
.Ltmp355:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v185, v64, v63
.Ltmp356:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v58, v58 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v86, v41 :: v_dual_mov_b32 v87, v42
.Ltmp357:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v184, v62, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp358:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v181, v57, v185 :: v_dual_max_f32 v58, v58, v58
.Ltmp359:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp360:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v41 :: v_dual_mov_b32 v88, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp361:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v181
.Ltmp362:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v183, v59, v58
.Ltmp363:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp364:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp365:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp366:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
.Ltmp367:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v85, v44, v44
.Ltmp368:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp369:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v44, v44, v44
.Ltmp370:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp371:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v85, v44
.Ltmp372:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v95, v95
.Ltmp373:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp374:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v95, v44, v140
.Ltmp375:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp376:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v52, v95
.Ltmp377:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp378:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
.Ltmp379:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp380:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v45, -1, -1 op_sel:[1,0]
.Ltmp381:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp382:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v57
.Ltmp383:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off          ; 4-byte Folded Reload
.Ltmp384:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp385:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v45, 31
.Ltmp386:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v86, v86
.Ltmp387:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp388:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v152, v41, v45 :: v_dual_max_f32 v41, v87, v87
.Ltmp389:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp390:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v151, v42, v41
	v_max_f32_e32 v41, v88, v88
.Ltmp391:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v42, v244, v244
.Ltmp392:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp393:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v150, v43, v41
.Ltmp394:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v243, v243
	v_dual_max_f32 v244, v42, v151 :: v_dual_max_f32 v43, v173, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v243, v41, v152
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v42, v48, v244 :: v_dual_max_f32 v173, v43, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_sub_f32_e32 v41, v46, v243
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v50, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0, v41, s93
.Ltmp395:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp396:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s95
.Ltmp397:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v46, s5
	v_readlane_b32 s8, v43, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp405:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v44, v45 :: v_dual_mov_b32 v45, s4
.Ltmp406:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v44, 31
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v48, s9 :: v_dual_max_f32 v57, v57, v57
.Ltmp407:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v57, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v57
	scratch_store_b32 off, v57, off         ; 4-byte Folded Spill
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp408:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp409:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v47, -1, -1 op_sel:[1,0]
.Ltmp410:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v47, v57
.Ltmp411:
	.loc	1 884 24                        ; attention.py:884:24
	scratch_load_b32 v57, off, off offset:4 ; 4-byte Folded Reload
.Ltmp412:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v47, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v47, s8 :: v_dual_mov_b32 v42, s1
.Ltmp413:
	.loc	1 884 24                        ; attention.py:884:24
	s_waitcnt vmcnt(0)
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v57, v57, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v57
	scratch_store_b32 off, v57, off offset:4 ; 4-byte Folded Spill
.Ltmp414:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp415:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp416:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp417:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v49, -1, -1 op_sel:[1,0]
.Ltmp418:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v57
.Ltmp419:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v154, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp420:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v49, 31
.Ltmp421:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v154, v57, v172 :: v_dual_mov_b32 v43, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v154
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s100
.Ltmp422:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp423:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp424:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v57
.Ltmp425:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v51, 31
.Ltmp426:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[49:52], v170
	ds_load_b128 v[85:88], v170 offset:16
	ds_load_b128 v[61:64], v170 offset:32
	ds_load_b128 v[57:60], v170 offset:48
.Ltmp427:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v44, s3
	ds_store_b128 v186, v[41:44]
	ds_store_b128 v186, v[45:48] offset:16
.Ltmp428:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v42, v37 :: v_dual_mov_b32 v43, v38
.Ltmp429:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v37, v37 :: v_dual_mov_b32 v44, v39
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp430:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp431:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp432:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v46, v33
.Ltmp433:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp434:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v47, v34
.Ltmp435:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_mov_b32 v48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp436:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp437:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v232, v37, v42 :: v_dual_max_f32 v37, v43, v43
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp438:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp439:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp440:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp441:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v231, v38, v37
	v_max_f32_e32 v37, v44, v44
	v_max_f32_e32 v41, v40, v40
.Ltmp442:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp443:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v36, v36
.Ltmp444:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp445:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v179, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp446:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v37, v105, v105 :: v_dual_max_f32 v40, v40, v40
.Ltmp447:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v44, v86
.Ltmp448:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp449:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v42, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp450:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v105, v37, v232
.Ltmp451:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v178, v41, v40
	v_max_f32_e32 v43, v85, v85
	v_max_f32_e32 v174, v45, v36
.Ltmp452:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v36, v196, v196 :: v_dual_sub_f32 v37, v131, v105
.Ltmp453:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v45, v86, v86
.Ltmp454:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp455:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v196, v36, v174
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v126, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp456:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp457:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp458:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v36, v36, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp459:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
.Ltmp460:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v37, v37, v38
.Ltmp461:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v149, v149
.Ltmp462:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v37, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp463:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v149, v38, v231
.Ltmp464:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v37, v46, v46 :: v_dual_mov_b32 v46, v87
.Ltmp465:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v129, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp466:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v177, v33, v37
	v_max_f32_e32 v33, v47, v47
	v_max_f32_e32 v47, v87, v87
.Ltmp467:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp468:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
.Ltmp469:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v176, v34, v33 :: v_dual_max_f32 v33, v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp470:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v34, v168, v168 :: v_dual_max_f32 v175, v35, v33
	v_max_f32_e32 v33, v119, v119
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v168, v34, v176 :: v_dual_max_f32 v35, v195, v195
	v_max_f32_e32 v119, v33, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp471:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp472:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v34, v130, v168 :: v_dual_max_f32 v195, v35, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v33, v132, v119
.Ltmp473:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp474:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v128, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp475:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp476:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
.Ltmp477:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v38, v38, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp478:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s82
	v_cndmask_b32_e64 v33, 0, v33, s76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp479:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
.Ltmp480:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp481:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s85
.Ltmp482:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v38, v38, v39
.Ltmp483:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v107, v107
.Ltmp484:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp485:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v38, 31
.Ltmp486:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v107, v39, v179
.Ltmp487:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp488:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v127, v107
.Ltmp489:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp490:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
.Ltmp491:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp492:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v33, -1, -1 op_sel:[1,0]
.Ltmp493:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v37
.Ltmp494:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp495:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s91
.Ltmp496:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp497:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v37
	v_add_f32_dpp v39, v39, v39 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp498:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_readlane_b32 s5, v34, 31
.Ltmp499:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v35, v35, v37
.Ltmp500:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v34, s1
	v_mov_b32_e32 v38, s5
.Ltmp501:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v39, v39, v39 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp502:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v35, 31
.Ltmp503:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_mov_b32 v37, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v39, v39, v39 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp504:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v39, -1, -1 op_sel:[1,0]
.Ltmp505:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v39, v40 :: v_dual_max_f32 v40, v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp506:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v39, 31
.Ltmp507:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v109, v40, v178
.Ltmp508:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v39, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v35, s2 :: v_dual_sub_f32 v40, v125, v109
.Ltmp509:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s92
.Ltmp510:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v40, v40, v40 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v40, v40, v40 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v40, v40, v40 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v40, v40, v40 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp511:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v41, v40, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp512:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp513:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v88, v88
.Ltmp514:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp515:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v40, 31
	v_mov_b32_e32 v40, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp516:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v88, v88
.Ltmp517:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, s3
	ds_store_b128 v186, v[33:36] offset:32
	ds_store_b128 v186, v[37:40] offset:48
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
	v_dual_max_f32 v162, v33, v40 :: v_dual_max_f32 v33, v155, v155
	v_max_f32_e32 v39, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_max_f32 v87, v35, v34 :: v_dual_max_f32 v34, v36, v36
	v_max_f32_e32 v233, v41, v48
.Ltmp526:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp527:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v155, v33, v87
.Ltmp528:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v86, v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v38, v38 :: v_dual_sub_f32 v33, v123, v155
	v_max_f32_e32 v163, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp529:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp530:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp531:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
.Ltmp532:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_max_f32 v34, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp533:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
.Ltmp534:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v76, v34, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp535:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v42, v42 :: v_dual_sub_f32 v34, v121, v76
	v_max_f32_e32 v161, v43, v33
	v_max_f32_e32 v33, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp536:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp537:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v160, v45, v33 :: v_dual_max_f32 v33, v46, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v234, v47, v33
.Ltmp538:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v97, v97
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp539:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp540:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
.Ltmp541:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_max_f32 v35, v156, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp542:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
.Ltmp543:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v156, v35, v163
	v_max_f32_e32 v34, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v55, v156
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s87
.Ltmp544:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v35, v35, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp545:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp546:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v81, v81
.Ltmp547:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s2, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp548:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v81, v36, v162
	v_max_f32_e32 v35, v101, v101
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v36, v53, v81 :: v_dual_max_f32 v101, v35, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v56, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp549:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp550:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp551:
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
.Ltmp552:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp553:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v36, v36, v37 :: v_dual_max_f32 v37, v103, v103
.Ltmp554:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v36, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp555:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v103, v37, v233 :: v_dual_mov_b32 v36, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v54, v103
.Ltmp556:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[53:56], v170
	ds_load_b128 v[49:52], v170 offset:16
	ds_load_b128 v[45:48], v170 offset:32
	ds_load_b128 v[41:44], v170 offset:48
.Ltmp557:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v97, v33, v161
	v_max_f32_e32 v99, v34, v160
.Ltmp558:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp559:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp560:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp561:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v33, v124, v97 :: v_dual_sub_f32 v34, v122, v99
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp562:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp563:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v34, 0, v34, s80
.Ltmp564:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp565:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp566:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp567:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp568:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp569:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v33, s0
	v_readlane_b32 s5, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp570:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp571:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v34, s1
	v_readlane_b32 s8, v35, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp572:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp573:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, s2 :: v_dual_mov_b32 v38, s5
	v_mov_b32_e32 v39, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_readlane_b32 s9, v37, 31
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s9
	ds_store_b128 v186, v[33:36]
	ds_store_b128 v186, v[37:40] offset:16
.Ltmp574:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v34, v61 :: v_dual_max_f32 v33, v64, v64
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp575:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v61, v61 :: v_dual_mov_b32 v36, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp576:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v63
.Ltmp577:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v40, v64, v64 :: v_dual_max_f32 v37, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp578:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp579:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp580:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp581:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v92, v33, v40 :: v_dual_max_f32 v33, v111, v111
	v_max_f32_e32 v39, v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v203, v35, v34 :: v_dual_max_f32 v34, v36, v36
.Ltmp582:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v62, v57 :: v_dual_mov_b32 v63, v58
.Ltmp583:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v60, v60
.Ltmp584:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v111, v33, v203
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp585:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v201, v37, v34
	v_max_f32_e32 v34, v38, v38
.Ltmp586:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp587:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v71, v111
.Ltmp588:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v93, v39, v34
.Ltmp589:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v64, v59
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp590:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp591:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v60, v60, v60
.Ltmp592:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp593:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v59, v59, v59 :: v_dual_max_f32 v88, v61, v60
.Ltmp594:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp595:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp596:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
.Ltmp597:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp598:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp599:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s0, v33, 31
.Ltmp600:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v113, v34, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp601:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v62, v62 :: v_dual_sub_f32 v34, v69, v113
	v_max_f32_e32 v91, v57, v33
	v_max_f32_e32 v33, v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp602:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp603:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v90, v58, v33 :: v_dual_max_f32 v33, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v89, v59, v33
.Ltmp604:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v197, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v197, v33, v91
.Ltmp605:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp606:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v72, v197
.Ltmp607:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp608:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
.Ltmp609:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp610:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp611:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
.Ltmp612:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v34, v34, v35
.Ltmp613:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v115, v115
.Ltmp614:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp615:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v34, 31
.Ltmp616:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v115, v35, v93 :: v_dual_max_f32 v34, v198, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp617:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp618:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v35, v67, v115 :: v_dual_max_f32 v198, v34, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp619:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v33, v33, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp620:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v34, v70, v198
.Ltmp621:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp622:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
.Ltmp623:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp624:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s75
.Ltmp625:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v33, 31
	v_mov_b32_e32 v33, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp626:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp627:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s71
	v_readlane_b32 s0, v255, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp628:
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
.Ltmp629:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v36, v35, -1, -1 op_sel:[1,0]
.Ltmp630:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v34, v34, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v35, v35, v36 :: v_dual_max_f32 v36, v117, v117
.Ltmp631:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s2, v35, 31
.Ltmp632:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v117, v36, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v35, v199, v199 :: v_dual_add_f32 v34, v34, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v65, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v199, v35, v89
.Ltmp633:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v34, 31
	v_mov_b32_e32 v34, s1
	v_cmp_gt_i32_e64 s1, s6, v204
.Ltmp634:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v68, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp635:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v36, v36, v36 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp636:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp637:
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
.Ltmp638:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v36, -1, -1 op_sel:[1,0]
.Ltmp639:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v35, v35, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v36, v36, v37
.Ltmp640:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v200, v200
.Ltmp641:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v36, 31
.Ltmp642:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v200, v37, v88 :: v_dual_add_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp643:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v36, s3 :: v_dual_sub_f32 v37, v66, v200
	v_readlane_b32 s8, v35, 31
	v_mov_b32_e32 v35, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp644:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
.Ltmp645:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v39, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp646:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s74
.Ltmp647:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v37, v37, v37 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v37, v37, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v37, v37, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp648:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp649:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v37, v38 :: v_dual_mov_b32 v38, s5
.Ltmp650:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v37, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v37, s4 :: v_dual_mov_b32 v40, s9
	ds_store_b128 v186, v[33:36] offset:32
	ds_store_b128 v186, v[37:40] offset:48
.Ltmp651:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v79
.Ltmp652:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp653:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s89, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 1, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s69, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 2, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s1, s69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s90, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 3, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s83, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 8, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s83, s1, s83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s91, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 9, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s72, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 10, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s72, s1, s72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s92, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 11, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s77, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 16, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s77, s1, s77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s93, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 17, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 18, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s94, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 19, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s70, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 24, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s95, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 25, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s71, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 26, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s96, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 27, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s76, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 32, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s97, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 33, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s73, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 34, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s98, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 35, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s74, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 40, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s99, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 41, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s75, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 42, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s87, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 43, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s1, s87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s78, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 48, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s88, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 49, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s79, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 50, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s85, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 51, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s85, s1, s85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s80, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 56, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s86, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 57, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s81, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 58, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s84, s27, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 59, v79
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s84, s1, s84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s7, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s7, s7, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s82, s27, v33
	scratch_load_b64 v[33:34], off, off offset:1092 ; 8-byte Folded Reload
.Ltmp654:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[35:36], null, s0, s6, v[33:34]
.Ltmp655:
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v34, v35, s0, 1
	v_readlane_b32 s0, v254, 22
	v_lshlrev_b32_e32 v33, 1, v35
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v254, 21
	v_cndmask_b32_e64 v36, 0x80000000, v36, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s92
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	v_cndmask_b32_e64 v37, 0x80000000, v37, s89
	s_clause 0x1
	buffer_load_u16 v121, v36, s[20:23], 0 offen
	buffer_load_u16 v122, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 24
	v_cndmask_b32_e64 v36, 0x80000000, v36, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s94
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s89
	s_clause 0x1
	buffer_load_u16 v123, v36, s[20:23], 0 offen
	buffer_load_u16 v124, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 26
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	v_readlane_b32 s0, v254, 20
	v_cndmask_b32_e64 v36, 0x80000000, v36, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s96
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s89
	s_clause 0x1
	buffer_load_u16 v125, v36, s[20:23], 0 offen
	buffer_load_u16 v126, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 34
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s97
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s89
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s98
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s89
	s_clause 0x1
	buffer_load_u16 v127, v36, s[20:23], 0 offen
	buffer_load_u16 v128, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 42
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s89, s1, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 48
	v_cndmask_b32_e64 v36, 0x80000000, v36, s89
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s87
	s_clause 0x1
	buffer_load_u16 v129, v36, s[20:23], 0 offen
	buffer_load_u16 v130, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s87, s1, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 56
	v_cndmask_b32_e64 v36, 0x80000000, v36, s87
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s85
	s_clause 0x1
	buffer_load_u16 v131, v36, s[20:23], 0 offen
	buffer_load_u16 v132, v37, s[20:23], 0 offen
	v_add_lshl_u32 v36, v35, s0, 1
	s_mul_i32 s0, s6, 58
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s85, s1, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 3
	v_cndmask_b32_e64 v36, 0x80000000, v36, s85
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s84
	s_clause 0x1
	buffer_load_u16 v133, v36, s[20:23], 0 offen
	buffer_load_u16 v134, v37, s[20:23], 0 offen
	v_add_lshl_u32 v37, v35, s0, 1
	s_mul_i32 s0, s6, 9
	v_add_lshl_u32 v36, v35, s6, 1
	v_add_lshl_u32 v38, v35, s0, 1
	s_mul_i32 s0, s6, 11
	v_cndmask_b32_e64 v37, 0x80000000, v37, s83
	v_add_lshl_u32 v39, v35, s0, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s69
	v_cndmask_b32_e64 v38, 0x80000000, v38, s72
	s_mul_i32 s0, s6, 17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s1, s70
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s77
	s_clause 0x3
	buffer_load_u16 v137, v39, s[20:23], 0 offen
	buffer_load_u16 v141, v38, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	v_add_lshl_u32 v40, v35, s0, 1
	s_mul_i32 s0, s6, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v57, v35, s0, 1
	s_mul_i32 s0, s6, 25
	v_cndmask_b32_e64 v39, 0x80000000, v40, s3
	v_add_lshl_u32 v58, v35, s0, 1
	s_mul_i32 s0, s6, 27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s73
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v59, v35, s0, 1
	s_mul_i32 s0, s6, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v60, v35, s0, 1
	s_mul_i32 s0, s6, 35
	v_add_lshl_u32 v61, v35, s0, 1
	s_mul_i32 s0, s6, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v62, v35, s0, 1
	s_mul_i32 s0, s6, 43
	v_add_lshl_u32 v63, v35, s0, 1
	s_mul_i32 s0, s6, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v64, v35, s0, 1
	s_mul_i32 s0, s6, 51
	v_add_lshl_u32 v65, v35, s0, 1
	s_mul_i32 s0, s6, 57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v66, v35, s0, 1
	s_mul_i32 s0, s6, 59
	v_add_lshl_u32 v35, v35, s0, 1
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v122.h, v137.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v121.h, v141.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v37.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v36.l
	v_cndmask_b32_e64 v36, 0x80000000, v57, s69
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s1, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v59, s69
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s69, s1, s71
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v58, s69
	s_clause 0x3
	buffer_load_u16 v142, v37, s[20:23], 0 offen
	buffer_load_u16 v143, v38, s[20:23], 0 offen
	buffer_load_u16 v144, v36, s[20:23], 0 offen
	buffer_load_u16 v145, v39, s[20:23], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v60, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v61, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v62, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v63, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v64, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s81
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v58, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s1, s82
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s7, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	s_clause 0x7
	buffer_load_u16 v146, v39, s[20:23], 0 offen
	buffer_load_u16 v147, v38, s[20:23], 0 offen
	buffer_load_u16 v148, v37, s[20:23], 0 offen
	buffer_load_u16 v187, v36, s[20:23], 0 offen
	buffer_load_u16 v188, v35, s[20:23], 0 offen
	buffer_load_u16 v189, v58, s[20:23], 0 offen
	buffer_load_u16 v190, v57, s[20:23], 0 offen
	buffer_load_u16 v191, v40, s[20:23], 0 offen
.Ltmp656:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[69:72], v170
	ds_load_b128 v[65:68], v170 offset:16
	ds_load_b128 v[61:64], v170 offset:32
	ds_load_b128 v[57:60], v170 offset:48
.Ltmp657:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v35, off, off offset:384 ; 4-byte Folded Reload
.Ltmp658:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v219, v220, v217
.Ltmp659:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v0.l
	v_mov_b16_e32 v38.h, v0.l
	v_mov_b16_e32 v39.h, v0.l
	v_mov_b16_e32 v40.h, v0.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v126.h, v142.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v125.h, v143.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v124.h, v144.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v123.h, v145.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v130.h, v146.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v129.h, v147.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v128.h, v148.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v127.h, v187.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v134.h, v188.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v133.h, v189.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v132.h, v190.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v131.h, v191.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	ds_store_b64 v35, v[33:34]
.Ltmp660:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v251, v249, v250
	v_max3_f32 v34, v247, v248, v229
	v_max3_f32 v35, v230, v225, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v33, v33, v34, v35
	v_max3_f32 v34, v226, v227, v223
	v_max3_f32 v35, v224, v221, v222
	v_max3_f32 v34, v34, v35, v36
	v_max_f32_e32 v35, v138, v139
	v_max3_f32 v36, v158, v164, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v136, v36
	v_max3_f32 v36, v135, v159, v252
	v_max3_f32 v33, v35, v36, v33
	v_dual_max_f32 v35, v218, v215 :: v_dual_max_f32 v36, v213, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v35, v35, v216, v36
.Ltmp661:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v0.l
.Ltmp662:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v34, v35
.Ltmp663:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp664:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp665:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v85, v205, v33, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v0.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v139, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v138, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s66, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s66
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v245
	v_perm_b32 v34, v35, v34, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v158, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v136, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s63, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v35, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s63
	v_permlanex16_b32 v37, v36, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v245
	v_perm_b32 v36, v37, v36, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v157, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v164, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s62, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s62
	v_permlanex16_b32 v39, v38, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v245
	v_perm_b32 v38, v39, v38, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v159, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v135, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.h, v0.l
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v205
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v39.h
	v_cmp_o_f32_e64 s61, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v135, 1, v135
	v_add3_u32 v135, v39, v135, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v135.h, s61
	v_permlanex16_b32 v135, v40, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v135, v40, v245
	v_perm_b32 v40, v135, v40, v246
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v135, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v135, v[121:122]
	scratch_load_b32 v121, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[123:124]
	scratch_load_b32 v121, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[125:126]
	scratch_load_b32 v121, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[127:128]
	scratch_load_b32 v121, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[129:130]
	scratch_load_b32 v121, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[131:132]
	scratch_load_b32 v121, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v121, v[133:134]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v121, v205, v85
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v135, off, off offset:716
	scratch_load_b32 v127, off, off offset:680
	scratch_load_b32 v131, off, off offset:684
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v122, v121
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v121, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v122, 0, v122, s3
	s_delay_alu instid0(VALU_DEP_1)
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
	v_mul_f32_e32 v8, v8, v122
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v122, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	ds_load_b128 v[239:242], v135
	scratch_load_b32 v135, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	ds_load_b128 v[127:130], v127
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v121, 0, v121
	ds_load_b128 v[131:134], v131
	ds_load_b128 v[235:238], v121 offset:2048
	ds_load_b128 v[123:126], v121
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[123:130], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:708
	scratch_load_b32 v127, off, off offset:712
	s_waitcnt vmcnt(2)
	ds_load_b128 v[145:148], v135
	s_waitcnt vmcnt(1)
	ds_load_b128 v[123:126], v123
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[123:130], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:736
	scratch_load_b32 v127, off, off offset:740
	s_waitcnt vmcnt(1)
	ds_load_b128 v[123:126], v123
	s_waitcnt vmcnt(0)
	ds_load_b128 v[127:130], v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[123:130], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:768
	scratch_load_b32 v130, off, off offset:772
	ds_load_b128 v[122:125], v122
	s_waitcnt vmcnt(0)
	ds_load_b128 v[187:190], v130
	scratch_load_b32 v130, off, off offset:760 ; 4-byte Folded Reload
	ds_load_b128 v[126:129], v126
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v251, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v0.l
	v_mov_b16_e32 v35.h, v0.l
	v_mov_b16_e32 v36.h, v0.l
	v_mov_b16_e32 v37.h, v0.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v0.l
	v_mov_b16_e32 v39.h, v0.l
	v_mov_b16_e32 v40.h, v0.l
	v_mov_b16_e32 v122.h, v0.l
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v126, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v252, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s55, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v245
	v_perm_b32 v34, v35, v34, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v250, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v249, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s54
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s54, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v245
	v_perm_b32 v36, v37, v36, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v248, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v247, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s54, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v245
	v_perm_b32 v38, v39, v38, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v230, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v229, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s53
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s53, v39, v39
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v122, v39, v122, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[208:211], v130
	scratch_load_b32 v130, off, off offset:748 ; 4-byte Folded Reload
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v122.h, s53
	v_permlanex16_b32 v122, v40, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v122, v40, v245
	v_perm_b32 v40, v122, v40, v246
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v122, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[235:242], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_load_b128 v[126:129], v126
	s_waitcnt vmcnt(0)
	ds_load_b128 v[135:138], v122
	scratch_load_b32 v122, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[131:138], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[130:133], v130
	v_mov_b32_e32 v138, v204
	scratch_load_b32 v134, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[126:133], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v126, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[141:144], v134
	scratch_load_b32 v134, off, off offset:756 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[191:194], v126
	scratch_load_b32 v126, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[187:194], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v228, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v0.l
	v_mov_b16_e32 v35.h, v0.l
	v_mov_b16_e32 v36.h, v0.l
	v_mov_b16_e32 v37.h, v0.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v0.l
	v_mov_b16_e32 v39.h, v0.l
	v_mov_b16_e32 v40.h, v0.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[204:207], v134
	ds_load_b128 v[187:190], v121 offset:6144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v225, v85
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v126
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.h, v0.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s47, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v245
	v_perm_b32 v34, v35, v34, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v227, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v226, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v245
	v_perm_b32 v36, v37, v36, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v224, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v223, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v245
	v_perm_b32 v38, v39, v38, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v222, v85
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
	v_sub_f32_e32 v39, v221, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v39, 0, v39, vcc_lo
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v126.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_and_b32_e32 v126, 1, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v126, v39, v126, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v126.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v126, v40, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v126, v40, v245
	v_perm_b32 v40, v126, v40, v246
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v126, off, off offset:696 ; 4-byte Folded Reload
	ds_load_b128 v[122:125], v122
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v126
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[122:129], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:720
	scratch_load_b32 v126, off, off offset:724
	s_waitcnt vmcnt(1)
	ds_load_b128 v[122:125], v122
	s_waitcnt vmcnt(0)
	ds_load_b128 v[126:129], v126
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[122:129], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v121 offset:4096
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v126, off, off offset:752
	scratch_load_b32 v121, off, off offset:784
	s_waitcnt vmcnt(1)
	ds_load_b128 v[126:129], v126
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v121
	scratch_load_b32 v121, off, off offset:788 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[122:129], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[130:137], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v220, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v0.l
	v_mov_b16_e32 v35.h, v0.l
	v_mov_b16_e32 v36.h, v0.l
	v_mov_b16_e32 v37.h, v0.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v0.l
	v_mov_b16_e32 v39.h, v0.l
	v_mov_b16_e32 v40.h, v0.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v219, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_permlanex16_b32 v35, v34, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v245
	v_perm_b32 v34, v35, v34, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v218, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v35, v36, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v217, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s52
	v_readlane_b32 s52, v254, 25
	v_readlane_b32 s53, v254, 26
	v_readlane_b32 s54, v254, 27
	v_readlane_b32 s55, v254, 28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	v_cmp_o_f32_e64 s3, v35, v35
	v_readlane_b32 s56, v254, 29
	v_readlane_b32 s57, v254, 30
	v_readlane_b32 s58, v254, 31
	v_and_b32_e32 v37, 1, v37
	v_readlane_b32 s59, v255, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v245
	v_perm_b32 v36, v37, v36, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v216, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v215, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v245
	v_perm_b32 v38, v39, v38, v246
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v214, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v213, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v0.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v39, v0, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v0.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v0, v40, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v0, v40, v245
	v_perm_b32 v40, v0, v40, v246
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[191:194], v121
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[141:148], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[204:211], v[33:40], v[9:16]
	v_dual_mov_b32 v204, v138 :: v_dual_mov_b32 v205, v85
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[187:194], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v0
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v0
.Ltmp666:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp667:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[33:40], v[17:24]
.Ltmp668:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v53, v0 :: v_dual_mov_b32 v0, v55
.Ltmp669:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v54
	v_mov_b32_e32 v53, v50
	v_mov_b32_e32 v38, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp670:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v55, v0 :: v_dual_mov_b32 v0, v56
	v_add_f32_e32 v34, v54, v34
.Ltmp671:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v54, v66
.Ltmp672:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v53
	v_add_f32_e32 v38, v70, v38
.Ltmp673:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp674:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v70, off, off offset:116 ; 4-byte Folded Reload
.Ltmp675:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp676:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v56, v0
.Ltmp677:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp678:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v66, v54
.Ltmp679:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v66, off, off offset:132 ; 4-byte Folded Reload
.Ltmp680:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp681:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v37, v69, v0 :: v_dual_mov_b32 v0, v71
.Ltmp682:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v69, off, off offset:120 ; 4-byte Folded Reload
.Ltmp683:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp684:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v39, v71, v0 :: v_dual_mov_b32 v0, v72
.Ltmp685:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v71, off, off offset:112 ; 4-byte Folded Reload
.Ltmp686:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp687:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v72, v0
.Ltmp688:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v49
.Ltmp689:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v72, off, off offset:108 ; 4-byte Folded Reload
.Ltmp690:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp691:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v49, v49, v0 :: v_dual_mov_b32 v0, v51
.Ltmp692:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp693:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v51, v51, v0 :: v_dual_mov_b32 v0, v52
.Ltmp694:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp695:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v0
.Ltmp696:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v65
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp697:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v65, v0 :: v_dual_mov_b32 v0, v67
.Ltmp698:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v46
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp699:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v55, v67, v0
.Ltmp700:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v67, off, off offset:128 ; 4-byte Folded Reload
.Ltmp701:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v68
.Ltmp702:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v46, v65
.Ltmp703:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp704:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v68, v0
.Ltmp705:
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v68, off, off offset:124 ; 4-byte Folded Reload
.Ltmp706:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v45
.Ltmp707:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v62, v65
.Ltmp708:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v42
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp709:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v0 :: v_dual_mov_b32 v0, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v42, v42, v65
.Ltmp710:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v65, v58
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp711:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v47, v47, v0 :: v_dual_mov_b32 v0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v58, v58, v65
.Ltmp712:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp713:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v48, v0
.Ltmp714:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v61
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp715:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v61, v61, v0 :: v_dual_mov_b32 v0, v63
.Ltmp716:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp717:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v63, v63, v0 :: v_dual_mov_b32 v0, v64
.Ltmp718:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp719:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v64, v0
.Ltmp720:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v41
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp721:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v0 :: v_dual_mov_b32 v0, v43
.Ltmp722:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp723:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v43, v43, v0 :: v_dual_mov_b32 v0, v44
.Ltmp724:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp725:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v0
.Ltmp726:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v0, v57
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp727:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v57, v57, v0 :: v_dual_mov_b32 v0, v59
.Ltmp728:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp729:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v59, v0 :: v_dual_mov_b32 v0, v60
.Ltmp730:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v0, v0 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp731:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v60, v60, v0
.Ltmp732:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v0, v169, v169
	v_max_f32_e32 v0, v0, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v169, v0
	v_mov_b32_e32 v169, v0
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v73
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v33, v66, v65
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v65, v65, v184
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v66, v73, v65
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v73, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v66, 0, v66, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v167
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v34, v67, v66
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v66, v167, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v183
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v67, v167, v66
	v_mov_b32_e32 v167, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v182
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v68, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v182, v182
	v_max_f32_e32 v67, v67, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v182, v67
	v_mov_b32_e32 v182, v67
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v68, 0, v68, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v171
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v36, v69, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v171, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v68, v68, v87
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v87, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v69, v171, v68
	v_mov_b32_e32 v171, v68
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v120
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v37, v70, v69
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v120, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v69, v69, v86
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v86, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v70, v120, v69
	v_mov_b32_e32 v120, v69
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v70, 0, v70, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v118
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v38, v71, v70
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v70, v118, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v163
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v118, v70
	v_mov_b32_e32 v118, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v71, 0, v71, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v39, v72, v71
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v116, v116
	v_max_f32_e32 v71, v71, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v116, v71
	v_mov_b32_e32 v116, v71
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v72, 0, v72, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v114
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v40, v73, v72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v72, v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v72, v152
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v114, v72 :: v_dual_mov_b32 v114, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v112
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v86, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v112, v112
	v_max_f32_e32 v86, v73, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v112, v86 :: v_dual_mov_b32 v112, v86
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v110
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v50, v87, v73 :: v_dual_max_f32 v73, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v87, v73, v150
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v110, v87
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v110, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v108
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v51, v110, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v108, v108 :: v_dual_mov_b32 v110, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v121, v73, v140
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v108, v121
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v108, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v106
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v52, v108, v73 :: v_dual_max_f32 v73, v106, v106
	v_mov_b32_e32 v108, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v122, v73, v161
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v106, v122
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v106, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v104
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v53, v106, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v104, v104 :: v_dual_mov_b32 v106, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v123, v73, v160
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v104, v123
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v104, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v54, v104, v73 :: v_dual_max_f32 v73, v102, v102
	v_dual_mov_b32 v104, v123 :: v_dual_mov_b32 v123, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v122, v54
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v124, v73, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v102, v124
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v102, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v100
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v102, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v100, v100
	v_mov_b32_e32 v102, v124
	v_dual_mov_b32 v124, v52 :: v_dual_mov_b32 v121, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v125, v73, v233
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v100, v125
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v100, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v56, v100, v73 :: v_dual_max_f32 v73, v98, v98
	v_dual_mov_b32 v100, v125 :: v_dual_mov_b32 v125, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v126, v73, v232
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v98, v126
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v98, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v96
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v45, v98, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v96, v96 :: v_dual_mov_b32 v98, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v126, v50 :: v_dual_max_f32 v127, v73, v231
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v96, v127
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v96, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v94
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v46, v96, v73 :: v_dual_max_f32 v73, v94, v94
	v_dual_mov_b32 v96, v127 :: v_dual_mov_b32 v127, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v128, v73, v179
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v94, v128
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v94, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v84
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v47, v94, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v84, v84
	v_mov_b32_e32 v94, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v128, v40 :: v_dual_max_f32 v129, v73, v178
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v84, v129
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v84, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v82
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v48, v84, v73 :: v_dual_max_f32 v73, v82, v82
	v_dual_mov_b32 v84, v129 :: v_dual_mov_b32 v129, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v130, v73, v203
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v82, v130
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v82, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v78
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v61, v82, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v78, v78
	v_mov_b32_e32 v82, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v130, v38 :: v_dual_max_f32 v131, v73, v201
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v78, v131
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v78, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v77
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v62, v78, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v77, v77 :: v_dual_mov_b32 v78, v131
	v_mov_b32_e32 v131, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v87, v62
	v_max_f32_e32 v93, v73, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v77, v93
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v77, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v75
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v77, v73
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v75, v75
	v_mov_b32_e32 v77, v93
	v_dual_mov_b32 v93, v56 :: v_dual_mov_b32 v86, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v92, v73, v92
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v75, v92
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v75, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v74
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v64, v75, v73 :: v_dual_max_f32 v73, v74, v74
	v_dual_mov_b32 v75, v92 :: v_dual_mov_b32 v92, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v85, v64 :: v_dual_max_f32 v132, v73, v177
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v74, v132
	.loc	1 897 23                        ; attention.py:897:23
	scratch_load_b32 v74, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v41, v74, v73
	scratch_load_b32 v74, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v153, v153
	v_mov_b32_e32 v72, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v133, v73, v176
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v153, v133
	v_mov_b32_e32 v153, v133
	v_mov_b32_e32 v133, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v212
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v74, v73
	scratch_load_b32 v74, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v212, v212
	v_dual_mov_b32 v71, v42 :: v_dual_max_f32 v134, v73, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v212, v134 :: v_dual_mov_b32 v212, v134
	v_mov_b32_e32 v134, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v166
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v43, v74, v73
	scratch_load_b32 v74, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v166, v166 :: v_dual_mov_b32 v70, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v135, v73, v174
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v166, v135 :: v_dual_mov_b32 v166, v135
	v_mov_b32_e32 v135, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v83
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v74, v73
	scratch_load_b32 v74, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v83, v83
	v_mov_b32_e32 v69, v44
	v_max_f32_e32 v91, v73, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v83, v91
	v_mov_b32_e32 v83, v91
	v_mov_b32_e32 v91, v46
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v180
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v57, v74, v73
	scratch_load_b32 v74, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v180, v180 :: v_dual_mov_b32 v68, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v90, v73, v90
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v180, v90 :: v_dual_mov_b32 v180, v90
	v_mov_b32_e32 v90, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v165
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v58, v74, v73
	scratch_load_b32 v74, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v165, v165
	v_mov_b32_e32 v67, v58
	v_max_f32_e32 v89, v73, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v73, v165, v89
	v_mov_b32_e32 v165, v89
	v_mov_b32_e32 v89, v48
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v202
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v59, v74, v73
	scratch_load_b32 v74, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v73, v202, v202 :: v_dual_mov_b32 v66, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v88, v73, v88
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v73, v202, v88 :: v_dual_mov_b32 v202, v88
	v_mov_b32_e32 v88, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v73, v73
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v60, v74, v73 :: v_dual_mov_b32 v73, v65
	v_mov_b32_e32 v74, v132
	v_mov_b32_e32 v132, v36
	v_mov_b32_e32 v65, v60
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v33, off, off offset:140
	scratch_load_b32 v34, off, off offset:144
	scratch_load_b32 v35, off, off offset:148
	scratch_load_b32 v36, off, off offset:160
	scratch_load_b64 v[41:42], off, off offset:256
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s0, v254, 18
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s8, v253, 9
	v_readlane_b32 s9, v253, 10
	v_readlane_b32 s10, v253, 11
	v_readlane_b32 s11, v253, 12
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s2, s7, s0
	v_readlane_b32 s0, v253, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s12, v253, 13
	v_readlane_b32 s13, v253, 14
	v_readlane_b32 s14, v253, 15
	v_readlane_b32 s15, v253, 16
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s0, s2, s0
	v_readlane_b32 s1, v253, 2
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v135, off offset:132
	scratch_store_b32 off, v134, off offset:128
	scratch_store_b32 off, v133, off offset:124
	scratch_store_b32 off, v132, off offset:120
	scratch_store_b32 off, v131, off offset:116
	scratch_store_b32 off, v130, off offset:112
	scratch_store_b32 off, v129, off offset:108
	scratch_store_b32 off, v128, off offset:104
	scratch_store_b32 off, v127, off offset:100
	scratch_store_b32 off, v126, off offset:96
	scratch_store_b32 off, v125, off offset:92
	scratch_store_b32 off, v124, off offset:88
	scratch_store_b32 off, v123, off offset:84
	scratch_store_b32 off, v122, off offset:80
	scratch_store_b32 off, v121, off offset:76
	scratch_store_b32 off, v93, off offset:72
	scratch_store_b32 off, v92, off offset:68
	scratch_store_b32 off, v91, off offset:64
	scratch_store_b32 off, v90, off offset:60
	scratch_store_b32 off, v89, off offset:56
	scratch_store_b32 off, v88, off offset:52
	scratch_store_b32 off, v87, off offset:48
	scratch_store_b32 off, v86, off offset:44
	scratch_store_b32 off, v85, off offset:40
	scratch_store_b32 off, v72, off offset:36
	scratch_store_b32 off, v71, off offset:32
	scratch_store_b32 off, v70, off offset:28
	scratch_store_b32 off, v69, off offset:24
	scratch_store_b32 off, v68, off offset:20
	scratch_store_b32 off, v67, off offset:16
	scratch_store_b32 off, v66, off offset:12
	scratch_store_b32 off, v65, off offset:8
	.loc	1 823 32                        ; attention.py:823:32
	s_mov_b32 s54, s18
	s_mov_b32 s55, s19
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x6                            ; 52-byte Folded Reload
	scratch_load_b64 v[42:43], off, off offset:264
	scratch_load_b64 v[43:44], off, off offset:280
	scratch_load_b64 v[44:45], off, off offset:272
	scratch_load_b64 v[45:46], off, off offset:288
	scratch_load_b64 v[46:47], off, off offset:296
	scratch_load_b64 v[47:48], off, off offset:304
	scratch_load_b32 v48, off, off offset:332
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v72, s15 :: v_dual_mov_b32 v71, s14
	v_dual_mov_b32 v70, s13 :: v_dual_mov_b32 v69, s12
	v_dual_mov_b32 v68, s11 :: v_dual_mov_b32 v67, s10
	v_dual_mov_b32 v66, s9 :: v_dual_mov_b32 v65, s8
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(12)
	v_or_b32_e32 v0, s7, v0
	s_waitcnt vmcnt(11)
	v_or_b32_e32 v33, s7, v33
	s_waitcnt vmcnt(10)
	v_or_b32_e32 v34, s7, v34
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v35, s7, v35
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v36, s7, v36
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v33, off, off offset:156
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s38, s27, v34
	v_cmp_gt_i32_e64 s42, s27, v36
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:172
	scratch_load_b32 v36, off, off offset:180
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s39, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:176 ; 4-byte Folded Reload
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
	v_or_b32_e32 v0, s7, v0
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v33, s7, v33
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v34, s7, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s40, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s41, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:164
	scratch_load_b32 v33, off, off offset:168
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v36, s7, v36
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s45, s27, v34
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v34, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s47, s27, v36
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b64 v[36:37], off, off offset:200 ; 8-byte Folded Reload
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v35, s7, v35
	.loc	1 822 32                        ; attention.py:822:32
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[37:38], off, off offset:228
	scratch_load_b64 v[38:39], off, off offset:236
	scratch_load_b64 v[39:40], off, off offset:244
	scratch_load_b32 v40, off, off offset:252
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s46, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	scratch_load_b32 v35, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, s7, v0
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v33, s7, v33
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v34, s7, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s43, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s44, s27, v33
	.loc	1 819 31                        ; attention.py:819:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v33, off, off offset:188
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s50, s27, v34
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v34, off, off offset:212 ; 4-byte Folded Reload
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
	v_or_b32_e32 v35, s7, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s51, s27, v35
	.loc	1 819 31                        ; attention.py:819:31
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s7, v0
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v33, s7, v33
	.loc	1 822 32                        ; attention.py:822:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s0, v34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s48, s27, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_i32_e64 s49, s27, v33
	.loc	1 822 32                        ; attention.py:822:32
	scratch_load_b32 v33, off, off offset:208 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s0, v36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[35:36], off, off offset:216
	scratch_load_b32 v36, off, off offset:224
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
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s1, s47
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v40, v40, s[52:55], 0 offen
	buffer_load_u8 v43, v43, s[52:55], 0 offen
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
	scratch_load_b32 v49, off, off offset:312 ; 4-byte Folded Reload
	s_mov_b64 s[0:1], s[52:53]
	s_waitcnt vmcnt(0)
	ds_store_b8 v49, v0
	ds_store_b8 v49, v36 offset:512
	ds_store_b8 v49, v40 offset:1024
	ds_store_b8 v49, v43 offset:1536
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	v_writelane_b32 v254, s0, 25
	v_writelane_b32 v255, s7, 0
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s0, v253, 17
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v33
	ds_store_b8 v0, v37 offset:512
	ds_store_b8 v0, v41 offset:1024
	ds_store_b8 v0, v45 offset:1536
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	v_writelane_b32 v254, s1, 26
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s1, v253, 31
	v_writelane_b32 v255, s2, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v34
	ds_store_b8 v0, v38 offset:512
	ds_store_b8 v0, v42 offset:1024
	ds_store_b8 v0, v46 offset:1536
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	v_writelane_b32 v254, s2, 27
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v35
	ds_store_b8 v0, v39 offset:512
	ds_store_b8 v0, v44 offset:1024
	ds_store_b8 v0, v47 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[89:90], off, off offset:792
	scratch_load_b32 v0, off, off offset:392
	ds_load_2addr_stride64_b64 v[33:36], v48 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v48 offset0:2 offset1:3
	v_writelane_b32 v254, s3, 28
	v_writelane_b32 v254, s4, 29
	v_writelane_b32 v254, s5, 30
	v_writelane_b32 v254, s6, 31
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[89:90], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[35:36], v[89:90], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[89:90], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[89:90], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[85:86], off, off offset:800
	scratch_load_b32 v0, off, off offset:396
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[85:86], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[85:86], off, off offset:808
	scratch_load_b32 v0, off, off offset:400
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[85:86], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[85:86], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[65:68], v0 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v0 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v80
	scratch_load_b64 v[85:86], off, off offset:816 ; 8-byte Folded Reload
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 2, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 4, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 6, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s41, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 8, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s43, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 10, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s46, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 12, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s50, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 14, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s51, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 16, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s52, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 18, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s53, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 20, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s54, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 22, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s55, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 24, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s56, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 26, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s57, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 28, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s58, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 30, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s59, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 32, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s61, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 34, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s62, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 36, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s63, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 38, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s64, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 40, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s65, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 42, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s66, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 44, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s67, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 46, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s68, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 48, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 50, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s40, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 52, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s42, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 54, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s48, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 56, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s44, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 58, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[85:86], v[57:64] neg_lo:[1,1,0]
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v65, s2, v80, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[85:86], v[41:48] neg_lo:[1,1,0]
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s45, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 60, v80
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[85:86], v[49:56] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v66, 4, v65
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[71:72], v[85:86], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v67, 8, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v68, 12, v65
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 7
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v69, 16, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s47, s27, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 62, v80
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v70, 20, v65
	v_add_nc_u32_e32 v71, 24, v65
	v_add_nc_u32_e32 v72, 28, v65
	v_add_nc_u32_e32 v85, 32, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v86, 36, v65
	v_add_nc_u32_e32 v87, 40, v65
	v_add_nc_u32_e32 v88, 44, v65
	v_add_nc_u32_e32 v89, 48, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s49, s27, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, s7, v204
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v90, 52, v65
	v_add_nc_u32_e32 v91, 56, v65
	v_add_nc_u32_e32 v92, 60, v65
	v_add_nc_u32_e32 v93, 64, v65
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s60, s27, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v121, 0x44, v65
	v_add_nc_u32_e32 v122, 0x48, v65
	v_add_nc_u32_e32 v123, 0x4c, v65
	v_add_nc_u32_e32 v124, 0x50, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s102, s0, s60
	v_readlane_b32 s0, v253, 18
	s_and_b32 s5, s3, s60
	v_readlane_b32 s3, v254, 8
	s_and_b32 s104, s1, s60
	v_readlane_b32 s1, v254, 0
	s_and_b32 s98, s0, s60
	v_readlane_b32 s0, v253, 19
	s_and_b32 vcc_hi, s3, s60
	v_readlane_b32 s3, v254, 9
	s_and_b32 s23, s1, s60
	v_readlane_b32 s1, v254, 1
	s_and_b32 s99, s0, s60
	v_readlane_b32 s0, v253, 20
	s_and_b32 s9, s3, s60
	v_readlane_b32 s3, v254, 10
	s_and_b32 s8, s1, s60
	v_readlane_b32 s1, v254, 2
	s_and_b32 s100, s0, s60
	v_readlane_b32 s0, v253, 21
	s_and_b32 s37, s3, s60
	v_readlane_b32 s3, v254, 11
	s_and_b32 s22, s1, s60
	v_readlane_b32 s1, v254, 3
	s_and_b32 s33, s0, s60
	v_readlane_b32 s0, v253, 22
	s_and_b32 s4, s3, s60
	v_readlane_b32 s3, v254, 12
	s_and_b32 s2, s1, s60
	v_readlane_b32 s1, v254, 4
	s_and_b32 s101, s0, s60
	v_readlane_b32 s0, v253, 23
	s_and_b32 s24, s3, s60
	v_readlane_b32 s3, v254, 13
	s_and_b32 s36, s1, s60
	v_readlane_b32 s1, v254, 5
	s_and_b32 s11, s0, s60
	v_readlane_b32 s0, v253, 24
	s_and_b32 s12, s3, s60
	v_readlane_b32 s3, v254, 14
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v125, 0x54, v65
	v_add_nc_u32_e32 v126, 0x58, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s10, s0, s60
	v_readlane_b32 s0, v253, 25
	s_and_b32 s35, s3, s60
	v_readlane_b32 s3, v254, 15
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v127, 0x5c, v65
	v_add_nc_u32_e32 v128, 0x60, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s25, s0, s60
	v_readlane_b32 s0, v253, 26
	s_and_b32 s15, s3, s60
	.loc	1 863 17                        ; attention.py:863:17
	v_readlane_b32 s3, v253, 3
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v129, 0x64, v65
	v_add_nc_u32_e32 v130, 0x68, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s13, s0, s60
	v_readlane_b32 s0, v253, 27
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v131, 0x6c, v65
	v_add_nc_u32_e32 v132, 0x70, v65
	v_add_nc_u32_e32 v133, 0x74, v65
	v_add_nc_u32_e32 v134, 0x78, v65
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s26, s0, s60
	v_readlane_b32 s0, v253, 28
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v135, 0x7c, v65
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s103, s1, s60
	v_readlane_b32 s1, v254, 6
	s_and_b32 s97, s0, s60
	v_readlane_b32 s0, v253, 29
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v254, 19
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v67, 0x80000000, v67, s39
	v_cndmask_b32_e64 v68, 0x80000000, v68, s41
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s14, s0, s60
	v_readlane_b32 s0, v253, 30
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v69, 0x80000000, v69, s43
	v_cndmask_b32_e64 v70, 0x80000000, v70, s46
	v_cndmask_b32_e64 v71, 0x80000000, v71, s50
	v_cndmask_b32_e64 v72, 0x80000000, v72, s51
	v_cndmask_b32_e64 v85, 0x80000000, v85, s52
	v_cndmask_b32_e64 v86, 0x80000000, v86, s53
	v_cndmask_b32_e64 v87, 0x80000000, v87, s54
	v_cndmask_b32_e64 v88, 0x80000000, v88, s55
	v_cndmask_b32_e64 v89, 0x80000000, v89, s56
	v_cndmask_b32_e64 v90, 0x80000000, v90, s57
	v_cndmask_b32_e64 v91, 0x80000000, v91, s58
	v_cndmask_b32_e64 v92, 0x80000000, v92, s59
	v_cndmask_b32_e64 v93, 0x80000000, v93, s61
	v_cndmask_b32_e64 v121, 0x80000000, v121, s62
	v_cndmask_b32_e64 v138, 0x80000000, v122, s63
	v_cndmask_b32_e64 v139, 0x80000000, v123, s64
	v_cndmask_b32_e64 v140, 0x80000000, v124, s65
	v_cndmask_b32_e64 v150, 0x80000000, v125, s66
	v_cndmask_b32_e64 v151, 0x80000000, v126, s67
	v_cndmask_b32_e64 v152, 0x80000000, v127, s68
	v_cndmask_b32_e64 v157, 0x80000000, v128, s38
	v_cndmask_b32_e64 v158, 0x80000000, v129, s40
	v_cndmask_b32_e64 v159, 0x80000000, v130, s42
	v_cndmask_b32_e64 v160, 0x80000000, v131, s48
	v_cndmask_b32_e64 v161, 0x80000000, v132, s44
	v_cndmask_b32_e64 v162, 0x80000000, v133, s45
	v_cndmask_b32_e64 v163, 0x80000000, v134, s47
	v_cndmask_b32_e64 v164, 0x80000000, v135, s49
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s0, s0, s60
	s_and_b32 s1, s1, s60
	s_and_b32 s34, s3, s60
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v122, off, off offset:1100 ; 4-byte Folded Reload
	s_and_not1_b32 s68, s98, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v122
	scratch_load_b32 v122, off, off offset:1104 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s30, vcc_lo, s102
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v0, v122
	scratch_load_b32 v122, off, off offset:1108 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s98
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s98, s68, s3
	s_and_not1_b32 s3, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v0, v122
	scratch_load_b32 v122, off, off offset:1112 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s38, s99
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v0, v122
	scratch_load_b32 v122, off, off offset:1116 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s38, s39, s100
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s38, s38, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v0, v122
	scratch_load_b32 v122, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s39, s40, s33
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v0, v122
	scratch_load_b32 v122, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s40, s41, s101
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v0, v122
	scratch_load_b32 v122, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s41, s42, s11
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v0, v122
	scratch_load_b32 v122, off, off offset:1132 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s42, s43, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v0, v122
	scratch_load_b32 v122, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s43, s44, s25
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v0, v122
	scratch_load_b32 v122, off, off offset:1140 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s44, s45, s13
	s_and_not1_b32 s13, s13, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v0, v122
	scratch_load_b32 v122, off, off offset:1144 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s45, s46, s26
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v0, v122
	scratch_load_b32 v122, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s46, s47, s97
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v0, v122
	scratch_load_b32 v122, off, off offset:1152 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s47, s48, s14
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v0, v122
	scratch_load_b32 v122, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s48, s49, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s50, v0, v122
	scratch_load_b32 v122, off, off offset:1160 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s49, s50, s104
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s51, v0, v122
	scratch_load_b32 v122, off, off offset:1164 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s50, s51, s23
	s_and_not1_b32 s23, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v0, v122
	scratch_load_b32 v122, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s51, s52, s8
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s53, v0, v122
	scratch_load_b32 v122, off, off offset:1172 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s52, s53, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s54, v0, v122
	scratch_load_b32 v122, off, off offset:1176 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s53, s54, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s55, v0, v122
	scratch_load_b32 v122, off, off offset:1180 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s54, s55, s36
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s56, v0, v122
	scratch_load_b32 v122, off, off offset:1184 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s55, s56, s103
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s57, v0, v122
	scratch_load_b32 v122, off, off offset:1188 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s56, s57, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s58, v0, v122
	scratch_load_b32 v122, off, off offset:1192 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s57, s58, s5
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s59, v0, v122
	scratch_load_b32 v122, off, off offset:1196 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s58, s59, vcc_hi
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v0, v122
	scratch_load_b32 v122, off, off offset:1200 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s59, s60, s9
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s61, v0, v122
	scratch_load_b32 v122, off, off offset:1204 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s60, s61, s37
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s62, v0, v122
	scratch_load_b32 v122, off, off offset:1208 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s61, s62, s4
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s63, v0, v122
	scratch_load_b32 v122, off, off offset:1212 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s62, s63, s24
	s_and_not1_b32 s24, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s64, v0, v122
	scratch_load_b32 v122, off, off offset:1216 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s63, s64, s12
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s65, v0, v122
	scratch_load_b32 v122, off, off offset:1220 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s64, s65, s35
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s66, v0, v122
	scratch_load_b32 v122, off, off offset:1224 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s65, s66, s15
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s67, v0, v122
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s66, s67, s34
	s_and_not1_b32 s67, s102, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s102, s67, s30
	s_and_b32 s30, s31, exec_lo
	s_and_not1_b32 s31, s100, exec_lo
	s_or_b32 s99, s3, s30
	s_and_not1_b32 s3, s33, exec_lo
	s_and_b32 s30, s39, exec_lo
	s_or_b32 s100, s31, s38
	s_or_b32 s33, s3, s30
	s_and_not1_b32 s3, s11, exec_lo
	s_and_b32 s11, s41, exec_lo
	s_and_b32 s30, s42, exec_lo
	s_and_not1_b32 s31, s101, exec_lo
	s_and_b32 s38, s40, exec_lo
	s_or_b32 s11, s3, s11
	s_or_b32 s10, s10, s30
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s25, s43, exec_lo
	s_and_b32 s30, s44, exec_lo
	s_or_b32 s101, s31, s38
	s_or_b32 s25, s3, s25
	s_or_b32 s13, s13, s30
	s_and_not1_b32 s3, s26, exec_lo
	s_and_b32 s26, s45, exec_lo
	s_and_not1_b32 s30, s97, exec_lo
	s_and_b32 s31, s46, exec_lo
	s_or_b32 s26, s3, s26
	s_or_b32 s97, s30, s31
	s_and_not1_b32 s3, s14, exec_lo
	s_and_b32 s14, s47, exec_lo
	s_and_b32 s30, s48, exec_lo
	s_or_b32 s14, s3, s14
	s_or_b32 s0, s0, s30
	s_and_not1_b32 s3, s104, exec_lo
	s_and_b32 s30, s49, exec_lo
	s_and_b32 s31, s50, exec_lo
	s_or_b32 s104, s3, s30
	s_and_not1_b32 s3, s8, exec_lo
	s_and_b32 s8, s51, exec_lo
	s_and_b32 s30, s52, exec_lo
	s_or_b32 s23, s23, s31
	s_or_b32 s8, s3, s8
	s_or_b32 s22, s22, s30
	s_and_b32 s3, s53, exec_lo
	s_and_not1_b32 s30, s36, exec_lo
	s_and_b32 s31, s54, exec_lo
	s_or_b32 s2, s2, s3
	s_or_b32 s36, s30, s31
	s_and_not1_b32 s3, s103, exec_lo
	s_and_b32 s30, s55, exec_lo
	s_and_b32 s31, s56, exec_lo
	s_or_b32 s103, s3, s30
	s_or_b32 s1, s1, s31
	s_and_not1_b32 s3, s5, exec_lo
	s_and_b32 s5, s57, exec_lo
	s_and_not1_b32 s30, vcc_hi, exec_lo
	s_and_b32 s31, s58, exec_lo
	s_or_b32 s5, s3, s5
	s_or_b32 vcc_hi, s30, s31
	s_and_not1_b32 s3, s9, exec_lo
	s_and_b32 s9, s59, exec_lo
	s_and_not1_b32 s30, s37, exec_lo
	s_and_b32 s31, s60, exec_lo
	s_or_b32 s9, s3, s9
	s_or_b32 s37, s30, s31
	s_and_not1_b32 s3, s4, exec_lo
	s_and_b32 s4, s61, exec_lo
	s_and_b32 s30, s62, exec_lo
	s_or_b32 s4, s3, s4
	s_or_b32 s24, s24, s30
	s_and_not1_b32 s3, s12, exec_lo
	s_and_b32 s12, s63, exec_lo
	s_and_not1_b32 s30, s35, exec_lo
	s_and_b32 s31, s64, exec_lo
	s_or_b32 s12, s3, s12
	s_or_b32 s35, s30, s31
	s_and_not1_b32 s3, s15, exec_lo
	s_and_b32 s15, s65, exec_lo
	s_and_not1_b32 s30, s34, exec_lo
	s_and_b32 s31, s66, exec_lo
	s_or_b32 s15, s3, s15
	s_or_b32 s34, s30, s31
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v136, v65, s[16:19], 0 offen
	buffer_load_u16 v135, v66, s[16:19], 0 offen
	buffer_load_u16 v134, v67, s[16:19], 0 offen
	buffer_load_u16 v133, v68, s[16:19], 0 offen
	buffer_load_u16 v132, v69, s[16:19], 0 offen
	buffer_load_u16 v131, v70, s[16:19], 0 offen
	buffer_load_u16 v130, v71, s[16:19], 0 offen
	buffer_load_u16 v65, v72, s[16:19], 0 offen
	buffer_load_u16 v66, v85, s[16:19], 0 offen
	buffer_load_u16 v128, v86, s[16:19], 0 offen
	buffer_load_u16 v127, v87, s[16:19], 0 offen
	buffer_load_u16 v126, v88, s[16:19], 0 offen
	buffer_load_u16 v125, v89, s[16:19], 0 offen
	buffer_load_u16 v124, v90, s[16:19], 0 offen
	buffer_load_u16 v123, v91, s[16:19], 0 offen
	buffer_load_u16 v122, v92, s[16:19], 0 offen
	buffer_load_u16 v129, v93, s[16:19], 0 offen
	buffer_load_u16 v69, v121, s[16:19], 0 offen
	buffer_load_u16 v121, v138, s[16:19], 0 offen
	buffer_load_u16 v93, v139, s[16:19], 0 offen
	buffer_load_u16 v92, v140, s[16:19], 0 offen
	buffer_load_u16 v91, v150, s[16:19], 0 offen
	buffer_load_u16 v90, v151, s[16:19], 0 offen
	buffer_load_u16 v89, v152, s[16:19], 0 offen
	buffer_load_u16 v88, v157, s[16:19], 0 offen
	buffer_load_u16 v87, v158, s[16:19], 0 offen
	buffer_load_u16 v68, v159, s[16:19], 0 offen
	buffer_load_u16 v86, v160, s[16:19], 0 offen
	buffer_load_u16 v72, v161, s[16:19], 0 offen
	buffer_load_u16 v71, v162, s[16:19], 0 offen
	buffer_load_u16 v70, v163, s[16:19], 0 offen
	buffer_load_u16 v67, v164, s[16:19], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s3, v253, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v85, off, off offset:1480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v0, v85
	scratch_load_b32 v85, off, off offset:1476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v0, v85
	scratch_load_b32 v85, off, off offset:1472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s38, v0, v85
	scratch_load_b32 v85, off, off offset:1468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s39, v0, v85
	scratch_load_b32 v85, off, off offset:1464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s40, v0, v85
	scratch_load_b32 v85, off, off offset:1460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s41, v0, v85
	scratch_load_b32 v85, off, off offset:1456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s42, v0, v85
	scratch_load_b32 v85, off, off offset:1452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s43, v0, v85
	scratch_load_b32 v85, off, off offset:1448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s44, v0, v85
	scratch_load_b32 v85, off, off offset:1444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s45, v0, v85
	scratch_load_b32 v85, off, off offset:1440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s46, v0, v85
	scratch_load_b32 v85, off, off offset:1436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s47, v0, v85
	scratch_load_b32 v85, off, off offset:1432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s48, v0, v85
	scratch_load_b32 v85, off, off offset:1428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s49, v0, v85
	scratch_load_b32 v85, off, off offset:1424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s50, v0, v85
	scratch_load_b32 v85, off, off offset:1420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s51, v0, v85
	scratch_load_b32 v85, off, off offset:1416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s52, v0, v85
	scratch_load_b32 v85, off, off offset:1412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s53, v0, v85
	scratch_load_b32 v85, off, off offset:1408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s54, v0, v85
	scratch_load_b32 v85, off, off offset:1404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s55, v0, v85
	scratch_load_b32 v85, off, off offset:1400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s56, v0, v85
	scratch_load_b32 v85, off, off offset:1396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s57, v0, v85
	scratch_load_b32 v85, off, off offset:1392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s58, v0, v85
	scratch_load_b32 v85, off, off offset:1388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s59, v0, v85
	scratch_load_b32 v85, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s60, v0, v85
	scratch_load_b32 v85, off, off offset:1380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s61, v0, v85
	scratch_load_b32 v85, off, off offset:1376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s62, v0, v85
	scratch_load_b32 v85, off, off offset:1372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s63, v0, v85
	scratch_load_b32 v85, off, off offset:1368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s64, v0, v85
	scratch_load_b32 v85, off, off offset:1364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s65, v0, v85
	scratch_load_b32 v85, off, off offset:1360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s66, v0, v85
	scratch_load_b32 v85, off, off offset:1356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s67, v0, v85
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v85, off, off offset:1352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s68, v0, v85
	scratch_load_b32 v85, off, off offset:1348 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s68, vcc_lo, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s68, s68, s102
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s69, v0, v85
	scratch_load_b32 v85, off, off offset:1344 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s69
	s_and_b32 s3, s3, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s70, v0, v85
	scratch_load_b32 v85, off, off offset:1340 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s38, s70
	s_and_b32 s38, s38, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s38, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s71, v0, v85
	scratch_load_b32 v85, off, off offset:1336 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s39, s39, s71
	s_and_b32 s39, s39, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s39, s39, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s72, v0, v85
	scratch_load_b32 v85, off, off offset:1332 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s40, s72
	s_and_b32 s40, s40, s33
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s73, v0, v85
	scratch_load_b32 v85, off, off offset:1328 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s41, s73
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s41, s41, s101
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s74, v0, v85
	scratch_load_b32 v85, off, off offset:1324 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, s42, s74
	s_and_b32 s42, s42, s11
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s75, v0, v85
	scratch_load_b32 v85, off, off offset:1320 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s43, s75
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s43, s43, s10
	s_and_not1_b32 s10, s10, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s76, v0, v85
	scratch_load_b32 v85, off, off offset:1316 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s44, s44, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s44, s44, s25
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s77, v0, v85
	scratch_load_b32 v85, off, off offset:1312 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s45, s45, s77
	s_and_b32 s45, s45, s13
	s_and_not1_b32 s13, s13, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s78, v0, v85
	scratch_load_b32 v85, off, off offset:1308 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s46, s46, s78
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s46, s46, s26
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s79, v0, v85
	scratch_load_b32 v85, off, off offset:1304 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s47, s47, s79
	s_and_b32 s47, s47, s97
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s80, v0, v85
	scratch_load_b32 v85, off, off offset:1300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s48, s48, s80
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s48, s48, s14
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s81, v0, v85
	scratch_load_b32 v85, off, off offset:1296 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s49, s49, s81
	s_and_b32 s49, s49, s0
	s_and_not1_b32 s0, s0, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s82, v0, v85
	scratch_load_b32 v85, off, off offset:1292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s50, s50, s82
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s50, s50, s104
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s83, v0, v85
	scratch_load_b32 v85, off, off offset:1288 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s51, s51, s83
	s_and_b32 s51, s51, s23
	s_and_not1_b32 s23, s23, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s84, v0, v85
	scratch_load_b32 v85, off, off offset:1284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s52, s84
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s8
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s85, v0, v85
	scratch_load_b32 v85, off, off offset:1280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s53, s53, s85
	s_and_b32 s53, s53, s22
	s_and_not1_b32 s22, s22, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s86, v0, v85
	scratch_load_b32 v85, off, off offset:1276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s54, s54, s86
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s54, s54, s2
	s_and_not1_b32 s2, s2, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s87, v0, v85
	scratch_load_b32 v85, off, off offset:1272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s55, s55, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s55, s55, s36
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s88, v0, v85
	scratch_load_b32 v85, off, off offset:1268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s56, s56, s88
	s_and_b32 s56, s56, s103
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s89, v0, v85
	scratch_load_b32 v85, off, off offset:1264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s57, s57, s89
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s57, s57, s1
	s_and_not1_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s90, v0, v85
	scratch_load_b32 v85, off, off offset:1260 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s58, s58, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s58, s58, s5
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s91, v0, v85
	scratch_load_b32 v85, off, off offset:1256 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s59, s59, s91
	s_and_b32 s59, s59, vcc_hi
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s92, v0, v85
	scratch_load_b32 v85, off, off offset:1252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s60, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s9
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s93, v0, v85
	scratch_load_b32 v85, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s61, s61, s93
	s_and_b32 s61, s61, s37
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s94, v0, v85
	scratch_load_b32 v85, off, off offset:1244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s62, s62, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s62, s62, s4
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s95, v0, v85
	scratch_load_b32 v85, off, off offset:1240 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s63, s63, s95
	s_and_b32 s63, s63, s24
	s_and_not1_b32 s24, s24, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s96, v0, v85
	scratch_load_b32 v85, off, off offset:1236 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s64, s64, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s64, s64, s12
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s60, v0, v85
	scratch_load_b32 v85, off, off offset:1232 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s60, s65, s60
	s_and_b32 s60, s60, s35
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s52, v0, v85
	scratch_load_b32 v85, off, off offset:1228 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s52, s66, s52
	s_and_not1_b32 s66, s102, exec_lo
	s_and_b32 s52, s52, s15
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v0, v85
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s65, s67, vcc_lo
	s_and_b32 s67, s68, exec_lo
	s_and_not1_b32 s68, s98, exec_lo
	s_or_b32 s102, s66, s67
	s_or_b32 s98, s68, s3
	s_and_not1_b32 s3, s99, exec_lo
	s_and_not1_b32 s66, s100, exec_lo
	s_or_b32 s99, s3, s38
	s_or_b32 s100, s66, s39
	s_and_not1_b32 s3, s33, exec_lo
	s_and_b32 s33, s40, exec_lo
	s_and_not1_b32 s38, s101, exec_lo
	s_and_b32 s39, s41, exec_lo
	s_or_b32 s33, s3, s33
	s_or_b32 s101, s38, s39
	s_and_not1_b32 s3, s11, exec_lo
	s_and_b32 s11, s42, exec_lo
	s_and_b32 s38, s43, exec_lo
	s_or_b32 s11, s3, s11
	s_or_b32 s10, s10, s38
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s25, s44, exec_lo
	s_and_b32 s38, s45, exec_lo
	s_or_b32 s25, s3, s25
	s_or_b32 s13, s13, s38
	s_and_not1_b32 s3, s26, exec_lo
	s_and_b32 s26, s46, exec_lo
	s_and_not1_b32 s38, s97, exec_lo
	s_and_b32 s39, s47, exec_lo
	s_or_b32 s26, s3, s26
	s_or_b32 s97, s38, s39
	s_and_not1_b32 s3, s14, exec_lo
	s_and_b32 s14, s48, exec_lo
	s_and_b32 s38, s49, exec_lo
	s_or_b32 s14, s3, s14
	s_or_b32 s0, s0, s38
	s_and_not1_b32 s3, s104, exec_lo
	s_and_b32 s38, s50, exec_lo
	s_and_b32 s65, s65, s34
	s_or_b32 s104, s3, s38
	s_and_not1_b32 s3, s8, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s31, s53, exec_lo
	s_or_b32 s8, s3, s8
	s_or_b32 s22, s22, s31
	s_and_b32 s3, s54, exec_lo
	s_and_not1_b32 s31, s36, exec_lo
	s_and_b32 s36, s55, exec_lo
	s_or_b32 s2, s2, s3
	s_or_b32 s36, s31, s36
	s_and_not1_b32 s3, s103, exec_lo
	s_and_b32 s31, s56, exec_lo
	s_and_b32 s38, s57, exec_lo
	s_or_b32 s103, s3, s31
	s_or_b32 s1, s1, s38
	s_and_not1_b32 s3, s5, exec_lo
	s_and_b32 s5, s58, exec_lo
	s_and_not1_b32 s31, vcc_hi, exec_lo
	s_and_b32 s38, s59, exec_lo
	s_or_b32 s5, s3, s5
	s_or_b32 vcc_hi, s31, s38
	s_and_not1_b32 s3, s9, exec_lo
	s_and_b32 s9, s30, exec_lo
	s_and_not1_b32 s30, s37, exec_lo
	s_and_b32 s31, s61, exec_lo
	s_or_b32 s9, s3, s9
	s_or_b32 s37, s30, s31
	s_and_not1_b32 s3, s4, exec_lo
	s_and_b32 s4, s62, exec_lo
	s_and_b32 s30, s63, exec_lo
	s_or_b32 s4, s3, s4
	s_or_b32 s24, s24, s30
	s_and_not1_b32 s3, s12, exec_lo
	s_and_b32 s12, s64, exec_lo
	s_and_not1_b32 s30, s35, exec_lo
	s_and_b32 s31, s60, exec_lo
	s_and_b32 s39, s51, exec_lo
	s_or_b32 s12, s3, s12
	s_or_b32 s35, s30, s31
	s_and_not1_b32 s3, s15, exec_lo
	s_and_b32 s15, s52, exec_lo
	s_and_not1_b32 s30, s34, exec_lo
	s_and_b32 s31, s65, exec_lo
	s_or_b32 s23, s23, s39
	s_or_b32 s15, s3, s15
	s_or_b32 s34, s30, s31
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v70, off, off offset:1488
	scratch_load_b32 v69, off, off offset:1484
	scratch_load_b32 v71, off, off offset:1492
	scratch_load_b32 v72, off, off offset:1496
	scratch_load_b32 v73, off, off offset:1500
	scratch_load_b32 v74, off, off offset:1504
	v_readlane_b32 s44, v253, 4
	v_readlane_b32 s46, v253, 6
	v_readlane_b32 s40, v253, 8
	v_readlane_b32 s45, v253, 5
	v_readlane_b32 s47, v253, 7
	s_waitcnt vmcnt(5)
	v_cmp_eq_u32_e64 s46, 0, v70
.LBB0_15:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, 0, v72
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v65, 0x80, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, 0x76543210
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[37:40] offset:16
	v_and_b32_e32 v33, 28, v71
	v_lshrrev_b32_e32 v34, 1, v72
	s_waitcnt vmcnt(0)
	v_add3_u32 v35, 0, v74, v65
	ds_store_b128 v0, v[49:52] offset:128
	ds_store_b128 v0, v[53:56] offset:144
	ds_store_b128 v0, v[45:48] offset:32
	ds_store_b128 v0, v[61:64] offset:48
	ds_store_b128 v0, v[41:44] offset:160
	ds_store_b128 v0, v[57:60] offset:176
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v33, v35, v34, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_load_b32 v0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v39, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v33
	v_rcp_f32_e32 v43, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v37
	v_rcp_f32_e32 v45, v39
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v49, -v33, v42, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v35, v43, 1.0
	v_fma_f32 v51, -v37, v44, 1.0
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v47, null, v0, v0, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v45, 1.0
	v_dual_fmac_f32 v42, v49, v42 :: v_dual_fmac_f32 v43, v50, v43
	v_fmac_f32_e32 v44, v51, v44
	v_rcp_f32_e32 v53, v41
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_mul_f32 v50, v34, v42
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v36, v43 :: v_dual_mul_f32 v52, v38, v44
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v56, -v33, v50, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v35, v51, v36
	v_fma_f32 v58, -v37, v52, v38
	v_div_scale_f32 v48, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v54, v40, v45 :: v_dual_fmac_f32 v51, v57, v43
	v_fma_f32 v55, -v41, v53, 1.0
	v_fma_f32 v60, -v47, v49, 1.0
	v_fmac_f32_e32 v50, v56, v42
	v_fmac_f32_e32 v52, v58, v44
	v_div_scale_f32 v46, s4, v29, v0, v29
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
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v39, v54, v40
	v_fma_f32 v39, -v41, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v45, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v53
	v_div_scale_f32 v39, null, v0, v0, v17
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
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v44, 1.0
	v_mul_f32_e32 v45, v42, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v47, v40, v33
	v_div_scale_f32 v47, null, v0, v0, v18
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
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v41, v37, 1.0
	v_fmac_f32_e32 v36, v49, v36
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	v_bfe_u32 v66, v26, 16, 1
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v45, v37
	v_mul_f32_e32 v43, v38, v40
	v_fma_f32 v45, -v42, v35, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v43, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v25, v25
	v_add3_u32 v25, v26, v66, 0x7fff
	v_cmp_o_f32_e64 s34, v26, v26
	v_add3_u32 v26, v27, v67, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v43, v34, v40 :: v_dual_mul_f32 v34, v39, v37
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v27, v27
	v_bfe_u32 v27, v28, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v33, -v47, v43, v38
	v_fma_f32 v38, -v41, v34, v39
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v34, v38, v37 :: v_dual_mul_f32 v47, v44, v35
	v_div_fmas_f32 v33, v33, v40, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v40, s3, v21, v0, v21
	v_fma_f32 v38, -v42, v47, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v41, v34, v39
	v_div_scale_f32 v41, null, v0, v0, v23
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
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v65.h, s33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v37, v48
	v_fma_f32 v37, -v44, v35, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v30, 16, 1
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cmp_o_f32_e64 s33, v28, v28
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s34
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v35, v0, v24
	v_fma_f32 v35, -v48, v50, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v29, v65, 0x7fff
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v47, v40
	v_fma_f32 v34, -v41, v45, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v30, v66, 0x7fff
	v_cmp_o_f32_e64 s35, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fmac_f32_e32 v45, v34, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v27, v31, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v39
	v_rcp_f32_e32 v34, v37
	v_mul_f32_e32 v49, v42, v36
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v39, v35, v50
	v_fma_f32 v38, -v46, v49, v42
	v_div_fixup_f32 v9, v33, v0, v9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s34
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v38, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s33, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s34, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v46, v49, v42
	v_rcp_f32_e32 v42, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s34
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v35, v34, v33
	v_fmac_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v33, v0, v16
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
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
	v_rcp_f32_e32 v41, v37
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v33, v0, v3
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v46, 1.0
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
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
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v0, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v29, v33, 16, 1
	v_bfe_u32 v31, v34, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	v_cndmask_b32_e64 v38, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v33, v33
	v_add3_u32 v29, v33, v29, 0x7fff
	v_bfe_u32 v30, v35, 16, 1
	v_bfe_u32 v32, v36, 16, 1
	v_add3_u32 v31, v34, v31, 0x7fff
	v_cmp_o_f32_e64 s33, v34, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v23, s0
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
	v_cndmask_b32_e64 v40, 0, v9, s0
	v_cndmask_b32_e64 v41, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s34
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s35
	v_bfe_u32 v32, v39, 16, 1
	v_add3_u32 v31, v37, v31, 0x7fff
	v_cmp_o_f32_e64 s33, v37, v37
	v_add3_u32 v33, v38, v33, 0x7fff
	v_cmp_o_f32_e64 s34, v38, v38
	v_bfe_u32 v34, v24, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v11, s0
	v_cndmask_b32_e64 v43, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v32, v39, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s33
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s34
	v_bfe_u32 v33, v40, 16, 1
	v_bfe_u32 v35, v41, 16, 1
	v_add3_u32 v34, v24, v34, 0x7fff
	v_cmp_o_f32_e64 s33, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v13, s0
	v_cndmask_b32_e64 v45, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s35
	v_add3_u32 v24, v40, v33, 0x7fff
	v_cmp_o_f32_e64 s34, v40, v40
	v_add3_u32 v33, v41, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v41, v41
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s33
	v_bfe_u32 v34, v42, 16, 1
	v_bfe_u32 v35, v43, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v15, s0
	v_cndmask_b32_e64 v47, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s34
	v_cndmask_b16 v24.h, 0x7fff, v33.h, s35
	v_bfe_u32 v33, v44, 16, 1
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s33, v42, v42
	v_add3_u32 v35, v43, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v43, v43
	v_bfe_u32 v36, v45, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v48, 0, v1, s0
	v_cndmask_b32_e64 v49, 0, v2, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v44, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v44, v44
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s33
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s34
	v_bfe_u32 v35, v46, 16, 1
	v_bfe_u32 v37, v47, 16, 1
	v_add3_u32 v36, v45, v36, 0x7fff
	v_cmp_o_f32_e64 s33, v45, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v3, s0
	v_cndmask_b32_e64 v55, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s35
	v_add3_u32 v35, v46, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v46, v46
	v_add3_u32 v37, v47, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s33
	v_bfe_u32 v36, v48, 16, 1
	v_bfe_u32 v38, v49, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v51, 0, v4, s0
	v_cndmask_b32_e64 v53, 0, v5, s0
	v_cndmask_b32_e64 v54, 0, v6, s0
	v_cndmask_b32_e64 v56, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s34
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s35
	v_bfe_u32 v37, v50, 16, 1
	v_add3_u32 v36, v48, v36, 0x7fff
	v_cmp_o_f32_e64 s33, v48, v48
	v_add3_u32 v38, v49, v38, 0x7fff
	v_cmp_o_f32_e64 s34, v49, v49
	v_bfe_u32 v41, v55, 16, 1
	v_bfe_u32 v39, v51, 16, 1
	v_add3_u32 v37, v50, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v50, v50
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s33
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_bfe_u32 v38, v53, 16, 1
	v_bfe_u32 v40, v54, 16, 1
	v_bfe_u32 v42, v56, 16, 1
	v_add3_u32 v41, v55, v41, 0x7fff
	v_cmp_o_f32_e64 s36, v55, v55
	v_add3_u32 v39, v51, v39, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cmp_o_f32_e64 s33, v51, v51
	v_add3_u32 v38, v53, v38, 0x7fff
	v_cmp_o_f32_e64 s34, v53, v53
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e64 s35, v54, v54
	v_add3_u32 v42, v56, v42, 0x7fff
	v_cmp_o_f32_e64 s37, v56, v56
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s36
	v_mov_b32_e32 v41, 0x5410
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s33
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s34
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s35
	v_cndmask_b16 v39.h, 0x7fff, v42.h, s37
	v_cndmask_b32_e64 v40, v28, v25, s46
	v_cndmask_b32_e64 v25, v25, v28, s46
	v_cndmask_b32_e64 v28, v27, v26, s46
	v_cndmask_b32_e64 v26, v26, v27, s46
	v_cndmask_b32_e64 v27, v31, v29, s46
	v_cndmask_b32_e64 v29, v29, v31, s46
	v_cndmask_b32_e64 v31, v32, v30, s46
	v_mov_b32_e32 v42, 0x7632
	v_cndmask_b32_e64 v30, v30, v32, s46
	v_cndmask_b32_e64 v32, v33, v24, s46
	v_cndmask_b32_e64 v24, v24, v33, s46
	v_cndmask_b32_e64 v33, 0x1054, v41, s46
	v_cndmask_b32_e64 v41, 0x3276, v42, s46
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v69, s6
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_lshrrev_b32_e32 v52, 1, v70
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b32_e64 v42, v35, v34, s46
	v_lshl_or_b32 v33, v33, 8, v33
	v_lshl_or_b32 v41, v41, 8, v41
	v_cndmask_b32_e64 v34, v34, v35, s46
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v57, 1, v52
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s6, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v33, 0x540054, v33
	v_and_b32_e32 v41, 0x760076, v41
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v58, 2, v52
	v_or_b32_e32 v59, 3, v52
	v_or_b32_e32 v60, 4, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v33, v33, 4, v33
	.loc	1 1046 74                       ; attention.py:1046:74
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
	v_or_b32_e32 v2, 54, v52
	v_or_b32_e32 v0, 55, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v35, v38, v36, s46
	v_cndmask_b32_e64 v36, v36, v38, s46
	v_cndmask_b32_e64 v38, v39, v37, s46
	v_cndmask_b32_e64 v37, v37, v39, s46
	v_permlanex16_b32 v25, v25, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v39, v41, 4, v41
	v_and_b32_e32 v33, 0x5040504, v33
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v52, v1, v52, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s6, v57
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s31, s40, s31
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s6, v58
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_permlanex16_b32 v26, v26, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v39, 0x7060706, v39
	v_permlanex16_b32 v34, v34, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v25, v40, v33
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v56, v1, v57, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s31
	v_add_lshl_u32 v57, v1, v58, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s6, v59
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s30, s40, s30
	s_and_b32 s29, s40, s29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_perm_b32 v25, v25, v40, v39
	v_perm_b32 v40, v26, v28, v33
	v_perm_b32 v26, v26, v28, v39
	v_perm_b32 v28, v29, v27, v33
	v_perm_b32 v27, v29, v27, v39
	v_perm_b32 v29, v30, v31, v33
	v_perm_b32 v30, v30, v31, v39
	v_perm_b32 v31, v24, v32, v33
	v_perm_b32 v24, v24, v32, v39
	v_perm_b32 v32, v34, v42, v33
	v_perm_b32 v34, v34, v42, v39
	v_perm_b32 v42, v36, v35, v33
	v_perm_b32 v35, v36, v35, v39
	v_perm_b32 v33, v37, v38, v33
	v_perm_b32 v36, v37, v38, v39
	v_mov_b16_e32 v37.l, v41.h
	v_mov_b16_e32 v37.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v56, 0x80000000, v56, s30
	buffer_store_b16 v41, v52, s[44:47], 0 offen
	v_add_lshl_u32 v41, v1, v59, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s29
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s6, v60
	v_cmp_gt_i32_e64 s26, s6, v61
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s28, s40, s28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s6, v62
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v25.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v37, v56, s[44:47], 0 offen
	buffer_store_b16 v25, v57, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v60, 1
	v_cndmask_b32_e64 v37, 0x80000000, v41, s28
	v_add_lshl_u32 v41, v1, v61, 1
	v_add_lshl_u32 v52, v1, v62, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s27, s40, s27
	s_and_b32 s26, s40, s26
	s_and_b32 s25, s40, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s6, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v40.h
	v_mov_b16_e32 v39.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s27
	v_cndmask_b32_e64 v41, 0x80000000, v41, s26
	v_cndmask_b32_e64 v52, 0x80000000, v52, s25
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s6, v63
	v_cmp_gt_i32_e64 s22, s6, v23
	v_cmp_gt_i32_e64 s20, s6, v21
	v_cmp_gt_i32_e64 s18, s6, v19
	v_cmp_gt_i32_e64 s16, s6, v17
	v_cmp_gt_i32_e64 s14, s6, v15
	v_cmp_gt_i32_e64 s12, s6, v13
	v_cmp_gt_i32_e64 s10, s6, v11
	v_cmp_gt_i32_e64 s5, s6, v9
	v_cmp_gt_i32_e64 s3, s6, v7
	v_cmp_gt_i32_e64 s0, s6, v5
	v_cmp_gt_i32_e64 s8, s6, v3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v4, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s6, v64
	v_cmp_gt_i32_e64 s21, s6, v22
	v_cmp_gt_i32_e64 s19, s6, v20
	v_cmp_gt_i32_e64 s17, s6, v18
	v_cmp_gt_i32_e64 s15, s6, v16
	v_cmp_gt_i32_e64 s13, s6, v14
	v_cmp_gt_i32_e64 s11, s6, v12
	v_cmp_gt_i32_e64 s9, s6, v10
	v_cmp_gt_i32_e64 s4, s6, v8
	v_cmp_gt_i32_e64 s1, s6, v6
	v_cmp_gt_i32_e64 s7, s6, v2
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v68, v37, s[44:47], 0 offen
	buffer_store_b16 v40, v25, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v63, 1
	v_add_lshl_u32 v23, v1, v23, 1
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
	v_mov_b16_e32 v38.l, v26.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v39, v41, s[44:47], 0 offen
	buffer_store_b16 v26, v52, s[44:47], 0 offen
	v_add_lshl_u32 v26, v1, v64, 1
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
	s_and_b32 vcc_lo, s40, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s6, v0
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s24, s40, s24
	s_and_b32 s22, s40, s22
	s_and_b32 s20, s40, s20
	s_and_b32 s18, s40, s18
	s_and_b32 s16, s40, s16
	s_and_b32 s14, s40, s14
	s_and_b32 s12, s40, s12
	s_and_b32 s10, s40, s10
	s_and_b32 s5, s40, s5
	s_and_b32 s3, s40, s3
	s_and_b32 s0, s40, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s40, s8
	s_and_b32 s23, s40, s23
	s_and_b32 s21, s40, s21
	s_and_b32 s19, s40, s19
	s_and_b32 s17, s40, s17
	s_and_b32 s15, s40, s15
	s_and_b32 s13, s40, s13
	s_and_b32 s11, s40, s11
	s_and_b32 s9, s40, s9
	s_and_b32 s4, s40, s4
	s_and_b32 s1, s40, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
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
	v_mov_b16_e32 v47.l, v24.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v34.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v32.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v51.l, v35.h
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
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s40, s7
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
	v_mov_b16_e32 v55.l, v33.h
	v_mov_b16_e32 v55.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s40, s6
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
	buffer_store_b16 v24, v14, s[44:47], 0 offen
	buffer_store_b16 v47, v13, s[44:47], 0 offen
	buffer_store_b16 v32, v12, s[44:47], 0 offen
	buffer_store_b16 v50, v11, s[44:47], 0 offen
	buffer_store_b16 v34, v10, s[44:47], 0 offen
	buffer_store_b16 v49, v9, s[44:47], 0 offen
	buffer_store_b16 v42, v8, s[44:47], 0 offen
	buffer_store_b16 v53, v7, s[44:47], 0 offen
	buffer_store_b16 v35, v6, s[44:47], 0 offen
	buffer_store_b16 v51, v5, s[44:47], 0 offen
	buffer_store_b16 v33, v4, s[44:47], 0 offen
	buffer_store_b16 v55, v1, s[44:47], 0 offen
	buffer_store_b16 v36, v2, s[44:47], 0 offen
	buffer_store_b16 v54, v0, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_endpgm
.Ltmp733:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1512
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 1512
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46992
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 1512
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
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
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
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
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
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
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
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
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
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
	.quad	.Ltmp562-.Lfunc_begin0
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
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
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
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
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
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 1512
    .sgpr_count:     107
    .sgpr_spill_count: 66
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 379
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
