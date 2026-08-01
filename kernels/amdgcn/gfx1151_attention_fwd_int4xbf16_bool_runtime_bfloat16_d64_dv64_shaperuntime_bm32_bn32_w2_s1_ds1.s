	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[64:67], s[0:1], 0x4c
	; meta instruction
	s_load_b32 s81, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v129, 5, v0
	v_and_b32_e32 v74, 31, v0
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_or_b32_e32 v2, 2, v129
	v_or_b32_e32 v3, 4, v129
	v_or_b32_e32 v4, 6, v129
	v_or_b32_e32 v5, 8, v129
	v_or_b32_e32 v6, 10, v129
	v_or_b32_e32 v7, 12, v129
	v_or_b32_e32 v9, 16, v129
	v_or_b32_e32 v10, 18, v129
	v_or_b32_e32 v11, 20, v129
	v_or_b32_e32 v12, 22, v129
	v_or_b32_e32 v8, 14, v129
	v_or_b32_e32 v13, 24, v129
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s81, v129, v[74:75]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s35, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s81, 6, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v3, s33, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v146, s81, 1, v75
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s81, v74
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[77:78], null, s81, 10, v[75:76]
	v_mad_u64_u32 v[78:79], null, s81, 12, v[75:76]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[79:80], null, s81, 14, v[75:76]
	v_mad_u64_u32 v[80:81], null, s81, 18, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[81:82], null, s81, 20, v[75:76]
	v_mad_u64_u32 v[82:83], null, s81, 22, v[75:76]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v129
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[83:84], null, s81, 24, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[84:85], null, s81, 26, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[85:86], null, s81, 28, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[86:87], null, s81, 30, v[75:76]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s57, s66, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s8, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v147, s81, 2, v75
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v148, s81, 3, v75
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s34, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v149, s81, 4, v75
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s58, s66, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v17, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s59, s66, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s33, v6
	v_or_b32_e32 v7, s33, v7
	v_or_b32_e32 v9, s33, v9
	v_or_b32_e32 v10, s33, v10
	v_or_b32_e32 v11, s33, v11
	v_or_b32_e32 v12, s33, v12
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v14, 26, v129
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s66, v9
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s66, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s33, v8
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v15, 28, v129
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s66, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s33, v13
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v16, 30, v129
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s66, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s33, v14
	v_or_b32_e32 v15, s33, v15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s66, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s33, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s66, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s64, s65
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s36, s6, 31
	s_mul_i32 s8, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s66, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s66, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s66, v8
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s37, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s33
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s57, s18
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s4, s2, s81
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s66, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v17, s4, v75
	v_add_nc_u32_e32 v18, s4, v146
	v_add_nc_u32_e32 v19, s4, v147
	v_add_nc_u32_e32 v20, s4, v76
	v_add_nc_u32_e32 v21, s4, v148
	v_add_nc_u32_e32 v22, s4, v77
	v_add_nc_u32_e32 v23, s4, v78
	v_add_nc_u32_e32 v24, s4, v79
	v_add_nc_u32_e32 v25, s4, v149
	v_add_nc_u32_e32 v26, s4, v80
	v_add_nc_u32_e32 v27, s4, v81
	v_add_nc_u32_e32 v28, s4, v82
	v_add_nc_u32_e32 v29, s4, v83
	v_add_nc_u32_e32 v30, s4, v84
	v_add_nc_u32_e32 v31, s4, v85
	v_add_nc_u32_e32 v32, s4, v86
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s66, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s58, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s66, v6
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s59, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s66, v7
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x88, v0
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_and_b32 v39, 32, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v33, v17, s[28:31], 0 offen
	buffer_load_u8 v18, v18, s[28:31], 0 offen
	buffer_load_u8 v19, v19, s[28:31], 0 offen
	buffer_load_u8 v20, v20, s[28:31], 0 offen
	buffer_load_u8 v21, v21, s[28:31], 0 offen
	buffer_load_u8 v22, v22, s[28:31], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v23, 0x80000000, v25 :: v_dual_add_nc_u32 v152, 0, v35
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v26, 0x80000000, v27 :: v_dual_add_nc_u32 v151, 0, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x110, v0
	v_cndmask_b32_e32 v27, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v37, 0x198, v0
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s26, s30
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v28, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	buffer_load_u8 v25, v25, s[28:31], 0 offen
	buffer_load_u8 v26, v26, s[28:31], 0 offen
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s27, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v31, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v28, v28, s[28:31], 0 offen
	buffer_load_u8 v29, v29, s[28:31], 0 offen
	buffer_load_u8 v32, v17, s[28:31], 0 offen
	buffer_load_u8 v24, v24, s[28:31], 0 offen
	buffer_load_u8 v30, v30, s[28:31], 0 offen
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v17, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v153, 0, v36
	v_add_nc_u32_e32 v154, 0, v37
	v_writelane_b32 v255, s4, 1
	s_mov_b32 s83, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, v34, v17
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v151, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v151, v18 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v151, v23 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v151, v25 offset:576
	ds_store_b8 v152, v19
	ds_store_b8 v152, v20 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v152, v26 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v152, v27 offset:576
	ds_store_b8 v153, v21
	ds_store_b8 v153, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v153, v28 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v153, v29 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v154, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v154, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v154, v30 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v154, v31 offset:576
	.loc	1 780 17                        ; attention.py:780:17
	v_add_nc_u32_e32 v38, s2, v34
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s33, v34
	v_writelane_b32 v255, s5, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v19, 5, v17
	v_lshlrev_b32_e32 v21, 4, v39
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v35, 1, v38
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v34
	scratch_store_b32 off, v38, off offset:252 ; 4-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_writelane_b32 v255, s6, 3
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v34, 0x80000000, v35, s2
	v_writelane_b32 v255, s7, 4
	buffer_load_u16 v18, v34, s[24:27], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s24, s37, s36
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s25, s67, 31
	v_writelane_b32 v255, s9, 5
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s29, s24, s36
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v20, 24, v34
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s28, s29
	v_writelane_b32 v255, s10, 6
	s_cvt_f32_u32 s24, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_or3_b32 v21, v19, v21, v20
	v_writelane_b32 v255, s11, 7
	v_add_nc_u32_e32 v22, 0, v21
	v_xad_u32 v23, v21, 8, 0
	v_xad_u32 v24, v21, 16, 0
	v_writelane_b32 v255, s12, 8
	v_xad_u32 v21, v21, 24, 0
	ds_load_b64 v[87:88], v22
	ds_load_b64 v[89:90], v23
	ds_load_b64 v[91:92], v24
	ds_load_b64 v[93:94], v21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s24
	v_writelane_b32 v255, s8, 9
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s24, s25, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s26, s24, 27
	v_writelane_b32 v255, s13, 10
	s_add_i32 s25, s25, s26
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s56, s25, 0xffffffe0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s24, v21
	v_writelane_b32 v255, s14, 11
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s20, s20, 0x10008
	v_writelane_b32 v255, s15, 12
	v_writelane_b32 v255, s16, 13
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s33, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s26, s33, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s20, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s26, s26, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s20, s20, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s20, s67, s20
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s20, s20, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s25, s20, 31
	s_lshr_b32 s25, s25, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s20, s20, s25
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s25, s26, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s20, s20, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s83, s25, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s56, s56, s20
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v155, 0, 1, s35
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s20, s33, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s20, s20, 32
	s_min_i32 s20, s67, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s20, s20, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s25, s20, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s25, s25, 27
	s_add_i32 s20, s20, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s20, s20, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s56, s56, s20
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x38
	s_load_b32 s66, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v95, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s83, s56
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e32 vcc_lo, 0, v95
	s_cbranch_scc1 .LBB0_43
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_cmp_eq_u32_e64 s20, 0, v39
	v_or_b32_e32 v156, v19, v20
	s_mul_f32 s24, s24, 0x4f7ffffe
	s_load_b32 s4, s[0:1], 0x7c
	v_and_b32_e32 v22, 14, v0
	v_cndmask_b32_e64 v20, 0x104, 0, s20
	s_xor_b32 s20, s3, s64
	s_cvt_u32_f32 s24, s24
	s_ashr_i32 s20, s20, 31
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v160, s23, v1
	s_xor_b32 s25, s34, s20
	v_mov_b32_e32 v1, 0x5410
	s_sub_i32 s20, s25, s20
	s_sub_i32 s25, 0, s28
	s_mul_i32 s26, s20, s64
	s_mul_i32 s25, s25, s24
	s_sub_i32 s3, s3, s26
	s_mul_hi_u32 s25, s24, s25
	v_and_b32_e32 v19, 60, v34
	s_add_i32 s31, s24, s25
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x6c
	s_load_b64 s[62:63], s[0:1], 0x30
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v161, s23, v2
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v168, s23, v9
	v_cndmask_b32_e32 v2, 0x1054, v1, vcc_lo
	v_dual_mov_b32 v1, 0x7632 :: v_dual_add_nc_u32 v162, s23, v3
	v_mov_b32_e32 v61, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v110, s22, v168
	v_cndmask_b32_e32 v3, 0x3276, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s4, v74
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v163, s23, v4
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v4, 2, v129
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v164, s23, v5
	v_subrev_nc_u32_e32 v33, s21, v160
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v165, s23, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v166, s23, v7
	scratch_store_b32 off, v33, off offset:128 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v161
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v167, s23, v8
	scratch_store_b64 off, v[4:5], off      ; 8-byte Folded Spill
	v_or_b32_e32 v4, 4, v129
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v169, s23, v10
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v170, s23, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	scratch_store_b32 off, v33, off offset:132 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v162
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v171, s23, v12
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v172, s23, v13
	scratch_store_b64 off, v[4:5], off offset:8 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 6, v129
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v173, s23, v14
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v174, s23, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	scratch_store_b32 off, v33, off offset:136 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v163
	v_mov_b32_e32 v26, v25
	v_xor_b32_e32 v19, v20, v19
	v_lshrrev_b32_e32 v21, 2, v95
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v18.h, v18.l
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:16 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 8, v129
	v_mov_b16_e32 v18.l, 0
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s24, s24, 0x3fb8aa3b
	v_and_b32_e32 v20, 1, v0
	v_mul_u32_u24_e32 v22, 0x44, v22
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	scratch_store_b32 off, v33, off offset:140 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v164
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v159, s24, v18
	v_lshl_or_b32 v21, v20, 1, v21
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v175, s23, v16
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:24 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 10, v129
	v_or3_b32 v157, v21, v22, v129
	s_abs_i32 s30, s3
	s_ashr_i32 s34, s3, 31
	scratch_store_b32 off, v33, off offset:144 ; 4-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	v_subrev_nc_u32_e32 v33, s21, v165
	s_mul_hi_u32 s31, s30, s31
	s_ashr_i32 s29, s29, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s35, s31, s28
	s_xor_b32 s29, s34, s29
	s_sub_i32 s30, s30, s35
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:32 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 12, v129
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s34, s31, 1
	s_sub_i32 s35, s30, s28
	scratch_store_b32 off, v33, off offset:148 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v166
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s30, s28
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	s_cselect_b32 s31, s34, s31
	s_cselect_b32 s30, s35, s30
	s_add_i32 s34, s31, 1
	s_cmp_ge_u32 s30, s28
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:40 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 14, v129
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s28, s34, s31
	scratch_store_b32 off, v33, off offset:152 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v167
	s_xor_b32 s28, s28, s29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s28, s28, s29
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s29, s20, s65
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s27, s33
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s28, s28, s29
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s20, s20, s25
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s0, s28, s67
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:48 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 16, v129
	scratch_store_b32 off, v33, off offset:156 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v168
	.loc	1 843 41                        ; attention.py:843:41
	v_writelane_b32 v255, s0, 14
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	s_add_i32 s1, s20, s1
	v_lshl_or_b32 v158, v20, 6, v19
	s_add_i32 s1, s1, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s66, v0
	v_writelane_b32 v255, s1, 15
	v_lshl_add_u32 v180, v17, 1, 0
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[4:5], off offset:56 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 18, v129
	scratch_store_b32 off, v33, off offset:160 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v169
	v_writelane_b32 v255, s4, 16
	s_mov_b32 s4, 0
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	scratch_store_b64 off, v[4:5], off offset:64 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 20, v129
	scratch_store_b32 off, v33, off offset:164 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v170
	s_mov_b32 s11, s4
	v_writelane_b32 v255, s4, 17
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v220, 4, v95
	v_mov_b32_e32 v133, 0xff800000
	v_writelane_b32 v255, s5, 18
	v_mov_b32_e32 v135, 0xff800000
	v_mov_b32_e32 v137, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:168
	scratch_store_b64 off, v[4:5], off offset:72
	v_or_b32_e32 v4, 22, v129
	v_subrev_nc_u32_e32 v33, s21, v171
	v_writelane_b32 v255, s6, 19
	v_mov_b32_e32 v139, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	v_writelane_b32 v255, s7, 20
	v_mov_b32_e32 v103, 0xff800000
	v_mov_b32_e32 v101, 0xff800000
	v_mov_b32_e32 v99, 0xff800000
	scratch_store_b32 off, v33, off offset:172 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v172
	scratch_store_b64 off, v[4:5], off offset:80 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 24, v129
	v_writelane_b32 v255, s8, 21
	v_mov_b32_e32 v97, 0xff800000
	v_mov_b32_e32 v95, 0xff800000
	v_mov_b32_e32 v143, 0xff800000
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	v_writelane_b32 v255, s9, 22
	v_mov_b32_e32 v141, 0xff800000
	s_mov_b32 s79, 0x31027000
	scratch_store_b32 off, v33, off offset:176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v173
	v_writelane_b32 v255, s10, 23
	scratch_store_b64 off, v[4:5], off offset:88 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 26, v129
	s_mov_b32 s78, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s69, 0xffff
	v_writelane_b32 v255, s11, 24
	s_and_b32 s73, s73, 0xffff
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	s_and_b32 s77, s71, 0xffff
	s_mov_b32 s76, s70
	scratch_store_b32 off, v33, off offset:180 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v33, s21, v174
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	scratch_store_b64 off, v[4:5], off offset:96 ; 8-byte Folded Spill
	v_or_b32_e32 v4, 28, v129
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	s_mov_b32 s85, 0x76543210
	scratch_store_b32 off, v33, off offset:184 ; 4-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	v_subrev_nc_u32_e32 v33, s21, v175
	v_mov_b32_e32 v28, v25
	v_dual_mov_b32 v30, v25 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v104, 0xff800000
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v33, off offset:188
	scratch_store_b64 off, v[4:5], off offset:104
	v_or_b32_e32 v4, 30, v129
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_add_nc_u32 v33, s22, v160
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v32, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s27, v4, v[1:2]
	scratch_store_b32 off, v33, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_add_nc_u32 v33, s22, v161
	v_mov_b32_e32 v18, v25
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_mov_b32 v29, v25
	scratch_store_b64 off, v[4:5], off offset:112 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s27, v129, v[1:2]
	v_lshl_or_b32 v1, v2, 8, v2
	v_lshl_or_b32 v2, v3, 8, v3
	v_lshrrev_b32_e32 v3, 4, v39
	scratch_store_b32 off, v33, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v162
	v_and_b32_e32 v1, 0x540054, v1
	scratch_store_b64 off, v[4:5], off offset:120 ; 8-byte Folded Spill
	v_lshl_or_b32 v176, v74, 2, v3
	v_lshlrev_b32_e32 v3, 2, v0
	scratch_store_b32 off, v33, off offset:200 ; 4-byte Folded Spill
	v_lshl_or_b32 v1, v1, 4, v1
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_add_nc_u32 v33, s22, v163
	v_lshl_or_b32 v177, v17, 8, v3
	v_mov_b32_e32 v144, 0xff800000
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v178, 0x5040504, v1
	v_xor_b32_e32 v1, 8, v156
	scratch_store_b32 off, v33, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_add_nc_u32 v33, s22, v164
	v_and_b32_e32 v2, 0x760076, v2
	v_add_nc_u32_e32 v181, 0, v1
	v_xor_b32_e32 v1, 16, v156
	scratch_store_b32 off, v33, off offset:208 ; 4-byte Folded Spill
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_add_nc_u32 v33, s22, v165
	v_lshl_or_b32 v2, v2, 4, v2
	v_add_nc_u32_e32 v182, 0, v1
	v_xor_b32_e32 v1, 24, v156
	scratch_store_b32 off, v33, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v166
	v_and_b32_e32 v179, 0x7060706, v2
	v_mov_b32_e32 v31, v25
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v183, 0, v1
	v_xor_b32_e32 v1, 0x88, v176
	scratch_store_b32 off, v33, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v167
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v184, 0, v1
	v_xor_b32_e32 v1, 0x110, v176
	scratch_store_b32 off, v33, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v169
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v185, 0, v1
	v_xor_b32_e32 v1, 0x198, v176
	scratch_store_b32 off, v33, off offset:224 ; 4-byte Folded Spill
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v33, s22, v170
	v_mov_b32_e32 v10, v25
	v_add_nc_u32_e32 v186, 0, v1
	v_xor_b32_e32 v1, 0x220, v176
	scratch_store_b32 off, v33, off offset:228 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v171
	v_mov_b32_e32 v23, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v187, 0, v1
	v_xor_b32_e32 v1, 0x2a8, v176
	scratch_store_b32 off, v33, off offset:232 ; 4-byte Folded Spill
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v33, s22, v172
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v188, 0, v1
	v_xor_b32_e32 v1, 0x330, v176
	scratch_store_b32 off, v33, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v33, s22, v173
	v_mov_b32_e32 v11, v25
	v_add_nc_u32_e32 v189, 0, v1
	v_xor_b32_e32 v1, 0x3b8, v176
	scratch_store_b32 off, v33, off offset:240 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v33, s22, v174
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v190, 0, v1
	v_xor_b32_e32 v1, 8, v157
	scratch_store_b32 off, v33, off offset:244 ; 4-byte Folded Spill
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v33, s22, v175
	v_mov_b32_e32 v15, v25
	v_add_nc_u32_e32 v191, 0, v1
	v_xor_b32_e32 v1, 16, v157
	scratch_store_b32 off, v33, off offset:248 ; 4-byte Folded Spill
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v8, v25
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v192, 0, v1
	v_xor_b32_e32 v1, 24, v157
	v_dual_mov_b32 v254, 0xff800000 :: v_dual_mov_b32 v5, v25
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_mov_b32 v7, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v193, 0, v1
	v_xor_b32_e32 v1, 32, v157
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_mov_b32 v57, 0xff800000
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_mov_b32 v253, 0xff800000
	v_add_nc_u32_e32 v194, 0, v1
	v_xor_b32_e32 v1, 40, v157
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_mov_b32 v131, 0xff800000
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_mov_b32 v127, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v195, 0, v1
	v_xor_b32_e32 v1, 48, v157
	v_dual_mov_b32 v134, 0xff800000 :: v_dual_mov_b32 v145, 0xff800000
	v_mov_b32_e32 v138, 0xff800000
	v_add_nc_u32_e32 v196, 0, v1
	v_xor_b32_e32 v1, 56, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v197, 0, v1
	v_xor_b32_e32 v1, 4, v177
	v_add_nc_u32_e32 v198, 0, v1
	v_xor_b32_e32 v1, 8, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v199, 0, v1
	v_xor_b32_e32 v1, 12, v177
	v_add_nc_u32_e32 v200, 0, v1
	v_xor_b32_e32 v1, 16, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v201, 0, v1
	v_xor_b32_e32 v1, 20, v177
	v_add_nc_u32_e32 v202, 0, v1
	v_xor_b32_e32 v1, 24, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v203, 0, v1
	v_xor_b32_e32 v1, 28, v177
	v_add_nc_u32_e32 v204, 0, v1
	v_xor_b32_e32 v1, 32, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v205, 0, v1
	v_xor_b32_e32 v1, 36, v177
	v_add_nc_u32_e32 v206, 0, v1
	v_xor_b32_e32 v1, 40, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v207, 0, v1
	v_xor_b32_e32 v1, 44, v177
	v_add_nc_u32_e32 v208, 0, v1
	v_xor_b32_e32 v1, 48, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v209, 0, v1
	v_xor_b32_e32 v1, 52, v177
	v_add_nc_u32_e32 v210, 0, v1
	v_xor_b32_e32 v1, 56, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v211, 0, v1
	v_xor_b32_e32 v1, 60, v177
	v_add_nc_u32_e32 v212, 0, v1
	v_xor_b32_e32 v1, 0x208, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v213, 0, v1
	v_xor_b32_e32 v1, 0x410, v158
	v_add_nc_u32_e32 v214, 0, v1
	v_xor_b32_e32 v1, 0x618, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v215, 0, v1
	v_xor_b32_e32 v1, 0x820, v158
	v_add_nc_u32_e32 v216, 0, v1
	v_xor_b32_e32 v1, 0xa28, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v217, 0, v1
	v_xor_b32_e32 v1, 0xc30, v158
	v_add_nc_u32_e32 v218, 0, v1
	v_xor_b32_e32 v1, 0xe38, v158
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v219, 0, v1
	v_mov_b32_e32 v1, v25
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v221, v36
	v_cvt_f32_i32_e32 v36, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v56.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v126, v35
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v123, v41
	v_cvt_f32_i32_e32 v41, v42
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v37.l
	v_and_b16 v37.l, 0xff, v56.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v125, v34
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 vcc_lo, s101, vcc_lo
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, vcc_lo
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v37.h, 0xff, v55.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v39
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s100, s1
	v_lshlrev_b16 v37.l, 8, v37.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.h
	v_and_b16 v37.h, 0xff, v52.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v38, 0, 1, s1
	s_barrier
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, s99, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v37.h
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v37.l, v38.l, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s20
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v124, v33
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s27, s98, s21
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v159, v36
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v37.h, 8, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v41
	v_mul_f32_e32 v34, v159, v34
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v33, v40
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v37.h, v38.l, v37.h
	v_add_nc_u32_e32 v38, 0, v176
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v159, v124
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v43.h, v122.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 877 25                        ; attention.py:877:25
	ds_store_b16 v38, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v121.l
	v_mov_b16_e32 v38.l, v43.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v37.l, 0xff, v49.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v159, v48
	v_mul_f32_e32 v33, v159, v33
	v_mul_f32_e32 v35, v159, v35
	v_mul_f32_e32 v56, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v120.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v42
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v37.l
	v_and_b16 v37.l, 0xff, v49.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v159, v125
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s51, s83, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v120, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v119.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v44
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v37.l
	v_and_b16 v37.l, 0xff, v50.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s31, s95, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s3, s83, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v119, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v118.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v45
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v37.l
	v_and_b16 v37.l, 0xff, v50.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s34, s93, s21
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s65, s83, 3
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v118, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v117.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v46
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v37.l
	v_and_b16 v37.l, 0xff, v51.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s33, s92, s22
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s80, s83, 4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v116.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v159, v47
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v37.l
	v_and_b16 v37.l, 0xff, v51.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s84, s83, 5
	s_or_b32 s92, s83, 12
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v115.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s29, 0, v37.l
	v_and_b16 v37.l, 0xff, v53.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s28, s87, s28
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s87, s83, 7
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v40, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v114.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v37.l
	v_and_b16 v37.l, 0xff, v52.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s29, s50, s29
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s93, s83, 13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v41, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v113.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v37.l
	v_and_b16 v37.l, 0xff, v54.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s26, s97, s23
	v_cndmask_b32_e64 v45, 0, 1, s29
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v47, v42, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v112.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v159, v126
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s30, 0, v37.l
	v_and_b16 v37.l, 0xff, v53.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s24, s96, s24
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s95, s83, 15
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v42, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v159, v221
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s35, 0, v37.l
	v_and_b16 v37.l, 0xff, v55.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s94, s30
	s_and_b32 s30, s89, s25
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v111, v42, v38
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v38, 0, 1, s26
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v37.l
	v_and_b16 v37.l, 0xff, v54.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v42, 0, 1, s34
	s_and_b32 s22, s91, s35
	v_cndmask_b32_e64 v44, 0, 1, s30
	s_and_b32 s25, s90, s36
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s37, 0, v37.l
	.loc	1 877 25                        ; attention.py:877:25
	v_mov_b16_e32 v37.l, v38.l
	v_cndmask_b32_e64 v38, 0, 1, s31
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s89, s83, 9
	s_or_b32 s90, s83, 10
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s21, s88, s37
	v_lshlrev_b16 v37.l, 8, v37.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s88, s83, 8
	s_or_b32 s91, s83, 11
	s_or_b32 s94, s83, 14
	s_or_b32 s96, s83, 16
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v37.l, v38.l, v37.l
	v_cndmask_b32_e64 v38, 0, 1, s24
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s97, s83, 17
	s_or_b32 s98, s83, 18
	s_or_b32 s4, s83, 19
	s_or_b32 s5, s83, 20
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v38.l, 8, v38.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s6, s83, 21
	s_or_b32 s7, s83, 22
	s_or_b32 s8, s83, 23
	s_or_b32 s9, s83, 24
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v38.l, v42.l, v38.l
	v_cndmask_b32_e64 v42, 0, 1, s23
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s10, s83, 25
	s_or_b32 s11, s83, 26
	s_or_b32 s12, s83, 27
	s_or_b32 s13, s83, 28
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v38.h, 8, v42.l
	v_cndmask_b32_e64 v42, 0, 1, s33
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s14, s83, 29
	s_or_b32 s15, s83, 30
	s_or_b32 s16, s83, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v243, v151, v0
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v38.h, v42.l, v38.h
	v_cndmask_b32_e64 v42, 0, 1, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v42.l, 8, v42.l
	v_or_b16 v42.l, v44.l, v42.l
	v_cndmask_b32_e64 v44, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v42.h, 8, v44.l
	v_cndmask_b32_e64 v44, 0, 1, s28
	v_or_b16 v42.h, v44.l, v42.h
	v_cndmask_b32_e64 v44, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v44.l, 8, v44.l
	v_or_b16 v44.l, v45.l, v44.l
	ds_store_b16_d16_hi v184, v37
	ds_store_b16 v185, v37
	ds_store_b16 v186, v38
	ds_store_b16_d16_hi v187, v38
	ds_store_b16 v188, v42
	ds_store_b16_d16_hi v189, v42
	ds_store_b16 v190, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v37.h, v109.l
	v_mov_b16_e32 v37.l, v43.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v36, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v36.h, v108.l
	v_mov_b16_e32 v36.l, v43.l
	.loc	1 877 25                        ; attention.py:877:25
	v_add_nc_u32_e32 v37, 0, v157
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v35, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v35.h, v107.l
	v_mov_b16_e32 v35.l, v43.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v34, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v34.h, v106.l
	v_mov_b16_e32 v34.l, v43.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v33, v34
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u8_d16 v33, v191
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v33, v193 offset:64
	ds_load_u8_d16 v34, v192 offset:64
	ds_load_u8_d16 v44, v191 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16_hi v34, v37 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s48, 1, v33.l
	ds_load_u8_d16 v33, v192
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s44, 1, v33.l
	ds_load_u8_d16 v33, v193
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v33.l
	ds_load_u8_d16 v33, v194
	ds_load_u8_d16 v35, v197 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v196 offset:64
	ds_load_u8_d16 v36, v195 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v194 offset:64
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s45, 1, v33.l
	ds_load_u8_d16 v33, v195
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s46, 1, v33.l
	ds_load_u8_d16 v33, v197
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v46, s46
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s43, 1, v33.l
	v_and_b16 v33.l, 1, v34.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s41, 1, v33.l
	v_and_b16 v33.l, 1, v34.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v159, v123
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v41, s41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v33.l
	v_and_b16 v33.l, 1, v33.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v34, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v43.h, 1, v44.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s39
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_and_b16 v33.l, 1, v36.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s42, 1, v43.h
	ds_load_u8_d16_hi v43, v196
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v111, s40
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s37, 1, v33.l
	v_and_b16 v33.l, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v119, s47
	v_cndmask_b32_e64 v107, 0xff800000, v47, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s38, 1, v33.l
	v_and_b16 v33.l, 1, v35.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v49, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s35, 1, v33.l
	v_and_b16 v33.l, 1, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v120, s44
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v107, v48, v106
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v50, s35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s36, 1, v33.l
	ds_load_u8_d16 v33, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v118, s45
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s50, 1, v43.h
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.h, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v39, v40, v108
.Ltmp6:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s49, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v34, s49
	v_cndmask_b32_e64 v34, 0xff800000, v56, s48
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v42, v42, v35, v46
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v45, s37
	v_cndmask_b32_e64 v45, 0xff800000, v51, s36
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v50, v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v49, v49, v50, v45
.Ltmp10:
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[50:51], null, s86, s66, v[0:1]
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s86, s83, 6
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s83, s67
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v42, v41, v49
.Ltmp12:
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s3, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v42, 0, v177
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s51, s67
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v49, s66, v50
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s65, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v42, v33
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s80, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v50
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s84, s67
	v_add_nc_u32_e32 v50, s66, v49
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s86, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v49, 1, v49
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s87, s67
	v_add_nc_u32_e32 v51, s66, v50
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s88, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v50, 1, v50
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s89, s67
	v_add_nc_u32_e32 v52, s66, v51
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s90, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v51, 1, v51
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s91, s67
	v_add_nc_u32_e32 v53, s66, v52
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s92, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v52, 1, v52
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s93, s67
	v_add_nc_u32_e32 v54, s66, v53
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s94, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v53, 1, v53
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s95, s67
	v_add_nc_u32_e32 v55, s66, v54
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s96, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v54, 1, v54
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s97, s67
	v_add_nc_u32_e32 v56, s66, v55
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s98, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v55, 1, v55
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s4, s67
	v_add_nc_u32_e32 v109, s66, v56
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s5, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v56, 1, v56
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s6, s67
	v_add_nc_u32_e32 v111, s66, v109
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s7, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v109, 1, v109
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s8, s67
	v_add_nc_u32_e32 v112, s66, v111
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s9, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v111, 1, v111
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s10, s67
	v_add_nc_u32_e32 v113, s66, v112
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s11, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v112, 1, v112
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s12, s67
	v_add_nc_u32_e32 v114, s66, v113
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s13, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v113, 1, v113
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s14, s67
	v_add_nc_u32_e32 v115, s66, v114
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s15, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v114, 1, v114
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s16, s67
	v_add_nc_u32_e32 v116, s66, v115
	s_cselect_b32 s87, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s17
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v115, 1, v115
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s19
	v_add_nc_u32_e32 v117, s66, v116
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s64
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v116, 1, v116
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s82
	v_add_nc_u32_e32 v118, s66, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s52
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v198, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v52, 0x80000000, v52, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s53
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v199, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v53, 0x80000000, v53, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s54
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v200, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v54, 0x80000000, v54, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s55
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v201, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v55, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s51
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v202, v38
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v56, 0x80000000, v56, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s84
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v203, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v109, 0x80000000, v109, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s65
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v204, v40
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v111, 0x80000000, v111, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s80
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v205, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v112, 0x80000000, v112, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v206, v107
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v113, 0x80000000, v113, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v207, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v208, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v209, v46
	ds_store_b32 v210, v47
	ds_store_b32 v211, v44
	ds_store_b32 v212, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	s_clause 0x7
	buffer_load_u16 v56, v56, s[76:79], 0 offen
	buffer_load_u16 v109, v109, s[76:79], 0 offen
	buffer_load_u16 v221, v111, s[76:79], 0 offen
	buffer_load_u16 v222, v112, s[76:79], 0 offen
	buffer_load_u16 v223, v113, s[76:79], 0 offen
	buffer_load_u16 v224, v114, s[76:79], 0 offen
	buffer_load_u16 v225, v115, s[76:79], 0 offen
	buffer_load_u16 v226, v116, s[76:79], 0 offen
	v_add_nc_u32_e32 v111, s66, v118
	v_lshlrev_b32_e32 v117, 1, v117
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v112, 1, v118
	s_clause 0x7
	buffer_load_u16 v42, v42, s[76:79], 0 offen
	buffer_load_u16 v49, v49, s[76:79], 0 offen
	buffer_load_u16 v50, v50, s[76:79], 0 offen
	buffer_load_u16 v51, v51, s[76:79], 0 offen
	buffer_load_u16 v52, v52, s[76:79], 0 offen
	buffer_load_u16 v53, v53, s[76:79], 0 offen
	buffer_load_u16 v54, v54, s[76:79], 0 offen
	buffer_load_u16 v55, v55, s[76:79], 0 offen
	v_add_nc_u32_e32 v114, s66, v111
	v_cndmask_b32_e64 v113, 0x80000000, v117, s3
	v_lshlrev_b32_e32 v111, 1, v111
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 32
	v_add_nc_u32_e32 v115, s66, v114
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v114, 1, v114
	v_cndmask_b32_e64 v112, 0x80000000, v112, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v116, s66, v115
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v115, 1, v115
	v_cndmask_b32_e64 v111, 0x80000000, v111, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	v_add_nc_u32_e32 v117, s66, v116
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v116, 1, v116
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v118, s66, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v117, 1, v117
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	v_add_nc_u32_e32 v119, s66, v118
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v118, 1, v118
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v120, s66, v119
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v117, 0x80000000, v117, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v119, 1, v119
	v_cndmask_b32_e64 v118, 0x80000000, v118, s3
	s_clause 0x7
	buffer_load_u16 v227, v113, s[76:79], 0 offen
	buffer_load_u16 v228, v112, s[76:79], 0 offen
	buffer_load_u16 v229, v111, s[76:79], 0 offen
	buffer_load_u16 v230, v114, s[76:79], 0 offen
	buffer_load_u16 v231, v115, s[76:79], 0 offen
	buffer_load_u16 v232, v116, s[76:79], 0 offen
	buffer_load_u16 v233, v117, s[76:79], 0 offen
	buffer_load_u16 v234, v118, s[76:79], 0 offen
	v_add_nc_u32_e32 v111, s66, v120
	v_lshlrev_b32_e32 v112, 1, v120
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v113, 0x80000000, v119, s3
	v_add_nc_u32_e32 v114, s66, v111
	v_lshlrev_b32_e32 v111, 1, v111
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v112, 0x80000000, v112, s3
	v_add_nc_u32_e32 v115, s66, v114
	v_lshlrev_b32_e32 v114, 1, v114
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v111, 0x80000000, v111, s3
	v_add_nc_u32_e32 v116, s66, v115
	v_lshlrev_b32_e32 v115, 1, v115
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	v_add_nc_u32_e32 v117, s66, v116
	v_lshlrev_b32_e32 v116, 1, v116
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v115, 0x80000000, v115, s3
	v_lshlrev_b32_e32 v118, 1, v117
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v117, v117, s66, 1
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s88
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v118, 0x80000000, v118, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s87
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v117, 0x80000000, v117, s3
	s_clause 0x7
	buffer_load_u16 v235, v113, s[76:79], 0 offen
	buffer_load_u16 v236, v112, s[76:79], 0 offen
	buffer_load_u16 v237, v111, s[76:79], 0 offen
	buffer_load_u16 v238, v114, s[76:79], 0 offen
	buffer_load_u16 v239, v115, s[76:79], 0 offen
	buffer_load_u16 v240, v116, s[76:79], 0 offen
	buffer_load_u16 v241, v118, s[76:79], 0 offen
	buffer_load_u16 v242, v117, s[76:79], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v111, 0, v158
	ds_load_2addr_b32 v[125:126], v111 offset1:32
	ds_load_2addr_b32 v[123:124], v213 offset1:32
	ds_load_2addr_b32 v[121:122], v214 offset1:32
	ds_load_2addr_b32 v[119:120], v215 offset1:32
	ds_load_2addr_b32 v[117:118], v216 offset1:32
	ds_load_2addr_b32 v[115:116], v217 offset1:32
	ds_load_2addr_b32 v[113:114], v218 offset1:32
	ds_load_2addr_b32 v[111:112], v219 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(23)
	ds_store_b16 v243, v42
	s_waitcnt vmcnt(22)
	ds_store_b16 v243, v49 offset:128
	s_waitcnt vmcnt(21)
	ds_store_b16 v243, v50 offset:256
	s_waitcnt vmcnt(20)
	ds_store_b16 v243, v51 offset:384
	s_waitcnt vmcnt(19)
	ds_store_b16 v243, v52 offset:512
	s_waitcnt vmcnt(18)
	ds_store_b16 v243, v53 offset:640
	s_waitcnt vmcnt(17)
	ds_store_b16 v243, v54 offset:768
	s_waitcnt vmcnt(16)
	ds_store_b16 v243, v55 offset:896
	ds_store_b16 v243, v56 offset:1024
	ds_store_b16 v243, v109 offset:1152
	ds_store_b16 v243, v221 offset:1280
	ds_store_b16 v243, v222 offset:1408
	ds_store_b16 v243, v223 offset:1536
	ds_store_b16 v243, v224 offset:1664
	ds_store_b16 v243, v225 offset:1792
	ds_store_b16 v243, v226 offset:1920
	s_waitcnt vmcnt(15)
	ds_store_b16 v243, v227 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v243, v228 offset:2176
	s_waitcnt vmcnt(13)
	ds_store_b16 v243, v229 offset:2304
	s_waitcnt vmcnt(12)
	ds_store_b16 v243, v230 offset:2432
	s_waitcnt vmcnt(11)
	ds_store_b16 v243, v231 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b16 v243, v232 offset:2688
	s_waitcnt vmcnt(9)
	ds_store_b16 v243, v233 offset:2816
	s_waitcnt vmcnt(8)
	ds_store_b16 v243, v234 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v243, v235 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v243, v236 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v243, v237 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v243, v238 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v243, v239 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v243, v240 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v243, v241 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v243, v242 offset:3968
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v42, v41, s85, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v52, v180 offset:608
	ds_load_u16_d16 v51, v180 offset:352
	ds_load_u16_d16 v221, v180
	ds_load_u16_d16 v223, v180 offset:512
	ds_load_u16_d16 v224, v180 offset:768
	ds_load_u16_d16 v222, v180 offset:256
	ds_load_u16_d16 v231, v180 offset:576
	ds_load_u16_d16 v232, v180 offset:832
	ds_load_u16_d16 v225, v180 offset:1024
	ds_load_u16_d16 v233, v180 offset:1088
	ds_load_u16_d16 v226, v180 offset:1280
	ds_load_u16_d16 v234, v180 offset:1344
	ds_load_u16_d16 v227, v180 offset:1536
	ds_load_u16_d16 v228, v180 offset:1792
	ds_load_u16_d16 v235, v180 offset:1600
	ds_load_u16_d16 v229, v180 offset:64
	ds_load_u16_d16 v230, v180 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v51, v180 offset:480
	ds_load_u16_d16 v50, v180 offset:96
	ds_load_u16_d16 v237, v180 offset:32
	ds_load_u16_d16 v238, v180 offset:288
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v221, v180 offset:128
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v109, v57, v41, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v43.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v223, v180 offset:640
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v222, v180 offset:384
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v231, v180 offset:704
	ds_load_u16_d16_hi v224, v180 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v232, v180 offset:960
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v225, v180 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v233, v180 offset:1216
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v226, v180 offset:1408
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v234, v180 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v227, v180 offset:1664
	ds_load_u16_d16 v236, v180 offset:1856
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v180 offset:1728
	ds_load_u16_d16_hi v228, v180 offset:1920
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v109
	v_sub_f32_e32 v33, v33, v109
	v_sub_f32_e32 v36, v36, v109
	v_sub_f32_e32 v35, v35, v109
	v_sub_f32_e32 v38, v38, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v109
	v_sub_f32_e32 v40, v40, v109
	v_sub_f32_e32 v39, v39, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s48
	v_cndmask_b32_e64 v33, 0, v33, s49
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v36, 0, v36, s47
	v_cndmask_b32_e64 v35, 0, v35, s44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s48, v33, v33
	v_cmp_o_f32_e64 s44, v35, v35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v34, v41, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	v_mov_b16_e32 v34.h, v43.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s43
	v_cndmask_b32_e64 v39, 0, v39, s50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s43, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v34.h, s48
	v_permlanex16_b32 v34, v41, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v34, v41, v178
	v_perm_b32 v34, v34, v41, v179
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v43.l
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v36, v41, 0x7fff
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v43.l
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v36, v35, v36, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v41.l, 0x7fff, v36.h, s44
	v_cmp_o_f32_e64 s44, v37, v37
	v_permlanex16_b32 v36, v41, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v36, v41, v178
	v_perm_b32 v36, v36, v41, v179
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v43.l
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v38, v41, 0x7fff
	v_mov_b16_e32 v38.l, v37.h
	v_mov_b16_e32 v38.h, v43.l
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v38.h, s44
	v_permlanex16_b32 v38, v41, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v38, v41, v178
	v_perm_b32 v38, v38, v41, v179
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v43.l
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_mov_b16_e32 v40.l, v39.h
	v_mov_b16_e32 v40.h, v43.l
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s43
	v_permlanex16_b32 v40, v41, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v40, v41, v178
	v_perm_b32 v40, v40, v41, v179
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v57, v109
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v246, 0, v41, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v237, v180 offset:160
	ds_load_u16_d16_hi v229, v180 offset:192
	ds_load_u16_d16_hi v50, v180 offset:224
	ds_load_u16_d16 v239, v180 offset:544
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v238, v180 offset:416
	ds_load_u16_d16_hi v230, v180 offset:448
	ds_load_u16_d16 v53, v180 offset:864
	ds_load_u16_d16 v54, v180 offset:1120
	ds_load_u16_d16 v55, v180 offset:1376
	ds_load_u16_d16 v56, v180 offset:1632
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v236, v180 offset:1984
	ds_load_u16_d16 v49, v180 offset:2048
	ds_load_u16_d16 v41, v180 offset:2112
	ds_load_u16_d16 v57, v180 offset:1888
	ds_load_u16_d16 v240, v180 offset:800
	ds_load_u16_d16 v241, v180 offset:1056
	ds_load_u16_d16 v242, v180 offset:1312
	ds_load_u16_d16 v243, v180 offset:1568
	ds_load_u16_d16 v244, v180 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v239, v180 offset:672
	ds_load_u16_d16_hi v52, v180 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v246
	v_mul_f32_e32 v26, v26, v246
	v_mul_f32_e32 v27, v27, v246
	v_mul_f32_e32 v28, v28, v246
	v_mul_f32_e32 v29, v29, v246
	v_mul_f32_e32 v30, v30, v246
	v_mul_f32_e32 v31, v31, v246
	v_mul_f32_e32 v32, v32, v246
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v240, v180 offset:928
	ds_load_u16_d16_hi v53, v180 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v241, v180 offset:1184
	ds_load_u16_d16_hi v54, v180 offset:1248
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v242, v180 offset:1440
	ds_load_u16_d16_hi v55, v180 offset:1504
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v243, v180 offset:1696
	ds_load_u16_d16_hi v56, v180 offset:1760
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v244, v180 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[221:228], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v57, v180 offset:2016
	ds_load_u16_d16 v42, v180 offset:2368
	ds_load_u16_d16_hi v41, v180 offset:2240
	ds_load_u16_d16 v221, v180 offset:2080
	ds_load_u16_d16 v245, v180 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v246
	v_mul_f32_e32 v18, v18, v246
	v_mul_f32_e32 v19, v19, v246
	v_mul_f32_e32 v20, v20, v246
	v_mul_f32_e32 v21, v21, v246
	v_mul_f32_e32 v22, v22, v246
	v_mul_f32_e32 v23, v23, v246
	v_mul_f32_e32 v24, v24, v246
	v_mul_f32_e32 v9, v9, v246
	v_mul_f32_e32 v10, v10, v246
	v_mul_f32_e32 v11, v11, v246
	v_mul_f32_e32 v12, v12, v246
	v_mul_f32_e32 v13, v13, v246
	v_mul_f32_e32 v14, v14, v246
	v_mul_f32_e32 v15, v15, v246
	v_mul_f32_e32 v16, v16, v246
	v_mul_f32_e32 v1, v1, v246
	v_mul_f32_e32 v2, v2, v246
	v_mul_f32_e32 v3, v3, v246
	v_mul_f32_e32 v4, v4, v246
	v_mul_f32_e32 v5, v5, v246
	v_mul_f32_e32 v6, v6, v246
	v_mul_f32_e32 v7, v7, v246
	v_mul_f32_e32 v8, v8, v246
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[237:244], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[229:236], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v222, v180 offset:2336
	ds_load_u16_d16 v223, v180 offset:2592
	ds_load_u16_d16 v224, v180 offset:2848
	ds_load_u16_d16 v225, v180 offset:3104
	ds_load_u16_d16 v226, v180 offset:3360
	ds_load_u16_d16 v227, v180 offset:3616
	ds_load_u16_d16 v228, v180 offset:3872
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v221, v180 offset:2208
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v245, v180 offset:2272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[50:57], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v107, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v43.l
	v_mov_b16_e32 v35.h, v43.l
	v_mov_b16_e32 v36.h, v43.l
	v_mov_b16_e32 v37.h, v43.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v43.l
	v_mov_b16_e32 v39.h, v43.l
	v_mov_b16_e32 v40.h, v43.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v33, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v108, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s41, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v33, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s41
	v_permlanex16_b32 v35, v34, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v35, v34, v178
	v_perm_b32 v34, v35, v34, v179
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v106, v109
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
	v_sub_f32_e32 v35, v48, v109
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
	v_permlanex16_b32 v37, v36, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v37, v36, v178
	v_perm_b32 v36, v37, v36, v179
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v47, v109
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
	v_sub_f32_e32 v37, v46, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	v_cmp_o_f32_e64 s37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v37, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s37
	v_permlanex16_b32 v39, v38, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v39, v38, v178
	v_perm_b32 v38, v39, v38, v179
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v45, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v39, v39
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v44, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.l, v39.h
	v_cmp_o_f32_e64 s35, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v39, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s35
	v_permlanex16_b32 v43, v40, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v43, v40, v178
	v_perm_b32 v40, v43, v40, v179
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v51, v180 offset:2560
	ds_load_u16_d16 v43, v180 offset:2624
	ds_load_u16_d16 v52, v180 offset:2816
	ds_load_u16_d16 v44, v180 offset:2880
	ds_load_u16_d16 v53, v180 offset:3072
	ds_load_u16_d16 v45, v180 offset:3136
	ds_load_u16_d16 v54, v180 offset:3328
	ds_load_u16_d16 v46, v180 offset:3392
	ds_load_u16_d16 v55, v180 offset:3584
	ds_load_u16_d16 v47, v180 offset:3648
	ds_load_u16_d16 v56, v180 offset:3840
	ds_load_u16_d16 v50, v180 offset:2304
	ds_load_u16_d16_hi v49, v180 offset:2176
	ds_load_u16_d16_hi v42, v180 offset:2496
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v51, v180 offset:2688
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v43, v180 offset:2752
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v52, v180 offset:2944
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v180 offset:3008
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v53, v180 offset:3200
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v45, v180 offset:3264
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v54, v180 offset:3456
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v46, v180 offset:3520
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v55, v180 offset:3712
	ds_load_u16_d16 v48, v180 offset:3904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v180 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v56, v180 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v50, v180 offset:2432
	ds_load_u16_d16 v246, v180 offset:2400
	ds_load_u16_d16 v247, v180 offset:2656
	ds_load_u16_d16 v248, v180 offset:2912
	ds_load_u16_d16 v249, v180 offset:3168
	ds_load_u16_d16 v250, v180 offset:3424
	ds_load_u16_d16 v251, v180 offset:3680
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v48, v180 offset:4032
	ds_load_u16_d16 v252, v180 offset:3936
	ds_load_u16_d16_hi v222, v180 offset:2464
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v246, v180 offset:2528
	ds_load_u16_d16_hi v223, v180 offset:2720
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v247, v180 offset:2784
	ds_load_u16_d16_hi v224, v180 offset:2976
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v248, v180 offset:3040
	ds_load_u16_d16_hi v225, v180 offset:3232
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v249, v180 offset:3296
	ds_load_u16_d16_hi v226, v180 offset:3488
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v250, v180 offset:3552
	ds_load_u16_d16_hi v227, v180 offset:3744
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v251, v180 offset:3808
	ds_load_u16_d16_hi v228, v180 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v252, v180 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[221:228], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[245:252], v[33:40], v[1:8]
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v125 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v125, v125 :: v_dual_max_f32 v35, v123, v123
	v_max_f32_e32 v36, v121, v121
	v_max_f32_e32 v37, v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v115, v115
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v123 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v33, 31
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v119 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v121 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v36, v35
	v_max_f32_e32 v36, v119, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v117 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v115 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s37, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s36, v35, 31
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v38
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s35, v33, 31
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v122, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v33
	v_max_f32_e32 v36, v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v34, v34, v34
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v33, 31
	v_mov_b32_dpp v33, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
	v_max_f32_e32 v36, v111, v111
	v_dual_max_f32 v34, v37, v34 :: v_dual_max_f32 v37, v124, v124
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v34, 31
	v_mov_b32_dpp v34, v126 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v36, v33 :: v_dual_max_f32 v36, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s39, s39
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v124 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v122 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v38
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s42, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v120 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s42, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s41, v33, 31
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp126:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s41, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v34, v34, v38
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp130:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s40, v34, 31
.Ltmp131:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v120, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s44, v33, 31
	v_mov_b32_dpp v33, v118 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp133:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s40, s40
.Ltmp134:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s44, s44
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v112, v112
.Ltmp137:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v33
	v_max_f32_e32 v36, v116, v116
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v37, v34
	v_max_f32_e32 v37, v114, v114
.Ltmp139:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s43, v34, 31
	v_mov_b32_dpp v34, v116 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp140:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s43, s43
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
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
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp168:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
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
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s4, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp176:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s37, s37
	v_max_f32_e64 v45, s4, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v33, v253, v253
.Ltmp184:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v46, s5, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp185:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v38
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s6, v34, 31
.Ltmp187:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp188:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp189:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s6, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v253, v33, v34
	v_dual_max_f32 v33, v105, v105 :: v_dual_max_f32 v36, v36, v38
.Ltmp190:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp191:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v34, v254, v254
.Ltmp192:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v36, 31
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s36, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v254, v34, v35
	v_dual_max_f32 v34, v104, v104 :: v_dual_max_f32 v37, v37, v38
	v_max_f32_e64 v38, s38, s38
	v_max_f32_e64 v48, s7, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v35, v128, v128
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v37, 31
.Ltmp196:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s35, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v123, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v128, v35, v36
	v_max_f32_e32 v35, v103, v103
	v_max_f32_e64 v49, s8, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v121, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v35, v35, v36 :: v_dual_max_f32 v36, v150, v150
	v_max_f32_e32 v150, v36, v37
	v_max_f32_e32 v36, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v55, v119, v150 :: v_dual_max_f32 v36, v36, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v131, v131
	v_max_f32_e32 v131, v37, v38
	v_max_f32_e32 v37, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v127, v127
	v_dual_max_f32 v127, v38, v39 :: v_dual_max_f32 v38, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v107, v115, v127
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v38, v38, v39 :: v_dual_max_f32 v39, v145, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v145, v39, v40
	v_max_f32_e32 v39, v99, v99
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v130, v130
	v_max_f32_e32 v130, v40, v41
	v_max_f32_e32 v40, v98, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v111, v111, v130 :: v_dual_max_f32 v40, v40, v41
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v132, v132
	v_max_f32_e32 v132, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v41, v97, v97 :: v_dual_sub_f32 v50, v126, v132
	v_dual_max_f32 v41, v41, v42 :: v_dual_max_f32 v42, v136, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v136, v42, v43
	v_max_f32_e32 v42, v96, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v124, v136
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v133, v43, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v43, v95, v95 :: v_dual_sub_f32 v54, v122, v133
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_dual_cndmask_b32 v50, 0, v50 :: v_dual_max_f32 v43, v43, v44
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v134, v134
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s20
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v134, v44, v45
	v_max_f32_e32 v44, v144, v144
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp200:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v120, v134
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp202:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v135, v45, v46
	v_max_f32_e32 v45, v143, v143
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp204:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v118, v135
	v_sub_f32_e32 v57, v117, v131
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v45, v46
	v_max_f32_e32 v46, v137, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v137, v46, v47
	v_max_f32_e32 v46, v142, v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v116, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v46, v46, v47
	v_max_f32_e32 v47, v138, v138
	v_dual_max_f32 v138, v47, v48 :: v_dual_max_f32 v47, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v114, v114, v138 :: v_dual_max_f32 v47, v47, v48
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v139, v139
	v_max_f32_e32 v139, v48, v49
	v_max_f32_e32 v48, v140, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v139
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v48, v49
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v125, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp207:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp208:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v115, v49, -1, -1 op_sel:[1,0]
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v49, 31
.Ltmp211:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v51
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp212:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v51
.Ltmp215:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s31
.Ltmp216:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v51, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v53
.Ltmp219:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v55
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s31, v51, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp221:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s34
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v55, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v55
.Ltmp225:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v55, s33
.Ltmp226:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s33, v49, 31
.Ltmp227:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp229:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s28
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v55, v55, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v55, v55, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v57, v55, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v55, v55, v57
.Ltmp233:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s27, v55, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v51, v49, -1, -1 op_sel:[1,0]
.Ltmp236:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp237:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v51
.Ltmp238:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v111
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s30, v53, 31
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s34, v49, 31
.Ltmp242:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v56
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp244:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s29
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp246:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v57, v57, v57 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v49, v49, v49 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp248:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v107, v57, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v49, v49, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v57, v57, v107
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v49, v49, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp250:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v57, 31
	v_mov_b32_e32 v57, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v53, v51, -1, -1 op_sel:[1,0]
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v49, v49, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v51, v51, v53
.Ltmp252:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v50, -1, -1 op_sel:[1,0]
	v_readlane_b32 s29, v51, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v53
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v50, 31
	v_permlanex16_b32 v50, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp255:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v53
.Ltmp256:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v54
.Ltmp257:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v50
.Ltmp258:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v49, 31
.Ltmp260:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v105, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s26
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v52, 31
	v_mov_b32_e32 v105, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp262:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s23
.Ltmp263:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v50, v50, v50 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp264:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v104
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp266:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v70, v70, v49, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v104, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v104, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp268:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v50, v50, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp270:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v54, v53, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v51, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
.Ltmp272:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v50, v50, v51
.Ltmp274:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v108
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v71, v71, v49, s33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v103, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp275:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v50, 31
	v_mov_b32_e32 v103, v35
.Ltmp276:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s22
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp278:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp280:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v72, v72, v49, s31
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v102, v36
.Ltmp281:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v102, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp282:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp283:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v51, v51, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp284:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
.Ltmp285:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v51, v52
.Ltmp287:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v114
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v73, v73, v49, s30
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v101, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp288:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v51, 31
	v_mov_b32_e32 v101, v37
.Ltmp289:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s25
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp291:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v100
.Ltmp292:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp293:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v66, v66, v49, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v100, v38 :: v_dual_mov_b32 v100, v38
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v53, 31
.Ltmp295:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp296:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v52, v52, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v53, v52, -1, -1 op_sel:[1,0]
.Ltmp299:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp300:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v53
.Ltmp301:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v112
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v67, v67, v49, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v99, v39
	v_mov_b32_e32 v99, v39
.Ltmp302:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v52, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp303:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp304:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp305:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp306:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp307:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v68, v68, v49, s34
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v98, v40 :: v_dual_mov_b32 v98, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp308:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp309:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp310:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v53, v53, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp311:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v54, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp312:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
.Ltmp313:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v53, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp314:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v69, v69, v49, s29
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v97, v41
	v_mov_b32_e32 v97, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v96
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v62, v62, v49, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v49, v96, v42 :: v_dual_mov_b32 v96, v42
.Ltmp315:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s21, v53, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp316:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v63, v63, v49, s26
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v95, v43
	v_mov_b32_e32 v95, v43
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v64, v64, v49, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v144, v44
	v_mov_b32_e32 v144, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v65, v65, v49, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v143, v45
	v_mov_b32_e32 v143, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v142
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v49, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v142, v46
	v_mov_b32_e32 v142, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v49, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v141, v47
	v_mov_b32_e32 v141, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v140
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v49, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v140, v48
	v_mov_b32_e32 v140, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v61, v61, v49, s21
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_44
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v129
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s4, v255, 14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 2, v129
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s86, s83, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s4, v255, 17
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s34, s86, s81
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s11, v255, 24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s5, v255, 18
	v_readlane_b32 s6, v255, 19
	v_readlane_b32 s7, v255, 20
	v_readlane_b32 s8, v255, 21
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v129
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s9, v255, 22
	v_readlane_b32 s10, v255, 23
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s34, v146
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s34, v147
	v_add_nc_u32_e32 v36, s34, v76
	v_add_nc_u32_e32 v37, s34, v148
	v_add_nc_u32_e32 v38, s34, v77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 6, v129
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v39, s34, v78
	v_add_nc_u32_e32 v40, s34, v149
	v_add_nc_u32_e32 v41, s34, v80
	v_add_nc_u32_e32 v42, s34, v81
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v43, s34, v82
	v_add_nc_u32_e32 v44, s34, v79
	v_add_nc_u32_e32 v45, s34, v83
	v_add_nc_u32_e32 v46, s34, v84
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 8, v129
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s34, v85
	v_add_nc_u32_e32 v48, s34, v86
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v56, s11 :: v_dual_mov_b32 v55, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v54, s9 :: v_dual_mov_b32 v53, s8
	v_dual_mov_b32 v52, s7 :: v_dual_mov_b32 v51, s6
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 10, v129
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v50, s5 :: v_dual_mov_b32 v49, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 12, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 14, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 16, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 18, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 20, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 22, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 24, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 26, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 28, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 30, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s67, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s34, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s3
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s20
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s21
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s23
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v33, v33, s[68:71], 0 offen
	buffer_load_u8 v34, v34, s[68:71], 0 offen
	buffer_load_u8 v35, v35, s[68:71], 0 offen
	buffer_load_u8 v36, v36, s[68:71], 0 offen
	buffer_load_u8 v37, v37, s[68:71], 0 offen
	buffer_load_u8 v38, v38, s[68:71], 0 offen
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s26
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s27
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s28
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s24
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s29
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v40, v40, s[68:71], 0 offen
	buffer_load_u8 v41, v41, s[68:71], 0 offen
	buffer_load_u8 v42, v42, s[68:71], 0 offen
	buffer_load_u8 v43, v43, s[68:71], 0 offen
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s30
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s31
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, s33
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v45, v45, s[68:71], 0 offen
	buffer_load_u8 v46, v46, s[68:71], 0 offen
	buffer_load_u8 v39, v39, s[68:71], 0 offen
	buffer_load_u8 v44, v44, s[68:71], 0 offen
	buffer_load_u8 v47, v47, s[68:71], 0 offen
	buffer_load_u8 v48, v48, s[68:71], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v151, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v151, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v151, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v151, v41 offset:576
	ds_store_b8 v152, v35
	ds_store_b8 v152, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v152, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v152, v43 offset:576
	ds_store_b8 v153, v37
	ds_store_b8 v153, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v153, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v153, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v154, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v154, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v154, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v154, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v156
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[106:107], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[87:88], v[49:56] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v181 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[89:90], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[89:90], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v182 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[91:92], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[91:92], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[49:52], v183 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[93:94], v[41:48] neg_lo:[1,1,0]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 2, v220
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v49, s86, v220, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[93:94], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v51, 4, v49
	v_add_nc_u32_e32 v52, 8, v49
	v_add_nc_u32_e32 v53, 12, v49
	v_add_nc_u32_e32 v54, 16, v49
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 4, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v55, 20, v49
	v_add_nc_u32_e32 v56, 24, v49
	v_add_nc_u32_e32 v106, 28, v49
	v_add_nc_u32_e32 v107, 32, v49
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v108, 36, v49
	v_add_nc_u32_e32 v109, 40, v49
	v_add_nc_u32_e32 v111, 44, v49
	v_add_nc_u32_e32 v112, 48, v49
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s1, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 6, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v113, 52, v49
	v_add_nc_u32_e32 v114, 56, v49
	v_add_nc_u32_e32 v115, 60, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 8, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s20, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 10, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 12, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 14, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s24, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 18, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 20, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s26, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 22, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s27, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 24, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s28, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 26, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v123, 0x80000000, v112, s28
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s29, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 28, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v124, 0x80000000, v113, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s67, v50
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v50, 30, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v125, 0x80000000, v114, s30
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s67, v50
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v50, s83, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v126, 0x80000000, v115, s31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s33, s67, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v50, 0x80000000, v51, vcc_lo
	v_cndmask_b32_e64 v51, 0x80000000, v52, s1
	v_cndmask_b32_e64 v52, 0x80000000, v53, s3
	v_cndmask_b32_e64 v53, 0x80000000, v54, s20
	v_cndmask_b32_e64 v49, 0x80000000, v49, s33
	v_cndmask_b32_e64 v54, 0x80000000, v55, s21
	v_cndmask_b32_e64 v55, 0x80000000, v56, s22
	v_cndmask_b32_e64 v56, 0x80000000, v106, s23
	v_cndmask_b32_e64 v106, 0x80000000, v107, s24
	v_cndmask_b32_e64 v107, 0x80000000, v108, s25
	v_cndmask_b32_e64 v108, 0x80000000, v109, s26
	v_cndmask_b32_e64 v109, 0x80000000, v111, s27
	s_clause 0xf
	buffer_load_u16 v122, v49, s[72:75], 0 offen
	buffer_load_u16 v121, v50, s[72:75], 0 offen
	buffer_load_u16 v120, v51, s[72:75], 0 offen
	buffer_load_u16 v119, v52, s[72:75], 0 offen
	buffer_load_u16 v118, v53, s[72:75], 0 offen
	buffer_load_u16 v117, v54, s[72:75], 0 offen
	buffer_load_u16 v116, v55, s[72:75], 0 offen
	buffer_load_u16 v115, v56, s[72:75], 0 offen
	buffer_load_u16 v114, v106, s[72:75], 0 offen
	buffer_load_u16 v113, v107, s[72:75], 0 offen
	buffer_load_u16 v112, v108, s[72:75], 0 offen
	buffer_load_u16 v111, v109, s[72:75], 0 offen
	buffer_load_u16 v109, v123, s[72:75], 0 offen
	buffer_load_u16 v108, v124, s[72:75], 0 offen
	buffer_load_u16 v107, v125, s[72:75], 0 offen
	buffer_load_u16 v106, v126, s[72:75], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v49, s83, v74
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v155
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v49
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s100, s57, s1
	s_and_b32 s98, s58, s1
	s_and_b32 s95, s59, s1
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s89, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s87, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s50, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s99, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s97, s3, s1
	v_readlane_b32 s3, v255, 8
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 10
	s_and_b32 s94, s3, s1
	v_readlane_b32 s3, v255, 11
	s_and_b32 s91, s3, s1
	v_readlane_b32 s3, v255, 12
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 13
	s_and_b32 s88, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v49, v160
	v_cmp_le_i32_e64 s1, v49, v161
	v_cmp_le_i32_e64 s3, v49, v162
	v_cmp_le_i32_e64 s20, v49, v163
	v_cmp_le_i32_e64 s21, v49, v164
	v_cmp_le_i32_e64 s22, v49, v165
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s34, vcc_lo, s100
	s_and_b32 s1, s1, s98
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v49, v166
	v_cmp_le_i32_e64 s24, v49, v167
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s95
	s_and_b32 s20, s20, s93
	s_and_not1_b32 s35, s100, exec_lo
	s_and_b32 s34, s34, exec_lo
	s_and_not1_b32 s36, s98, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v49, v168
	v_cmp_le_i32_e64 s26, v49, v169
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s92
	s_and_b32 s22, s22, s89
	s_or_b32 s100, s35, s34
	s_or_b32 s98, s36, s1
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s34, s93, exec_lo
	s_and_b32 s20, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v49, v170
	v_cmp_le_i32_e64 s28, v49, v171
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s87
	s_and_b32 s24, s24, s50
	s_or_b32 s95, s1, s3
	s_or_b32 s93, s34, s20
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_and_not1_b32 s20, s89, exec_lo
	s_and_b32 s21, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v49, v172
	v_cmp_le_i32_e64 s30, v49, v173
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s101
	s_and_b32 s26, s26, s99
	s_or_b32 s92, s1, s3
	s_or_b32 s89, s20, s21
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_and_not1_b32 s20, s50, exec_lo
	s_and_b32 s21, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v49, v174
	v_cmp_le_i32_e64 s33, v49, v175
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s97
	s_and_b32 s28, s28, s96
	s_or_b32 s87, s1, s3
	s_or_b32 s50, s20, s21
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_and_not1_b32 s20, s99, exec_lo
	s_and_b32 s21, s26, exec_lo
	s_and_b32 s29, s29, s94
	s_and_b32 s30, s30, s91
	s_or_b32 s101, s1, s3
	s_or_b32 s99, s20, s21
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_and_not1_b32 s20, s96, exec_lo
	s_and_b32 s21, s28, exec_lo
	s_and_b32 s31, s31, s90
	s_and_b32 s33, s33, s88
	s_or_b32 s97, s1, s3
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s29, exec_lo
	s_and_not1_b32 s20, s91, exec_lo
	s_and_b32 s21, s30, exec_lo
	s_or_b32 s94, s1, s3
	s_or_b32 s91, s20, s21
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s31, exec_lo
	s_and_not1_b32 s20, s88, exec_lo
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s90, s1, s3
	s_or_b32 s88, s20, s21
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v50, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v49, v110
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v49, v50
	scratch_load_b32 v50, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v49, v50
	scratch_load_b32 v50, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v49, v50
	scratch_load_b32 v50, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v49, v50
	scratch_load_b32 v50, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v49, v50
	scratch_load_b32 v50, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v49, v50
	scratch_load_b32 v50, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v49, v50
	scratch_load_b32 v50, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v49, v50
	scratch_load_b32 v50, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v49, v50
	scratch_load_b32 v50, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s25, s25, s101
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v49, v50
	scratch_load_b32 v50, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v49, v50
	scratch_load_b32 v50, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v49, v50
	scratch_load_b32 v50, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v49, v50
	scratch_load_b32 v50, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v49, v50
	scratch_load_b32 v50, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v49, v50
	scratch_load_b32 v50, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v49, v50
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v50, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v49, v50
	scratch_load_b32 v50, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, s100
	s_and_b32 s34, s34, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v49, v50
	scratch_load_b32 v50, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s35
	s_and_not1_b32 s35, s100, exec_lo
	s_and_b32 s1, s1, s98
	s_or_b32 s100, s35, s34
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s34, s93, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v49, v50
	scratch_load_b32 v50, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s36
	s_and_not1_b32 s36, s98, exec_lo
	s_and_b32 s3, s3, s95
	s_or_b32 s98, s36, s1
	s_and_not1_b32 s1, s95, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v49, v50
	scratch_load_b32 v50, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s93
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s34, s20
	s_and_not1_b32 s20, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v49, v50
	scratch_load_b32 v50, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s92
	s_and_b32 s3, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v49, v50
	scratch_load_b32 v50, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s89
	s_and_b32 s21, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s89, s20, s21
	s_and_not1_b32 s20, s50, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v49, v50
	scratch_load_b32 v50, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s87
	s_and_b32 s3, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_or_b32 s101, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v49, v50
	scratch_load_b32 v50, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s24, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s24, s24, s50
	s_and_b32 s21, s24, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s50, s20, s21
	s_and_not1_b32 s20, s99, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v49, v50
	scratch_load_b32 v50, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s26, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s99
	s_and_b32 s21, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s99, s20, s21
	s_and_not1_b32 s20, s96, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v49, v50
	scratch_load_b32 v50, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s97
	s_and_b32 s3, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v49, v50
	scratch_load_b32 v50, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s96
	s_and_b32 s21, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s20, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v49, v50
	scratch_load_b32 v50, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s94
	s_and_b32 s3, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	s_and_not1_b32 s1, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v49, v50
	scratch_load_b32 v50, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s91
	s_and_b32 s21, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s91, s20, s21
	s_and_not1_b32 s20, s88, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v49, v50
	scratch_load_b32 v50, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s90
	s_and_b32 s3, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s90, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v49, v50
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_and_b32 s33, s33, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s88, s20, s21
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v52.l, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	v_readlane_b32 s1, v255, 16
	v_readlane_b32 s3, v255, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v56.l, v52.l
	s_mul_i32 s1, s83, s1
	s_add_i32 s1, s3, s1
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s100
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[49:50], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, vcc_lo, s62, v49
	v_add_co_ci_u32_e64 v50, null, s63, v50, vcc_lo
	global_load_d16_u8 v56, v[49:50], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s98
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[49:50], off, off     ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v49, s1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, vcc_lo, s62, v49
	v_add_co_ci_u32_e64 v50, null, s63, v50, vcc_lo
	global_load_d16_u8 v52, v[49:50], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v49.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v49.h, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s95
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[50:51], off, off offset:8 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, vcc_lo, s62, v50
	v_add_co_ci_u32_e64 v51, null, s63, v51, vcc_lo
	global_load_d16_hi_u8 v49, v[50:51], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s93
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[50:51], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, vcc_lo, s62, v50
	v_add_co_ci_u32_e64 v51, null, s63, v51, vcc_lo
	global_load_d16_u8 v49, v[50:51], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v50.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v50.h, v50.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s92
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:24 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v51
	v_add_co_u32 v53, vcc_lo, s62, v51
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_hi_u8 v50, v[53:54], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s89
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v51
	v_add_co_u32 v53, vcc_lo, s62, v51
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_u8 v50, v[53:54], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v51.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v51.h, v51.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s87
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:40 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, vcc_lo, s62, v53
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_hi_u8 v51, v[53:54], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s50
	s_cbranch_execz .LBB0_27
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:48 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, vcc_lo, s62, v53
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_u8 v51, v[53:54], off
.LBB0_27:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v55.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v56.h, v55.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s101
	s_cbranch_execz .LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:56 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, vcc_lo, s62, v53
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_hi_u8 v56, v[53:54], off
.LBB0_29:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s99
	s_cbranch_execz .LBB0_31
; %bb.30:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, vcc_lo, s62, v53
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_hi_u8 v55, v[53:54], off
.LBB0_31:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v52.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v53.l, v52.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s97
	s_cbranch_execz .LBB0_33
; %bb.32:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[53:54], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, vcc_lo, s62, v53
	v_add_co_ci_u32_e64 v54, null, s63, v54, vcc_lo
	global_load_d16_u8 v53, v[53:54], off
.LBB0_33:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s96
	s_cbranch_execz .LBB0_35
; %bb.34:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[123:124], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v124, 31, v54
	v_add_co_u32 v123, vcc_lo, s62, v54
	v_add_co_ci_u32_e64 v124, null, s63, v124, vcc_lo
	global_load_d16_hi_u8 v52, v[123:124], off
.LBB0_35:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v53.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v54.l, v53.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s94
	s_cbranch_execz .LBB0_37
; %bb.36:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[123:124], off, off offset:88 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v124, 31, v54
	v_add_co_u32 v123, vcc_lo, s62, v54
	v_add_co_ci_u32_e64 v124, null, s63, v124, vcc_lo
	global_load_d16_u8 v54, v[123:124], off
.LBB0_37:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s91
	s_cbranch_execz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[123:124], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v124, 31, v123
	v_add_co_u32 v123, vcc_lo, s62, v123
	v_add_co_ci_u32_e64 v124, null, s63, v124, vcc_lo
	global_load_d16_hi_u8 v53, v[123:124], off
.LBB0_39:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v55.l, v54.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s90
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[123:124], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v124, 31, v123
	v_add_co_u32 v123, vcc_lo, s62, v123
	v_add_co_ci_u32_e64 v124, null, s63, v124, vcc_lo
	global_load_d16_u8 v55, v[123:124], off
.LBB0_41:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s88
	s_cbranch_execz .LBB0_6
; %bb.42:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[123:124], off, off offset:112 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v124, 31, v123
	v_add_co_u32 v123, vcc_lo, s62, v123
	v_add_co_ci_u32_e64 v124, null, s63, v124, vcc_lo
	global_load_d16_hi_u8 v54, v[123:124], off
	s_branch .LBB0_6
.LBB0_43:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v7, v8
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
	s_waitcnt vmcnt(0)
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
	s_branch .LBB0_45
.LBB0_44:                               ; %Flow
	v_and_b32_e32 v95, 16, v0
	v_and_b32_e32 v39, 32, v0
	v_lshlrev_b32_e32 v34, 1, v0
.LBB0_45:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v34, 28, v34
	v_lshl_add_u32 v33, v39, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 64, v0
	ds_store_b128 v33, v[70:73]
	ds_store_b128 v33, v[66:69] offset:16
	ds_store_b128 v33, v[62:65] offset:32
	ds_store_b128 v33, v[58:61] offset:48
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	s_barrier
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v67.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_add3_u32 v0, v0, v34, v39
	s_mov_b32 s62, 0x7ffffffe
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v61, v47
	v_div_scale_f32 v42, s4, v29, v0, v29
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v46, v41, 1.0
	v_div_fmas_f32 v34, v34, v39, v43
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v38, v41
	v_rcp_f32_e32 v38, v42
	v_div_fixup_f32 v32, v34, v0, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v68, v27, 16, 1
	v_cmp_o_f32_e64 s33, v25, v25
	v_add3_u32 v65, v25, v65, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v25, v28, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v66, v26, v66, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v38, v43, v38 :: v_dual_mul_f32 v37, v45, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v26, v26
	v_add3_u32 v26, v27, v68, 0x7fff
	v_cmp_o_f32_e64 s35, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v36, -v35, v37, v45
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v25, v28, v25, 0x7fff
	v_cmp_o_f32_e64 s36, v28, v28
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v65.h, s33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v36, v40
	v_rcp_f32_e32 v36, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s35
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v65, v31, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v29, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v39, v44
	v_rcp_f32_e32 v48, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v45, v37, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v29, v29
	v_bfe_u32 v29, v32, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v39, v34, v41 :: v_dual_mul_f32 v34, v35, v38
	v_fmac_f32_e32 v37, v49, v37
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v66.h, s34
	v_add3_u32 v26, v30, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v39, v44
	v_fma_f32 v44, -v42, v34, v35
	v_mul_f32_e32 v46, v40, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v30, v30
	v_add3_u32 v30, v31, v65, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v41, v39
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v32, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s36
	v_cmp_o_f32_e64 s36, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fmac_f32_e32 v35, v46, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s33
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v40, v37
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v50, 1.0
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_scale_f32 v40, null, v0, v0, v14
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v47, v42
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_mul_f32_e32 v52, v48, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v34, v49, v33
	v_fma_f32 v38, -v40, v43, v38
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v47, v36
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v33, -v34, v49, v33
	v_mul_f32_e32 v53, v50, v46
	v_div_fixup_f32 v4, v38, v0, v4
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v33, v33, v36, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v1, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v28, v33, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	v_cndmask_b32_e64 v40, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v31, v35, 16, 1
	v_bfe_u32 v30, v34, 16, 1
	v_add3_u32 v28, v33, v28, 0x7fff
	v_cmp_o_f32_e64 s33, v33, v33
	v_bfe_u32 v32, v36, 16, 1
	v_cmp_o_f32_e64 s34, v34, v34
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cmp_o_f32_e64 s36, v36, v36
	v_bfe_u32 v33, v37, 16, 1
	v_add3_u32 v32, v36, v32, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v22, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v31, v35, v31, 0x7fff
	v_cmp_o_f32_e64 s35, v35, v35
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s33
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s34
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_add3_u32 v32, v37, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_bfe_u32 v34, v40, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s35
	v_bfe_u32 v31, v38, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v9, s0
	v_cndmask_b32_e64 v42, 0, v10, s0
	v_cndmask_b32_e64 v44, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v37, v37
	v_add3_u32 v33, v39, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v34, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v11, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v31, v38, v31, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v13, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v38, v38
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s33
	v_bfe_u32 v32, v41, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s35
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s36
	v_bfe_u32 v34, v42, 16, 1
	v_bfe_u32 v36, v44, 16, 1
	v_bfe_u32 v35, v43, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v47, 0, v15, s0
	v_cndmask_b32_e64 v48, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s34
	v_add3_u32 v32, v41, v32, 0x7fff
	v_cmp_o_f32_e64 s33, v41, v41
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v42, v42
	v_add3_u32 v36, v44, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v44, v44
	v_bfe_u32 v37, v45, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v35, v43, v35, 0x7fff
	v_cmp_o_f32_e64 s35, v43, v43
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s33
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s34
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s36
	v_add3_u32 v36, v45, v37, 0x7fff
	v_bfe_u32 v37, v47, 16, 1
	v_bfe_u32 v38, v48, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v51, 0, v3, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s35
	v_bfe_u32 v35, v46, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v50, 0, v2, s0
	v_cndmask_b32_e64 v52, 0, v4, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v45, v45
	v_add3_u32 v37, v47, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_add3_u32 v38, v48, v38, 0x7fff
	v_cmp_o_f32_e64 s36, v48, v48
	v_add3_u32 v35, v46, v35, 0x7fff
	v_bfe_u32 v39, v51, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v54, 0, v5, s0
	v_cndmask_b32_e64 v57, 0, v0, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v46, v46
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s33
	v_bfe_u32 v36, v49, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s36
	v_bfe_u32 v38, v50, 16, 1
	v_bfe_u32 v40, v52, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v55, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v51, v39, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v56, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s34
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s33, v49, v49
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v40, v52, v40, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_bfe_u32 v41, v54, 16, 1
	v_bfe_u32 v42, v57, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s35
	v_bfe_u32 v39, v55, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s33
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s36
	v_add3_u32 v40, v54, v41, 0x7fff
	v_bfe_u32 v41, v56, 16, 1
	v_cmp_o_f32_e64 s33, v54, v54
	v_add3_u32 v42, v57, v42, 0x7fff
	v_cmp_o_f32_e64 s36, v57, v57
	v_add3_u32 v39, v55, v39, 0x7fff
	v_add3_u32 v41, v56, v41, 0x7fff
	v_cmp_o_f32_e64 s35, v56, v56
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s33
	v_cmp_eq_u32_e64 s33, 0, v95
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s36
	v_mov_b32_e32 v42, 0x5410
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s35
	v_mov_b32_e32 v43, 0x7632
	v_cndmask_b32_e64 v41, v26, v27, s33
	v_cndmask_b32_e64 v26, v27, v26, s33
	v_cndmask_b32_e64 v27, v29, v25, s33
	v_cndmask_b32_e64 v25, v25, v29, s33
	v_cndmask_b32_e64 v29, v31, v28, s33
	v_cndmask_b32_e64 v28, v28, v31, s33
	v_cndmask_b32_e64 v31, v33, v30, s33
	v_cndmask_b32_e64 v30, v30, v33, s33
	v_cndmask_b32_e64 v33, v35, v32, s33
	v_cndmask_b32_e64 v32, v32, v35, s33
	v_cndmask_b32_e64 v35, 0x1054, v42, s33
	v_cndmask_b32_e64 v42, 0x3276, v43, s33
	v_cmp_o_f32_e64 s34, v55, v55
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v53, 1, v95
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v43, v37, v34, s33
	v_lshl_or_b32 v35, v35, 8, v35
	v_lshl_or_b32 v42, v42, 8, v42
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v58, 1, v53
	s_mov_b32 s34, 0x76543210
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v35, 0x540054, v35
	v_and_b32_e32 v42, 0x760076, v42
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v59, 2, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v34, v34, v37, s33
	v_cndmask_b32_e64 v37, v39, v36, s33
	v_lshl_or_b32 v35, v35, 4, v35
	v_cndmask_b32_e64 v36, v36, v39, s33
	v_cndmask_b32_e64 v39, v40, v38, s33
	v_cndmask_b32_e64 v38, v38, v40, s33
	v_permlanex16_b32 v26, v26, s34, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v40, v42, 4, v42
	v_and_b32_e32 v35, 0x5040504, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s66, v53
	v_cmp_gt_i32_e64 s30, s66, v58
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v60, 3, v53
	v_or_b32_e32 v61, 4, v53
	v_or_b32_e32 v62, 5, v53
	v_or_b32_e32 v63, 6, v53
	v_or_b32_e32 v64, 7, v53
	v_or_b32_e32 v24, 16, v53
	v_or_b32_e32 v23, 17, v53
	v_or_b32_e32 v22, 18, v53
	v_or_b32_e32 v21, 19, v53
	v_or_b32_e32 v20, 20, v53
	v_or_b32_e32 v19, 21, v53
	v_or_b32_e32 v18, 22, v53
	v_or_b32_e32 v17, 23, v53
	v_or_b32_e32 v16, 32, v53
	v_or_b32_e32 v15, 33, v53
	v_or_b32_e32 v14, 34, v53
	v_or_b32_e32 v13, 35, v53
	v_or_b32_e32 v12, 36, v53
	v_or_b32_e32 v11, 37, v53
	v_or_b32_e32 v10, 38, v53
	v_or_b32_e32 v9, 39, v53
	v_or_b32_e32 v8, 48, v53
	v_or_b32_e32 v7, 49, v53
	v_or_b32_e32 v6, 50, v53
	v_or_b32_e32 v5, 51, v53
	v_or_b32_e32 v4, 52, v53
	v_or_b32_e32 v3, 53, v53
	v_or_b32_e32 v2, 54, v53
	v_or_b32_e32 v0, 55, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s66, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v25, v25, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x7060706, v40
	v_permlanex16_b32 v34, v34, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v42, v26, v41, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s31, s2, s31
	s_and_b32 s30, s2, s30
	s_and_b32 s29, s2, s29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v26, v26, v41, v40
	v_perm_b32 v41, v25, v27, v35
	v_perm_b32 v25, v25, v27, v40
	v_perm_b32 v27, v28, v29, v35
	v_perm_b32 v28, v28, v29, v40
	v_perm_b32 v29, v30, v31, v35
	v_perm_b32 v30, v30, v31, v40
	v_perm_b32 v31, v32, v33, v35
	v_perm_b32 v32, v32, v33, v40
	v_perm_b32 v33, v34, v43, v35
	v_perm_b32 v34, v34, v43, v40
	v_perm_b32 v43, v36, v37, v35
	v_perm_b32 v36, v36, v37, v40
	v_perm_b32 v35, v38, v39, v35
	v_perm_b32 v37, v38, v39, v40
	v_mov_b16_e32 v38.l, v42.h
	v_mov_b16_e32 v38.h, v67.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s66, v60
	v_cmp_gt_i32_e64 s27, s66, v61
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v67.l, v26.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s66, v62
	v_cmp_gt_i32_e64 s25, s66, v63
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s28, s2, s28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s66, v5
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s27, s2, s27
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s66, v4
	v_cmp_gt_i32_e64 s24, s66, v64
	v_cmp_gt_i32_e64 s22, s66, v23
	v_cmp_gt_i32_e64 s20, s66, v21
	v_cmp_gt_i32_e64 s18, s66, v19
	v_cmp_gt_i32_e64 s16, s66, v17
	v_cmp_gt_i32_e64 s14, s66, v15
	v_cmp_gt_i32_e64 s12, s66, v13
	v_cmp_gt_i32_e64 s9, s66, v11
	v_cmp_gt_i32_e64 s4, s66, v9
	v_cmp_gt_i32_e64 s1, s66, v7
	v_cmp_gt_i32_e64 s7, s66, v3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s26, s2, s26
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s66, v24
	v_cmp_gt_i32_e64 s21, s66, v22
	v_cmp_gt_i32_e64 s19, s66, v20
	v_cmp_gt_i32_e64 s17, s66, v18
	v_cmp_gt_i32_e64 s15, s66, v16
	v_cmp_gt_i32_e64 s13, s66, v14
	v_cmp_gt_i32_e64 s10, s66, v12
	v_cmp_gt_i32_e64 s8, s66, v10
	v_cmp_gt_i32_e64 s3, s66, v8
	v_cmp_gt_i32_e64 s0, s66, v6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s25, s2, s25
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s66, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v41.h
	v_mov_b16_e32 v40.h, v67.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s66, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s24, s2, s24
	s_and_b32 s22, s2, s22
	s_and_b32 s20, s2, s20
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s2, s12
	s_and_b32 s9, s2, s9
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	s_and_b32 s23, s2, s23
	s_and_b32 s21, s2, s21
	s_and_b32 s19, s2, s19
	s_and_b32 s17, s2, s17
	s_and_b32 s15, s2, s15
	s_and_b32 s13, s2, s13
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s2, s8
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v25.h
	v_mov_b16_e32 v39.h, v67.h
	v_mov_b16_e32 v44.l, v28.h
	v_mov_b16_e32 v44.h, v67.h
	v_mov_b16_e32 v45.l, v27.h
	v_mov_b16_e32 v45.h, v67.h
	v_mov_b16_e32 v46.l, v30.h
	v_mov_b16_e32 v46.h, v67.h
	v_mov_b16_e32 v47.l, v29.h
	v_mov_b16_e32 v47.h, v67.h
	v_mov_b16_e32 v48.l, v32.h
	v_mov_b16_e32 v48.h, v67.h
	v_mov_b16_e32 v49.l, v31.h
	v_mov_b16_e32 v49.h, v67.h
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v50.h, v67.h
	v_mov_b16_e32 v51.l, v33.h
	v_mov_b16_e32 v51.h, v67.h
	v_mov_b16_e32 v52.l, v36.h
	v_mov_b16_e32 v52.h, v67.h
	v_mov_b16_e32 v54.l, v43.h
	v_mov_b16_e32 v54.h, v67.h
	v_mov_b16_e32 v56.l, v35.h
	v_mov_b16_e32 v56.h, v67.h
	v_mov_b16_e32 v55.l, v37.h
	v_mov_b16_e32 v55.h, v67.h
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, v1, s66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v53, v1, v53, 1
	v_add_lshl_u32 v57, v1, v58, 1
	v_add_lshl_u32 v58, v1, v59, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v4, v1, v4, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s31
	v_cndmask_b32_e64 v57, 0x80000000, v57, s30
	v_cndmask_b32_e64 v58, 0x80000000, v58, s29
	v_add_lshl_u32 v23, v1, v23, 1
	v_add_lshl_u32 v21, v1, v21, 1
	buffer_store_b16 v42, v53, s[60:63], 0 offen
	v_add_lshl_u32 v42, v1, v60, 1
	s_clause 0x1
	buffer_store_b16 v38, v57, s[60:63], 0 offen
	buffer_store_b16 v26, v58, s[60:63], 0 offen
	v_add_lshl_u32 v26, v1, v61, 1
	v_add_lshl_u32 v53, v1, v63, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v38, 0x80000000, v42, s28
	v_add_lshl_u32 v42, v1, v62, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s27
	s_clause 0x1
	buffer_store_b16 v67, v38, s[60:63], 0 offen
	buffer_store_b16 v41, v26, s[60:63], 0 offen
	v_cndmask_b32_e64 v42, 0x80000000, v42, s26
	v_add_lshl_u32 v26, v1, v64, 1
	v_add_lshl_u32 v17, v1, v17, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v3, v1, v3, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s25
	v_add_lshl_u32 v24, v1, v24, 1
	v_add_lshl_u32 v22, v1, v22, 1
	v_add_lshl_u32 v20, v1, v20, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_add_lshl_u32 v16, v1, v16, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s11
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x1
	buffer_store_b16 v40, v42, s[60:63], 0 offen
	buffer_store_b16 v25, v53, s[60:63], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v26, s24
	v_cndmask_b32_e64 v23, 0x80000000, v23, s22
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	v_cndmask_b32_e64 v19, 0x80000000, v19, s18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	v_cndmask_b32_e64 v15, 0x80000000, v15, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s6
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v24, 0x80000000, v24, s23
	v_cndmask_b32_e64 v22, 0x80000000, v22, s21
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	v_cndmask_b32_e64 v10, 0x80000000, v10, s8
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v39, v25, s[60:63], 0 offen
	buffer_store_b16 v27, v24, s[60:63], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x16
	buffer_store_b16 v45, v23, s[60:63], 0 offen
	buffer_store_b16 v28, v22, s[60:63], 0 offen
	buffer_store_b16 v44, v21, s[60:63], 0 offen
	buffer_store_b16 v29, v20, s[60:63], 0 offen
	buffer_store_b16 v47, v19, s[60:63], 0 offen
	buffer_store_b16 v30, v18, s[60:63], 0 offen
	buffer_store_b16 v46, v17, s[60:63], 0 offen
	buffer_store_b16 v31, v16, s[60:63], 0 offen
	buffer_store_b16 v49, v15, s[60:63], 0 offen
	buffer_store_b16 v32, v14, s[60:63], 0 offen
	buffer_store_b16 v48, v13, s[60:63], 0 offen
	buffer_store_b16 v33, v12, s[60:63], 0 offen
	buffer_store_b16 v51, v11, s[60:63], 0 offen
	buffer_store_b16 v34, v10, s[60:63], 0 offen
	buffer_store_b16 v50, v9, s[60:63], 0 offen
	buffer_store_b16 v43, v8, s[60:63], 0 offen
	buffer_store_b16 v54, v7, s[60:63], 0 offen
	buffer_store_b16 v36, v6, s[60:63], 0 offen
	buffer_store_b16 v52, v5, s[60:63], 0 offen
	buffer_store_b16 v35, v4, s[60:63], 0 offen
	buffer_store_b16 v56, v1, s[60:63], 0 offen
	buffer_store_b16 v37, v2, s[60:63], 0 offen
	buffer_store_b16 v55, v0, s[60:63], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp317:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 260
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 260
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26232
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 260
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
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
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
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
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
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
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
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
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
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
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
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
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
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 260
    .sgpr_count:     107
    .sgpr_spill_count: 25
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 64
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
