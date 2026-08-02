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
	v_lshrrev_b32_e32 v120, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_or_b32_e32 v2, 2, v120
	v_or_b32_e32 v3, 4, v120
	v_or_b32_e32 v4, 6, v120
	v_or_b32_e32 v5, 8, v120
	v_or_b32_e32 v6, 10, v120
	v_or_b32_e32 v7, 12, v120
	v_or_b32_e32 v9, 16, v120
	v_or_b32_e32 v10, 18, v120
	v_or_b32_e32 v11, 20, v120
	v_or_b32_e32 v12, 22, v120
	v_or_b32_e32 v8, 14, v120
	v_or_b32_e32 v13, 24, v120
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[74:75], null, s81, v120, v[33:34]
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s4, 1
	v_writelane_b32 v255, s5, 0
	s_cselect_b32 s35, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s8, s3
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[75:76], null, s81, 6, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s66
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v137, s81, 1, v74
	v_lshl_add_u32 v138, s81, 2, v74
	v_lshl_add_u32 v139, s81, 3, v74
	v_lshl_add_u32 v140, s81, 4, v74
	v_mad_u64_u32 v[76:77], null, s81, 10, v[74:75]
	v_mad_u64_u32 v[77:78], null, s81, 12, v[74:75]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[78:79], null, s81, 14, v[74:75]
	v_mad_u64_u32 v[79:80], null, s81, 18, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[80:81], null, s81, 20, v[74:75]
	v_mad_u64_u32 v[81:82], null, s81, 22, v[74:75]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[82:83], null, s81, 24, v[74:75]
	v_mad_u64_u32 v[83:84], null, s81, 26, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[84:85], null, s81, 28, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[85:86], null, s81, 30, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v120
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s4, s2, s5
	s_add_i32 s6, s2, 1
	s_sub_i32 s4, s8, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s33, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s8, s4, s5
	s_cmp_ge_u32 s4, s5
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s81, v33
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s4, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v4
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s34, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s4, s2
	s_sub_i32 s6, 0, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s33, v6
	v_or_b32_e32 v7, s33, v7
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v17, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s66, v5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s33, v9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s66, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, s33, v10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s66, v7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s33, v11
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s66, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s33, v12
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v14, 26, v120
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	v_readfirstlane_b32 s4, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s66, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s33, v8
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v15, 28, v120
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s66, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s33, v13
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v16, 30, v120
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s66, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s4, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s33, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s66, v8
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s33, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s19, s66, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s33, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s4, s4, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s26, s66, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s4
	s_xor_b32 s4, s64, s65
	s_mul_i32 s8, s6, s2
	s_ashr_i32 s4, s4, 31
	s_sub_i32 s5, s5, s8
	s_add_i32 s8, s6, 1
	s_sub_i32 s9, s5, s2
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s27, s66, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s5, s9, s5
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s66, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s8, s6
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s33
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s66, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s6, s2, s81
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s66, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v17, s6, v74
	v_add_nc_u32_e32 v18, s6, v137
	v_add_nc_u32_e32 v19, s6, v138
	v_add_nc_u32_e32 v20, s6, v75
	v_add_nc_u32_e32 v21, s6, v139
	v_add_nc_u32_e32 v22, s6, v76
	v_add_nc_u32_e32 v23, s6, v77
	v_add_nc_u32_e32 v24, s6, v78
	v_add_nc_u32_e32 v25, s6, v140
	v_add_nc_u32_e32 v26, s6, v79
	v_add_nc_u32_e32 v27, s6, v80
	v_add_nc_u32_e32 v28, s6, v81
	v_add_nc_u32_e32 v29, s6, v82
	v_add_nc_u32_e32 v30, s6, v83
	v_add_nc_u32_e32 v31, s6, v84
	v_add_nc_u32_e32 v32, s6, v85
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s66, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s36, s66, v16
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x88, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
	v_writelane_b32 v255, s6, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s18
	v_dual_mov_b32 v162, v33 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	s_and_b32 vcc_lo, s9, s18
	v_writelane_b32 v255, s7, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v143, 0, v35
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	v_writelane_b32 v255, s8, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v17, v17, s[28:31], 0 offen
	buffer_load_u8 v33, v18, s[28:31], 0 offen
	buffer_load_u8 v19, v19, s[28:31], 0 offen
	buffer_load_u8 v20, v20, s[28:31], 0 offen
	buffer_load_u8 v21, v21, s[28:31], 0 offen
	buffer_load_u8 v22, v22, s[28:31], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	v_writelane_b32 v255, s9, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v23, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v25, 0x80000000, v26 :: v_dual_add_nc_u32 v142, 0, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s18
	v_writelane_b32 v255, s10, 5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v26, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x110, v0
	v_cndmask_b32_e32 v27, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	v_writelane_b32 v255, s11, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s19, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v37, 0x198, v0
	v_cndmask_b32_e32 v28, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s26, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	buffer_load_u8 v25, v25, s[28:31], 0 offen
	buffer_load_u8 v26, v26, s[28:31], 0 offen
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s27, s18
	v_writelane_b32 v255, s12, 7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v30, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s36, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s25, s25, 0xffff
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v31, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v28, v28, s[28:31], 0 offen
	buffer_load_u8 v29, v29, s[28:31], 0 offen
	buffer_load_u8 v32, v18, s[28:31], 0 offen
	buffer_load_u8 v24, v24, s[28:31], 0 offen
	buffer_load_u8 v30, v30, s[28:31], 0 offen
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	v_writelane_b32 v255, s14, 8
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v18, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v144, 0, v36
	v_add_nc_u32_e32 v145, 0, v37
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s5, s5, s4
	v_writelane_b32 v255, s15, 9
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, v34, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s29, s5, s4
	s_mov_b32 s83, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s28, s29
	v_writelane_b32 v255, s16, 10
	.loc	1 780 17                        ; attention.py:780:17
	v_add_nc_u32_e32 v38, s2, v34
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s33, v34
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s4, s28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v142, v17
	s_waitcnt vmcnt(14)
	ds_store_b8 v142, v33 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v142, v23 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v142, v25 offset:576
	ds_store_b8 v143, v19
	ds_store_b8 v143, v20 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v143, v26 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v143, v27 offset:576
	ds_store_b8 v144, v21
	ds_store_b8 v144, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v144, v28 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v144, v29 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v145, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v145, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v145, v30 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v145, v31 offset:576
	v_writelane_b32 v255, s17, 11
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v35, 1, v38
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v34
	scratch_store_b32 off, v38, off offset:284 ; 4-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s13, 12
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v34, 0x80000000, v35, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v19, 5, v18
	v_lshlrev_b32_e32 v21, 4, v39
	v_writelane_b32 v255, s19, 13
	v_writelane_b32 v255, s26, 14
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s26, s30
	v_writelane_b32 v255, s27, 15
	s_mov_b32 s27, s31
	buffer_load_u16 v17, v34, s[24:27], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v34, 1, v0
	v_writelane_b32 v255, s36, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 24, v34
	v_or3_b32 v21, v19, v21, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v22, 0, v21
	v_xad_u32 v23, v21, 8, 0
	v_xad_u32 v24, v21, 16, 0
	v_xad_u32 v21, v21, 24, 0
	ds_load_b64 v[86:87], v22
	ds_load_b64 v[88:89], v23
	ds_load_b64 v[90:91], v24
	ds_load_b64 v[92:93], v21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s4
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s67, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s82, s4, 0xffffffe0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s24, v21
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s4, s20, 0x10008
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v147, 0, 1, s35
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_lshlrev_b32_e32 v22, 6, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s83, s82
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 6, v0
	s_mov_b32 s4, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s33, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s33, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s67, s4
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s6, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s4, s4, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s83, s5, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s82, s82, s4
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v147, 0, 1, s35
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s33, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 32
	s_min_i32 s4, s67, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s5, s5, 27
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s82, s82, s4
	v_lshlrev_b32_e32 v22, 6, v0
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s83, s82
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow188
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x38
	s_load_b32 s66, s[0:1], 0x64
	v_and_b32_e32 v69, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e64 s20, 0, v69
	s_cbranch_vccnz .LBB0_46
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s4, s3, s64
	s_mul_f32 s5, s24, 0x4f7ffffe
	s_ashr_i32 s4, s4, 31
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x6c
	s_load_b64 s[62:63], s[0:1], 0x30
	s_xor_b32 s6, s34, s4
	s_cvt_u32_f32 s5, s5
	s_sub_i32 s4, s6, s4
	s_sub_i32 s6, 0, s28
	s_mul_i32 s7, s4, s64
	s_mul_i32 s6, s6, s5
	s_sub_i32 s3, s3, s7
	s_mul_hi_u32 s6, s5, s6
	s_abs_i32 s7, s3
	s_add_i32 s5, s5, s6
	s_ashr_i32 s6, s3, 31
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s8, s29, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s9, s5, s28
	s_xor_b32 s6, s6, s8
	s_sub_i32 s7, s7, s9
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s28
	s_cmp_ge_u32 s7, s28
	v_or_b32_e32 v148, v19, v20
	s_cselect_b32 s5, s8, s5
	v_lshlrev_b32_e32 v19, 2, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s28
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v17.h, v17.l
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s8, s5
	v_mov_b16_e32 v17.l, 0
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s24, 0x3fb8aa3b
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v73, s23, v2
	v_mov_b32_e32 v2, 0x7632
	v_lshl_or_b32 v149, v18, 8, v19
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v153, s7, v17 :: v_dual_and_b32 v18, 60, v34
	v_cndmask_b32_e64 v19, 0x104, 0, vcc_lo
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s5, s6
	v_lshrrev_b32_e32 v20, 2, v69
	s_sub_i32 s5, s5, s6
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s6, s4, s65
	v_xor_b32_e32 v18, v19, v18
	v_and_b32_e32 v19, 1, v0
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v21, 14, v0
	s_add_i32 s5, s5, s6
	s_load_b32 s6, s[0:1], 0x7c
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v36, s23, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_u32_u24_e32 v21, 0x44, v21
	v_mov_b32_e32 v4, v162
	v_lshl_or_b32 v20, v19, 1, v20
	v_lshl_or_b32 v151, v19, 6, v18
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v19, 3, v0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v33, s23, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or3_b32 v150, v20, v21, v120
	v_dual_mov_b32 v1, 0x5410 :: v_dual_and_b32 v20, 48, v19
	v_cndmask_b32_e64 v2, 0x3276, v2, s20
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v35, s23, v3
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v37, s23, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x1054, v1, s20
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v5, 2, v120
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v38, s23, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v1, 8, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s6, v4
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v40, s23, v7
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v41, s23, v8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v163, s23, v9
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v254, s23, v10
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v164, s23, v11
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v166, s23, v13
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v168, s23, v15
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:28
	scratch_store_b32 off, v69, off offset:288
	v_or_b32_e32 v5, 4, v120
	scratch_store_b32 off, v34, off offset:296 ; 4-byte Folded Spill
	v_bfe_i32 v18, v0, 3, 1
	v_and_or_b32 v20, 0x1c0, v22, v20
	v_mov_b32_e32 v51, 0
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v18, 0x210, v18
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s0, s5, s67
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s27, s33
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s4, s4, s25
	v_xor_b32_e32 v152, v20, v18
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:36
	scratch_store_b32 off, v39, off offset:292
	v_or_b32_e32 v5, 6, v120
	.loc	1 843 41                        ; attention.py:843:41
	v_writelane_b32 v255, s0, 17
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	s_add_i32 s1, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s66, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	s_add_i32 s1, s1, s3
	scratch_store_b32 off, v22, off offset:300 ; 4-byte Folded Spill
	v_writelane_b32 v255, s1, 18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v222, 4, v69
	v_mov_b32_e32 v101, 0xff800000
	v_mov_b32_e32 v99, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:44 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 8, v120
	v_writelane_b32 v255, s6, 19
	v_mov_b32_e32 v97, 0xff800000
	v_mov_b32_e32 v95, 0xff800000
	v_mov_b32_e32 v135, 0xff800000
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v133, 0xff800000
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_mov_b32 s52, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s73, 0xffff
	scratch_store_b64 off, v[5:6], off offset:52 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 10, v120
	s_and_b32 s77, s71, 0xffff
	s_mov_b32 s76, s70
	s_mov_b32 s70, s78
	s_mov_b32 s71, s79
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	s_mov_b32 s53, s52
	s_mov_b32 s54, s52
	s_mov_b32 s55, s52
	s_mov_b32 s56, s52
	s_mov_b32 s57, s52
	s_mov_b32 s58, s52
	scratch_store_b64 off, v[5:6], off offset:60 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 12, v120
	s_mov_b32 s59, s52
	s_mov_b32 s74, s78
	s_mov_b32 s75, s79
	s_mov_b32 s85, 0x76543210
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v25, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v165, s23, v12
	v_add_nc_u32_e32 v167, s23, v14
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_add_nc_u32 v169, s23, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v32, v25
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:68 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 14, v120
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v27, v25
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	scratch_store_b64 off, v[5:6], off offset:76 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 16, v120
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v94, 0xff800000
	v_mov_b32_e32 v134, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:84 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 18, v120
	v_dual_mov_b32 v13, v25 :: v_dual_mov_b32 v132, 0xff800000
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v8, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v106, 0xff800000
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_mov_b32 v7, v25
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_mov_b32 v119, 0xff800000
	v_mov_b32_e32 v136, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:92 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 20, v120
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_mov_b32 v122, 0xff800000
	v_dual_mov_b32 v123, 0xff800000 :: v_dual_mov_b32 v124, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_mov_b32 v128, 0xff800000
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_mov_b32 v126, 0xff800000
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_mov_b32 v130, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:100 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 22, v120
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_mov_b32 v104, 0xff800000
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_mov_b32 v102, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_mov_b32 v100, 0xff800000
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_mov_b32 v98, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:108 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 24, v120
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:116 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 26, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:124 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 28, v120
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:132 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 30, v120
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s27, v120, v[1:2]
	v_and_b32_e32 v1, 0x540054, v3
	v_and_b32_e32 v2, 0x760076, v2
	v_lshrrev_b32_e32 v3, 4, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v2, v2, 4, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v170, v4, 2, v3
	v_xor_b32_e32 v3, v19, v34
	v_subrev_nc_u32_e32 v34, s21, v33
	v_and_b32_e32 v171, 0x5040504, v1
	v_xor_b32_e32 v1, 8, v148
	scratch_store_b64 off, v[5:6], off offset:148 ; 8-byte Folded Spill
	v_and_or_b32 v173, v3, 48, v22
	scratch_store_b32 off, v34, off offset:156 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v73
	v_add_nc_u32_e32 v174, 0, v1
	v_xor_b32_e32 v1, 16, v148
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v172, 0x7060706, v2
	scratch_store_b32 off, v34, off offset:160 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v35
	v_add_nc_u32_e32 v175, 0, v1
	v_xor_b32_e32 v1, 24, v148
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v2, v25
	scratch_store_b32 off, v34, off offset:164 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v36
	v_add_nc_u32_e32 v176, 0, v1
	v_xor_b32_e32 v1, 0x88, v170
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	scratch_store_b32 off, v34, off offset:168 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v37
	v_add_nc_u32_e32 v177, 0, v1
	v_xor_b32_e32 v1, 0x110, v170
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	scratch_store_b32 off, v34, off offset:172 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v38
	v_add_nc_u32_e32 v178, 0, v1
	v_xor_b32_e32 v1, 0x198, v170
	scratch_store_b32 off, v34, off offset:176 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v40
	v_add_nc_u32_e32 v179, 0, v1
	v_xor_b32_e32 v1, 0x220, v170
	scratch_store_b32 off, v34, off offset:180 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v41
	v_add_nc_u32_e32 v180, 0, v1
	v_xor_b32_e32 v1, 0x2a8, v170
	scratch_store_b32 off, v34, off offset:184 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v163
	v_add_nc_u32_e32 v181, 0, v1
	v_xor_b32_e32 v1, 0x330, v170
	scratch_store_b32 off, v34, off offset:188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v254
	v_add_nc_u32_e32 v182, 0, v1
	v_xor_b32_e32 v1, 0x3b8, v170
	scratch_store_b32 off, v34, off offset:192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v164
	v_add_nc_u32_e32 v183, 0, v1
	v_xor_b32_e32 v1, 8, v150
	scratch_store_b32 off, v34, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v165
	v_add_nc_u32_e32 v184, 0, v1
	v_xor_b32_e32 v1, 16, v150
	scratch_store_b32 off, v34, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v166
	v_add_nc_u32_e32 v185, 0, v1
	v_xor_b32_e32 v1, 24, v150
	scratch_store_b32 off, v34, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v167
	v_add_nc_u32_e32 v186, 0, v1
	v_xor_b32_e32 v1, 32, v150
	scratch_store_b32 off, v34, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v168
	v_add_nc_u32_e32 v187, 0, v1
	v_xor_b32_e32 v1, 40, v150
	scratch_store_b32 off, v34, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v169
	v_add_nc_u32_e32 v188, 0, v1
	v_xor_b32_e32 v1, 48, v150
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:216
	scratch_store_b32 off, v33, off
	v_add_nc_u32_e32 v33, s22, v33
	v_add_nc_u32_e32 v189, 0, v1
	v_xor_b32_e32 v1, 56, v150
	scratch_store_b32 off, v33, off offset:220 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v73
	v_add_nc_u32_e32 v190, 0, v1
	v_xor_b32_e32 v1, 4, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:224
	scratch_store_b32 off, v35, off offset:4
	v_add_nc_u32_e32 v33, s22, v35
	v_add_nc_u32_e32 v191, 0, v1
	v_xor_b32_e32 v1, 8, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:228
	scratch_store_b32 off, v36, off offset:8
	v_add_nc_u32_e32 v33, s22, v36
	v_add_nc_u32_e32 v192, 0, v1
	v_xor_b32_e32 v1, 12, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:232
	scratch_store_b32 off, v37, off offset:12
	v_add_nc_u32_e32 v33, s22, v37
	v_add_nc_u32_e32 v193, 0, v1
	v_xor_b32_e32 v1, 16, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:236
	scratch_store_b32 off, v38, off offset:16
	v_add_nc_u32_e32 v33, s22, v38
	v_add_nc_u32_e32 v194, 0, v1
	v_xor_b32_e32 v1, 20, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:240
	scratch_store_b32 off, v40, off offset:20
	v_add_nc_u32_e32 v33, s22, v40
	v_add_nc_u32_e32 v195, 0, v1
	v_xor_b32_e32 v1, 24, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:244
	scratch_store_b32 off, v41, off offset:24
	v_add_nc_u32_e32 v33, s22, v41
	v_add_nc_u32_e32 v196, 0, v1
	v_xor_b32_e32 v1, 28, v149
	scratch_store_b32 off, v33, off offset:248 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v163
	v_add_nc_u32_e32 v197, 0, v1
	v_xor_b32_e32 v1, 32, v149
	scratch_store_b32 off, v33, off offset:252 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v254
	v_add_nc_u32_e32 v198, 0, v1
	v_xor_b32_e32 v1, 36, v149
	scratch_store_b32 off, v33, off offset:256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v164
	v_add_nc_u32_e32 v199, 0, v1
	v_xor_b32_e32 v1, 40, v149
	scratch_store_b32 off, v33, off offset:260 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v165
	v_add_nc_u32_e32 v200, 0, v1
	v_xor_b32_e32 v1, 44, v149
	scratch_store_b32 off, v33, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v166
	v_add_nc_u32_e32 v201, 0, v1
	v_xor_b32_e32 v1, 48, v149
	scratch_store_b32 off, v33, off offset:268 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v167
	v_add_nc_u32_e32 v202, 0, v1
	v_xor_b32_e32 v1, 52, v149
	scratch_store_b32 off, v33, off offset:272 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v168
	v_add_nc_u32_e32 v203, 0, v1
	v_xor_b32_e32 v1, 56, v149
	scratch_store_b32 off, v33, off offset:276 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, s22, v169
	v_add_nc_u32_e32 v204, 0, v1
	v_xor_b32_e32 v1, 60, v149
	scratch_store_b32 off, v33, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v205, 0, v1
	v_xor_b32_e32 v1, 0x208, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v206, 0, v1
	v_xor_b32_e32 v1, 0x410, v151
	v_add_nc_u32_e32 v207, 0, v1
	v_xor_b32_e32 v1, 0x618, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v208, 0, v1
	v_xor_b32_e32 v1, 0x820, v151
	v_add_nc_u32_e32 v209, 0, v1
	v_xor_b32_e32 v1, 0xa28, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v210, 0, v1
	v_xor_b32_e32 v1, 0xc30, v151
	v_add_nc_u32_e32 v211, 0, v1
	v_xor_b32_e32 v1, 0xe38, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v212, 0, v1
	v_xor_b32_e32 v1, 16, v173
	v_add_nc_u32_e32 v213, 0, v1
	v_xor_b32_e32 v1, 32, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v214, 0, v1
	v_xor_b32_e32 v1, 48, v173
	v_add_nc_u32_e32 v215, 0, v1
	v_xor_b32_e32 v1, 16, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v216, 0, v1
	v_xor_b32_e32 v1, 32, v152
	v_add_nc_u32_e32 v217, 0, v1
	v_xor_b32_e32 v1, 48, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v218, 0, v1
	v_xor_b32_e32 v1, 0x420, v152
	v_add_nc_u32_e32 v219, 0, v1
	v_xor_b32_e32 v1, 0x430, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v220, 0, v1
	v_xor_b32_e32 v1, 0x410, v152
	v_add_nc_u32_e32 v221, 0, v1
	v_mov_b32_e32 v1, v25
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v158, v33
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v33.l, 0xff, v72.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v157, v48
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v48.h, 0xff, v65.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v159, v34
	v_cvt_f32_i32_e32 v228, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v33.l
	v_and_b16 v33.l, 0xff, v72.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 vcc_lo, s101, vcc_lo
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v33.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v33, 0, 1, vcc_lo
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v33.h, 0xff, v71.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v107.h, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s1, s100, s1
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v33.h
	v_and_b16 v33.h, 0xff, v68.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v34, 0, 1, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v107.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v154, v45
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, s99, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v33.h
	v_cmp_ne_u16_e64 s3, 0, v48.h
	v_and_b16 v48.h, 0xff, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s20
	s_and_b32 s27, s98, s21
	s_and_b32 s31, s95, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v48.h
	v_and_b16 v48.h, 0xff, v66.h
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v33.h, 8, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s27
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v38
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s34, s93, s21
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v48.h
	v_and_b16 v48.h, 0xff, v66.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v66, 0, 1, s34
	v_or_b16 v48.l, v34.l, v33.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s33, s92, s22
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v48.h
	v_and_b16 v48.h, 0xff, v67.h
	.loc	1 877 25                        ; attention.py:877:25
	s_barrier
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v44, v153, v44
	v_cvt_f32_i32_e32 v155, v46
	v_cvt_f32_i32_e32 v160, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v48.h
	v_and_b16 v48.h, 0xff, v67.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v39
	v_mul_f32_e32 v45, v153, v45
	v_cvt_f32_i32_e32 v156, v47
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, s87, s28
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s29, 0, v48.h
	v_and_b16 v48.h, 0xff, v69.l
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v40
	v_mul_f32_e32 v46, v153, v46
	v_cvt_f32_i32_e32 v161, v36
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s29, s50, s29
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v48.h
	v_and_b16 v48.h, 0xff, v68.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v68, 0, 1, s29
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v47, v153, v47
	v_mul_f32_e32 v40, v153, v157
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, s97, s23
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v48.h
	v_and_b16 v48.h, 0xff, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s26
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v33.h, v227.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v72, v153, v161
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s24, s96, s24
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s30, 0, v48.h
	v_and_b16 v48.h, 0xff, v69.h
	.loc	1 877 25                        ; attention.py:877:25
	v_add_nc_u32_e32 v69, 0, v150
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s3, s83, 1
	s_or_b32 s4, s83, 2
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s23, s94, s30
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s35, 0, v48.h
	v_and_b16 v48.h, 0xff, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s30, s89, s25
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s5, s83, 3
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v67, 0, 1, s30
	s_and_b32 s22, s91, s35
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v48.h
	v_and_b16 v48.h, 0xff, v70.h
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s6, s83, 4
	s_or_b32 s7, s83, 5
	s_or_b32 s8, s83, 6
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s25, s90, s36
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s37, 0, v48.h
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v48.h, 8, v65.l
	v_cndmask_b32_e64 v65, 0, 1, s31
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	s_or_b32 s51, s83, 7
	s_or_b32 s65, s83, 8
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s21, s88, s37
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s80, s83, 9
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v48.h, v65.l, v48.h
	v_cndmask_b32_e64 v65, 0, 1, s24
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s84, s83, 10
	s_or_b32 s88, s83, 12
	s_or_b32 s89, s83, 13
	s_or_b32 s92, s83, 14
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v65.l, 8, v65.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s93, s83, 15
	s_or_b32 s94, s83, 16
	s_or_b32 s96, s83, 17
	s_or_b32 s97, s83, 18
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v65.l, v66.l, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s23
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s99, s83, 19
	s_or_b32 s102, s83, 20
	s_or_b32 s103, s83, 21
	s_or_b32 s104, s83, 22
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s33
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 vcc_hi, s83, 23
	s_or_b32 s10, s83, 24
	s_or_b32 s11, s83, 25
	s_or_b32 s12, s83, 26
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v65.h, v66.l, v65.h
	v_cndmask_b32_e64 v66, 0, 1, s22
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s13, s83, 27
	s_or_b32 s14, s83, 28
	s_or_b32 s15, s83, 29
	s_or_b32 s16, s83, 30
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s17, s83, 31
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v241, 0, v173
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.l, v67.l, v66.l
	v_cndmask_b32_e64 v67, 0, 1, s25
	v_lshlrev_b16 v66.h, 8, v67.l
	v_cndmask_b32_e64 v67, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.h, v67.l, v66.h
	v_cndmask_b32_e64 v67, 0, 1, s21
	v_lshlrev_b16 v67.l, 8, v67.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v67.l, v68.l, v67.l
	ds_store_b16 v177, v48
	ds_store_b16_d16_hi v178, v48
	ds_store_b16 v179, v65
	ds_store_b16_d16_hi v180, v65
	ds_store_b16 v181, v66
	ds_store_b16_d16_hi v182, v66
	ds_store_b16 v183, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v48.h, v111.l
	v_mov_b16_e32 v48.l, v107.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v153, v42
	v_mul_f32_e32 v42, v153, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v44, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v48.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v45, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v48.h, v109.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v37, v153, v154 :: v_dual_mul_f32 v46, v46, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v48.h, v108.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v153, v155 :: v_dual_mul_f32 v47, v47, v48
	v_mul_f32_e32 v36, v153, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_add_nc_u32_e32 v34, 0, v170
	ds_store_b16 v34, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v48, v184
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v48, v186 offset:64
	ds_load_u8_d16 v65, v185 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v184 offset:64
	ds_load_u8_d16 v66, v69 offset:64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v33.l, v107.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v153, v41
	v_mul_f32_e32 v41, v153, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v33, v34, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v34.h, v226.l
	v_mov_b16_e32 v34.l, v107.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v35, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v35.h, v225.l
	v_mov_b16_e32 v35.l, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v36, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v36.h, v224.l
	v_mov_b16_e32 v36.l, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s48, 1, v48.l
	ds_load_u8_d16 v48, v185
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v37, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v37.h, v223.l
	v_mov_b16_e32 v37.l, v107.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v236, 0xff800000, v33, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v38, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v38.h, v117.l
	v_mov_b16_e32 v38.l, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s45, 1, v48.l
	ds_load_u8_d16 v48, v186
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v234, 0xff800000, v34, s45
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s49, 1, v48.l
	ds_load_u8_d16 v48, v187
	ds_load_u8_d16_hi v66, v190 offset:64
	ds_load_u8_d16 v67, v189 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v188 offset:64
	ds_load_u8_d16 v68, v187 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v235, 0xff800000, v35, s49
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v48.l
	ds_load_u8_d16 v48, v188
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s47, 1, v48.l
	ds_load_u8_d16 v48, v189
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v233, 0xff800000, v37, s47
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v48.l
	ds_load_u8_d16 v48, v190
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s44, 1, v48.l
	v_and_b16 v48.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s41, 1, v48.l
	v_and_b16 v48.l, 1, v65.h
	v_cmp_eq_u16_e64 s42, 1, v48.l
	v_and_b16 v48.l, 1, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v153, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v48.l
	v_and_b16 v48.l, 1, v48.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v65, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s40, 1, v48.l
	v_and_b16 v48.l, 1, v68.l
	v_cmp_eq_u16_e64 s37, 1, v48.l
	v_and_b16 v48.l, 1, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v224, 0xff800000, v44, s37
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s38, 1, v48.l
	v_and_b16 v48.l, 1, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s35, 1, v48.l
	v_and_b16 v48.l, 1, v66.h
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[66:67], null, s86, s66, v[0:1]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v153, v160
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s86, s83, 11
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s36, 1, v48.l
	ds_load_u8_d16 v48, v69
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s83, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v223, 0xff800000, v47, s36
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s3, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v46, s35
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s4, s67
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s5, s67
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s6, s67
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s7, s67
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v48.l, 1, v48.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s8, s67
	s_cselect_b32 s8, -1, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s50, 1, v48.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v48, 0, v149
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s51, s67
	s_cselect_b32 s101, -1, 0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v65, s50
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v65, s66, v66
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s65, s67
	s_cselect_b32 s7, -1, 0
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v48, v108
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v153, v156 :: v_dual_lshlrev_b32 v48, 1, v66
	v_add_nc_u32_e32 v35, s66, v65
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s80, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v65
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s90, -1, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v39.h, v116.l
	v_mov_b16_e32 v39.l, v107.l
	v_add_nc_u32_e32 v66, s66, v35
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s84, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v35
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s6, -1, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v40, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v40.h, v115.l
	v_mov_b16_e32 v40.l, v107.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s86, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v225, 0xff800000, v45, s38
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s88, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v41, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v114.l
	v_mov_b16_e32 v41.l, v107.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s89, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v231, 0xff800000, v39, s44
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v42, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v232, 0xff800000, v36, s46
	v_add_nc_u32_e32 v36, s66, v66
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s92, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v228, 0xff800000, v40, s41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s4, -1, 0
	s_cmp_lt_i32 s93, s67
	v_add_nc_u32_e32 v68, s66, v36
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s94, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v35, 1, v36
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	v_add_nc_u32_e32 v37, s66, v68
	s_cmp_lt_i32 s96, s67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v42.h, v113.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s97, s67
	v_add_nc_u32_e32 v117, s66, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v36, 1, v37
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s99, s67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v42.l, v107.l
	v_add_nc_u32_e32 v37, s66, v117
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s102, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v229, 0xff800000, v41, s42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s65, -1, 0
	v_add_nc_u32_e32 v67, s66, v37
	s_cmp_lt_i32 s103, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v43, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s104, s67
	v_add_nc_u32_e32 v39, s66, v67
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 vcc_hi, s67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v43.h, v112.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s10, s67
	v_add_nc_u32_e32 v69, s66, v39
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s11, s67
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v43.l, v107.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s12, s67
	v_add_nc_u32_e32 v40, s66, v69
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s13, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v72, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s14, s67
	v_add_nc_u32_e32 v70, s66, v40
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s15, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v230, 0xff800000, v38, s43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s16, s67
	v_add_nc_u32_e32 v41, s66, v70
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s17, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v38, 1, v37
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s92, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s19
	v_add_nc_u32_e32 v71, s66, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v227, 0xff800000, v43, s40
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s9
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v226, 0xff800000, v42, s39
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v117, 1, v117
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v68
	v_cndmask_b32_e64 v37, 0x80000000, v38, s3
	v_lshlrev_b32_e32 v38, 1, v39
	v_lshlrev_b32_e32 v39, 1, v40
	v_lshlrev_b32_e32 v40, 1, v41
	v_add_nc_u32_e32 v41, s66, v71
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v66, 1, v66
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s5
	v_add_nc_u32_e32 v72, s66, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s4
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v191, v236
	v_add_nc_u32_e32 v43, s66, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s51
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v192, v234
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v42, s3
	v_add_nc_u32_e32 v110, s66, v43
	v_lshlrev_b32_e32 v42, 1, v43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s84
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v193, v235
	ds_store_b32 v194, v232
	v_add_nc_u32_e32 v44, s66, v110
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s65
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v195, v233
	ds_store_b32 v196, v230
	v_add_nc_u32_e32 v111, s66, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v44
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v197, v231
	ds_store_b32 v198, v228
	ds_store_b32 v199, v229
	v_add_nc_u32_e32 v45, s66, v111
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s80
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v200, v226
	ds_store_b32 v201, v227
	v_add_nc_u32_e32 v113, s66, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v44, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v202, v224
	ds_store_b32 v203, v225
	ds_store_b32 v204, v109
	v_add_nc_u32_e32 v45, s66, v113
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v205, v223
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v112, s66, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v33, v33, s[76:79], 0 offen
	buffer_load_u16 v34, v34, s[76:79], 0 offen
	buffer_load_u16 v35, v35, s[76:79], 0 offen
	buffer_load_u16 v36, v36, s[76:79], 0 offen
	buffer_load_u16 v39, v39, s[76:79], 0 offen
	buffer_load_u16 v40, v40, s[76:79], 0 offen
	buffer_load_u16 v43, v43, s[76:79], 0 offen
	buffer_load_u16 v44, v44, s[76:79], 0 offen
	v_add_nc_u32_e32 v47, s66, v112
	v_cndmask_b32_e64 v45, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v37, v37, s[76:79], 0 offen
	buffer_load_u16 v38, v38, s[76:79], 0 offen
	buffer_load_u16 v41, v41, s[76:79], 0 offen
	buffer_load_u16 v42, v42, s[76:79], 0 offen
	v_add_nc_u32_e32 v114, s66, v47
	v_lshlrev_b32_e32 v46, 1, v47
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v48, s66, v114
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v45, v45, s[76:79], 0 offen
	buffer_load_u16 v46, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v115, s66, v48
	v_lshlrev_b32_e32 v47, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v116, s66, v115
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v116
	buffer_load_u16 v47, v47, s[76:79], 0 offen
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v117, 0x80000000, v117, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v48, v48, s[76:79], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v117, v117, s[76:79], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s87
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v68, v68, s[76:79], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v66, v66, s[76:79], 0 offen
	buffer_load_u16 v65, v65, s[76:79], 0 offen
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v36.h, v117.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v35.h, v68.l
	v_lshlrev_b32_e32 v68, 1, v71
	v_lshlrev_b32_e32 v71, 1, v111
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v66.l
	v_lshlrev_b32_e32 v66, 1, v69
	v_lshlrev_b32_e32 v69, 1, v72
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v65.l
	v_lshlrev_b32_e32 v65, 1, v67
	v_lshlrev_b32_e32 v67, 1, v70
	v_lshlrev_b32_e32 v70, 1, v110
	v_lshlrev_b32_e32 v72, 1, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s93
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s96
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	s_clause 0x7
	buffer_load_u16 v154, v68, s[76:79], 0 offen
	buffer_load_u16 v155, v67, s[76:79], 0 offen
	buffer_load_u16 v156, v66, s[76:79], 0 offen
	buffer_load_u16 v157, v65, s[76:79], 0 offen
	buffer_load_u16 v158, v72, s[76:79], 0 offen
	buffer_load_u16 v159, v71, s[76:79], 0 offen
	buffer_load_u16 v160, v70, s[76:79], 0 offen
	buffer_load_u16 v161, v69, s[76:79], 0 offen
	v_lshlrev_b32_e32 v65, 1, v114
	v_add_lshl_u32 v67, v116, s66, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v115
	v_lshlrev_b32_e32 v66, 1, v112
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s86
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s82
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	s_clause 0x3
	buffer_load_u16 v237, v67, s[76:79], 0 offen
	buffer_load_u16 v238, v68, s[76:79], 0 offen
	buffer_load_u16 v239, v65, s[76:79], 0 offen
	buffer_load_u16 v240, v66, s[76:79], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v151
	ds_load_2addr_b32 v[116:117], v65 offset1:32
	ds_load_2addr_b32 v[114:115], v206 offset1:32
	ds_load_2addr_b32 v[112:113], v207 offset1:32
	ds_load_2addr_b32 v[110:111], v208 offset1:32
	ds_load_2addr_b32 v[71:72], v209 offset1:32
	ds_load_2addr_b32 v[69:70], v210 offset1:32
	ds_load_2addr_b32 v[67:68], v211 offset1:32
	ds_load_2addr_b32 v[65:66], v212 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v241, v[33:36]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v108, v236
	v_max3_f32 v34, v235, v232, v233
	v_max3_f32 v35, v224, v225, v109
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v234, v34
	v_max3_f32 v34, v229, v226, v227
	v_max3_f32 v34, v34, v35, v223
	v_max3_f32 v35, v230, v231, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v33, v33, v35, v34
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.h, v107.l
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s85, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v40.h, v154.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v39.h, v155.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v38.h, v156.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v37.h, v157.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v44.h, v158.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v43.h, v159.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v42.h, v160.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v41.h, v161.l
	ds_store_b128 v213, v[37:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.h, v107.l
	v_mov_b16_e32 v38.h, v107.l
	v_mov_b16_e32 v39.h, v107.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v214, v[41:44]
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v41, v106, v33, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v107.l
	v_mov_b16_e32 v40.h, v107.l
	v_mov_b16_e32 v42.h, v107.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, 0, v152
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v236, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v48.h, v237.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v47.h, v238.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v45.h, v240.l
	v_mov_b16_e64 v46.h, v239.l
	ds_store_b128 v215, v[45:48]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s48
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[154:157], v219 offset:2048
	ds_load_b128 v[158:161], v220 offset:2048
	ds_load_b128 v[238:241], v43 offset:2048
	ds_load_b128 v[242:245], v216 offset:2048
	ds_load_b128 v[246:249], v43 offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v108, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s48, v33, v33
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v171
	v_perm_b32 v34, v35, v34, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v235, v41
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
	v_sub_f32_e32 v35, v234, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v37, v36, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v171
	v_perm_b32 v36, v37, v36, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v233, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v37.h
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v37, v38, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v232, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s45, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v171
	v_perm_b32 v38, v39, v38, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v231, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v230, v41
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[230:233], v43
	ds_load_b128 v[234:237], v216
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v39, v39
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v39, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v42.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v40, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v171
	v_perm_b32 v40, v42, v40, v172
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v106, v41
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
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[230:237], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[230:233], v219
	ds_load_b128 v[234:237], v220
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
	v_wmma_f32_16x16x16_bf16 v[17:24], v[230:237], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[230:233], v43 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[238:245], v[33:40], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e32 v42.h, v107.l
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[154:161], v[33:40], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v33, v229, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.h, v107.l
	v_mov_b16_e32 v35.h, v107.l
	v_mov_b16_e32 v36.h, v107.l
	v_mov_b16_e32 v37.h, v107.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.h, v107.l
	v_mov_b16_e32 v39.h, v107.l
	v_mov_b16_e32 v40.h, v107.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[158:161], v218
	ds_load_b128 v[154:157], v217
	ds_load_b128 v[238:241], v217 offset:2048
	ds_load_b128 v[242:245], v218 offset:2048
	ds_load_b128 v[250:253], v221
	ds_load_b128 v[234:237], v221 offset:2048
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
	v_sub_f32_e32 v33, v228, v41
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
	v_permlanex16_b32 v35, v34, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v171
	v_perm_b32 v34, v35, v34, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v227, v41
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
	v_sub_f32_e32 v35, v226, v41
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
	v_permlanex16_b32 v37, v36, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v37, v36, v171
	v_perm_b32 v36, v37, v36, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v225, v41
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
	v_sub_f32_e32 v37, v224, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v39, v38, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v39, v38, v171
	v_perm_b32 v38, v39, v38, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v223, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v39.h
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v39, v40, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v109, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v39, v39
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v39, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v42.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v40, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v42, v40, v171
	v_perm_b32 v40, v42, v40, v172
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[154:161], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[246:253], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[238:245], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[230:237], v[33:40], v[1:8]
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v116 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v116, v116 :: v_dual_max_f32 v35, v114, v114
	v_dual_max_f32 v36, v112, v112 :: v_dual_max_f32 v37, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v38, v69, v69
	v_max_f32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v34
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v33, 31
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v33, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v35, v34
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v35
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v36, v33
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v36
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v38
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v38
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s37, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s36, v35, 31
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v38
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s35, v33, 31
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v38, v113, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v36, v33 :: v_dual_max_f32 v36, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v34
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s38, v33, 31
	v_mov_b32_dpp v33, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v36, v35 :: v_dual_max_f32 v36, v65, v65
	v_dual_max_f32 v34, v37, v34 :: v_dual_max_f32 v37, v115, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v33
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s39, v34, 31
	v_mov_b32_dpp v34, v117 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v33
	v_max_f32_e32 v36, v117, v117
.Ltmp75:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v39, s39, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v34, v36, v34
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v115 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v36, v37, v36
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v33, v33, v38
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v33, v33, v38
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v36, v38
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v37, v37, v38
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v33, v33, v38
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v34, v34, v38
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v35, v35, v38
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v35, 31
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s6, s6
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v38, v38, v38
	v_max_f32_e32 v33, v33, v38
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s5, v33, 31
	v_permlanex16_b32 v33, v36, -1, -1 op_sel:[1,0]
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp118:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s5, s5
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v34, v34, v38
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp121:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v33
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v34, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v36, v111, v111
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s40, v33, 31
	v_mov_b32_dpp v33, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp125:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s4, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
	v_max_f32_e32 v36, v72, v72
.Ltmp127:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s40, s40
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v38, v66, v66
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v33, v36, v33 :: v_dual_max_f32 v36, v70, v70
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v37, v34 :: v_dual_max_f32 v37, v68, v68
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v34, 31
	v_mov_b32_dpp v34, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v45, s7, s7
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v36, v34
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v36
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v37, v36
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
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
	v_mov_b32_dpp v38, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v38
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
	v_mov_b32_dpp v38, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v33 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v33, v38
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v38
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v35, -1, -1 op_sel:[1,0]
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v35, v38
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s8, v35, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp168:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s37, s37
	v_max_f32_e64 v46, s8, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v38
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v38
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v33, -1, -1 op_sel:[1,0]
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v38
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s9, v33, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp176:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v146, v146
	v_max_f32_e64 v47, s9, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v38
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v36, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v34, 31
.Ltmp179:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v34, s3, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp181:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v48, s10, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v146, v33, v34
	v_dual_max_f32 v33, v105, v105 :: v_dual_max_f32 v36, v36, v38
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v38, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp183:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v34, v119, v119
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s11, v36, 31
.Ltmp186:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s36, s36
	v_dual_max_f32 v119, v34, v35 :: v_dual_max_f32 v34, v104, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp187:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v38
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s38, s38
	v_max_f32_e64 v106, s11, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v109, v114, v119
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v34, v34, v35 :: v_dual_max_f32 v35, v141, v141
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s12, v37, 31
.Ltmp190:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s35, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v141, v35, v36
	v_max_f32_e32 v35, v103, v103
	v_max_f32_e64 v107, s12, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v112, v112, v141 :: v_dual_max_f32 v35, v35, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v118, v118
	v_max_f32_e32 v118, v36, v37
	v_max_f32_e32 v36, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v37 :: v_dual_max_f32 v37, v123, v123
	v_max_f32_e32 v123, v37, v38
	v_max_f32_e32 v37, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v37, v37, v38 :: v_dual_max_f32 v38, v136, v136
	v_max_f32_e32 v136, v38, v39
	v_max_f32_e32 v38, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v136 :: v_dual_max_f32 v38, v38, v39
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v121, v121
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v121, v39, v40
	v_max_f32_e32 v39, v99, v99
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v122, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v118
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v122, v40, v42
	v_max_f32_e32 v40, v98, v98
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp192:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v40, v42
	v_max_f32_e32 v42, v124, v124
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp194:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s28
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v124, v42, v43
	v_max_f32_e32 v42, v97, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s34
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v117, v124
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v128, v128
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v128, v43, v44
	v_max_f32_e32 v43, v96, v96
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp200:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v115, v128
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v43, v43, v44 :: v_dual_max_f32 v44, v125, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp202:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v125, v44, v45 :: v_dual_max_f32 v44, v95, v95
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp204:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v113, v113, v125
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v44, v44, v45 :: v_dual_max_f32 v45, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v45, v46
	v_max_f32_e32 v45, v94, v94
	v_dual_max_f32 v45, v45, v46 :: v_dual_max_f32 v46, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v127, v46, v47
	v_max_f32_e32 v46, v135, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v46, v46, v47 :: v_dual_max_f32 v47, v129, v129
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v123
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v129, v47, v48
	v_max_f32_e32 v47, v134, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v70, v70, v129 :: v_dual_max_f32 v47, v47, v48
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v48, v130, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v130, v48, v106
	v_max_f32_e32 v48, v133, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v48, v106
	v_max_f32_e32 v106, v131, v131
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp206:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v131, v106, v107 :: v_dual_max_f32 v106, v132, v132
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp208:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v111, v111, v126 :: v_dual_sub_f32 v66, v66, v131
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v107, v106, v107 :: v_dual_sub_f32 v106, v116, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v106, v106
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp212:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s21
	v_cndmask_b32_e64 v106, 0, v106, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v115, v106, -1, -1 op_sel:[1,0]
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v106, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v106, 31
.Ltmp217:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v109
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp218:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v106, v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v106, v106, v106 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v106, v106, v106 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v109, v106, -1, -1 op_sel:[1,0]
.Ltmp220:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v65, v65, v122 :: v_dual_add_f32 v106, v106, v109
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v109, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v65, v65
.Ltmp221:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s27, v106, 31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp222:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v109, s31
	v_cndmask_b32_e64 v65, 0, v65, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v109, v109, v109 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v109, v109, v109 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v109, v109, v109 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v109, v109, v109 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v112, v109, -1, -1 op_sel:[1,0]
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v109, v112
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v112, v110, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s6, v109, 31
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v110, v112
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v112, v71, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v112
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v112, v69, -1, -1 op_sel:[1,0]
	v_readlane_b32 s4, v71, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v112
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v69, 31
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp233:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	v_readlane_b32 s28, v67, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp235:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v69
.Ltmp236:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v108
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s8, v65, 31
.Ltmp238:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v111
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp239:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp240:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v71
.Ltmp242:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v114
.Ltmp243:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp244:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s10, v65, 31
.Ltmp246:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v105, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s20
	v_dual_mov_b32 v105, v33 :: v_dual_sub_f32 v68, v68, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp248:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s23
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp250:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp251:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp252:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v65, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v104, v34 :: v_dual_mov_b32 v104, v34
.Ltmp253:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp254:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp255:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v106, v71, -1, -1 op_sel:[1,0]
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add_f32_e32 v71, v71, v106
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v110, 31
.Ltmp258:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v113
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
.Ltmp259:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v71, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp260:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v65, s27
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v103, v35
	v_mov_b32_e32 v103, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s26
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s26, v69, 31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp262:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp264:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v106, v106, v106 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v67, v67, v69
.Ltmp265:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v70
.Ltmp266:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v106, v106, v106 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp267:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v102
.Ltmp268:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s11, v67, 31
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v106, v106, v106 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp270:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v63, v63, v65, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v102, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v106, v106, v106 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v102, v36
.Ltmp272:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp273:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp274:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v108, v106, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp276:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp277:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp278:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v64, v64, v65, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v101, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp279:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v101, v37
.Ltmp280:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp281:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
.Ltmp282:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v106, v106, v108 :: v_dual_add_f32 v69, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp283:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s20, v106, 31
	v_dual_mov_b32 v106, v41 :: v_dual_cndmask_b32 v65, 0, v65
.Ltmp284:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s12, v69, 31
.Ltmp286:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v57, v57, v65, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v100, v38 :: v_dual_mov_b32 v100, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v65, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v99, v39
	v_mov_b32_e32 v99, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v98
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v65, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v98, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v65, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v97, v42
	v_mov_b32_e32 v97, v42
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s25
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp287:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp288:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v53, v53, v65, s26
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v96, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp289:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v96, v43
.Ltmp290:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp291:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp292:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v95
.Ltmp293:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp294:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v54, v54, v65, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v95, v44 :: v_dual_add_f32 v68, v68, v70
.Ltmp295:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v95, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp296:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v66, 31
.Ltmp299:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v55, v55, v65, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v94, v45 :: v_dual_mov_b32 v94, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v135
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v56, v56, v65, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v135, v46
	v_mov_b32_e32 v135, v46
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v68, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp301:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v49, v49, v65, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v134, v47 :: v_dual_mov_b32 v98, v40
	v_mov_b32_e32 v134, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v133
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v50, v50, v65, s12
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v133, v48
	v_mov_b32_e32 v133, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v51, v51, v65, s13
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v132, v107 :: v_dual_mov_b32 v132, v107
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v52, v52, v65, s9
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_47
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v120
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s4, v255, 17
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v72, s59 :: v_dual_mov_b32 v71, s58
	v_mov_b32_e32 v70, s57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 2, v120
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s86, s83, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v69, s56
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s4, s86, s81
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s4, v137
	v_add_nc_u32_e32 v35, s4, v138
	v_add_nc_u32_e32 v36, s4, v75
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v68, s55 :: v_dual_add_nc_u32 v37, s4, v139
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v120
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v67, s54 :: v_dual_add_nc_u32 v38, s4, v76
	v_dual_mov_b32 v66, s53 :: v_dual_add_nc_u32 v39, s4, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s52 :: v_dual_add_nc_u32 v40, s4, v140
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v41, s4, v79
	v_add_nc_u32_e32 v42, s4, v80
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 6, v120
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v43, s4, v81
	v_add_nc_u32_e32 v44, s4, v78
	v_add_nc_u32_e32 v45, s4, v82
	v_add_nc_u32_e32 v46, s4, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s4, v84
	v_add_nc_u32_e32 v48, s4, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 8, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 10, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 12, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 14, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 16, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 18, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 20, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 22, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 24, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 26, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 28, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 30, v120
	v_or_b32_e32 v33, s83, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s67, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s4, v74
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
	ds_store_b8 v142, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v142, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v142, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v142, v41 offset:576
	ds_store_b8 v143, v35
	ds_store_b8 v143, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v143, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v143, v43 offset:576
	ds_store_b8 v144, v37
	ds_store_b8 v144, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v144, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v144, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v145, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v145, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v145, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v145, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[107:110], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[107:108], v[86:87], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[86:87], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v174 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v175 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[90:91], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v176 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[92:93], v[41:48] neg_lo:[1,1,0]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 2, v222
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v65, s86, v222, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[92:93], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v67, 4, v65
	v_add_nc_u32_e32 v68, 8, v65
	v_add_nc_u32_e32 v69, 12, v65
	v_add_nc_u32_e32 v70, 16, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 4, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v108, 32, v65
	v_add_nc_u32_e32 v109, 36, v65
	v_add_nc_u32_e32 v110, 40, v65
	v_add_nc_u32_e32 v111, 44, v65
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v71, 20, v65
	v_add_nc_u32_e32 v72, 24, v65
	v_add_nc_u32_e32 v107, 28, v65
	v_add_nc_u32_e32 v112, 48, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s1, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 6, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v113, 52, v65
	v_add_nc_u32_e32 v114, 56, v65
	v_add_nc_u32_e32 v115, 60, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 8, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s20, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 10, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 12, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 14, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s24, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 18, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v108, 0x80000000, v108, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 20, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v109, 0x80000000, v109, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s26, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 22, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v110, 0x80000000, v110, s26
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s27, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 24, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v111, 0x80000000, v111, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s28, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 26, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v154, 0x80000000, v112, s28
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s29, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 28, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v155, 0x80000000, v113, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s67, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v66, 30, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v156, 0x80000000, v114, s30
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v222
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v157, 0x80000000, v115, s31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s33, s67, v66
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e32 v66, 0x80000000, v67, vcc_lo
	v_cndmask_b32_e64 v67, 0x80000000, v68, s1
	v_cndmask_b32_e64 v68, 0x80000000, v69, s3
	v_cndmask_b32_e64 v69, 0x80000000, v70, s20
	v_cndmask_b32_e64 v65, 0x80000000, v65, s33
	v_cndmask_b32_e64 v70, 0x80000000, v71, s21
	v_cndmask_b32_e64 v71, 0x80000000, v72, s22
	v_cndmask_b32_e64 v72, 0x80000000, v107, s23
	s_clause 0xf
	buffer_load_u16 v107, v65, s[72:75], 0 offen
	buffer_load_u16 v227, v66, s[72:75], 0 offen
	buffer_load_u16 v226, v67, s[72:75], 0 offen
	buffer_load_u16 v225, v68, s[72:75], 0 offen
	buffer_load_u16 v224, v69, s[72:75], 0 offen
	buffer_load_u16 v223, v70, s[72:75], 0 offen
	buffer_load_u16 v117, v71, s[72:75], 0 offen
	buffer_load_u16 v116, v72, s[72:75], 0 offen
	buffer_load_u16 v115, v108, s[72:75], 0 offen
	buffer_load_u16 v114, v109, s[72:75], 0 offen
	buffer_load_u16 v113, v110, s[72:75], 0 offen
	buffer_load_u16 v112, v111, s[72:75], 0 offen
	buffer_load_u16 v111, v154, s[72:75], 0 offen
	buffer_load_u16 v110, v155, s[72:75], 0 offen
	buffer_load_u16 v109, v156, s[72:75], 0 offen
	buffer_load_u16 v108, v157, s[72:75], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s83, v162
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v147
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s98, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s95, s3, s1
	v_readlane_b32 s3, v255, 4
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 5
	s_and_b32 s92, s3, s1
	v_readlane_b32 s3, v255, 6
	s_and_b32 s89, s3, s1
	v_readlane_b32 s3, v255, 7
	s_and_b32 s87, s3, s1
	v_readlane_b32 s3, v255, 12
	s_and_b32 s50, s3, s1
	v_readlane_b32 s3, v255, 8
	s_and_b32 s101, s3, s1
	v_readlane_b32 s3, v255, 9
	s_and_b32 s99, s3, s1
	v_readlane_b32 s3, v255, 10
	s_and_b32 s97, s3, s1
	v_readlane_b32 s3, v255, 11
	s_and_b32 s96, s3, s1
	v_readlane_b32 s3, v255, 13
	s_and_b32 s94, s3, s1
	v_readlane_b32 s3, v255, 14
	s_and_b32 s91, s3, s1
	v_readlane_b32 s3, v255, 15
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 16
	s_and_b32 s88, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	v_cmp_le_i32_e64 s1, v65, v73
	v_cmp_le_i32_e64 s28, v65, v165
	v_cmp_le_i32_e64 s29, v65, v166
	v_cmp_le_i32_e64 s25, v65, v163
	v_cmp_le_i32_e64 s26, v65, v254
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s1, s1, s98
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v65, v164
	s_and_b32 s1, s1, exec_lo
	v_cmp_le_i32_e64 s30, v65, v167
	v_cmp_le_i32_e64 s31, v65, v168
	v_cmp_le_i32_e64 s33, v65, v169
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v66
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, vcc_lo, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v65, v66
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s95
	s_and_b32 s3, s3, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v65, v66
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s20, s93
	s_and_b32 s20, s25, s101
	s_and_b32 s5, s5, exec_lo
	s_and_b32 s25, s30, s91
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v65, v66
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s21, s92
	s_and_b32 s21, s26, s99
	s_and_b32 s26, s31, s90
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v65, v66
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s22, s89
	s_and_b32 s22, s27, s97
	s_and_b32 s27, s33, s88
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v65, v66
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s23, s87
	s_and_b32 s23, s28, s96
	s_and_not1_b32 s28, s100, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	s_or_b32 s100, s28, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s89, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s89, s4, s5
	s_and_not1_b32 s4, s50, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v65, v66
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s24, s50
	s_and_b32 s24, s29, s94
	s_and_not1_b32 s29, s98, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_or_b32 s98, s29, s1
	s_and_not1_b32 s1, s95, exec_lo
	s_or_b32 s50, s4, s5
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_and_not1_b32 s4, s99, exec_lo
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_b32 s5, s21, exec_lo
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s20, exec_lo
	s_or_b32 s99, s4, s5
	s_or_b32 s101, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s22, exec_lo
	s_and_not1_b32 s4, s96, exec_lo
	s_and_b32 s5, s23, exec_lo
	s_or_b32 s97, s1, s3
	s_or_b32 s96, s4, s5
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s24, exec_lo
	s_and_not1_b32 s4, s91, exec_lo
	s_and_b32 s5, s25, exec_lo
	s_or_b32 s94, s1, s3
	s_or_b32 s91, s4, s5
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s26, exec_lo
	s_and_not1_b32 s4, s88, exec_lo
	s_and_b32 s5, s27, exec_lo
	s_or_b32 s90, s1, s3
	s_or_b32 s88, s4, s5
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v66, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v65, v66
	scratch_load_b32 v66, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v65, v66
	scratch_load_b32 v66, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v65, v66
	scratch_load_b32 v66, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v65, v66
	scratch_load_b32 v66, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v65, v66
	scratch_load_b32 v66, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v65, v66
	scratch_load_b32 v66, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v65, v66
	scratch_load_b32 v66, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v65, v66
	scratch_load_b32 v66, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v65, v66
	scratch_load_b32 v66, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v65, v66
	scratch_load_b32 v66, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v65, v66
	scratch_load_b32 v66, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v65, v66
	scratch_load_b32 v66, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v65, v66
	scratch_load_b32 v66, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v65, v66
	scratch_load_b32 v66, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v65, v66
	scratch_load_b32 v66, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v65, v66
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v66, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v65, v66
	scratch_load_b32 v66, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s4, s4, s100
	s_and_b32 s4, s4, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v65, v66
	scratch_load_b32 v66, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, s98
	s_and_b32 s1, s1, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v65, v66
	scratch_load_b32 v66, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s36
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, s95
	s_and_b32 s3, s3, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v65, v66
	scratch_load_b32 v66, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s20, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s5, s93
	s_and_b32 s5, s5, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v65, v66
	scratch_load_b32 v66, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s6, s92
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v65, v66
	scratch_load_b32 v66, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s22, s39
	s_and_b32 s7, s7, s89
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v65, v66
	scratch_load_b32 v66, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s8, s87
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v65, v66
	scratch_load_b32 v66, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s24, s41
	s_and_b32 s9, s9, s50
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s42, v65, v66
	scratch_load_b32 v66, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s101
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v65, v66
	scratch_load_b32 v66, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s26, s43
	s_and_b32 s21, s21, s99
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s44, v65, v66
	scratch_load_b32 v66, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s22, s22, s97
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v65, v66
	scratch_load_b32 v66, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s28, s45
	s_and_not1_b32 s28, s100, exec_lo
	s_and_b32 s23, s23, s96
	s_or_b32 s100, s28, s4
	s_and_not1_b32 s4, s93, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s93, s4, s5
	s_and_not1_b32 s4, s89, exec_lo
	s_and_b32 s5, s7, exec_lo
	s_or_b32 s89, s4, s5
	s_and_not1_b32 s4, s50, exec_lo
	s_and_b32 s5, s9, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s50, s4, s5
	s_and_not1_b32 s4, s99, exec_lo
	s_and_b32 s5, s21, exec_lo
	s_or_b32 s99, s4, s5
	s_and_not1_b32 s4, s96, exec_lo
	s_and_b32 s5, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s4, s5
	s_and_not1_b32 s4, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v65, v66
	scratch_load_b32 v66, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s29, s46
	s_and_not1_b32 s29, s98, exec_lo
	s_and_b32 s24, s24, s94
	s_or_b32 s98, s29, s1
	s_and_not1_b32 s1, s95, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s92, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s20, exec_lo
	s_or_b32 s101, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s24, exec_lo
	s_or_b32 s94, s1, s3
	s_and_not1_b32 s1, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v65, v66
	scratch_load_b32 v66, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s91
	s_and_b32 s5, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s91, s4, s5
	s_and_not1_b32 s4, s88, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v65, v66
	scratch_load_b32 v66, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s26, s90
	s_and_b32 s3, s26, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s90, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v65, v66
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s33, s49
	s_and_b32 s27, s27, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s27, exec_lo
	s_or_b32 s88, s4, s5
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v68.l, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	v_readlane_b32 s1, v255, 19
	v_readlane_b32 s3, v255, 18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v72.l, v68.l
	s_mul_i32 s1, s83, s1
	s_add_i32 s1, s3, s1
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s100
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[65:66], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, vcc_lo, s62, v65
	v_add_co_ci_u32_e64 v66, null, s63, v66, vcc_lo
	global_load_d16_u8 v72, v[65:66], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s98
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[65:66], off, off offset:28 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, vcc_lo, s62, v65
	v_add_co_ci_u32_e64 v66, null, s63, v66, vcc_lo
	global_load_d16_u8 v68, v[65:66], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v65.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v65.h, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s95
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[66:67], off, off offset:36 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, vcc_lo, s62, v66
	v_add_co_ci_u32_e64 v67, null, s63, v67, vcc_lo
	global_load_d16_hi_u8 v65, v[66:67], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s93
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[66:67], off, off offset:44 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v67, 31, v66
	v_add_co_u32 v66, vcc_lo, s62, v66
	v_add_co_ci_u32_e64 v67, null, s63, v67, vcc_lo
	global_load_d16_u8 v65, v[66:67], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v66.h, v66.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s92
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:52 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v67
	v_add_co_u32 v69, vcc_lo, s62, v67
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v66, v[69:70], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s89
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:60 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v67
	v_add_co_u32 v69, vcc_lo, s62, v67
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_u8 v66, v[69:70], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v67.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.h, v67.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s87
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v67, v[69:70], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s50
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:76 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_u8 v67, v[69:70], off
.LBB0_30:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v71.h, 0
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v72.h, v71.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s101
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:84 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v72, v[69:70], off
.LBB0_32:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s99
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:92 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v71, v[69:70], off
.LBB0_34:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v68.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v68.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s97
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:100 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_u8 v69, v[69:70], off
.LBB0_36:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s96
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[154:155], off, off offset:108 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v155, 31, v70
	v_add_co_u32 v154, vcc_lo, s62, v70
	v_add_co_ci_u32_e64 v155, null, s63, v155, vcc_lo
	global_load_d16_hi_u8 v68, v[154:155], off
.LBB0_38:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v69.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v70.l, v69.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s94
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[154:155], off, off offset:116 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v155, 31, v70
	v_add_co_u32 v154, vcc_lo, s62, v70
	v_add_co_ci_u32_e64 v155, null, s63, v155, vcc_lo
	global_load_d16_u8 v70, v[154:155], off
.LBB0_40:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s91
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[154:155], off, off offset:124 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v155, 31, v154
	v_add_co_u32 v154, vcc_lo, s62, v154
	v_add_co_ci_u32_e64 v155, null, s63, v155, vcc_lo
	global_load_d16_hi_u8 v69, v[154:155], off
.LBB0_42:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v70.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v71.l, v70.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s90
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[154:155], off, off offset:132 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v155, 31, v154
	v_add_co_u32 v154, vcc_lo, s62, v154
	v_add_co_ci_u32_e64 v155, null, s63, v155, vcc_lo
	global_load_d16_u8 v71, v[154:155], off
.LBB0_44:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s88
	s_cbranch_execz .LBB0_9
; %bb.45:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[154:155], off, off offset:140 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s1, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v155, 31, v154
	v_add_co_u32 v154, vcc_lo, s62, v154
	v_add_co_ci_u32_e64 v155, null, s63, v155, vcc_lo
	global_load_d16_hi_u8 v70, v[154:155], off
	s_branch .LBB0_9
.LBB0_46:
	.loc	1 0 34                          ; attention.py:0:34
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
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	s_branch .LBB0_48
.LBB0_47:                               ; %Flow
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v33, off, off offset:300
	scratch_load_b32 v69, off, off offset:288
	scratch_load_b32 v39, off, off offset:292
	scratch_load_b32 v34, off, off offset:296
.LBB0_48:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v0, 64, v33
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v34, 28, v34
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
	v_mov_b16_e32 v67.h, 0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_load_b32 v0, v0
	s_mov_b32 s62, 0x7ffffffe
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fmas_f32 v34, v34, v38, v43
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v39, 1.0
	v_fmac_f32_e32 v36, v37, v40
	v_rcp_f32_e32 v37, v47
	v_div_fixup_f32 v32, v34, v0, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
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
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v25, 16, 1
	v_bfe_u32 v66, v26, 16, 1
	v_bfe_u32 v68, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v45, v36, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v65, v25, v65, 0x7fff
	v_cmp_o_f32_e64 s33, v25, v25
	v_bfe_u32 v25, v28, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v36, v49, v36
	v_mul_f32_e32 v38, v44, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v66, v26, v66, 0x7fff
	v_cmp_o_f32_e64 s34, v26, v26
	v_add3_u32 v26, v27, v68, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v38, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v28, v25, 0x7fff
	v_cmp_o_f32_e64 s36, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v35, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v65.h, s33
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s35
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v26, v30, 16, 1
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v65, v31, 16, 1
	v_add3_u32 v28, v29, v28, 0x7fff
	v_cmp_o_f32_e64 s33, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v29, v32, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v66.h, s34
	v_add3_u32 v26, v30, v26, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v30, v31, v65, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_add3_u32 v29, v32, v29, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s36
	v_cmp_o_f32_e64 s36, v32, v32
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s33
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v46, v35
	v_fma_f32 v46, -v42, v43, 1.0
	v_mul_f32_e32 v44, v39, v37
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s34
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v49, v40, v35
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
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
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v47, v36
	v_fmac_f32_e32 v51, v40, v39
	v_div_fixup_f32 v4, v38, v0, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v24, s0
	v_cndmask_b32_e64 v38, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_mul_f32_e32 v52, v48, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v43, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v1, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v47, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v0, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v28, v33, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v23, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v31, v35, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v33, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v33, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v33, v37, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v31, v35, v31, 0x7fff
	v_bfe_u32 v30, v34, 16, 1
	v_cmp_o_f32_e64 s34, v34, v34
	v_cmp_o_f32_e64 s35, v35, v35
	v_bfe_u32 v32, v36, 16, 1
	v_cmp_o_f32_e64 s36, v36, v36
	v_add3_u32 v30, v34, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s33
	v_bfe_u32 v34, v40, 16, 1
	v_add3_u32 v32, v36, v32, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s35
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s34
	v_bfe_u32 v31, v38, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v41, 0, v9, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_add3_u32 v32, v37, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s33, v37, v37
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v34, v40, v34, 0x7fff
	v_add3_u32 v33, v39, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
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
	v_cmp_eq_u32_e64 s33, 0, v69
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
	v_lshrrev_b32_e32 v53, 1, v69
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
.Ltmp302:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 308
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 308
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 25380
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 308
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
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
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
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
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
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
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
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
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
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
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
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
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
    .private_segment_fixed_size: 308
    .sgpr_count:     107
    .sgpr_spill_count: 20
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 76
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
