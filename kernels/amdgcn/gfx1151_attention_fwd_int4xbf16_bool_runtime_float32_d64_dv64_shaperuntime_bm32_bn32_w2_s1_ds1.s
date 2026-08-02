	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
	v_lshrrev_b32_e32 v135, 5, v0
	v_and_b32_e32 v33, 31, v0
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_or_b32_e32 v2, 2, v135
	v_or_b32_e32 v3, 4, v135
	v_or_b32_e32 v4, 6, v135
	v_or_b32_e32 v5, 8, v135
	v_or_b32_e32 v6, 10, v135
	v_or_b32_e32 v7, 12, v135
	v_or_b32_e32 v9, 16, v135
	v_or_b32_e32 v10, 18, v135
	v_or_b32_e32 v11, 20, v135
	v_or_b32_e32 v12, 22, v135
	v_or_b32_e32 v8, 14, v135
	v_or_b32_e32 v13, 24, v135
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[74:75], null, s81, v135, v[33:34]
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
	v_mad_u64_u32 v[75:76], null, s81, 6, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s7, s3, s66
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v3, s33, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v152, s81, 1, v74
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s18, s81, v33
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[76:77], null, s81, 10, v[74:75]
	v_mad_u64_u32 v[77:78], null, s81, 12, v[74:75]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[78:79], null, s81, 14, v[74:75]
	v_mad_u64_u32 v[79:80], null, s81, 18, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s33, v135
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[80:81], null, s81, 20, v[74:75]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[81:82], null, s81, 22, v[74:75]
	v_mad_u64_u32 v[82:83], null, s81, 24, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[83:84], null, s81, 26, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[84:85], null, s81, 28, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[85:86], null, s81, 30, v[74:75]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s8, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s66, v1
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
	v_lshl_add_u32 v153, s81, 2, v74
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s8, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s57, s66, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s34, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s33, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v154, s81, 3, v74
	v_lshl_add_u32 v155, s81, 4, v74
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v17, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s58, s66, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s33, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s59, s66, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s33, v7
	v_or_b32_e32 v9, s33, v9
	v_or_b32_e32 v10, s33, v10
	v_or_b32_e32 v11, s33, v11
	v_or_b32_e32 v12, s33, v12
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v14, 26, v135
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	v_readfirstlane_b32 s5, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s66, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s33, v8
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v15, 28, v135
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s66, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s33, v13
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v16, 30, v135
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s66, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s33, v14
	v_or_b32_e32 v15, s33, v15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s66, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s33, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s66, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s64, s65
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s36, s6, 31
	s_mul_i32 s8, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s66, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s66, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s66, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s37, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s2, s7, s33
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s18
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s4, s2, s81
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s66, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v17, s4, v74
	v_add_nc_u32_e32 v18, s4, v152
	v_add_nc_u32_e32 v19, s4, v153
	v_add_nc_u32_e32 v20, s4, v75
	v_add_nc_u32_e32 v21, s4, v154
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s57, s18
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v22, s4, v76
	v_add_nc_u32_e32 v23, s4, v77
	v_add_nc_u32_e32 v24, s4, v78
	v_add_nc_u32_e32 v25, s4, v155
	v_add_nc_u32_e32 v26, s4, v79
	v_add_nc_u32_e32 v27, s4, v80
	v_add_nc_u32_e32 v28, s4, v81
	v_add_nc_u32_e32 v29, s4, v82
	v_add_nc_u32_e32 v30, s4, v83
	v_add_nc_u32_e32 v31, s4, v84
	v_add_nc_u32_e32 v32, s4, v85
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s66, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s58, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s66, v7
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s59, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s18
	v_dual_mov_b32 v144, v33 :: v_dual_cndmask_b32 v21, 0x80000000, v21
	s_and_b32 vcc_lo, s5, s18
	.loc	1 776 23 is_stmt 0              ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s66, v8
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s18
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
	s_and_b32 vcc_lo, s8, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v35, 0x88, v0
	v_cndmask_b32_e32 v23, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v25, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v158, 0, v35
	v_cndmask_b32_e32 v26, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v27, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v157, 0, v0
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v36, 0x110, v0
	v_cndmask_b32_e32 v28, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s18
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v23, v23, s[28:31], 0 offen
	buffer_load_u8 v25, v25, s[28:31], 0 offen
	buffer_load_u8 v26, v26, s[28:31], 0 offen
	buffer_load_u8 v27, v27, s[28:31], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v37, 0x198, v0
	v_cndmask_b32_e32 v30, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s26, s30
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v31, 0x80000000, v32, vcc_lo
	s_clause 0x5
	buffer_load_u8 v28, v28, s[28:31], 0 offen
	buffer_load_u8 v29, v29, s[28:31], 0 offen
	buffer_load_u8 v32, v18, s[28:31], 0 offen
	buffer_load_u8 v24, v24, s[28:31], 0 offen
	buffer_load_u8 v30, v30, s[28:31], 0 offen
	buffer_load_u8 v31, v31, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v18, 15, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s27, s31
	s_and_b32 s25, s25, 0xffff
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v159, 0, v36
	v_add_nc_u32_e32 v160, 0, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, v34, v18
	v_writelane_b32 v255, s16, 1
	s_mov_b32 s83, 0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v157, v17
	s_waitcnt vmcnt(14)
	ds_store_b8 v157, v33 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v157, v23 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v157, v25 offset:576
	ds_store_b8 v158, v19
	ds_store_b8 v158, v20 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v158, v26 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v158, v27 offset:576
	ds_store_b8 v159, v21
	ds_store_b8 v159, v22 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v159, v28 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v159, v29 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v160, v32
	s_waitcnt vmcnt(2)
	ds_store_b8 v160, v24 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v160, v30 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v160, v31 offset:576
	.loc	1 780 17                        ; attention.py:780:17
	v_add_nc_u32_e32 v38, s2, v34
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s33, v34
	v_writelane_b32 v255, s4, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v19, 5, v18
	v_lshlrev_b32_e32 v21, 4, v39
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v35, 1, v38
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v34
	scratch_store_b32 off, v38, off offset:320 ; 4-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_writelane_b32 v255, s5, 3
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v34, 0x80000000, v35, s2
	v_writelane_b32 v255, s6, 4
	buffer_load_u16 v17, v34, s[24:27], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v34, 1, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s24, s37, s36
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s25, s67, 31
	v_writelane_b32 v255, s8, 5
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s29, s24, s36
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v20, 24, v34
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s28, s29
	v_writelane_b32 v255, s9, 6
	s_cvt_f32_u32 s24, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_or3_b32 v21, v19, v21, v20
	v_writelane_b32 v255, s10, 7
	v_add_nc_u32_e32 v22, 0, v21
	v_xad_u32 v23, v21, 8, 0
	v_xad_u32 v24, v21, 16, 0
	v_writelane_b32 v255, s11, 8
	v_xad_u32 v21, v21, 24, 0
	ds_load_b64 v[86:87], v22
	ds_load_b64 v[88:89], v23
	ds_load_b64 v[90:91], v24
	ds_load_b64 v[92:93], v21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s24
	v_writelane_b32 v255, s7, 9
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s24, s25, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s26, s24, 27
	v_writelane_b32 v255, s12, 10
	s_add_i32 s25, s25, s26
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s55, s25, 0xffffffe0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s24, v21
	v_writelane_b32 v255, s13, 11
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s20, s20, 0x10008
	v_writelane_b32 v255, s14, 12
	v_writelane_b32 v255, s15, 13
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v162, 0, 1, s35
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v130, v0, 4, 1
	v_lshlrev_b32_e32 v23, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s55
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v33, 6, v0
	s_mov_b32 s20, 0
	s_branch .LBB0_7
.LBB0_4:
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
	s_min_i32 s55, s55, s20
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v162, 0, 1, s35
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
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
	s_min_i32 s55, s55, s20
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v130, v0, 4, 1
	v_lshlrev_b32_e32 v23, 6, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s55
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s20, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow188
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x38
	s_load_b32 s66, s[0:1], 0x64
	v_or_b32_e32 v134, 2, v130
	v_or_b32_e32 v133, 4, v130
	v_or_b32_e32 v132, 6, v130
	v_or_b32_e32 v131, 8, v130
	v_or_b32_e32 v129, 10, v130
	v_or_b32_e32 v119, 16, v130
	v_or_b32_e32 v118, 22, v130
	v_or_b32_e32 v145, 26, v130
	s_and_not1_b32 vcc_lo, exec_lo, s20
	s_cbranch_vccnz .LBB0_46
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s20, s3, s64
	s_mul_f32 s24, s24, 0x4f7ffffe
	s_ashr_i32 s20, s20, 31
	v_lshlrev_b32_e32 v21, 2, v0
	s_xor_b32 s25, s34, s20
	s_cvt_u32_f32 s24, s24
	s_sub_i32 s20, s25, s20
	s_sub_i32 s25, 0, s28
	s_mul_i32 s26, s20, s64
	s_mul_i32 s25, s25, s24
	s_sub_i32 s3, s3, s26
	s_mul_hi_u32 s25, s24, s25
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	s_add_i32 s31, s24, s25
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x6c
	s_load_b64 s[62:63], s[0:1], 0x30
	v_or_b32_e32 v163, v19, v20
	v_mov_b32_e32 v20, 0x5410
	v_lshl_or_b32 v164, v18, 8, v21
	v_cndmask_b32_e64 v18, 0x104, 0, vcc_lo
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v17.h, v17.l
	v_mov_b16_e32 v17.l, 0
	s_load_b32 s4, s[0:1], 0x7c
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v22, 1, v0
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v35, s23, v2
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v33, s23, v1
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v37, s23, v4
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v48, s23, v14
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v36, s23, v3
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s24, s24, 0x3fb8aa3b
	v_dual_mov_b32 v2, 0x7632 :: v_dual_and_b32 v19, 60, v34
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v38, s23, v5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v168, s24, v17
	v_xor_b32_e32 v18, v18, v19
	v_and_b32_e32 v19, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v5, 2, v135
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v40, s23, v6
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v41, s23, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v19
	v_lshrrev_b32_e32 v19, 2, v19
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v21, 14, v0
	v_mov_b32_e32 v4, v144
	v_cndmask_b32_e32 v2, 0x3276, v2, vcc_lo
	v_lshl_or_b32 v19, v22, 1, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_u32_u24_e32 v21, 0x44, v21
	v_cndmask_b32_e32 v1, 0x1054, v20, vcc_lo
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v42, s23, v8
	v_lshl_or_b32 v2, v2, 8, v2
	v_or3_b32 v165, v19, v21, v135
	v_lshlrev_b32_e32 v19, 3, v0
	v_lshl_or_b32 v3, v1, 8, v1
	v_mul_lo_u32 v1, s4, v4
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v43, s23, v9
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v44, s23, v10
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v45, s23, v11
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v46, s23, v12
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v47, s23, v13
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v65, s23, v15
	v_lshl_or_b32 v166, v22, 6, v18
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v66, s23, v16
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:64
	scratch_store_b32 off, v39, off offset:324
	v_or_b32_e32 v5, 4, v135
	s_abs_i32 s30, s3
	s_ashr_i32 s34, s3, 31
	scratch_store_b32 off, v34, off offset:328 ; 4-byte Folded Spill
	s_mul_hi_u32 s31, s30, s31
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s35, s31, s28
	s_ashr_i32 s29, s29, 31
	s_sub_i32 s30, s30, s35
	s_xor_b32 s29, s34, s29
	s_add_i32 s34, s31, 1
	s_sub_i32 s35, s30, s28
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:72 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 6, v135
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s30, s28
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x20
	s_cselect_b32 s31, s34, s31
	s_cselect_b32 s30, s35, s30
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s34, s31, 1
	s_cmp_ge_u32 s30, s28
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s1, s27, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s28, s34, s31
	v_bfe_i32 v18, v0, 3, 1
	s_xor_b32 s28, s28, s29
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:80
	scratch_store_b32 off, v23, off offset:332
	v_or_b32_e32 v5, 8, v135
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s28, s28, s29
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s29, s20, s65
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s20, s20, s25
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s65, s28, s29
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s0, s65, s67
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v21, 48, v19
	.loc	1 843 41                        ; attention.py:843:41
	v_writelane_b32 v255, s0, 14
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s3, s26
	s_add_i32 s84, s20, s1
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:88 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 10, v135
	s_add_i32 s1, s84, s3
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v18, 0x210, v18
	v_and_or_b32 v21, 0x1c0, v23, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_writelane_b32 v255, s1, 15
	s_mov_b32 s56, s4
	s_mov_b32 s4, 0
	v_xor_b32_e32 v167, v21, v18
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	scratch_store_b64 off, v[5:6], off offset:96 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 12, v135
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	s_mov_b32 s11, s4
	v_writelane_b32 v255, s4, 16
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s66, v0
	v_mov_b32_e32 v237, 0xff800000
	v_mov_b32_e32 v73, 0xff800000
	v_mov_b32_e32 v109, 0xff800000
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b64 off, v[5:6], off offset:104 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 14, v135
	v_writelane_b32 v255, s5, 17
	v_mov_b32_e32 v107, 0xff800000
	v_mov_b32_e32 v105, 0xff800000
	s_mov_b32 s79, 0x31027000
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_writelane_b32 v255, s6, 18
	s_mov_b32 s78, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s69, s69, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_and_b32 s77, s71, 0xffff
	v_writelane_b32 v255, s7, 19
	scratch_store_b64 off, v[5:6], off offset:112 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 16, v135
	s_mov_b32 s76, s70
	s_mov_b32 s70, s78
	v_writelane_b32 v255, s8, 20
	s_mov_b32 s71, s79
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	s_mov_b32 s74, s78
	v_writelane_b32 v255, s9, 21
	s_mov_b32 s75, s79
	s_mov_b32 s85, 0x76543210
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v29, v25
	scratch_store_b64 off, v[5:6], off offset:120 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 18, v135
	v_writelane_b32 v255, s10, 22
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v18, v25
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_writelane_b32 v255, s11, 23
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v24, v25
	scratch_store_b64 off, v[5:6], off offset:128 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 20, v135
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v11, v25
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_mov_b32_e32 v14, v25
	v_dual_mov_b32 v13, v25 :: v_dual_mov_b32 v240, 0xff800000
	v_mov_b32_e32 v16, v25
	v_dual_mov_b32 v238, 0xff800000 :: v_dual_mov_b32 v15, v25
	scratch_store_b64 off, v[5:6], off offset:136 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 22, v135
	v_mov_b32_e32 v108, 0xff800000
	v_mov_b32_e32 v106, 0xff800000
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v7, v25
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_mov_b32 v247, 0xff800000
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_mov_b32 v147, 0xff800000
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_mov_b32 v149, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:144 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 24, v135
	v_dual_mov_b32 v94, 0xff800000 :: v_dual_mov_b32 v95, 0xff800000
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_mov_b32 v97, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_mov_b32 v99, 0xff800000
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_mov_b32 v101, 0xff800000
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_mov_b32 v103, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:152 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 26, v135
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_mov_b32 v245, 0xff800000
	v_dual_mov_b32 v246, 0xff800000 :: v_dual_mov_b32 v243, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	v_dual_mov_b32 v244, 0xff800000 :: v_dual_mov_b32 v241, 0xff800000
	v_dual_mov_b32 v242, 0xff800000 :: v_dual_mov_b32 v239, 0xff800000
	scratch_store_b64 off, v[5:6], off offset:160 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 28, v135
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:168 ; 8-byte Folded Spill
	v_or_b32_e32 v5, 30, v135
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[5:6], null, s27, v5, v[1:2]
	scratch_store_b64 off, v[5:6], off offset:176 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s27, v135, v[1:2]
	v_and_b32_e32 v1, 0x540054, v3
	v_lshrrev_b32_e32 v3, 4, v39
	v_and_b32_e32 v2, 0x760076, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v185, v4, 2, v3
	v_xor_b32_e32 v3, v19, v34
	v_subrev_nc_u32_e32 v34, s21, v33
	scratch_store_b64 off, v[5:6], off offset:184 ; 8-byte Folded Spill
	v_and_b32_e32 v186, 0x5040504, v1
	v_xor_b32_e32 v1, 8, v163
	v_and_or_b32 v188, v3, 48, v23
	scratch_store_b32 off, v34, off offset:192 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v35
	v_lshl_or_b32 v2, v2, 4, v2
	v_add_nc_u32_e32 v189, 0, v1
	v_xor_b32_e32 v1, 16, v163
	v_mov_b32_e32 v19, v25
	scratch_store_b32 off, v34, off offset:196 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v36
	v_and_b32_e32 v187, 0x7060706, v2
	v_add_nc_u32_e32 v190, 0, v1
	v_xor_b32_e32 v1, 24, v163
	v_mov_b32_e32 v23, v25
	scratch_store_b32 off, v34, off offset:200 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v37
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v191, 0, v1
	v_xor_b32_e32 v1, 0x88, v185
	v_mov_b32_e32 v3, v25
	scratch_store_b32 off, v34, off offset:204 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v38
	v_mov_b32_e32 v4, v25
	v_add_nc_u32_e32 v192, 0, v1
	v_xor_b32_e32 v1, 0x110, v185
	v_mov_b32_e32 v5, v25
	scratch_store_b32 off, v34, off offset:208 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v40
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v193, 0, v1
	v_xor_b32_e32 v1, 0x198, v185
	scratch_store_b32 off, v34, off offset:212 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v41
	v_add_nc_u32_e32 v194, 0, v1
	v_xor_b32_e32 v1, 0x220, v185
	scratch_store_b32 off, v34, off offset:216 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v42
	v_add_nc_u32_e32 v195, 0, v1
	v_xor_b32_e32 v1, 0x2a8, v185
	scratch_store_b32 off, v34, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v43
	v_add_nc_u32_e32 v196, 0, v1
	v_xor_b32_e32 v1, 0x330, v185
	scratch_store_b32 off, v34, off offset:224 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v44
	v_add_nc_u32_e32 v197, 0, v1
	v_xor_b32_e32 v1, 0x3b8, v185
	scratch_store_b32 off, v34, off offset:228 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v45
	v_add_nc_u32_e32 v198, 0, v1
	v_xor_b32_e32 v1, 8, v165
	scratch_store_b32 off, v34, off offset:232 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v46
	v_add_nc_u32_e32 v199, 0, v1
	v_xor_b32_e32 v1, 16, v165
	scratch_store_b32 off, v34, off offset:236 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v47
	v_add_nc_u32_e32 v200, 0, v1
	v_xor_b32_e32 v1, 24, v165
	scratch_store_b32 off, v34, off offset:240 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v48
	v_add_nc_u32_e32 v201, 0, v1
	v_xor_b32_e32 v1, 32, v165
	scratch_store_b32 off, v34, off offset:244 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v65
	v_add_nc_u32_e32 v202, 0, v1
	v_xor_b32_e32 v1, 40, v165
	scratch_store_b32 off, v34, off offset:248 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v34, s21, v66
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v34, off offset:252
	scratch_store_b32 off, v33, off
	v_add_nc_u32_e32 v203, 0, v1
	v_xor_b32_e32 v1, 48, v165
	v_add_nc_u32_e32 v33, s22, v33
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:256
	scratch_store_b32 off, v35, off offset:4
	v_add_nc_u32_e32 v204, 0, v1
	v_xor_b32_e32 v1, 56, v165
	v_add_nc_u32_e32 v33, s22, v35
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:260
	scratch_store_b32 off, v36, off offset:8
	v_add_nc_u32_e32 v205, 0, v1
	v_xor_b32_e32 v1, 4, v164
	v_add_nc_u32_e32 v33, s22, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:264
	scratch_store_b32 off, v37, off offset:12
	v_add_nc_u32_e32 v206, 0, v1
	v_xor_b32_e32 v1, 8, v164
	v_add_nc_u32_e32 v33, s22, v37
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:268
	scratch_store_b32 off, v38, off offset:16
	v_add_nc_u32_e32 v207, 0, v1
	v_xor_b32_e32 v1, 12, v164
	v_add_nc_u32_e32 v33, s22, v38
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:272
	scratch_store_b32 off, v40, off offset:20
	v_add_nc_u32_e32 v208, 0, v1
	v_xor_b32_e32 v1, 16, v164
	v_add_nc_u32_e32 v33, s22, v40
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:276
	scratch_store_b32 off, v41, off offset:24
	v_add_nc_u32_e32 v209, 0, v1
	v_xor_b32_e32 v1, 20, v164
	v_add_nc_u32_e32 v33, s22, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:280
	scratch_store_b32 off, v42, off offset:28
	v_add_nc_u32_e32 v210, 0, v1
	v_xor_b32_e32 v1, 24, v164
	v_add_nc_u32_e32 v33, s22, v42
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:284
	scratch_store_b32 off, v43, off offset:32
	v_add_nc_u32_e32 v211, 0, v1
	v_xor_b32_e32 v1, 28, v164
	v_add_nc_u32_e32 v33, s22, v43
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:288
	scratch_store_b32 off, v44, off offset:36
	v_add_nc_u32_e32 v212, 0, v1
	v_xor_b32_e32 v1, 32, v164
	v_add_nc_u32_e32 v33, s22, v44
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:292
	scratch_store_b32 off, v45, off offset:40
	v_add_nc_u32_e32 v213, 0, v1
	v_xor_b32_e32 v1, 36, v164
	v_add_nc_u32_e32 v33, s22, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:296
	scratch_store_b32 off, v46, off offset:44
	v_add_nc_u32_e32 v214, 0, v1
	v_xor_b32_e32 v1, 40, v164
	v_add_nc_u32_e32 v33, s22, v46
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:300
	scratch_store_b32 off, v47, off offset:48
	v_add_nc_u32_e32 v215, 0, v1
	v_xor_b32_e32 v1, 44, v164
	v_add_nc_u32_e32 v33, s22, v47
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:304
	scratch_store_b32 off, v48, off offset:52
	v_add_nc_u32_e32 v216, 0, v1
	v_xor_b32_e32 v1, 48, v164
	v_add_nc_u32_e32 v33, s22, v48
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:308
	scratch_store_b32 off, v65, off offset:56
	v_add_nc_u32_e32 v217, 0, v1
	v_xor_b32_e32 v1, 52, v164
	v_add_nc_u32_e32 v33, s22, v65
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:312
	scratch_store_b32 off, v66, off offset:60
	v_add_nc_u32_e32 v218, 0, v1
	v_xor_b32_e32 v1, 56, v164
	v_add_nc_u32_e32 v33, s22, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v219, 0, v1
	v_xor_b32_e32 v1, 60, v164
	scratch_store_b32 off, v33, off offset:316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v220, 0, v1
	v_xor_b32_e32 v1, 0x208, v166
	v_add_nc_u32_e32 v221, 0, v1
	v_xor_b32_e32 v1, 0x410, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v222, 0, v1
	v_xor_b32_e32 v1, 0x618, v166
	v_add_nc_u32_e32 v223, 0, v1
	v_xor_b32_e32 v1, 0x820, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v224, 0, v1
	v_xor_b32_e32 v1, 0xa28, v166
	v_add_nc_u32_e32 v225, 0, v1
	v_xor_b32_e32 v1, 0xc30, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v226, 0, v1
	v_xor_b32_e32 v1, 0xe38, v166
	v_add_nc_u32_e32 v227, 0, v1
	v_xor_b32_e32 v1, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v228, 0, v1
	v_xor_b32_e32 v1, 32, v188
	v_add_nc_u32_e32 v229, 0, v1
	v_xor_b32_e32 v1, 48, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v230, 0, v1
	v_xor_b32_e32 v1, 16, v167
	v_add_nc_u32_e32 v231, 0, v1
	v_xor_b32_e32 v1, 32, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v232, 0, v1
	v_xor_b32_e32 v1, 48, v167
	v_add_nc_u32_e32 v233, 0, v1
	v_xor_b32_e32 v1, 0x420, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v234, 0, v1
	v_xor_b32_e32 v1, 0x430, v167
	v_add_nc_u32_e32 v235, 0, v1
	v_xor_b32_e32 v1, 0x410, v167
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v236, 0, v1
	v_mov_b32_e32 v1, v25
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v121, v33
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v33.l, 0xff, v72.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v136, v41
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v33.l
	v_and_b16 v33.l, 0xff, v72.l
	v_and_b16 v44.h, 0xff, v65.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v122, v34
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 vcc_lo, s101, vcc_lo
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v33.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v33, 0, 1, vcc_lo
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v33.h, 0xff, v70.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v124, v36
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s1, s100, s1
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v33.h
	v_and_b16 v33.h, 0xff, v66.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v34, 0, 1, s1
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v248.h, v248.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v248.l, 0
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, s99, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v44.h
	v_and_b16 v44.h, 0xff, v65.l
	v_cmp_ne_u16_e64 s21, 0, v33.h
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v33.l, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s20
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v123, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v44.h
	v_and_b16 v44.h, 0xff, v67.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s24, s98, s21
	v_lshlrev_b16 v33.h, 8, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s24
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v125, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v44.h
	v_and_b16 v44.h, 0xff, v66.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v127, v39
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v44.l, v34.l, v33.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v168, v42 :: v_dual_add_nc_u32 v34, 0, v185
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v44.h
	v_and_b16 v44.h, 0xff, v68.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v34, v33
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v33.h, v252.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s27, 0, v44.h
	v_and_b16 v44.h, 0xff, v67.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v33.l, v248.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v168, v47
	v_mul_f32_e32 v37, v168, v45
	v_mul_f32_e32 v45, v168, v124
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s30, 0, v44.h
	v_and_b16 v44.h, 0xff, v69.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v168, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v126, v38
	v_mul_f32_e32 v42, v168, v122
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s21, 0, v44.h
	v_and_b16 v44.h, 0xff, v68.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v34, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v34.h, v251.l
	v_mov_b16_e64 v34.l, v248.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v44.h
	v_and_b16 v44.h, 0xff, v70.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v128, v40
	v_mul_f32_e32 v34, v35, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v35.h, v250.l
	v_mov_b16_e64 v35.l, v248.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s33, 0, v44.h
	v_and_b16 v44.h, 0xff, v69.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v168, v46 :: v_dual_add_nc_u32 v69, 0, v165
	v_mul_f32_e32 v36, v168, v43
	v_mul_f32_e32 v40, v168, v48
	v_mul_f32_e32 v41, v168, v121
	v_mul_f32_e32 v43, v168, v123
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s34, 0, v44.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v36, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v36.h, v249.l
	v_mov_b16_e64 v36.l, v248.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v44.h, 0xff, v71.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s26, s97, s21
	s_and_b32 s29, s94, s3
	s_and_b32 s21, s96, s28
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v36, v37, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v37.h, v161.l
	v_mov_b16_e64 v37.l, v248.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s35, 0, v44.h
	v_and_b16 v44.h, 0xff, v71.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s31, s92, s22
	s_and_b32 s22, s95, s33
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v37, v38, v37
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v38.h, v156.l
	v_mov_b16_e64 v38.l, v248.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s36, 0, v44.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v46, 0, 1, s31
	s_and_b32 s33, s90, s23
	s_and_b32 s23, s93, s34
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v38, v39, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v39.h, v120.l
	v_mov_b16_e64 v39.l, v248.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s34, s88, s25
	s_and_b32 s25, s91, s35
	v_cndmask_b32_e64 v47, 0, 1, s34
	s_and_b32 s28, s87, s27
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v40, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v40.h, v117.l
	v_mov_b16_e64 v40.l, v248.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s27, s89, s36
	s_and_b32 s30, s50, s30
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s3, s83, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v48, 0, 1, s30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v41, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v116.l
	v_mov_b16_e64 v41.l, v248.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s51, s83, 2
	s_or_b32 s80, s83, 3
	s_or_b32 s87, s83, 4
	s_or_b32 s89, s83, 5
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v42, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v42.h, v115.l
	v_mov_b16_e64 v42.l, v248.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s90, s83, 6
	s_or_b32 s91, s83, 7
	s_or_b32 s92, s83, 8
	s_or_b32 s93, s83, 9
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v43, v42
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v43.h, v114.l
	v_mov_b16_e64 v43.l, v248.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s94, s83, 10
	s_or_b32 s95, s83, 11
	s_or_b32 s96, s83, 12
	s_or_b32 s97, s83, 13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v45, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v45, 0, 1, s26
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s99, s83, 14
	s_or_b32 s100, s83, 15
	s_or_b32 s102, s83, 16
	s_or_b32 s103, s83, 17
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v44.h, 8, v45.l
	v_cndmask_b32_e64 v45, 0, 1, s29
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s104, s83, 18
	s_or_b32 vcc_hi, s83, 19
	s_or_b32 s4, s83, 20
	s_or_b32 s5, s83, 21
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v44.h, v45.l, v44.h
	v_cndmask_b32_e64 v45, 0, 1, s21
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s6, s83, 22
	s_or_b32 s7, s83, 23
	s_or_b32 s8, s83, 24
	s_or_b32 s9, s83, 25
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s10, s83, 26
	s_or_b32 s11, s83, 27
	s_or_b32 s12, s83, 28
	s_or_b32 s13, s83, 29
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v45.l, v46.l, v45.l
	v_cndmask_b32_e64 v46, 0, 1, s22
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s14, s83, 30
	s_or_b32 s15, s83, 31
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s83, s67
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v45.h, 8, v46.l
	v_cndmask_b32_e64 v46, 0, 1, s33
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s3, s67
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v45.h, v46.l, v45.h
	v_cndmask_b32_e64 v46, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v46.l, 8, v46.l
	v_or_b16 v46.l, v47.l, v46.l
	v_cndmask_b32_e64 v47, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v46.h, 8, v47.l
	v_cndmask_b32_e64 v47, 0, 1, s28
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v104, v104, v104
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v46.h, v47.l, v46.h
	v_cndmask_b32_e64 v47, 0, 1, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v47.l, 8, v47.l
	v_or_b16 v47.l, v48.l, v47.l
	ds_store_b16 v192, v44
	ds_store_b16_d16_hi v193, v44
	ds_store_b16 v194, v45
	ds_store_b16_d16_hi v195, v45
	ds_store_b16 v196, v46
	ds_store_b16_d16_hi v197, v46
	ds_store_b16 v198, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v44.h, v113.l
	v_mov_b16_e64 v44.l, v248.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v168, v125
	v_mul_f32_e32 v46, v168, v126
	v_mul_f32_e32 v47, v168, v127
	v_mul_f32_e32 v48, v168, v128
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v45, v44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v45.h, v112.l
	v_mov_b16_e64 v45.l, v248.l
	.loc	1 877 25                        ; attention.py:877:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v46, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v46.h, v111.l
	v_mov_b16_e64 v46.l, v248.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v47, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v47.h, v110.l
	v_mov_b16_e64 v47.l, v248.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v48, v47
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u8_d16 v48, v199
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v48, v201 offset:64
	ds_load_u8_d16 v65, v200 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v65, v199 offset:64
	ds_load_u8_d16 v66, v69 offset:64
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s49, 1, v48.l
	ds_load_u8_d16 v48, v200
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v33, s49
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s45, 1, v48.l
	ds_load_u8_d16 v48, v201
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v34, s45
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s47, 1, v48.l
	ds_load_u8_d16 v48, v202
	ds_load_u8_d16_hi v66, v205 offset:64
	ds_load_u8_d16 v67, v204 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v67, v203 offset:64
	ds_load_u8_d16 v68, v202 offset:64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, 0xff800000, v35, s47
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s46, 1, v48.l
	ds_load_u8_d16 v48, v203
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v36, s46
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s48, 1, v48.l
	ds_load_u8_d16 v48, v204
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v37, s48
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s43, 1, v48.l
	ds_load_u8_d16 v48, v205
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v38, s43
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v48.l
	v_cmp_eq_u16_e64 s44, 1, v48.l
	v_and_b16 v48.l, 1, v66.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s41, 1, v48.l
	v_and_b16 v48.l, 1, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v40, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s42, 1, v48.l
	v_and_b16 v48.l, 1, v65.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v168, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v39, s44
	v_cndmask_b32_e64 v156, 0xff800000, v41, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s39, 1, v48.l
	v_and_b16 v48.l, 1, v48.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v65, v65, v248
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v254, 0xff800000, v42, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s40, 1, v48.l
	v_and_b16 v48.l, 1, v68.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v171, 0, v188
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v43, s40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s37, 1, v48.l
	v_and_b16 v48.l, 1, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v252, 0xff800000, v44, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s38, 1, v48.l
	v_and_b16 v48.l, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v253, 0xff800000, v45, s38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s35, 1, v48.l
	v_and_b16 v48.l, 1, v66.h
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[66:67], null, s86, s66, v[0:1]
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s51, s67
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s36, 1, v48.l
	ds_load_u8_d16 v48, v69
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s80, s67
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s87, s67
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s89, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v250, 0xff800000, v46, s35
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s90, s67
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s91, s67
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s92, s67
	s_cselect_b32 s65, -1, 0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v48.l, 1, v48.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s93, s67
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s94, s67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s50, 1, v48.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v48, 0, v164
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s95, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v249, 0xff800000, v65, s50
	.loc	1 889 30                        ; attention.py:889:30
	v_add_nc_u32_e32 v65, s66, v66
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s96, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v48, v249
	v_add_nc_u32_e32 v35, s66, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v66
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s97, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v65
	v_add_nc_u32_e32 v66, s66, v35
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s99, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v34, 1, v35
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s52, -1, 0
	v_add_nc_u32_e32 v36, s66, v66
	s_cmp_lt_i32 s100, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s102, s67
	v_add_nc_u32_e32 v68, s66, v36
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s103, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v35, 1, v36
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s94, -1, 0
	v_add_nc_u32_e32 v37, s66, v68
	s_cmp_lt_i32 s104, s67
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v251, 0xff800000, v47, s36
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 vcc_hi, s67
	v_add_nc_u32_e32 v114, s66, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v36, 1, v37
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s4, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v68
	v_add_nc_u32_e32 v37, s66, v114
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s5, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v114, 1, v114
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s97, -1, 0
	v_add_nc_u32_e32 v67, s66, v37
	s_cmp_lt_i32 s6, s67
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v38, 1, v37
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s7, s67
	v_add_nc_u32_e32 v39, s66, v67
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s8, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v206, v141
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 vcc_hi, -1, 0
	v_add_nc_u32_e32 v69, s66, v39
	s_cmp_lt_i32 s9, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v207, v139
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s10, s67
	v_add_nc_u32_e32 v40, s66, v69
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s11, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v208, v140
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s12, s67
	v_add_nc_u32_e32 v70, s66, v40
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s13, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v209, v137
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s14, s67
	v_add_nc_u32_e32 v41, s66, v70
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s15, s67
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v210, v138
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s100, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 s3, s0, s16
	v_add_nc_u32_e32 v72, s66, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s17
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v211, v151
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s19
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v212, v136
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s84
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v213, v120
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s65
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v214, v156
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v38, s3
	v_lshlrev_b32_e32 v38, 1, v39
	v_lshlrev_b32_e32 v39, 1, v40
	v_lshlrev_b32_e32 v40, 1, v41
	v_add_nc_u32_e32 v41, s66, v72
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s64
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v215, v254
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s82
	v_add_nc_u32_e32 v71, s66, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s52
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v216, v161
	v_add_nc_u32_e32 v43, s66, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s53
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v217, v252
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v42, s3
	v_add_nc_u32_e32 v111, s66, v43
	v_lshlrev_b32_e32 v42, 1, v43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s54
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v218, v253
	ds_store_b32 v219, v250
	v_add_nc_u32_e32 v44, s66, v111
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s51
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b32 v220, v251
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v112, s66, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v44
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x5
	buffer_load_u16 v33, v33, s[76:79], 0 offen
	buffer_load_u16 v34, v34, s[76:79], 0 offen
	buffer_load_u16 v35, v35, s[76:79], 0 offen
	buffer_load_u16 v36, v36, s[76:79], 0 offen
	buffer_load_u16 v39, v39, s[76:79], 0 offen
	buffer_load_u16 v40, v40, s[76:79], 0 offen
	v_add_nc_u32_e32 v45, s66, v112
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s80
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_u16 v37, v37, s[76:79], 0 offen
	buffer_load_u16 v38, v38, s[76:79], 0 offen
	buffer_load_u16 v41, v41, s[76:79], 0 offen
	buffer_load_u16 v42, v42, s[76:79], 0 offen
	v_add_nc_u32_e32 v113, s66, v45
	v_lshlrev_b32_e32 v44, 1, v45
	buffer_load_u16 v43, v43, s[76:79], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s83, s83, 32
	v_add_nc_u32_e32 v45, s66, v113
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, vcc_hi
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v110, s66, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v45
	buffer_load_u16 v44, v44, s[76:79], 0 offen
	v_add_nc_u32_e32 v47, s66, v110
	v_cndmask_b32_e64 v45, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v115, s66, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v46, 1, v47
	v_add_nc_u32_e32 v48, s66, v115
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s103
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v45, v45, s[76:79], 0 offen
	buffer_load_u16 v46, v46, s[76:79], 0 offen
	v_add_nc_u32_e32 v116, s66, v48
	v_lshlrev_b32_e32 v47, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v117, s66, v116
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v48, 1, v117
	buffer_load_u16 v47, v47, s[76:79], 0 offen
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s101
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v114, 0x80000000, v114, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s98
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v48, v48, s[76:79], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s88
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v114, v114, s[76:79], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s86
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v68, v68, s[76:79], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s89
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v66, v66, s[76:79], 0 offen
	buffer_load_u16 v65, v65, s[76:79], 0 offen
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v36.h, v114.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v35.h, v68.l
	v_lshlrev_b32_e32 v68, 1, v72
	v_lshlrev_b32_e32 v72, 1, v113
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v34.h, v66.l
	v_lshlrev_b32_e32 v66, 1, v69
	v_lshlrev_b32_e32 v69, 1, v71
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v65.l
	v_lshlrev_b32_e32 v65, 1, v67
	v_lshlrev_b32_e32 v67, 1, v70
	v_lshlrev_b32_e32 v70, 1, v111
	v_lshlrev_b32_e32 v71, 1, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s90
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
	buffer_load_u16 v121, v68, s[76:79], 0 offen
	buffer_load_u16 v122, v67, s[76:79], 0 offen
	buffer_load_u16 v123, v66, s[76:79], 0 offen
	buffer_load_u16 v124, v65, s[76:79], 0 offen
	buffer_load_u16 v125, v72, s[76:79], 0 offen
	buffer_load_u16 v126, v71, s[76:79], 0 offen
	buffer_load_u16 v127, v70, s[76:79], 0 offen
	buffer_load_u16 v128, v69, s[76:79], 0 offen
	v_lshlrev_b32_e32 v65, 1, v115
	v_add_lshl_u32 v67, v117, s66, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v68, 1, v116
	v_lshlrev_b32_e32 v66, 1, v110
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s0, s87
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s83, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	s_clause 0x3
	buffer_load_u16 v142, v67, s[76:79], 0 offen
	buffer_load_u16 v143, v68, s[76:79], 0 offen
	buffer_load_u16 v169, v65, s[76:79], 0 offen
	buffer_load_u16 v170, v66, s[76:79], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v166
	ds_load_2addr_b32 v[116:117], v65 offset1:32
	ds_load_2addr_b32 v[114:115], v221 offset1:32
	ds_load_2addr_b32 v[112:113], v222 offset1:32
	ds_load_2addr_b32 v[110:111], v223 offset1:32
	ds_load_2addr_b32 v[71:72], v224 offset1:32
	ds_load_2addr_b32 v[69:70], v225 offset1:32
	ds_load_2addr_b32 v[67:68], v226 offset1:32
	ds_load_2addr_b32 v[65:66], v227 offset1:32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v171, v[33:36]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v249, v141
	v_max3_f32 v34, v140, v137, v138
	v_max3_f32 v35, v252, v253, v250
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v36.h, v248.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v33, v139, v34
	v_max3_f32 v34, v156, v254, v161
	v_max3_f32 v34, v34, v35, v251
	v_max3_f32 v35, v151, v136, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v33, v33, v35, v34
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v248.l
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v33, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v33, v247, v33, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v141, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v249, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s49, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v35, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v36, v35, v186
	v_perm_b32 v35, v36, v35, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v140, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s47
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v40.h, v121.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v39.h, v122.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v38.h, v123.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v37.h, v124.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v44.h, v125.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v43.h, v126.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v42.h, v127.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v41.h, v128.l
	ds_store_b128 v228, v[37:40]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v36.h
	v_mov_b16_e64 v37.h, v248.l
	v_mov_b16_e64 v38.h, v248.l
	v_mov_b16_e64 v39.h, v248.l
	v_mov_b16_e64 v40.h, v248.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b128 v229, v[41:44]
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e64 v41.h, v248.l
	v_mov_b16_e64 v42.h, v248.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, 0, v167
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v139, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v47.h, v143.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v46.h, v169.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v45.h, v170.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v48.h, v142.l
	ds_store_b128 v230, v[45:48]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[121:124], v234 offset:2048
	ds_load_b128 v[125:128], v235 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s45
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v43 offset:2048
	ds_load_b128 v[173:176], v231 offset:2048
	ds_load_b128 v[177:180], v43 offset:1024
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v36.h
	v_cmp_o_f32_e64 s45, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v38, v36, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s45
	v_permlanex16_b32 v38, v37, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v36, v38, v37, v186
	v_perm_b32 v37, v38, v37, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v138, v33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v38, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v137, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v38.h
	v_cmp_o_f32_e64 s45, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v40, 1, v40
	v_add3_u32 v40, v38, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s45
	v_permlanex16_b32 v40, v39, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v38, v40, v39, v186
	v_perm_b32 v39, v40, v39, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v136, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v43
	ds_load_b128 v[140:143], v231
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v40, v40
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v151, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v247
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.l, v40.h
	v_cmp_o_f32_e64 s43, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v40, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s43
	v_permlanex16_b32 v42, v41, s85, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v40, v42, v41, v186
	v_perm_b32 v41, v42, v41, v187
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v42, v247, v33 :: v_dual_mov_b32 v247, v33
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v42, 0, v42, s3
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
	v_wmma_f32_16x16x16_bf16 v[25:32], v[136:143], v[34:41], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v234
	ds_load_b128 v[140:143], v235
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
	v_wmma_f32_16x16x16_bf16 v[17:24], v[136:143], v[34:41], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[136:139], v43 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[169:176], v[34:41], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v42.h, v248.l
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[34:41], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v34, v156, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v248.l
	v_mov_b16_e64 v36.h, v248.l
	v_mov_b16_e64 v37.h, v248.l
	v_mov_b16_e64 v38.h, v248.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v248.l
	v_mov_b16_e64 v40.h, v248.l
	v_mov_b16_e64 v41.h, v248.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[181:184], v236
	ds_load_b128 v[140:143], v236 offset:2048
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v35, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v120, v33
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v233
	ds_load_b128 v[120:123], v232
	ds_load_b128 v[169:172], v232 offset:2048
	ds_load_b128 v[173:176], v233 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v34, v34
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v35, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v36, v35, v186
	v_perm_b32 v35, v36, v35, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v161, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v37.l, v36.h
	v_cmp_o_f32_e64 s3, v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v254, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v38.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v36, v36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v38, v36, v38, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v37, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v38, v37, v186
	v_perm_b32 v37, v38, v37, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v253, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v39.l, v38.h
	v_cmp_o_f32_e64 s3, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v39, v38, v39, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v252, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v38, v38
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v40, v38, v40, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v39, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v40, v39, v186
	v_perm_b32 v39, v40, v39, v187
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v251, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v40.h
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v40, v41, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v250, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v40, v40
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v42, v40, v42, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v41, s85, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v42, v41, v186
	v_perm_b32 v41, v42, v41, v187
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[120:127], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[177:184], v[34:41], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[169:176], v[34:41], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[136:143], v[34:41], v[1:8]
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v116 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v116, v116 :: v_dual_max_f32 v36, v114, v114
	v_dual_max_f32 v37, v112, v112 :: v_dual_max_f32 v38, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v39, v69, v69
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v121, v105, v105 :: v_dual_max_f32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v35
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s3, v34, 31
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v36, v37, v36 :: v_dual_max_f32 v37, v110, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v37, v34
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v37
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v39, v38
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v39
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
	v_readlane_b32 s5, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v39
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s6, v34, 31
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v34, v34, v34
	v_dual_max_f32 v38, v38, v39 :: v_dual_max_f32 v39, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v37, v34 :: v_dual_max_f32 v37, v67, v67
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s7, v34, 31
	v_mov_b32_dpp v34, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
	v_dual_max_f32 v37, v65, v65 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v37, v34
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s4, v35, 31
	v_permlanex16_b32 v35, v38, -1, -1 op_sel:[1,0]
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v117, v117
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v35, v38, v35
	v_max_f32_e32 v38, v115, v115
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s8, v35, 31
	v_mov_b32_dpp v35, v117 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v40, s8, s8
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v37, v35
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v37
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v115 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v38, v37
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v113 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v39, v38
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v39
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v37, v39
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v38, v39
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v34, v39
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v39
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v36, v36, v39
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s9, v36, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v111 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp110:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v41, s9, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v34, v34, v39
.Ltmp114:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
	v_readlane_b32 s10, v34, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v34, v37, -1, -1 op_sel:[1,0]
.Ltmp117:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v42, s10, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v39
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s11, v35, 31
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v34, v37, v34
	v_max_f32_e32 v37, v111, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v43, s11, s11
.Ltmp124:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp125:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s12, v34, 31
	v_mov_b32_dpp v34, v72 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v37, v36
	v_max_f32_e32 v37, v72, v72
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v35, v38, -1, -1 op_sel:[1,0]
.Ltmp128:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v66, v66
	v_max_f32_e32 v34, v34, v34
.Ltmp129:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v44, s12, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v34, v37, v34
	v_max_f32_e32 v37, v70, v70
	v_dual_max_f32 v35, v38, v35 :: v_dual_max_f32 v38, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s13, v35, 31
	v_mov_b32_dpp v35, v70 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp132:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v45, s13, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v35, v37, v35
.Ltmp134:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v36 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v36, v36, v37
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v37, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max_f32_e32 v37, v38, v37
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v38, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v38
	v_max_f32_e32 v38, v39, v38
.Ltmp140:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp142:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp144:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp146:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp148:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp150:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp152:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp154:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v36 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp156:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v39
.Ltmp158:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp160:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v34 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp161:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp162:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v35 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v35, v35, v39
.Ltmp164:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v36, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v36, v36, v39
.Ltmp166:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v37 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s14, v36, 31
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp168:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v36, s4, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e64 v46, s14, s14
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v37, v37, v39
.Ltmp170:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v38 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v38, v38, v39
.Ltmp172:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v34, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v34, v34, v39
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v35, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s15, v34, 31
.Ltmp175:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v34, v146, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp176:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v47, s15, s15
.Ltmp177:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v39
.Ltmp178:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v37, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s16, v35, 31
.Ltmp179:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v35, s3, s3
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp181:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v48, s16, s16
	v_max_f32_e32 v146, v34, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v34, v246, v246 :: v_dual_max_f32 v37, v37, v39
.Ltmp182:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v39, v38, -1, -1 op_sel:[1,0]
.Ltmp183:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v34, v35
	v_max_f32_e32 v35, v147, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp184:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp185:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s17, v37, 31
.Ltmp186:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v37, s5, s5
	v_max_f32_e32 v147, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v35, v245, v245 :: v_dual_max_f32 v38, v38, v39
	v_max_f32_e64 v39, s7, s7
	v_max_f32_e64 v120, s17, s17
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v114, v114, v147 :: v_dual_max_f32 v35, v35, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v148, v148
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s19, v38, 31
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e64 v38, s6, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v148, v36, v37
	v_max_f32_e32 v36, v244, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v148
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v36, v37
	v_max_f32_e32 v37, v149, v149
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s24
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v149, v37, v38
	v_max_f32_e32 v37, v243, v243
.Ltmp189:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v114, v114, v114 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp190:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v110, v110, v149 :: v_dual_max_f32 v37, v37, v38
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v150, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v114, v114, v114 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp192:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v150, v38, v39
	v_max_f32_e32 v38, v242, v242
.Ltmp193:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v112, v112, v112 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v114, v114, v114 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp194:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v38, v38, v39
	v_max_f32_e32 v39, v94, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s31
.Ltmp195:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v112, v112, v112 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v114, v114, v114 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp196:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v94, v39, v40 :: v_dual_max_f32 v39, v241, v241
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v112, v112, v112 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp198:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v94
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v39, v39, v40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v150
.Ltmp199:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v112, v112, v112 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp200:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v71, v71
.Ltmp201:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add_f32_dpp v110, v110, v110 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp202:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v71, 0, v71, s33
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp204:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v40, v95, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp206:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v95, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v40, v240, v240 :: v_dual_sub_f32 v67, v67, v95
	v_max_f32_e32 v40, v40, v41
	v_max_f32_e32 v41, v96, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v96, v41, v42 :: v_dual_max_f32 v41, v239, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v96
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v41, v41, v42
	v_max_f32_e32 v42, v97, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s28
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v97, v42, v43
	v_max_f32_e32 v42, v238, v238
.Ltmp207:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp208:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v117, v117, v97 :: v_dual_max_f32 v42, v42, v43
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v98, v98
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp210:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v98, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp212:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v237, v237
.Ltmp213:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp214:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v115, v98
.Ltmp215:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp216:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v43, v44
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp218:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v44, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v99, v44, v45
	v_max_f32_e32 v44, v73, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v113, v113, v99 :: v_dual_max_f32 v44, v44, v45
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v100, v45, v46
	v_max_f32_e32 v45, v109, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v111, v111, v100 :: v_dual_sub_f32 v116, v116, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v45, v46
	v_max_f32_e32 v46, v101, v101
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v101, v46, v47 :: v_dual_max_f32 v46, v108, v108
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v46, v46, v47
	v_max_f32_e32 v47, v102, v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v116, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v102, v47, v48
	v_max_f32_e32 v47, v107, v107
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v116, v116, v116 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp220:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v70, v70, v102 :: v_dual_max_f32 v47, v47, v48
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v103, v103
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v116, v116, v116 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp222:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v103, v48, v120 :: v_dual_max_f32 v48, v106, v106
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v116, v116, v116 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp224:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v48, v120
	v_max_f32_e64 v120, s19, s19
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v116, v116, v116 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp226:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v104, v104, v120
	v_max_f32_e32 v120, v121, v120
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v121, v116, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp228:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v104
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v116, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp230:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s1, v116, 31
	v_permlanex16_b32 v116, v114, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v114, v116
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v116, v112, -1, -1 op_sel:[1,0]
.Ltmp234:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s3, v114, 31
.Ltmp236:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v112, v116
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v116, v110, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp239:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s4, v112, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp240:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v110, v116
.Ltmp241:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v116, v71, -1, -1 op_sel:[1,0]
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp243:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s5, v110, 31
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v116
.Ltmp245:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v116, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v66, v66, v66 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp247:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s6, v71, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp248:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v116
	v_add_f32_dpp v66, v66, v66 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp249:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s7, v69, 31
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp250:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp251:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v65, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s8, v67, 31
.Ltmp252:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v69
.Ltmp253:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp254:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s9, v65, 31
.Ltmp255:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v111
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v246
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s21
.Ltmp256:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v65, v65, v65 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp257:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v71, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v67, v65, -1, -1 op_sel:[1,0]
.Ltmp258:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v71
.Ltmp259:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp260:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp261:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s10, v69, 31
.Ltmp262:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp263:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s13, v65, 31
.Ltmp264:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v246, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s20
	v_mov_b32_e32 v246, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp265:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp266:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s22
.Ltmp267:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v67, v67, v67 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp268:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp269:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v67, v67, v67 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp270:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v61, v61, v65, s1
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v245, v35
.Ltmp271:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v71, v71, v71 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_dpp v67, v67, v67 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v245, v35
.Ltmp272:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp273:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v110, v71, -1, -1 op_sel:[1,0]
.Ltmp274:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v103
.Ltmp275:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v67, v67, v67 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_e32 v71, v71, v110
.Ltmp276:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp277:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v67, -1, -1 op_sel:[1,0]
.Ltmp278:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v244
.Ltmp279:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s11, v71, 31
.Ltmp280:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v69
.Ltmp281:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v70
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v62, v62, v65, s3
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v244, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, 0, v110, s26
.Ltmp282:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s14, v67, 31
.Ltmp283:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s25
	v_mov_b32_e32 v244, v36
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp284:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp285:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s23
.Ltmp286:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v68, v68, v68 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v110, v110, v110 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v69, v69, v69 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp287:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v243
.Ltmp288:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp289:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v63, v63, v65, s4
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v243, v37
.Ltmp290:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v110, v110, v110 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v69, v69, v69 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v68, v68, v68 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mov_b32_e32 v243, v37
.Ltmp291:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
.Ltmp292:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v112, v110, -1, -1 op_sel:[1,0]
.Ltmp293:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v69, v69, v69 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v110, v110, v112
.Ltmp294:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v69, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp295:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v242
.Ltmp296:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s12, v110, 31
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp297:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp298:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v68, -1, -1 op_sel:[1,0]
.Ltmp299:
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v64, v64, v65, s5
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v242, v38
	v_mov_b32_e32 v242, v38
.Ltmp300:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s15, v69, 31
.Ltmp301:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp302:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v70, v66, -1, -1 op_sel:[1,0]
.Ltmp303:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp304:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s16, v68, 31
.Ltmp305:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp306:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s17, v66, 31
.Ltmp307:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v241
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fma_f32 v57, v57, v65, s6
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v241, v39
	v_mov_b32_e32 v241, v39
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v240
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v58, v58, v65, s7
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v240, v40
	v_mov_b32_e32 v240, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v59, v59, v65, s8
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v239, v41
	v_mov_b32_e32 v239, v41
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v238
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v60, v60, v65, s9
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v238, v42
	v_mov_b32_e32 v238, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v53, v53, v65, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v237, v43
	v_mov_b32_e32 v237, v43
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v73
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v54, v54, v65, s11
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v73, v44
	v_mov_b32_e32 v73, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v55, v55, v65, s12
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v109, v45
	v_mov_b32_e32 v109, v45
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v108
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v56, v56, v65, s13
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v108, v46 :: v_dual_mov_b32 v108, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v49, v49, v65, s14
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v107, v47
	v_mov_b32_e32 v107, v47
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v106
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v50, v50, v65, s15
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v65, v106, v48 :: v_dual_mov_b32 v106, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v51, v51, v65, s16
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v105, v120
	v_mov_b32_e32 v105, v120
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v65, 0, v65, vcc_lo
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fma_f32 v52, v52, v65, s17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_47
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v135
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s4, v255, 14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 2, v135
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s86, s83, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s4, v255, 16
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s34, s86, s81
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s11, v255, 23
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s5, v255, 17
	v_readlane_b32 s6, v255, 18
	v_readlane_b32 s7, v255, 19
	v_readlane_b32 s8, v255, 20
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v135
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s9, v255, 21
	v_readlane_b32 s10, v255, 22
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s34, v152
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s34, v153
	v_add_nc_u32_e32 v36, s34, v75
	v_add_nc_u32_e32 v37, s34, v154
	v_add_nc_u32_e32 v38, s34, v76
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 6, v135
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v39, s34, v77
	v_add_nc_u32_e32 v40, s34, v155
	v_add_nc_u32_e32 v41, s34, v79
	v_add_nc_u32_e32 v42, s34, v80
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v43, s34, v81
	v_add_nc_u32_e32 v44, s34, v78
	v_add_nc_u32_e32 v45, s34, v82
	v_add_nc_u32_e32 v46, s34, v83
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 8, v135
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v47, s34, v84
	v_add_nc_u32_e32 v48, s34, v85
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v72, s11 :: v_dual_mov_b32 v71, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v70, s9 :: v_dual_mov_b32 v69, s8
	v_dual_mov_b32 v68, s7 :: v_dual_mov_b32 v67, s6
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 10, v135
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v66, s5 :: v_dual_mov_b32 v65, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 12, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 14, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 16, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 18, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 20, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 22, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 24, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 26, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 28, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 30, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v33, s83, v33
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s67, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s34, v74
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
	ds_store_b8 v157, v33
	s_waitcnt vmcnt(14)
	ds_store_b8 v157, v34 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v157, v40 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v157, v41 offset:576
	ds_store_b8 v158, v35
	ds_store_b8 v158, v36 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v158, v42 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v158, v43 offset:576
	ds_store_b8 v159, v37
	ds_store_b8 v159, v38 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v159, v45 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v159, v46 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v160, v39
	s_waitcnt vmcnt(2)
	ds_store_b8 v160, v44 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v160, v47 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v160, v48 offset:576
	v_add_nc_u32_e32 v33, 0, v163
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[110:113], v33 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[86:87], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[86:87], v[65:72] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v189 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[88:89], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v190 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[90:91], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[65:68], v191 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[92:93], v[41:48] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v134
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v65, s86, v130, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[67:68], v[92:93], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v133
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v67, 4, v65
	v_add_nc_u32_e32 v68, 8, v65
	v_add_nc_u32_e32 v69, 12, v65
	v_add_nc_u32_e32 v70, 16, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s1, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v71, 20, v65
	v_add_nc_u32_e32 v72, 24, v65
	v_add_nc_u32_e32 v110, 28, v65
	v_add_nc_u32_e32 v111, 32, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s3, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v112, 36, v65
	v_add_nc_u32_e32 v113, 40, v65
	v_add_nc_u32_e32 v114, 44, v65
	v_add_nc_u32_e32 v115, 48, v65
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s20, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v116, 52, v65
	v_add_nc_u32_e32 v117, 56, v65
	v_add_nc_u32_e32 v120, 60, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 12, v130
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 14, v130
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v119
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s24, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 18, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 20, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s26, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s27, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 24, v130
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s28, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v121, 0x80000000, v115, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s29, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 28, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v122, 0x80000000, v116, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 30, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v123, 0x80000000, v117, s30
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s67, v66
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s83, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v124, 0x80000000, v120, s31
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
	v_cndmask_b32_e64 v72, 0x80000000, v110, s23
	v_cndmask_b32_e64 v110, 0x80000000, v111, s24
	v_cndmask_b32_e64 v111, 0x80000000, v112, s25
	v_cndmask_b32_e64 v112, 0x80000000, v113, s26
	v_cndmask_b32_e64 v113, 0x80000000, v114, s27
	s_clause 0xf
	buffer_load_u16 v248, v65, s[72:75], 0 offen
	buffer_load_u16 v252, v66, s[72:75], 0 offen
	buffer_load_u16 v251, v67, s[72:75], 0 offen
	buffer_load_u16 v250, v68, s[72:75], 0 offen
	buffer_load_u16 v249, v69, s[72:75], 0 offen
	buffer_load_u16 v161, v70, s[72:75], 0 offen
	buffer_load_u16 v156, v71, s[72:75], 0 offen
	buffer_load_u16 v120, v72, s[72:75], 0 offen
	buffer_load_u16 v117, v110, s[72:75], 0 offen
	buffer_load_u16 v116, v111, s[72:75], 0 offen
	buffer_load_u16 v115, v112, s[72:75], 0 offen
	buffer_load_u16 v114, v113, s[72:75], 0 offen
	buffer_load_u16 v113, v121, s[72:75], 0 offen
	buffer_load_u16 v112, v122, s[72:75], 0 offen
	buffer_load_u16 v111, v123, s[72:75], 0 offen
	buffer_load_u16 v110, v124, s[72:75], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s83, v144
	.loc	1 861 25                        ; attention.py:861:25
	v_readlane_b32 s3, v255, 1
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v162
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v65
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s100, s3, s1
	v_readlane_b32 s3, v255, 2
	s_and_b32 s98, s57, s1
	s_and_b32 s94, s58, s1
	s_and_b32 s92, s59, s1
	s_and_b32 s90, s3, s1
	v_readlane_b32 s3, v255, 3
	s_and_b32 s88, s3, s1
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
	s_and_b32 s95, s3, s1
	v_readlane_b32 s3, v255, 11
	s_and_b32 s93, s3, s1
	v_readlane_b32 s3, v255, 12
	s_and_b32 s91, s3, s1
	v_readlane_b32 s3, v255, 13
	s_and_b32 s89, s3, s1
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	scratch_load_b32 v66, off, off          ; 4-byte Folded Reload
	s_and_not1_b32 s35, s100, exec_lo
	s_and_not1_b32 s36, s98, exec_lo
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e32 vcc_lo, v65, v66
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s34, vcc_lo, s100
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, exec_lo
	s_or_b32 s100, s35, s34
	s_and_not1_b32 s34, s92, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s1, v65, v66
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s98
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s98, s36, s1
	s_and_not1_b32 s1, s94, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s3, v65, v66
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s3, exec_lo
	s_or_b32 s94, s1, s3
	s_and_not1_b32 s1, s90, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v65, v66
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s92
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, exec_lo
	s_or_b32 s92, s34, s20
	s_and_not1_b32 s20, s88, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v65, v66
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s90
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s21, exec_lo
	s_or_b32 s90, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v65, v66
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s88
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s22, exec_lo
	s_or_b32 s88, s20, s21
	s_and_not1_b32 s20, s50, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v65, v66
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s23, exec_lo
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s101, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v65, v66
	scratch_load_b32 v66, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s24, exec_lo
	s_or_b32 s50, s20, s21
	s_and_not1_b32 s20, s99, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s25, v65, v66
	scratch_load_b32 v66, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s101
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s25, exec_lo
	s_or_b32 s101, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s26, v65, v66
	scratch_load_b32 v66, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s99
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s26, exec_lo
	s_or_b32 s99, s20, s21
	s_and_not1_b32 s20, s96, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s27, v65, v66
	scratch_load_b32 v66, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s97
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s27, exec_lo
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s28, v65, v66
	scratch_load_b32 v66, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s28, exec_lo
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s20, s93, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s29, v65, v66
	scratch_load_b32 v66, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s29, exec_lo
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s30, v65, v66
	scratch_load_b32 v66, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s93
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s30, exec_lo
	s_or_b32 s93, s20, s21
	s_and_not1_b32 s20, s89, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s31, v65, v66
	scratch_load_b32 v66, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s31, s91
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s3, s31, exec_lo
	s_or_b32 s91, s1, s3
	.loc	1 864 30                        ; attention.py:864:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s33, v65, v66
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s33, s33, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s89, s20, s21
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s1, v255, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v66, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v65, v66
	scratch_load_b32 v66, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v65, v66
	scratch_load_b32 v66, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s3, v65, v66
	scratch_load_b32 v66, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s20, v65, v66
	scratch_load_b32 v66, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s21, v65, v66
	scratch_load_b32 v66, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s22, v65, v66
	scratch_load_b32 v66, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s23, v65, v66
	scratch_load_b32 v66, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s24, v65, v66
	scratch_load_b32 v66, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s25, v65, v66
	scratch_load_b32 v66, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s26, v65, v66
	scratch_load_b32 v66, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s27, v65, v66
	scratch_load_b32 v66, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s28, v65, v66
	scratch_load_b32 v66, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s29, v65, v66
	scratch_load_b32 v66, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s30, v65, v66
	scratch_load_b32 v66, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s31, v65, v66
	scratch_load_b32 v66, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s33, v65, v66
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v66, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s34, v65, v66
	scratch_load_b32 v66, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s34, vcc_lo, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s34, s100
	s_and_b32 s34, s34, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s35, v65, v66
	scratch_load_b32 v66, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s35
	s_and_not1_b32 s35, s100, exec_lo
	s_and_b32 s1, s1, s98
	s_or_b32 s100, s35, s34
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s34, s92, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s36, v65, v66
	scratch_load_b32 v66, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s3, s36
	s_and_not1_b32 s36, s98, exec_lo
	s_and_b32 s3, s3, s94
	s_or_b32 s98, s36, s1
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s94, s1, s3
	s_and_not1_b32 s1, s90, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s37, v65, v66
	scratch_load_b32 v66, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s20, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s20, s20, s92
	s_and_b32 s20, s20, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s92, s34, s20
	s_and_not1_b32 s20, s88, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s38, v65, v66
	scratch_load_b32 v66, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s21, s38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s21, s90
	s_and_b32 s3, s21, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s90, s1, s3
	s_and_not1_b32 s1, s87, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s39, v65, v66
	scratch_load_b32 v66, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s22, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s22, s88
	s_and_b32 s21, s22, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s88, s20, s21
	s_and_not1_b32 s20, s50, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s40, v65, v66
	scratch_load_b32 v66, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s23, s40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s23, s23, s87
	s_and_b32 s3, s23, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s87, s1, s3
	s_and_not1_b32 s1, s101, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s41, v65, v66
	scratch_load_b32 v66, off, off offset:288 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s42, v65, v66
	scratch_load_b32 v66, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s25, s25, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s25, s25, s101
	s_and_b32 s3, s25, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s101, s1, s3
	s_and_not1_b32 s1, s97, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s43, v65, v66
	scratch_load_b32 v66, off, off offset:296 ; 4-byte Folded Reload
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
	v_cmp_le_i32_e64 s44, v65, v66
	scratch_load_b32 v66, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s27, s27, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s27, s97
	s_and_b32 s3, s27, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s97, s1, s3
	s_and_not1_b32 s1, s95, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s45, v65, v66
	scratch_load_b32 v66, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, s28, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s28, s96
	s_and_b32 s21, s28, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s96, s20, s21
	s_and_not1_b32 s20, s93, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s46, v65, v66
	scratch_load_b32 v66, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s29, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s29, s29, s95
	s_and_b32 s3, s29, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s95, s1, s3
	s_and_not1_b32 s1, s91, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s47, v65, v66
	scratch_load_b32 v66, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s30, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s30, s93
	s_and_b32 s21, s30, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s93, s20, s21
	s_and_not1_b32 s20, s89, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s48, v65, v66
	scratch_load_b32 v66, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s31, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s31, s91
	s_and_b32 s3, s31, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	s_or_b32 s91, s1, s3
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s49, v65, v66
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s49
	s_and_b32 s33, s33, s89
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s33, exec_lo
	s_or_b32 s89, s20, s21
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v66.h, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	v_readlane_b32 s3, v255, 15
	s_mul_i32 s1, s83, s56
	v_mov_b16_e32 v72.l, v66.h
	s_add_i32 s1, s3, s1
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s100
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b64 v[67:68], off, off offset:184 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v65
	v_add_co_u32 v67, vcc_lo, s62, v65
	v_add_co_ci_u32_e64 v68, null, s63, v68, vcc_lo
	global_load_d16_u8 v72, v[67:68], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s98
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[65:66], off, off offset:64 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, vcc_lo, s62, v65
	v_add_co_ci_u32_e64 v66, null, s63, v66, vcc_lo
	global_load_d16_hi_u8 v66, v[65:66], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v65.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v65.h, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s94
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[67:68], off, off offset:72 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, vcc_lo, s62, v67
	v_add_co_ci_u32_e64 v68, null, s63, v68, vcc_lo
	global_load_d16_hi_u8 v65, v[67:68], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s92
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[67:68], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, vcc_lo, s62, v67
	v_add_co_ci_u32_e64 v68, null, s63, v68, vcc_lo
	global_load_d16_u8 v65, v[67:68], off
.LBB0_22:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s90
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[67:68], off, off offset:88 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v68, 31, v67
	v_add_co_u32 v67, vcc_lo, s62, v67
	v_add_co_ci_u32_e64 v68, null, s63, v68, vcc_lo
	global_load_d16_u8 v67, v[67:68], off
.LBB0_24:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s88
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[68:69], off, off offset:96 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, vcc_lo, s62, v68
	v_add_co_ci_u32_e64 v69, null, s63, v69, vcc_lo
	global_load_d16_u8 v66, v[68:69], off
.LBB0_26:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.l, v67.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s87
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[68:69], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v69, 31, v68
	v_add_co_u32 v68, vcc_lo, s62, v68
	v_add_co_ci_u32_e64 v69, null, s63, v69, vcc_lo
	global_load_d16_u8 v68, v[68:69], off
.LBB0_28:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s50
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:112 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v67, v[69:70], off
.LBB0_30:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v70.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v72.h, v70.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s101
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v69
	v_add_co_u32 v121, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v122, null, s63, v71, vcc_lo
	global_load_d16_hi_u8 v72, v[121:122], off
.LBB0_32:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s99
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[69:70], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v70, 31, v69
	v_add_co_u32 v69, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v70, null, s63, v70, vcc_lo
	global_load_d16_hi_u8 v70, v[69:70], off
.LBB0_34:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v68.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v68.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s97
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:136 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v71, 31, v69
	v_add_co_u32 v121, vcc_lo, s62, v69
	v_add_co_ci_u32_e64 v122, null, s63, v71, vcc_lo
	global_load_d16_u8 v69, v[121:122], off
.LBB0_36:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s96
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:144 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v122, 31, v71
	v_add_co_u32 v121, vcc_lo, s62, v71
	v_add_co_ci_u32_e64 v122, null, s63, v122, vcc_lo
	global_load_d16_hi_u8 v68, v[121:122], off
.LBB0_38:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v69.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v70.l, v69.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s95
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:152 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v122, 31, v71
	v_add_co_u32 v121, vcc_lo, s62, v71
	v_add_co_ci_u32_e64 v122, null, s63, v122, vcc_lo
	global_load_d16_u8 v70, v[121:122], off
.LBB0_40:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s93
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:160 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v122, 31, v71
	v_add_co_u32 v121, vcc_lo, s62, v71
	v_add_co_ci_u32_e64 v122, null, s63, v122, vcc_lo
	global_load_d16_hi_u8 v69, v[121:122], off
.LBB0_42:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v71.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v71.h, v71.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s91
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:168 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v122, 31, v121
	v_add_co_u32 v121, vcc_lo, s62, v121
	v_add_co_ci_u32_e64 v122, null, s63, v122, vcc_lo
	global_load_d16_hi_u8 v71, v[121:122], off
.LBB0_44:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s89
	s_cbranch_execz .LBB0_9
; %bb.45:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[121:122], off, off offset:176 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, s1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v122, 31, v121
	v_add_co_u32 v121, vcc_lo, s62, v121
	v_add_co_ci_u32_e64 v122, null, s63, v122, vcc_lo
	global_load_d16_u8 v71, v[121:122], off
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
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:332
	scratch_load_b32 v39, off, off offset:324
	scratch_load_b32 v34, off, off offset:328
.LBB0_48:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
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
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v0, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s66, v131
	v_cmp_gt_i32_e64 s7, s66, v129
	v_cmp_gt_i32_e64 s10, s66, v119
	v_cmp_gt_i32_e64 s13, s66, v118
	v_cmp_gt_i32_e64 s15, s66, v145
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
	v_or_b32_e32 v57, 12, v130
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s66, v57
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fmas_f32 v34, v34, v38, v43
	s_mov_b32 vcc_lo, s4
	v_or_b32_e32 v55, 14, v130
	v_fma_f32 v43, -v42, v39, 1.0
	v_fmac_f32_e32 v36, v37, v40
	v_rcp_f32_e32 v37, v47
	v_div_fixup_f32 v32, v34, v0, v32
	v_or_b32_e32 v56, 18, v130
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
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s66, v55
	v_or_b32_e32 v54, 20, v130
	v_cmp_gt_i32_e64 s11, s66, v56
	v_or_b32_e32 v58, 24, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v45, v36, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s66, v54
	v_cmp_gt_i32_e64 s14, s66, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v43, null, v0, v0, v22
	v_div_fmas_f32 v33, v33, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v44, v39
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v43
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v33, -v42, v34, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v35, v41, v36
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_div_fmas_f32 v33, v33, v39, v34
	v_fmac_f32_e32 v48, v44, v48
	s_delay_alu instid0(VALU_DEP_4)
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
	v_cmp_gt_i32_e64 s1, s66, v130
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v47, v36
	v_fmac_f32_e32 v51, v40, v39
	v_div_fixup_f32 v4, v38, v0, v4
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 44, v130
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_mul_f32_e32 v52, v48, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s66, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v47, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s66, v134
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s66, v133
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fixup_f32 v6, v35, v0, v6
	v_fma_f32 v34, -v37, v52, v48
	.loc	1 1046 24                       ; attention.py:1046:24
	scratch_load_b32 v48, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v33, 34, v130
	v_or_b32_e32 v35, 38, v130
	v_or_b32_e32 v37, 42, v130
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s66, v132
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_or_b32_e32 v53, 28, v130
	v_div_fixup_f32 v7, v34, v0, v7
	v_or_b32_e32 v52, 30, v130
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 36, v130
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s66, v53
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 32, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s66, v52
	v_cmp_gt_i32_e64 s19, s66, v33
	v_cmp_gt_i32_e64 s20, s66, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 40, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s66, v32
	v_cmp_gt_i32_e64 s21, s66, v35
	v_cmp_gt_i32_e64 s23, s66, v37
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 46, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s66, v36
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 48, v130
	v_or_b32_e32 v41, 50, v130
	v_or_b32_e32 v42, 52, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s66, v39
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 54, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s66, v40
	v_cmp_gt_i32_e64 s27, s66, v41
	v_cmp_gt_i32_e64 s28, s66, v42
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 56, v130
	v_or_b32_e32 v45, 58, v130
	v_or_b32_e32 v46, 60, v130
	v_or_b32_e32 v47, 62, v130
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s66, v43
	v_cmp_gt_i32_e64 s30, s66, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s66, v45
	v_cmp_gt_i32_e32 vcc_lo, s66, v46
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v48, v48, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v130, 2
	v_add_lshl_u32 v50, v48, v134, 2
	v_add_lshl_u32 v51, v48, v133, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v8, v49, s[60:63], 0 offen
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_add_lshl_u32 v8, v48, v132, 2
	s_clause 0x1
	buffer_store_b32 v25, v50, s[60:63], 0 offen
	buffer_store_b32 v26, v51, s[60:63], 0 offen
	v_add_lshl_u32 v25, v48, v131, 2
	v_add_lshl_u32 v26, v48, v129, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v57, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v27, v8, s[60:63], 0 offen
	buffer_store_b32 v28, v25, s[60:63], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v8, v48, v55, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_add_lshl_u32 v25, v48, v119, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[60:63], 0 offen
	buffer_store_b32 v30, v49, s[60:63], 0 offen
	v_add_lshl_u32 v26, v48, v56, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v54, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v31, v8, s[60:63], 0 offen
	buffer_store_b32 v17, v25, s[60:63], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v8, v48, v118, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	v_add_lshl_u32 v17, v48, v58, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[60:63], 0 offen
	buffer_store_b32 v19, v27, s[60:63], 0 offen
	v_add_lshl_u32 v18, v48, v145, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v53, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v20, v8, s[60:63], 0 offen
	buffer_store_b32 v21, v17, s[60:63], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v8, v48, v52, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v17, v48, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[60:63], 0 offen
	buffer_store_b32 v23, v19, s[60:63], 0 offen
	v_add_lshl_u32 v18, v48, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v24, v8, s[60:63], 0 offen
	buffer_store_b32 v9, v17, s[60:63], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v8, v48, v35, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v9, v48, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[60:63], 0 offen
	buffer_store_b32 v11, v19, s[60:63], 0 offen
	v_add_lshl_u32 v10, v48, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v12, v8, s[60:63], 0 offen
	buffer_store_b32 v13, v9, s[60:63], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v8, v48, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v9, v48, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[60:63], 0 offen
	buffer_store_b32 v15, v11, s[60:63], 0 offen
	v_add_lshl_u32 v10, v48, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[60:63], 0 offen
	buffer_store_b32 v1, v9, s[60:63], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v1, v48, v43, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v2, v10, s[60:63], 0 offen
	buffer_store_b32 v3, v11, s[60:63], 0 offen
	v_add_lshl_u32 v2, v48, v44, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s66, v47
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
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[60:63], 0 offen
	buffer_store_b32 v5, v2, s[60:63], 0 offen
	buffer_store_b32 v6, v3, s[60:63], 0 offen
	buffer_store_b32 v7, v8, s[60:63], 0 offen
	buffer_store_b32 v0, v9, s[60:63], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp308:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 340
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 340
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23928
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 340
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
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
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
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
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
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
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 340
    .sgpr_count:     107
    .sgpr_spill_count: 24
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 84
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
