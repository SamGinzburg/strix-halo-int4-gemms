	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s87, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v119, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 4, v119
	v_or_b32_e32 v4, 8, v119
	v_or_b32_e32 v5, 12, v119
	v_or_b32_e32 v6, 16, v119
	v_or_b32_e32 v7, 20, v119
	v_or_b32_e32 v8, 24, v119
	v_or_b32_e32 v9, 28, v119
	v_or_b32_e32 v11, 32, v119
	v_or_b32_e32 v12, 36, v119
	v_or_b32_e32 v13, 40, v119
	v_or_b32_e32 v15, 48, v119
	v_or_b32_e32 v14, 44, v119
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s30, s3, s66
	s_cselect_b32 s40, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s61, s87, v1
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s29, s2, 6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v16, 52, v119
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s29, v3
	v_or_b32_e32 v4, s29, v4
	v_or_b32_e32 v5, s29, v5
	v_or_b32_e32 v6, s29, v6
	v_or_b32_e32 v7, s29, v7
	v_or_b32_e32 v8, s29, v8
	v_or_b32_e32 v9, s29, v9
	v_or_b32_e32 v11, s29, v11
	v_or_b32_e32 v12, s29, v12
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[65:66], null, s87, v119, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s29, v119
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s66, v8
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s66, v9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s29, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s87, 12, v[65:66]
	v_lshl_add_u32 v135, s87, 2, v65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v136, s87, 3, v65
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v137, s87, 4, v65
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[67:68], null, s87, 20, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[68:69], null, s87, 24, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[69:70], null, s87, 28, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[70:71], null, s87, 36, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[71:72], null, s87, 40, v[65:66]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[72:73], null, s87, 44, v[65:66]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[73:74], null, s87, 48, v[65:66]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[74:75], null, s87, 52, v[65:66]
	v_mad_u64_u32 v[75:76], null, s87, 56, v[65:66]
	v_mad_u64_u32 v[76:77], null, s87, 60, v[65:66]
	v_lshl_add_u32 v138, s87, 5, v65
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s66, v11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s29, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, 56, v119
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s66, v12
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s29, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s66, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v18, 60, v119
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v16, s29, v16
	.loc	1 776 23 is_stmt 1              ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s66, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s29, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s66, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s29, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s66, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s66, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s64, s65
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s31, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s66, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 0x60, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s66, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s30, s29
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s61
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s30, s87
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s66, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v10, s2, v65
	v_add_nc_u32_e32 v19, s2, v135
	v_add_nc_u32_e32 v20, s2, v136
	v_add_nc_u32_e32 v21, s2, v66
	v_add_nc_u32_e32 v22, s2, v137
	v_add_nc_u32_e32 v23, s2, v67
	v_add_nc_u32_e32 v24, s2, v68
	v_add_nc_u32_e32 v25, s2, v69
	v_add_nc_u32_e32 v26, s2, v138
	v_add_nc_u32_e32 v27, s2, v70
	v_add_nc_u32_e32 v28, s2, v71
	v_add_nc_u32_e32 v29, s2, v72
	v_add_nc_u32_e32 v30, s2, v73
	v_add_nc_u32_e32 v31, s2, v74
	v_add_nc_u32_e32 v32, s2, v75
	v_add_nc_u32_e32 v33, s2, v76
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v3
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s66, v6
	v_cmp_gt_i32_e64 s7, s66, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s61
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v36, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s61
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s33, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s61
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s2, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s61
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s61
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s61
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 1, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v7, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s61
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v8, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s61
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s61
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s67, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s61
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s61
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v12, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s61
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s6, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s61
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s61
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s61
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v16, 0x80000000, v33 :: v_dual_add_nc_u32 v139, 0, v0
	s_clause 0x7
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v17, v1, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	v_add_nc_u32_e32 v141, 0, v18
	v_add_nc_u32_e32 v142, 0, v20
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s6, s2
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v140, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v19, v36
	s_mov_b32 s96, 0
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s41, s2, 0xffffffc0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v139, v8
	s_waitcnt vmcnt(12)
	ds_store_b8 v139, v5 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v139, v9 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v139, v12 offset:1536
	ds_store_b8 v140, v2
	ds_store_b8 v140, v6 offset:512
	ds_store_b8 v140, v10 offset:1024
	ds_store_b8 v140, v14 offset:1536
	ds_store_b8 v141, v3
	ds_store_b8 v141, v7 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v141, v11 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v141, v15 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v142, v4
	s_waitcnt vmcnt(2)
	ds_store_b8 v142, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v142, v13 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v142, v16 offset:1536
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s29, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s29, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s29, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s2, 31
	s_lshr_b32 s7, s7, 26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s7
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s7, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s96, s7, 0x7fffffc0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s41, s41, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s75, s66, v34
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	v_cmp_ne_u32_e64 s42, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s7, s29, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 64
	s_min_i32 s7, s67, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 26
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s7, s7, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s41, s41, s7
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s48, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v116, v0, 4, 1
	v_mov_b32_e32 v8, 0
	v_add_nc_u32_e32 v54, s30, v1
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s96, s41
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v117, 2, v116
	v_or_b32_e32 v115, 4, v116
	v_or_b32_e32 v114, 6, v116
	v_or_b32_e32 v113, 8, v116
	v_or_b32_e32 v112, 10, v116
	v_or_b32_e32 v111, 12, v116
	v_or_b32_e32 v110, 14, v116
	v_or_b32_e32 v109, 16, v116
	v_or_b32_e32 v108, 18, v116
	v_or_b32_e32 v107, 20, v116
	v_or_b32_e32 v106, 22, v116
	v_or_b32_e32 v105, 24, v116
	v_or_b32_e32 v104, 26, v116
	v_or_b32_e32 v103, 28, v116
	v_or_b32_e32 v102, 30, v116
	v_or_b32_e32 v101, 32, v116
	v_or_b32_e32 v100, 34, v116
	v_or_b32_e32 v99, 36, v116
	v_or_b32_e32 v98, 38, v116
	v_or_b32_e32 v97, 40, v116
	v_or_b32_e32 v96, 42, v116
	v_or_b32_e32 v95, 44, v116
	v_or_b32_e32 v94, 46, v116
	v_or_b32_e32 v93, 48, v116
	v_or_b32_e32 v92, 50, v116
	v_or_b32_e32 v91, 52, v116
	v_or_b32_e32 v86, 62, v1
	v_mov_b32_e32 v7, v8
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
	v_mov_b32_e32 v33, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[76:83], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v54
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_xor_b32 s8, s3, s64
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s36, 0
	s_mul_f32 s7, s6, 0x4f7ffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s75
	s_ashr_i32 s8, s8, 31
	s_sub_i32 s6, 0, s4
	v_writelane_b32 v255, s37, 1
	s_xor_b32 s9, s19, s8
	s_cvt_u32_f32 s7, s7
	s_load_b32 s1, s[0:1], 0x6c
	s_sub_i32 s8, s9, s8
	v_writelane_b32 v255, s38, 2
	s_mul_i32 s9, s8, s64
	s_mul_i32 s10, s6, s7
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v36, 5, v36
	v_writelane_b32 v255, s39, 3
	s_and_b32 s25, s81, 0xffff
	s_mov_b32 s24, s80
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v5, 7, v0
	buffer_load_u16 v33, v1, s[24:27], 0 offen
	s_mov_b32 s24, 0
	v_bfe_i32 v6, v0, 3, 1
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_writelane_b32 v255, s24, 4
	.loc	1 821 33 is_stmt 1              ; attention.py:821:33
	s_mul_i32 s6, s8, s65
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s8, s7, s10
	s_abs_i32 s9, s3
	v_writelane_b32 v255, s25, 5
	s_add_i32 s7, s7, s8
	s_ashr_i32 s5, s5, 31
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s7, s9, s7
	v_writelane_b32 v255, s26, 6
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v45, 0x410, v6
	v_mul_u32_u24_e32 v46, 0x90, v5
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s3, s3, s5
	v_writelane_b32 v255, s27, 7
	s_mul_i32 s5, s7, s4
	s_add_i32 s8, s7, 1
	s_sub_i32 s5, s9, s5
	v_xor_b32_e32 v147, v46, v45
	v_writelane_b32 v255, s28, 8
	s_sub_i32 s9, s5, s4
	s_cmp_ge_u32 s5, s4
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v143, s23, v34
	v_writelane_b32 v255, s29, 9
	s_cselect_b32 s7, s8, s7
	s_cselect_b32 s5, s9, s5
	v_mov_b16_e32 v34.l, 0
	v_xor_b32_e32 v51, 0x820, v147
	s_add_i32 s8, s7, 1
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s1, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s5, s4
	v_writelane_b32 v255, s30, 10
	s_cselect_b32 s4, s8, s7
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v0
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 16, v0
	v_writelane_b32 v255, s31, 11
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_and_b32_e32 v39, 24, v1
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v2, 64, v0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s83, s83, 0xffff
	v_cndmask_b32_e32 v40, 0x1054, v4, vcc_lo
	v_or3_b32 v37, v36, v37, v39
	s_mov_b32 s56, s82
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v35, 63, v0
	s_mov_b32 s58, s46
	s_mov_b32 s59, s47
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 4, v2
	s_mov_b32 s57, s83
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v42, 4, v5
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v43, 0x70, v1
	v_mov_b32_e32 v12, v25
	v_or_b32_e32 v146, v36, v39
	v_add_nc_u32_e32 v39, 0, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[77:78], null, s48, v0, v[35:36]
	v_lshl_or_b32 v36, v40, 8, v40
	v_xad_u32 v40, v37, 8, 0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s69, s48, v35
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v41, 7, v35
	v_dual_mov_b32 v10, v25 :: v_dual_cndmask_b32 v35, 0x3276, v38
	v_xor_b32_e32 v38, v42, v43
	v_xad_u32 v42, v37, 16, 0
	v_xad_u32 v37, v37, 24, 0
	ds_load_b64 v[78:79], v39
	ds_load_b64 v[80:81], v40
	ds_load_b64 v[82:83], v42
	ds_load_b64 v[84:85], v37
	v_lshrrev_b32_e32 v44, 3, v2
	v_lshl_or_b32 v35, v35, 8, v35
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v36, 0x540054, v36
	v_mov_b32_e32 v14, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v148, v41, v44, v38
	v_and_b32_e32 v35, 0x760076, v35
	scratch_store_b32 off, v54, off         ; 4-byte Folded Spill
	v_xor_b32_e32 v43, 8, v146
	v_xor_b32_e32 v45, 16, v146
	v_xor_b32_e32 v46, 24, v146
	v_xor_b32_e32 v38, 16, v147
	v_xor_b32_e32 v41, 32, v147
	v_xor_b32_e32 v44, 48, v147
	v_xor_b32_e32 v47, 64, v147
	v_xor_b32_e32 v48, 0x50, v147
	v_xor_b32_e32 v49, 0x60, v147
	v_xor_b32_e32 v50, 0x70, v147
	v_xor_b32_e32 v52, 0x830, v147
	v_xor_b32_e32 v53, 0x810, v147
	v_xor_b32_e32 v54, 0x860, v147
	v_xor_b32_e32 v55, 0x870, v147
	v_xor_b32_e32 v56, 0x840, v147
	v_xor_b32_e32 v57, 0x850, v147
	v_xor_b32_e32 v58, 0x1040, v147
	v_xor_b32_e32 v59, 0x1050, v147
	v_xor_b32_e32 v60, 0x1060, v147
	v_xor_b32_e32 v61, 0x1070, v147
	v_xor_b32_e32 v62, 0x1010, v147
	v_xor_b32_e32 v63, 0x1020, v147
	v_xor_b32_e32 v64, 0x1030, v147
	v_xor_b32_e32 v87, 0x1860, v147
	v_xor_b32_e32 v118, 0x1870, v147
	v_xor_b32_e32 v120, 0x1840, v147
	v_xor_b32_e32 v121, 0x1850, v147
	v_xor_b32_e32 v122, 0x1820, v147
	v_xor_b32_e32 v123, 0x1830, v147
	v_xor_b32_e32 v124, 0x1810, v147
	v_lshl_or_b32 v36, v36, 4, v36
	v_xor_b32_e32 v37, 16, v148
	v_xor_b32_e32 v39, 32, v148
	v_xor_b32_e32 v40, 48, v148
	v_xor_b32_e32 v42, 64, v148
	v_xor_b32_e32 v125, 0x50, v148
	v_xor_b32_e32 v126, 0x60, v148
	v_xor_b32_e32 v127, 0x70, v148
	v_lshl_or_b32 v35, v35, 4, v35
	v_subrev_nc_u32_e32 v144, s21, v143
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v145, s22, v143
	v_dual_mov_b32 v17, v25 :: v_dual_add_nc_u32 v150, 0, v45
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v152, 0, v38
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v154, 0, v44
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v156, 0, v48
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v158, 0, v50
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v160, 0, v52
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v162, 0, v54
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v164, 0, v56
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v149, 0, v43
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v166, 0, v58
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v151, 0, v46
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v168, 0, v60
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v153, 0, v41
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v170, 0, v62
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v155, 0, v47
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v172, 0, v64
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v157, 0, v49
	v_add_nc_u32_e32 v165, 0, v57
	v_add_nc_u32_e32 v167, 0, v59
	v_add_nc_u32_e32 v169, 0, v61
	v_add_nc_u32_e32 v171, 0, v63
	v_add_nc_u32_e32 v173, 0, v87
	v_add_nc_u32_e32 v175, 0, v120
	v_dual_mov_b32 v193, v25 :: v_dual_add_nc_u32 v176, 0, v121
	v_add_nc_u32_e32 v177, 0, v122
	v_add_nc_u32_e32 v178, 0, v123
	v_add_nc_u32_e32 v179, 0, v124
	v_and_b32_e32 v180, 0x5040504, v36
	v_add_nc_u32_e32 v181, 0, v37
	v_add_nc_u32_e32 v182, 0, v39
	v_add_nc_u32_e32 v183, 0, v40
	v_add_nc_u32_e32 v184, 0, v42
	v_add_nc_u32_e32 v185, 0, v125
	v_add_nc_u32_e32 v186, 0, v126
	v_add_nc_u32_e32 v187, 0, v127
	v_and_b32_e32 v189, 0x7060706, v35
	s_mov_b32 s43, 0x76543210
	s_mov_b32 s44, s78
	s_mov_b32 s78, s46
	s_and_b32 s77, s77, 0xffff
	s_lshl_b32 s52, s48, 1
	s_lshl_b32 s53, s48, 3
	s_lshl_b32 s54, s48, 4
	s_lshl_b32 s55, s48, 5
	s_and_b32 s45, s79, 0xffff
	s_mov_b32 s79, s47
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v34.h, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v188, s1, v34 :: v_dual_add_nc_u32 v159, 0, v51
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s4, s3
	v_add_nc_u32_e32 v161, 0, v53
	s_sub_i32 s1, s1, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v192, v188 :: v_dual_add_nc_u32 v163, 0, v55
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s1, s1, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v191, v188 :: v_dual_add_nc_u32 v174, 0, v118
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s0, s1, s67
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v190, v188
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v255, s0, 12
	v_writelane_b32 v255, s75, 13
	v_writelane_b32 v255, s48, 14
	v_writelane_b32 v255, s56, 15
	v_writelane_b32 v255, s57, 16
	v_writelane_b32 v255, s58, 17
	v_writelane_b32 v255, s59, 18
	v_writelane_b32 v255, s61, 19
	v_writelane_b32 v255, s69, 20
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v233, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v240, v44
	v_cvt_f32_i32_e32 v241, v43
	v_mad_u64_u32 v[43:44], null, s0, s48, v[77:78]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 1, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v228, v57
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v64, v55
	v_cvt_f32_i32_e32 v55, v56
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v56, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, v43, s52, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v234, v48
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 2, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v236, v47
	v_cvt_f32_i32_e32 v232, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, 42, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v231, v52
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v37, 48, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v35, s96, v35
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v229, v53
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 3, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v37, s96, v37
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v235, v51
	v_cvt_f32_i32_e32 v51, v39
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v39, 50, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v230, v54
	v_cvt_f32_i32_e32 v54, v49
	v_cvt_f32_i32_e32 v49, v38
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 8, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v39, s96, v39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v242, v41
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v41, 56, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v237, v50
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v40
	v_cvt_f32_i32_e32 v243, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s96, v41
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v227, v58
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 9, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v239, v45
	v_cvt_f32_i32_e32 v238, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v118, v43, s48, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s69, s18
	s_and_b32 s1, s69, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v191, v55
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v89, 0x80000000, v118, s1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 10, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s69, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v54, v188, v54 :: v_dual_mul_f32 v59, v191, v59
	v_mul_f32_e32 v57, v192, v57
	v_mul_f32_e32 v60, v192, v60
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 11, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v58, v191, v58
	v_mul_f32_e32 v50, v192, v50
	v_mul_f32_e32 v51, v192, v51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v61, v188, v61 :: v_dual_mul_f32 v64, v190, v64
	v_mul_f32_e32 v52, v190, v52
	v_mul_f32_e32 v56, v192, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 16, v0
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v62, v190, v62 :: v_dual_mul_f32 v49, v191, v49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s10, s69, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 17, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 18, v0
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 19, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s5, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 24, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 25, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 26, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 27, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 32, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 33, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 34, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 35, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v33
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v33, 1, v43
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	s_clause 0x1
	buffer_load_u16 v47, v33, s[44:47], 0 offen
	buffer_load_u16 v48, v34, s[44:47], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 40, v0
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 41, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v33
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, v43, s53, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	s_mul_i32 s3, s48, 10
	v_add_lshl_u32 v34, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s23
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v35
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v35, 43, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s14
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	buffer_load_u16 v34, v34, s[44:47], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v35, s96, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v43, s54, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	s_mul_i32 s3, s48, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v36, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s21
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v37
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v37, 49, v0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	s_mul_i32 s3, s48, 24
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s21, s69, s21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v37, s96, v37
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v35, v35, s[44:47], 0 offen
	buffer_load_u16 v36, v36, s[44:47], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v37, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s15
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v37, s3
	s_mul_i32 s3, s48, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v38, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s19
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v39
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v39, 51, v0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s17
	s_mul_i32 s17, s48, 40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v39, s96, v39
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s69, s19
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	buffer_load_u16 v38, v38, s[44:47], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v39
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v39, v43, s55, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	s_mul_i32 s3, s48, 34
	v_add_lshl_u32 v40, v43, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s3, s69, s20
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v41
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v41, 57, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	s_clause 0x1
	buffer_load_u16 v39, v39, s[44:47], 0 offen
	buffer_load_u16 v40, v40, s[44:47], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s96, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s3, s67, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v41, v43, s17, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s69, s22
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s17
	s_mul_i32 s17, s48, 42
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v42, v43, s17, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s69, s23
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s17
	s_mul_i32 s17, s48, 3
	s_clause 0x1
	buffer_load_u16 v41, v41, s[44:47], 0 offen
	buffer_load_u16 v42, v42, s[44:47], 0 offen
	v_add_lshl_u32 v87, v43, s17, 1
	s_mul_i32 s17, s48, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v120, v43, s17, 1
	s_mul_i32 s17, s48, 11
	v_cndmask_b32_e64 v122, 0x80000000, v87, s18
	v_add_lshl_u32 v121, v43, s17, 1
	s_mul_i32 s17, s48, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v63, v43, s17, 1
	s_mul_i32 s17, s48, 19
	v_cndmask_b32_e64 v87, 0x80000000, v121, s10
	v_add_lshl_u32 v244, v43, s17, 1
	s_mul_i32 s17, s48, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v245, v43, s17, 1
	s_mul_i32 s17, s48, 27
	v_add_lshl_u32 v246, v43, s17, 1
	s_mul_i32 s17, s48, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v247, v43, s17, 1
	s_mul_i32 s17, s48, 35
	v_add_lshl_u32 v248, v43, s17, 1
	s_mul_i32 s17, s48, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v249, v43, s17, 1
	s_mul_i32 s17, s48, 43
	v_add_lshl_u32 v250, v43, s17, 1
	s_mul_i32 s17, s48, 48
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_add_lshl_u32 v44, v43, s17, 1
	s_mul_i32 s17, s48, 49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v251, v43, s17, 1
	s_mul_i32 s17, s48, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v45, v43, s17, 1
	s_mul_i32 s17, s48, 51
	v_add_lshl_u32 v252, v43, s17, 1
	s_mul_i32 s17, s48, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v46, v43, s17, 1
	s_mul_i32 s17, s48, 57
	v_add_lshl_u32 v253, v43, s17, 1
	s_mul_i32 s17, s48, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v88, v43, s17, 1
	s_mul_i32 s17, s48, 59
	v_add_lshl_u32 v254, v43, s17, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v43, 58, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s96, v43
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v43
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v43, 59, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s96, v43
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s96, s96, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v44, s21
	v_cndmask_b32_e64 v44, 0x80000000, v45, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s69, s20
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v43, v43, s[44:47], 0 offen
	buffer_load_u16 v44, v44, s[44:47], 0 offen
	v_cndmask_b32_e64 v45, 0x80000000, v46, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s69, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v88, s19
	v_cndmask_b32_e64 v88, 0x80000000, v120, s8
	s_clause 0x5
	buffer_load_u16 v120, v87, s[44:47], 0 offen
	buffer_load_u16 v118, v88, s[44:47], 0 offen
	buffer_load_u16 v87, v122, s[44:47], 0 offen
	buffer_load_u16 v88, v89, s[44:47], 0 offen
	buffer_load_u16 v45, v45, s[44:47], 0 offen
	buffer_load_u16 v46, v46, s[44:47], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v34.h, v120.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v33.h, v118.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v48.h, v87.l
	v_cndmask_b32_e32 v87, 0x80000000, v244, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s6
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v47.h, v88.l
	v_cndmask_b32_e32 v88, 0x80000000, v245, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v89, 0x80000000, v246, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v90, 0x80000000, v247, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v123, 0x80000000, v248, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v121, 0x80000000, v249, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v122, 0x80000000, v250, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v124, 0x80000000, v251, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v125, 0x80000000, v252, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v126, 0x80000000, v253, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s69, s17
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s96, s41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v127, 0x80000000, v254, vcc_lo
	s_clause 0xb
	buffer_load_u16 v249, v89, s[44:47], 0 offen
	buffer_load_u16 v248, v88, s[44:47], 0 offen
	buffer_load_u16 v252, v87, s[44:47], 0 offen
	buffer_load_u16 v251, v63, s[44:47], 0 offen
	buffer_load_u16 v122, v122, s[44:47], 0 offen
	buffer_load_u16 v121, v121, s[44:47], 0 offen
	buffer_load_u16 v253, v123, s[44:47], 0 offen
	buffer_load_u16 v250, v90, s[44:47], 0 offen
	buffer_load_u16 v245, v127, s[44:47], 0 offen
	buffer_load_u16 v244, v126, s[44:47], 0 offen
	buffer_load_u16 v246, v125, s[44:47], 0 offen
	buffer_load_u16 v247, v124, s[44:47], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v90, v188, v230 :: v_dual_add_nc_u32 v63, 0, v148
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v190, v235
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v63, v[47:48]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v47.h, v226.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v188, v237
	v_dual_mul_f32 v89, v192, v229 :: v_dual_mul_f32 v88, v191, v231
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v47.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v123, v190, v243 :: v_dual_mul_f32 v124, v192, v242
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v63.h, v208.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v181, v[33:34]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v48, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v48.h, v225.l
	v_mov_b16_e32 v48.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v59, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.h, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v87, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v224.l
	v_mov_b16_e32 v87.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v225, 0xff800000, v48, s92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v88, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v88.h, v223.l
	v_mov_b16_e32 v88.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v88, v89, v88
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v89.h, v222.l
	v_mov_b16_e32 v89.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v226, 0xff800000, v47, s93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v222, 0xff800000, v88, s90
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v90, v89
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v90.h, v220.l
	v_mov_b16_e32 v90.l, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v223, 0xff800000, v89, s98
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v188, v236
	v_mul_f32_e32 v64, v64, v90
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v90.h, v219.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v88, v192, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v55, v90
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v90.h, v221.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v221, 0xff800000, v64, s80
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v190, v240
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v220, 0xff800000, v55, s88
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v90, v123, v90
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v123.h, v218.l
	v_mov_b16_e32 v123.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v224, 0xff800000, v87, s91
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v222, v223, v221
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v90, s89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v90, v190, v234 :: v_dual_mul_f32 v123, v124, v123
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v226, v225, v224
.Ltmp4:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, v191, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v123, s83
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v191, v233
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v55, v220, v219, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max3_f32 v47, v47, v48, v55
.Ltmp6:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v48.h, v217.l
	v_mov_b16_e32 v48.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v188, v241
	v_mul_f32_e32 v48, v55, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v55.h, v216.l
	v_mov_b16_e32 v55.l, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v48, s66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v64, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v215.l
	v_mov_b16_e32 v64.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v191, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v215, 0xff800000, v55, s74
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v87, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v214.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v87, s84
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v88, v88, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v213.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v190, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v48, v216, v215, v214
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v88, s81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v89, v89, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v212.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v212, 0xff800000, v89, s104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v90, v90, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v210.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v123, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.h, v211.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v211, 0xff800000, v90, s65
	v_cndmask_b32_e64 v210, 0xff800000, v123, s103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v124, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v124.h, v209.l
	v_mov_b16_e32 v124.l, v63.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v55, v213, v212, v211
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v64, s86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v56, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v56, s102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v210, v209, v64
	v_max3_f32 v48, v48, v55, v56
.Ltmp12:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v55.h, v207.l
	v_mov_b16_e32 v55.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v188, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v55, v56, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v56.h, v206.l
	v_mov_b16_e32 v56.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v87, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v205.l
	v_mov_b16_e32 v87.l, v63.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v56, 0xff800000, v56, s38
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v60, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v203.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v61, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v202.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v61, s70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v62, v62, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v201.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v62, s68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v58, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v200.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v59, s72
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v55, v56
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v58, s97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v57, v57, v87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v87.h, v204.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v57, s95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v54, v87
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v60, s71
	v_cndmask_b32_e64 v204, 0xff800000, v54, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v87, v89, v88
	v_max3_f32 v54, v123, v90, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v59, v59, v62, v60
	v_max3_f32 v47, v59, v54, v47
.Ltmp16:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v199.l
	v_mov_b16_e32 v54.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v188, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v53, v53, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v198.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v201, 0xff800000, v53, vcc_hi
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v52, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v197.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v51, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v196.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v196, 0xff800000, v52, s99
	v_cndmask_b32_e64 v61, 0xff800000, v51, s101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v50, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v54.h, v195.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v50, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v49, v54
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v61, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v197, 0xff800000, v49, s100
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v201, v196
	v_max3_f32 v49, v49, v197, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v47, v47, v48, v49
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v48, v47, s43, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v57, v194, v47, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v55, v57
	v_sub_f32_e32 v48, v56, v57
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v194, v57
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v57
	v_sub_f32_e32 v60, v60, v57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v57
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v61, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v47, s16
	v_cndmask_b32_e64 v59, 0, v48, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v36.h, v252.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.l, v58.h
	v_mov_b16_e32 v48.l, v59.h
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v35.h, v251.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v38.h, v249.l
	v_mov_b16_e64 v37.h, v248.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v40.h, v253.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v58, v47, 0x7fff
	v_add3_u32 v48, v59, v48, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v39.h, v250.l
	v_mov_b16_e32 v42.h, v122.l
	v_mov_b16_e32 v41.h, v121.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v182, v[35:36]
	ds_store_b64 v183, v[37:38]
	ds_store_b64 v184, v[39:40]
	ds_store_b64 v185, v[41:42]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v48, s43, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v41, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v44.h, v246.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v43.h, v247.l
	v_mov_b16_e64 v46.h, v245.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v49, v47, v48, v180
	v_perm_b32 v50, v47, v48, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v62, v57
	v_sub_f32_e32 v48, v87, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v45.h, v244.l
	ds_store_b64 v186, v[43:44]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s86
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_store_b64 v187, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[124:127], v173
	ds_load_b128 v[128:131], v174
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s4
	v_cndmask_b32_e64 v61, 0, v61, s101
	v_cndmask_b32_e64 v62, 0, v47, s72
	v_cndmask_b32_e64 v195, 0, v48, s71
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v47.l, v62.h
	v_mov_b16_e64 v48.l, v195.h
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	v_cmp_o_f32_e64 s1, v62, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v62, v47, 0x7fff
	v_add3_u32 v48, v195, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v48, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v47, v48, v180
	v_perm_b32 v52, v47, v48, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v89, v57
	v_sub_f32_e32 v48, v88, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v198, 0, v47, s70
	v_cndmask_b32_e64 v199, 0, v48, s68
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v47.l, v198.h
	v_mov_b16_e64 v48.l, v199.h
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	v_cmp_o_f32_e64 s1, v198, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v198, v47, 0x7fff
	v_add3_u32 v48, v199, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v48, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v47, v48, v180
	v_perm_b32 v54, v47, v48, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v90, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v48, s95
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v48.l, v202.h
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v202, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v194
	v_cndmask_b32_e32 v194, 0, v41, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v123, v57
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v194 :: v_dual_add_nc_u32 v203, 0, v147
	v_mul_f32_e32 v26, v26, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v194
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[33:36], v203
	ds_load_b128 v[37:40], v152
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v194
	v_mul_f32_e32 v27, v27, v194
	v_mul_f32_e32 v29, v29, v194
	v_mul_f32_e32 v31, v31, v194
	v_mul_f32_e32 v32, v32, v194
	v_mul_f32_e32 v17, v17, v194
	v_mul_f32_e32 v18, v18, v194
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v200, 0, v47, s97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v47.h, v63.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v194
	v_mul_f32_e32 v20, v20, v194
	v_mul_f32_e32 v21, v21, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v47.l, v200.h
	v_cmp_o_f32_e64 s1, v200, v200
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v194
	v_mul_f32_e32 v23, v23, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v24, v24, v194 :: v_dual_and_b32 v47, 1, v47
	v_mul_f32_e32 v9, v9, v194
	v_mul_f32_e32 v10, v10, v194
	v_mul_f32_e32 v11, v11, v194
	v_mul_f32_e32 v12, v12, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v200, v47, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v194
	v_mul_f32_e32 v14, v14, v194
	v_mul_f32_e32 v15, v15, v194
	v_mul_f32_e32 v16, v16, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v194
	v_mul_f32_e32 v2, v2, v194
	v_mul_f32_e32 v3, v3, v194
	v_mul_f32_e32 v4, v4, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v48, s43, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v194
	v_mul_f32_e32 v6, v6, v194
	v_mul_f32_e32 v7, v7, v194
	v_mul_f32_e32 v8, v8, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v55, v47, v48, v180
	v_perm_b32 v56, v47, v48, v189
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v159
	ds_load_b128 v[45:48], v160
	ds_load_b128 v[120:123], v153
	ds_load_b128 v[227:230], v203 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[49:56], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v204, v57
	v_sub_f32_e32 v34, v226, v57
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[49:56], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[231:234], v161
	ds_load_b128 v[37:40], v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[49:56], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v166
	ds_load_b128 v[45:48], v167
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[49:56], v[9:16]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v33, s94
	v_cndmask_b32_e64 v50, 0, v34, s93
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[235:238], v175
	ds_load_b128 v[45:48], v172
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.l, v49.h
	v_mov_b16_e32 v34.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cmp_o_f32_e64 s1, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v49, v33, 0x7fff
	v_add3_u32 v34, v50, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v243, v33, v34, v180
	v_perm_b32 v244, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v225, v57
	v_sub_f32_e32 v34, v224, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v33, s92
	v_cndmask_b32_e64 v52, 0, v34, s91
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v51.h
	v_mov_b16_e32 v34.l, v52.h
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cmp_o_f32_e64 s1, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v51, v33, 0x7fff
	v_add3_u32 v34, v52, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v245, v33, v34, v180
	v_perm_b32 v246, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v222, v57
	v_sub_f32_e32 v34, v223, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v33, s90
	v_cndmask_b32_e64 v54, 0, v34, s98
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v53.h
	v_mov_b16_e32 v34.l, v54.h
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_cmp_o_f32_e64 s1, v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v53, v33, 0x7fff
	v_add3_u32 v34, v54, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v247, v33, v34, v180
	v_perm_b32 v248, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v221, v57
	v_sub_f32_e32 v34, v220, v57
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v154
	ds_load_b128 v[220:223], v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v33, s80
	v_cndmask_b32_e64 v56, 0, v34, s88
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v55.h
	v_mov_b16_e32 v34.l, v56.h
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cmp_o_f32_e64 s1, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v55, v33, 0x7fff
	v_add3_u32 v34, v56, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v249, v33, v34, v180
	v_perm_b32 v250, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v219, v57
	v_sub_f32_e32 v34, v218, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[227:234], v[243:250], v[17:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v34, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[120:127], v[243:250], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[120:123], v168
	ds_load_b128 v[124:127], v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v33, s83
	v_cndmask_b32_e64 v88, 0, v34, s89
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v87.h
	v_mov_b16_e32 v34.l, v88.h
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_cmp_o_f32_e64 s1, v87, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[120:127], v[243:250], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[239:242], v176
	ds_load_b128 v[120:123], v177
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v87, v33, 0x7fff
	v_add3_u32 v34, v88, v34, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v162
	ds_load_b128 v[128:131], v163
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v228, v33, v34, v180
	v_perm_b32 v229, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v216, v57
	v_sub_f32_e32 v34, v215, v57
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[235:242], v[243:250], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v33, s66
	v_cndmask_b32_e64 v90, 0, v34, s74
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v89.h
	v_mov_b16_e32 v34.l, v90.h
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cmp_o_f32_e64 s1, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v89, v33, 0x7fff
	v_add3_u32 v34, v90, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v230, v33, v34, v180
	v_perm_b32 v231, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v214, v57
	v_sub_f32_e32 v34, v213, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v33, s84
	v_cndmask_b32_e64 v132, 0, v34, s81
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v118.h
	v_mov_b16_e64 v34.l, v132.h
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_cmp_o_f32_e64 s1, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v118, v33, 0x7fff
	v_add3_u32 v34, v132, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v232, v33, v34, v180
	v_perm_b32 v233, v33, v34, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v212, v57
	v_sub_f32_e32 v34, v211, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v33, s104
	v_cndmask_b32_e64 v134, 0, v34, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v33.h, v63.l
	v_mov_b16_e32 v34.h, v63.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v33.l, v133.h
	v_mov_b16_e64 v34.l, v134.h
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_cmp_o_f32_e64 s1, v133, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v133, v33, 0x7fff
	v_add3_u32 v34, v134, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v33, v34, s43, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v234, v33, v34, v180
	v_perm_b32 v235, v33, v34, v189
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[224:227], v156
	ds_load_b128 v[33:36], v157
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[124:131], v[228:235], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v203 offset:4096
	ds_load_b128 v[128:131], v170
	ds_load_b128 v[41:44], v171
	ds_load_b128 v[211:214], v203 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[220:227], v[228:235], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[228:235], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[124:127], v178
	ds_load_b128 v[215:218], v179
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[120:127], v[228:235], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v120, v210, v57
	v_sub_f32_e32 v121, v209, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v123.h, v63.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v197, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v120, s103
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v129, 0, v121, s102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v120.h, v63.l
	v_mov_b16_e32 v121.h, v63.l
	v_mov_b16_e64 v120.l, v128.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v121.l, v129.h
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_cmp_o_f32_e64 s1, v128, v128
	v_and_b32_e32 v120, 1, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v120, v128, v120, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v121, v129, v121, 0x7fff
	v_cndmask_b16 v121.l, 0x7fff, v120.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v121.h, 0x7fff, v121.h, vcc_lo
	v_cmp_o_f32_e64 s1, v64, v64
	v_permlanex16_b32 v122, v121, s43, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v120, v122, v121, v180
	v_perm_b32 v121, v122, v121, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v201, v57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v122, vcc_hi
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.l, v64.h
	v_mov_b16_e32 v122.h, v63.l
	v_mov_b16_e64 v123.l, v130.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v123, 1, v123
	v_add3_u32 v122, v64, v122, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v123, v130, v123, 0x7fff
	v_cndmask_b16 v123.l, 0x7fff, v122.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v123.h, 0x7fff, v123.h, vcc_lo
	v_permlanex16_b32 v124, v123, s43, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v122, v124, v123, v180
	v_perm_b32 v123, v124, v123, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v196, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v196, 0, v125, s100
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v125.h, v63.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v125.l, v196.h
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v125, 1, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v124, s99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.h, v63.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v125, v196, v125, 0x7fff
	v_mov_b16_e64 v124.l, v131.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v131, v131
	v_cndmask_b16 v125.h, 0x7fff, v125.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v124, 1, v124
	v_add3_u32 v124, v131, v124, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v125.l, 0x7fff, v124.h, s1
	v_cmp_o_f32_e64 s1, v61, v61
	v_permlanex16_b32 v126, v125, s43, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v124, v126, v125, v180
	v_perm_b32 v125, v126, v125, v189
	v_mov_b16_e32 v126.l, v61.h
	v_mov_b16_e32 v126.h, v63.l
	v_mov_b16_e32 v63.l, v60.h
	v_and_b32_e32 v126, 1, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v126, v61, v126, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v60, v63, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v126.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v63.h, 0x7fff, v63.h, vcc_lo
	v_permlanex16_b32 v127, v63, s43, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v126, v127, v63, v180
	v_perm_b32 v127, v127, v63, v189
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[120:127], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[33:36], v164
	ds_load_b128 v[37:40], v165
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[120:127], v[9:16]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v128, v129
	v_add_f32_e32 v44, v131, v196
	v_add_f32_e32 v45, v61, v60
	v_add_f32_e32 v41, v133, v134
.Ltmp23:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[211:218], v[120:127], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[120:127], v[17:24]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v58, v59
	v_add_f32_e32 v34, v62, v195
	v_dual_add_f32 v35, v198, v199 :: v_dual_add_f32 v36, v200, v202
	v_dual_add_f32 v37, v49, v50 :: v_dual_add_f32 v38, v51, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_f32 v40, v118, v132
	v_add_f32_e32 v34, v35, v36
	v_add_f32_e32 v36, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_f32_e32 v35, v37, v38
	v_add_f32_e32 v37, v55, v56
	v_dual_add_f32 v38, v87, v88 :: v_dual_add_f32 v39, v89, v90
	v_add_f32_e32 v36, v36, v37
	v_add_f32_e32 v43, v64, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v37, v38, v39 :: v_dual_add_f32 v38, v40, v41
	v_dual_add_f32 v40, v44, v45 :: v_dual_add_f32 v33, v33, v34
	v_dual_add_f32 v34, v35, v36 :: v_dual_add_f32 v35, v37, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v39, v42, v43
	v_dual_add_f32 v36, v39, v40 :: v_dual_add_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v34, v35, v36
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v34, v33, s43, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v33, v193, v194
	v_mov_b32_e32 v194, v57
	v_mov_b32_e32 v193, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v119
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 822 32                        ; attention.py:822:32
	v_readlane_b32 s0, v255, 12
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v88, 54, v116
	v_or_b32_e32 v89, 60, v116
	v_or_b32_e32 v254, s96, v116
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 4, v119
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s0, s96, s0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v245, s96, v88
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s4, s0, s87
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s4, v135
	v_add_nc_u32_e32 v35, s4, v136
	v_add_nc_u32_e32 v36, s4, v66
	v_add_nc_u32_e32 v37, s4, v137
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 8, v119
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v38, s4, v67
	v_add_nc_u32_e32 v39, s4, v68
	v_add_nc_u32_e32 v40, s4, v69
	v_add_nc_u32_e32 v41, s4, v138
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v42, s4, v70
	v_add_nc_u32_e32 v43, s4, v71
	v_add_nc_u32_e32 v44, s4, v73
	v_add_nc_u32_e32 v45, s4, v72
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 12, v119
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v46, s4, v74
	v_add_nc_u32_e32 v47, s4, v75
	v_add_nc_u32_e32 v48, s4, v76
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v88, 56, v116
	v_or_b32_e32 v33, s96, v33
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v87, s0, v116, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v118, s96, v117
	v_or_b32_e32 v227, s96, v113
	v_or_b32_e32 v247, s96, v88
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s5, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 16, v119
	v_or_b32_e32 v88, 58, v116
	v_or_b32_e32 v228, s96, v112
	v_or_b32_e32 v229, s96, v111
	v_or_b32_e32 v231, s96, v110
	v_or_b32_e32 v33, s96, v33
	v_or_b32_e32 v230, s96, v108
	v_or_b32_e32 v232, s96, v107
	v_or_b32_e32 v233, s96, v106
	v_or_b32_e32 v234, s96, v105
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 20, v119
	v_or_b32_e32 v236, s96, v103
	v_or_b32_e32 v241, s96, v102
	v_or_b32_e32 v240, s96, v101
	v_or_b32_e32 v246, s96, v104
	v_or_b32_e32 v33, s96, v33
	v_or_b32_e32 v235, s96, v99
	v_or_b32_e32 v237, s96, v98
	v_or_b32_e32 v238, s96, v97
	v_or_b32_e32 v239, s96, v96
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 24, v119
	v_or_b32_e32 v242, s96, v95
	v_or_b32_e32 v243, s96, v94
	v_or_b32_e32 v244, s96, v93
	v_or_b32_e32 v248, s96, v88
	v_or_b32_e32 v33, s96, v33
	v_or_b32_e32 v249, s96, v89
	v_or_b32_e32 v252, s96, v100
	v_or_b32_e32 v253, s96, v109
	v_or_b32_e32 v250, s96, v91
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 28, v119
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s34, s67, v254
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v251, s96, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s67, v231
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v132, 44, v87
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v133, 48, v87
	v_add_nc_u32_e32 v134, 56, v87
	v_add_nc_u32_e32 v202, 60, v87
	v_add_nc_u32_e32 v203, 64, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 32, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v205, 52, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s67, v246
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v206, 0x48, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s67, v235
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v207, 0x4c, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s67, v237
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v208, 0x50, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s27, s67, v238
	v_cmp_gt_i32_e64 s10, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 36, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v219, 0x54, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s28, s67, v239
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v220, 0x58, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s29, s67, v242
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v222, 0x5c, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s67, v243
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v223, 0x60, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v244
	v_cmp_gt_i32_e64 s11, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 40, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v224, 0x64, v87
	v_add_nc_u32_e32 v225, 0x6c, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s67, v245
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v226, 0x70, v87
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v88, 0x74, v87
	v_add_nc_u32_e32 v89, 0x78, v87
	v_add_nc_u32_e32 v221, 0x44, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s30, s67, v252
	v_cmp_gt_i32_e64 s12, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 44, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v210, 32, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s31, s67, v253
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v90, 0x68, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s33, s67, v250
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v195, 0x80000000, v87, s34
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s35, s67, v251
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v211, 0x80000000, v210, s31
	v_cndmask_b32_e64 v213, 0x80000000, v205, s26
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 48, v119
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v221, 0x80000000, v221, s30
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s16, s75, s34
	s_and_b32 s95, s75, s20
	s_and_b32 s94, s75, s31
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s98, s75, s26
	s_and_b32 s89, s75, s30
	s_and_b32 s66, s75, s24
	s_and_b32 s74, s75, s25
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 52, v119
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s84, s75, s27
	s_and_b32 s81, s75, s28
	s_and_b32 s104, s75, s29
	s_and_b32 s65, s75, s19
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s96, v33
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s103, s75, s21
	s_and_b32 s86, s75, s33
	s_and_b32 vcc_hi, s75, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 56, v119
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s67, v33
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, 60, v119
	v_or_b32_e32 v33, s96, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s67, v33
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v33, s4, v65
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v118
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s3
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s67, v232
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s5
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s38, s75, s1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s6
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s92, s75, s3
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s7
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s8
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s9
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s10
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v33, v33, s[76:79], 0 offen
	buffer_load_u8 v34, v34, s[76:79], 0 offen
	buffer_load_u8 v35, v35, s[76:79], 0 offen
	buffer_load_u8 v37, v37, s[76:79], 0 offen
	buffer_load_u8 v38, v38, s[76:79], 0 offen
	buffer_load_u8 v39, v39, s[76:79], 0 offen
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s11
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s4, v255, 4
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s12
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s11, v255, 11
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s14
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s5, v255, 5
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s13
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s6, v255, 6
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s15
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s7, v255, 7
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s17
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v41, v41, s[76:79], 0 offen
	buffer_load_u8 v44, v44, s[76:79], 0 offen
	buffer_load_u8 v42, v42, s[76:79], 0 offen
	buffer_load_u8 v46, v46, s[76:79], 0 offen
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s61, s18
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s8, v255, 8
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v43, v43, s[76:79], 0 offen
	buffer_load_u8 v47, v47, s[76:79], 0 offen
	buffer_load_u8 v40, v40, s[76:79], 0 offen
	buffer_load_u8 v36, v36, s[76:79], 0 offen
	buffer_load_u8 v48, v48, s[76:79], 0 offen
	buffer_load_u8 v45, v45, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_readlane_b32 s9, v255, 9
	v_readlane_b32 s10, v255, 10
	v_dual_mov_b32 v127, s11 :: v_dual_mov_b32 v124, s8
	v_mov_b32_e32 v123, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v125, s9 :: v_dual_mov_b32 v126, s10
	v_dual_mov_b32 v122, s6 :: v_dual_mov_b32 v121, s5
	v_mov_b32_e32 v120, s4
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s67, v227
	v_cmp_gt_i32_e64 s13, s67, v228
	v_cmp_gt_i32_e64 s15, s67, v229
	v_cmp_gt_i32_e32 vcc_lo, s67, v230
	v_cmp_gt_i32_e64 s7, s67, v233
	v_cmp_gt_i32_e64 s10, s67, v234
	v_cmp_gt_i32_e64 s12, s67, v236
	v_cmp_gt_i32_e64 s14, s67, v241
	v_cmp_gt_i32_e64 s18, s67, v240
	v_cmp_gt_i32_e64 s17, s67, v247
	v_cmp_gt_i32_e64 s6, s67, v248
	v_cmp_gt_i32_e64 s9, s67, v249
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v214, 0x80000000, v132, s7
	v_cndmask_b32_e64 v215, 0x80000000, v133, s10
	v_cndmask_b32_e64 v216, 0x80000000, v134, s12
	v_cndmask_b32_e64 v217, 0x80000000, v202, s14
	v_cndmask_b32_e64 v218, 0x80000000, v203, s18
	v_cndmask_b32_e64 v132, 0x80000000, v225, s22
	v_cndmask_b32_e64 v133, 0x80000000, v226, s17
	v_cndmask_b32_e64 v134, 0x80000000, v88, s6
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s70, s75, s11
	s_and_b32 s68, s75, s13
	s_and_b32 s97, s75, s15
	s_and_b32 s93, s75, vcc_lo
	s_and_b32 s91, s75, s7
	s_and_b32 s90, s75, s10
	s_and_b32 s80, s75, s12
	s_and_b32 s88, s75, s14
	s_and_b32 s83, s75, s18
	s_and_b32 s99, s75, s17
	s_and_b32 s100, s75, s6
	s_and_b32 s101, s75, s9
	s_and_b32 s4, s75, s35
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v139, v33
	s_waitcnt vmcnt(12)
	ds_store_b8 v139, v37 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v139, v41 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v139, v44 offset:1536
	ds_store_b8 v140, v34
	ds_store_b8 v140, v38 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v140, v42 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v140, v46 offset:1536
	ds_store_b8 v141, v35
	ds_store_b8 v141, v39 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v141, v43 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v141, v47 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v142, v36
	ds_store_b8 v142, v40 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v142, v45 offset:1024
	ds_store_b8 v142, v48 offset:1536
	v_add_nc_u32_e32 v37, 0, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[128:131], v37 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[78:79], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[78:79], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[128:129], v[78:79], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[130:131], v[78:79], v[120:127] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[120:123], v149 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v149 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v128, 24, v87
	v_add_nc_u32_e32 v129, 28, v87
	v_add_nc_u32_e32 v130, 36, v87
	v_add_nc_u32_e32 v131, 40, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v204, 0x80000000, v128, s15
	v_cndmask_b32_e64 v209, 0x80000000, v129, s20
	v_cndmask_b32_e64 v128, 0x80000000, v222, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v212, 0x80000000, v131, s3
	v_cndmask_b32_e64 v129, 0x80000000, v90, s33
	v_cndmask_b32_e32 v210, 0x80000000, v130, vcc_lo
	v_cndmask_b32_e64 v130, 0x80000000, v223, s21
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s42
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[80:81], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[80:81], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[80:81], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[80:81], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[120:123], v150 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v150 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[82:83], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[82:83], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[82:83], v[33:40] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[120:123], v151 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v151 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[84:85], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[84:85], v[49:56] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v121, s96, v115
	v_or_b32_e32 v120, s96, v114
	v_or_b32_e32 v122, s96, v92
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[84:85], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[126:127], v[84:85], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v123, 4, v87
	v_add_nc_u32_e32 v124, 8, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s5, s67, v121
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v125, 12, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v126, 16, v87
	v_add_nc_u32_e32 v127, 20, v87
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s67, v122
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v87, s0, v86, 1
	v_cndmask_b32_e64 v197, 0x80000000, v123, s1
	v_cndmask_b32_e64 v198, 0x80000000, v124, s5
	v_cndmask_b32_e64 v199, 0x80000000, v125, s8
	v_cndmask_b32_e64 v200, 0x80000000, v126, s11
	v_cndmask_b32_e64 v196, 0x80000000, v87, s35
	v_cndmask_b32_e64 v201, 0x80000000, v127, s13
	v_cndmask_b32_e64 v123, 0x80000000, v206, s24
	v_cndmask_b32_e64 v124, 0x80000000, v207, s25
	v_cndmask_b32_e64 v125, 0x80000000, v208, s27
	v_cndmask_b32_e64 v126, 0x80000000, v219, s28
	v_cndmask_b32_e64 v127, 0x80000000, v220, s29
	v_cndmask_b32_e64 v131, 0x80000000, v224, s23
	v_cndmask_b32_e64 v87, 0x80000000, v89, s9
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s72, s75, s5
	s_and_b32 s71, s75, s8
	s_and_b32 s102, s75, s23
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v254, v143
	v_cmp_le_i32_e64 s1, v118, v143
	v_cmp_le_i32_e64 s3, v121, v143
	v_cmp_le_i32_e64 s5, v120, v143
	v_cmp_le_i32_e64 s6, v227, v143
	v_cmp_le_i32_e64 s7, v228, v143
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s16
	s_and_b32 s1, s1, s38
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v229, v143
	v_cmp_le_i32_e64 s9, v231, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s3, s72
	s_and_b32 s5, s5, s71
	s_and_not1_b32 s37, s16, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v253, v143
	v_cmp_le_i32_e64 s11, v230, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s68
	s_or_b32 s16, s37, s36
	s_or_b32 s38, s38, s1
	s_and_not1_b32 s1, s72, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s36, s71, exec_lo
	s_and_b32 s5, s5, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v232, v143
	v_cmp_le_i32_e64 s13, v233, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s97
	s_and_b32 s9, s9, s95
	s_or_b32 s72, s1, s3
	s_or_b32 s71, s36, s5
	s_and_not1_b32 s1, s70, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_and_not1_b32 s5, s68, exec_lo
	s_and_b32 s6, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v234, v143
	v_cmp_le_i32_e64 s15, v246, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s94
	s_and_b32 s11, s11, s93
	s_or_b32 s70, s1, s3
	s_or_b32 s68, s5, s6
	s_and_not1_b32 s1, s97, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s5, s95, exec_lo
	s_and_b32 s6, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v236, v143
	v_cmp_le_i32_e64 s18, v241, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s92
	s_and_b32 s13, s13, s91
	s_or_b32 s97, s1, s3
	s_or_b32 s95, s5, s6
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s5, s93, exec_lo
	s_and_b32 s6, s11, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v240, v143
	v_cmp_le_i32_e64 s20, v252, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s14, s90
	s_and_b32 s15, s15, s98
	s_or_b32 s94, s1, s3
	s_or_b32 s93, s5, s6
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s3, s12, exec_lo
	s_and_not1_b32 s5, s91, exec_lo
	s_and_b32 s6, s13, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v235, v143
	v_cmp_le_i32_e64 s22, v237, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s80
	s_and_b32 s18, s18, s88
	s_or_b32 s92, s1, s3
	s_or_b32 s91, s5, s6
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s3, s14, exec_lo
	s_and_not1_b32 s5, s98, exec_lo
	s_and_b32 s6, s15, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v238, v143
	v_cmp_le_i32_e64 s24, v239, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s83
	s_and_b32 s20, s20, s89
	s_or_b32 s90, s1, s3
	s_or_b32 s98, s5, s6
	s_and_not1_b32 s1, s80, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s5, s88, exec_lo
	s_and_b32 s6, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v242, v143
	v_cmp_le_i32_e64 s26, v243, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s66
	s_and_b32 s22, s22, s74
	s_or_b32 s80, s1, s3
	s_or_b32 s88, s5, s6
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s3, s19, exec_lo
	s_and_not1_b32 s5, s89, exec_lo
	s_and_b32 s6, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v244, v143
	v_cmp_le_i32_e64 s28, v122, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s84
	s_and_b32 s24, s24, s81
	s_or_b32 s83, s1, s3
	s_or_b32 s89, s5, s6
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s3, s21, exec_lo
	s_and_not1_b32 s5, s74, exec_lo
	s_and_b32 s6, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v250, v143
	v_cmp_le_i32_e64 s30, v245, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s104
	s_and_b32 s26, s26, s65
	s_or_b32 s66, s1, s3
	s_or_b32 s74, s5, s6
	s_and_not1_b32 s1, s84, exec_lo
	s_and_b32 s3, s23, exec_lo
	s_and_not1_b32 s5, s81, exec_lo
	s_and_b32 s6, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v247, v143
	v_cmp_le_i32_e64 s33, v248, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s103
	s_and_b32 s28, s28, s102
	s_or_b32 s84, s1, s3
	s_or_b32 s81, s5, s6
	s_and_not1_b32 s1, s104, exec_lo
	s_and_b32 s3, s25, exec_lo
	s_and_not1_b32 s5, s65, exec_lo
	s_and_b32 s6, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v249, v143
	v_cmp_le_i32_e64 s35, v251, v143
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s86
	s_and_b32 s30, s30, vcc_hi
	s_or_b32 s104, s1, s3
	s_or_b32 s65, s5, s6
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s3, s27, exec_lo
	s_and_not1_b32 s5, s102, exec_lo
	s_and_b32 s6, s28, exec_lo
	s_and_b32 s31, s31, s99
	s_and_b32 s33, s33, s100
	s_or_b32 s103, s1, s3
	s_or_b32 s102, s5, s6
	s_and_not1_b32 s1, s86, exec_lo
	s_and_b32 s3, s29, exec_lo
	s_and_not1_b32 s5, vcc_hi, exec_lo
	s_and_b32 s6, s30, exec_lo
	s_and_b32 s34, s34, s101
	s_and_b32 s35, s35, s4
	s_or_b32 s86, s1, s3
	s_or_b32 vcc_hi, s5, s6
	s_and_not1_b32 s1, s99, exec_lo
	s_and_b32 s3, s31, exec_lo
	s_and_not1_b32 s5, s100, exec_lo
	s_and_b32 s6, s33, exec_lo
	s_or_b32 s99, s1, s3
	s_or_b32 s100, s5, s6
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s34, exec_lo
	s_and_not1_b32 s5, s4, exec_lo
	s_and_b32 s6, s35, exec_lo
	s_or_b32 s101, s1, s3
	s_or_b32 s4, s5, s6
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	s_clause 0x1f
	buffer_load_u16 v207, v195, s[56:59], 0 offen
	buffer_load_u16 v206, v197, s[56:59], 0 offen
	buffer_load_u16 v208, v198, s[56:59], 0 offen
	buffer_load_u16 v205, v199, s[56:59], 0 offen
	buffer_load_u16 v203, v200, s[56:59], 0 offen
	buffer_load_u16 v202, v201, s[56:59], 0 offen
	buffer_load_u16 v201, v204, s[56:59], 0 offen
	buffer_load_u16 v200, v209, s[56:59], 0 offen
	buffer_load_u16 v226, v210, s[56:59], 0 offen
	buffer_load_u16 v225, v212, s[56:59], 0 offen
	buffer_load_u16 v224, v214, s[56:59], 0 offen
	buffer_load_u16 v223, v215, s[56:59], 0 offen
	buffer_load_u16 v220, v216, s[56:59], 0 offen
	buffer_load_u16 v219, v217, s[56:59], 0 offen
	buffer_load_u16 v218, v218, s[56:59], 0 offen
	buffer_load_u16 v222, v213, s[56:59], 0 offen
	buffer_load_u16 v217, v123, s[56:59], 0 offen
	buffer_load_u16 v216, v124, s[56:59], 0 offen
	buffer_load_u16 v215, v125, s[56:59], 0 offen
	buffer_load_u16 v214, v126, s[56:59], 0 offen
	buffer_load_u16 v213, v127, s[56:59], 0 offen
	buffer_load_u16 v212, v128, s[56:59], 0 offen
	buffer_load_u16 v210, v130, s[56:59], 0 offen
	buffer_load_u16 v209, v131, s[56:59], 0 offen
	buffer_load_u16 v199, v132, s[56:59], 0 offen
	buffer_load_u16 v198, v133, s[56:59], 0 offen
	buffer_load_u16 v195, v134, s[56:59], 0 offen
	buffer_load_u16 v197, v87, s[56:59], 0 offen
	buffer_load_u16 v221, v221, s[56:59], 0 offen
	buffer_load_u16 v204, v211, s[56:59], 0 offen
	buffer_load_u16 v196, v196, s[56:59], 0 offen
	buffer_load_u16 v211, v129, s[56:59], 0 offen
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v252, v144
	v_cmp_ge_i32_e32 vcc_lo, v254, v144
	v_cmp_ge_i32_e64 s5, v120, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v254, v145
	v_cmp_le_i32_e64 s39, v120, v145
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v255, s2, 21
	v_cmp_ge_i32_e64 s1, v118, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v118, v145
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v121, v144
	v_cmp_ge_i32_e64 s33, v248, v144
	v_writelane_b32 v255, s0, 22
	v_cmp_ge_i32_e64 s35, v251, v144
	s_mov_b32 s0, s38
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v121, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s39, s5, s39
	v_writelane_b32 v255, s44, 23
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v248, v145
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s36, vcc_lo, s36
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v251, v145
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v227, v144
	v_writelane_b32 v255, s45, 24
	v_cmp_ge_i32_e64 s7, v228, v144
	v_cmp_ge_i32_e64 s10, v253, v144
	s_mov_b32 s34, s4
	s_mov_b32 s4, s40
	v_writelane_b32 v255, s46, 25
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v227, v145
	s_mov_b32 s2, s65
	s_mov_b32 s65, s41
	v_cmp_le_i32_e64 s41, v228, v145
	v_writelane_b32 v255, s47, 26
	v_cmp_le_i32_e64 s44, v253, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s37
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v229, v144
	v_cmp_ge_i32_e64 s9, v231, v144
	s_mov_b32 s73, s42
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v229, v145
	v_cmp_le_i32_e64 s43, v231, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s38, s3, s38
	s_and_b32 s36, s36, s16
	s_and_b32 s1, s1, s0
	s_and_b32 s5, s33, s5
	s_and_b32 s33, s35, vcc_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v230, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v230, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s37, s38, s72
	s_and_b32 s6, s6, s40
	s_and_b32 s7, s7, s41
	s_and_b32 s10, s10, s44
	s_mov_b32 s44, s34
	s_and_b32 s33, s33, s34
	s_and_not1_b32 s34, s16, exec_lo
	s_and_b32 s35, s36, exec_lo
	s_and_not1_b32 s36, s0, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v232, v144
	v_cmp_ge_i32_e64 s13, v233, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s46, v232, v145
	v_cmp_le_i32_e64 s47, v233, v145
	s_mov_b32 s82, s97
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s9, s43
	s_and_b32 s8, s8, s42
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s68
	s_or_b32 s16, s34, s35
	s_or_b32 s0, s36, s1
	s_and_not1_b32 s1, s72, exec_lo
	s_and_b32 s34, s37, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v234, v144
	v_cmp_ge_i32_e64 s15, v246, v144
	v_cmp_ge_i32_e64 s22, v237, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s48, v234, v145
	v_cmp_le_i32_e64 s49, v246, v145
	s_mov_b32 s97, s55
	v_cmp_le_i32_e64 s55, v237, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, s8, s82
	s_and_b32 s9, s9, s95
	s_and_b32 s11, s11, s45
	s_or_b32 s72, s1, s34
	s_and_not1_b32 s1, s70, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s34, s68, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v236, v144
	v_cmp_ge_i32_e64 s18, v241, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s50, v236, v145
	v_cmp_le_i32_e64 s51, v241, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s13, s13, s47
	s_and_b32 s12, s12, s46
	s_and_b32 s11, s11, s93
	s_and_b32 s10, s10, s94
	s_or_b32 s70, s1, s6
	s_or_b32 s68, s34, s7
	s_and_not1_b32 s1, s82, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s95, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v240, v144
	s_mov_b32 s69, s74
	s_mov_b32 s74, s52
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v240, v145
	v_cmp_le_i32_e64 s20, v252, v145
	s_mov_b32 s40, s4
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	v_readlane_b32 s4, v255, 21
	s_and_b32 s12, s12, s92
	s_and_b32 s14, s14, s48
	s_and_b32 s13, s13, s91
	s_and_b32 s15, s15, s49
	s_and_b32 s22, s22, s55
	s_mov_b32 s55, s97
	s_or_b32 s97, s1, s6
	s_or_b32 s95, s7, s8
	s_and_not1_b32 s1, s94, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s93, exec_lo
	s_and_b32 s8, s11, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v235, v144
	s_mov_b32 s75, s54
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s54, v235, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s90
	s_and_b32 s18, s18, s51
	s_and_b32 s17, s17, s50
	s_and_b32 s15, s15, s98
	s_or_b32 s94, s1, s6
	s_or_b32 s93, s7, s8
	s_and_not1_b32 s1, s92, exec_lo
	s_and_b32 s6, s12, exec_lo
	s_and_not1_b32 s7, s91, exec_lo
	s_and_b32 s8, s13, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v238, v144
	v_cmp_ge_i32_e64 s24, v239, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s56, v238, v145
	v_cmp_le_i32_e64 s57, v239, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, s19, s52
	s_and_b32 s17, s17, s80
	s_and_b32 s18, s18, s88
	s_and_b32 s20, s4, s20
	s_or_b32 s92, s1, s6
	s_or_b32 s91, s7, s8
	s_and_not1_b32 s1, s90, exec_lo
	s_and_b32 s6, s14, exec_lo
	s_and_not1_b32 s7, s98, exec_lo
	s_and_b32 s8, s15, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v243, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s59, v243, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, s19, s83
	s_and_b32 s21, s21, s54
	s_and_b32 s20, s20, s89
	s_or_b32 s90, s1, s6
	s_or_b32 s98, s7, s8
	s_and_not1_b32 s1, s80, exec_lo
	s_and_b32 s6, s17, exec_lo
	s_and_not1_b32 s7, s88, exec_lo
	s_and_b32 s8, s18, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v242, v144
	v_cmp_ge_i32_e64 s28, v122, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v242, v145
	v_cmp_le_i32_e64 s61, v122, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s24, s24, s57
	s_and_b32 s23, s23, s56
	s_and_b32 s21, s21, s66
	s_and_b32 s22, s22, s69
	s_or_b32 s80, s1, s6
	s_or_b32 s88, s7, s8
	s_and_not1_b32 s1, s83, exec_lo
	s_and_b32 s6, s19, exec_lo
	s_and_not1_b32 s7, s89, exec_lo
	s_and_b32 s8, s20, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v244, v144
	v_cmp_ge_i32_e64 s30, v245, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v244, v145
	v_cmp_le_i32_e64 s63, v245, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s23, s23, s84
	s_and_b32 s24, s24, s81
	s_and_b32 s26, s26, s59
	s_or_b32 s83, s1, s6
	s_or_b32 s89, s7, s8
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s6, s21, exec_lo
	s_and_not1_b32 s7, s69, exec_lo
	s_and_b32 s8, s22, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v250, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v250, v145
	s_mov_b32 s52, s74
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s28, s28, s61
	s_and_b32 s25, s25, s58
	s_and_b32 s26, s26, s2
	s_or_b32 s66, s1, s6
	s_or_b32 s74, s7, s8
	s_and_not1_b32 s1, s84, exec_lo
	s_and_b32 s6, s23, exec_lo
	s_and_not1_b32 s7, s81, exec_lo
	s_and_b32 s8, s24, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v247, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v247, v145
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s27, s27, s60
	s_and_b32 s25, s25, s104
	s_and_b32 s28, s28, s102
	s_and_b32 s30, s30, s63
	s_or_b32 s84, s1, s6
	s_or_b32 s81, s7, s8
	s_and_not1_b32 s6, s2, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s85, v249, v144
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v249, v145
	s_mov_b32 s41, s65
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s27, s27, s103
	s_and_b32 s30, s30, vcc_hi
	s_and_b32 s29, s29, s62
	s_and_not1_b32 s1, s104, exec_lo
	s_and_b32 s4, s25, exec_lo
	s_or_b32 s65, s6, s7
	s_and_not1_b32 s7, s102, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_and_b32 s31, s31, s64
	s_and_b32 s5, s5, s100
	s_and_b32 s29, s29, s86
	s_or_b32 s104, s1, s4
	s_and_not1_b32 s1, s103, exec_lo
	s_and_b32 s6, s27, exec_lo
	s_or_b32 s102, s7, s8
	s_and_not1_b32 s7, vcc_hi, exec_lo
	s_and_b32 s8, s30, exec_lo
	s_and_b32 s31, s31, s99
	s_and_b32 s3, s85, s3
	s_or_b32 s103, s1, s6
	s_and_not1_b32 s1, s86, exec_lo
	s_and_b32 s6, s29, exec_lo
	s_or_b32 vcc_hi, s7, s8
	s_and_not1_b32 s7, s100, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_and_b32 s38, s39, s71
	s_and_b32 s3, s3, s101
	v_readlane_b32 s56, v255, 15
	s_or_b32 s86, s1, s6
	s_and_not1_b32 s1, s99, exec_lo
	s_and_b32 s6, s31, exec_lo
	s_or_b32 s100, s7, s5
	s_and_not1_b32 s5, s44, exec_lo
	v_readlane_b32 s44, v255, 23
	s_mov_b32 s54, s75
	s_and_b32 s36, s38, exec_lo
	s_mov_b32 s38, s0
	v_readlane_b32 s0, v255, 22
	v_readlane_b32 s69, v255, 20
	v_readlane_b32 s48, v255, 14
	v_readlane_b32 s75, v255, 13
	v_readlane_b32 s61, v255, 19
	v_readlane_b32 s57, v255, 16
	v_readlane_b32 s58, v255, 17
	v_readlane_b32 s59, v255, 18
	v_readlane_b32 s45, v255, 24
	v_readlane_b32 s46, v255, 25
	v_readlane_b32 s47, v255, 26
	s_and_not1_b32 s35, s71, exec_lo
	s_or_b32 s99, s1, s6
	s_and_not1_b32 s1, s101, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s6, s33, exec_lo
	s_mov_b32 s43, 0x76543210
	s_mov_b32 s42, s73
	s_or_b32 s71, s35, s36
	s_or_b32 s101, s1, s3
	s_or_b32 s4, s5, s6
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	scratch_load_b32 v54, off, off          ; 4-byte Folded Reload
	v_readlane_b32 s36, v255, 0
	v_readlane_b32 s37, v255, 1
	v_readlane_b32 s38, v255, 2
	v_readlane_b32 s39, v255, 3
.LBB0_12:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v33, v33, v25
	v_div_scale_f32 v34, null, v33, v33, v26
	v_div_scale_f32 v35, null, v33, v33, v27
	v_rcp_f32_e32 v36, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v33, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v33, v26
	v_div_scale_f32 v43, null, v33, v33, v28
	v_div_scale_f32 v49, s3, v28, v33, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v35, v38, 1.0
	s_mov_b32 s39, 0x31027000
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s48, v113
	v_cmp_gt_i32_e64 s7, s48, v112
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v43, v42, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s48, v111
	v_cmp_gt_i32_e64 s9, s48, v110
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v33, v33, v29
	v_fmac_f32_e32 v42, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v44, v39
	v_fma_f32 v34, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v33, v33, v30
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v33, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v33, v26
	v_div_scale_f32 v34, s4, v29, v33, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v33, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v33, v33, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s48, v109
	v_cmp_gt_i32_e64 s11, s48, v108
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s48, v107
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s48, v106
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s48, v105
	v_cmp_gt_i32_e64 s15, s48, v104
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v33, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v26, v26, v33, v27
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s48, v103
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v33, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v33, v33, v17
	v_div_scale_f32 v36, s3, v31, v33, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s48, v102
	v_cmp_gt_i32_e64 s18, s48, v101
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v43, v44
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s48, v100
	v_cmp_gt_i32_e64 s20, s48, v99
	v_cmp_gt_i32_e64 s21, s48, v98
	v_cmp_gt_i32_e64 s22, s48, v97
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v42, v43
	v_fma_f32 v46, -v37, v35, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s48, v96
	v_cmp_gt_i32_e64 s24, s48, v95
	v_cmp_gt_i32_e64 s25, s48, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	v_fma_f32 v34, -v40, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v33, v32
	v_div_scale_f32 v43, null, v33, v33, v18
	v_fma_f32 v39, -v37, v47, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_div_fixup_f32 v28, v28, v33, v29
	v_div_fixup_f32 v29, v34, v33, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v33, v33, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v33, v33, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v33, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v33, v31
	v_div_fixup_f32 v31, v35, v33, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v33, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v33, v33, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_div_scale_f32 v47, null, v33, v33, v22
	v_div_fixup_f32 v17, v32, v33, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v33, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v33, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v33, v33, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v33, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v33, v33, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v33, v19
	v_div_fixup_f32 v20, v34, v33, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v33, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v33, v33, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v33, v24
	v_div_scale_f32 v46, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v33, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v33, v33, v11
	v_div_fixup_f32 v21, v32, v33, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v33, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v33, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v33, v33, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v33, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v33, v23
	v_div_fixup_f32 v24, v36, v33, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v33, v33, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v33, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v33, v33, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v33, v13
	v_div_fixup_f32 v9, v32, v33, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v33, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v33, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v33, v33, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v33, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v33, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v33, v33, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v33, v33, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v33, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v33, v33, v2
	v_div_fixup_f32 v13, v32, v33, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v33, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v33, v33, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v33, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v33, v2
	v_div_fixup_f32 v14, v35, v33, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v33, v33, v4
	v_div_fmas_f32 v32, v32, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v33, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v32, v33, v16
	v_div_fixup_f32 v1, v34, v33, v1
	v_div_scale_f32 v34, null, v33, v33, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v33, v33, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v33, v2
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v33, v33, v6
	v_div_scale_f32 v37, null, v33, v33, v7
	v_div_scale_f32 v38, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v33, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v32, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v33, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v32, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v33, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v33, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v32
	v_div_scale_f32 v50, s5, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v32, -v34, v49, v32
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v32, v32, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v5, v32, v33, v5
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v32, v54, s48
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s48, v116
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v4, v38, v33, v4
	v_div_fixup_f32 v6, v35, v33, v6
	v_div_fixup_f32 v7, v34, v33, v7
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s48, v117
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v33, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v116, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s48, v115
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v34, v32, v117, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s75, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v115, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s75, s3
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s48, v114
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s75, s4
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v0, v33, s[36:39], 0 offen
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_add_lshl_u32 v0, v32, v114, 2
	s_clause 0x1
	buffer_store_b32 v25, v34, s[36:39], 0 offen
	buffer_store_b32 v26, v35, s[36:39], 0 offen
	v_add_lshl_u32 v25, v32, v113, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v32, v112, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v111, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v27, v0, s[36:39], 0 offen
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v32, v110, 2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_add_lshl_u32 v25, v32, v109, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	buffer_store_b32 v30, v33, s[36:39], 0 offen
	v_add_lshl_u32 v26, v32, v108, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v107, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v0, s[36:39], 0 offen
	buffer_store_b32 v17, v25, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v106, 2
	v_add_lshl_u32 v17, v32, v105, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[36:39], 0 offen
	buffer_store_b32 v19, v27, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v104, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v103, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v0, s[36:39], 0 offen
	buffer_store_b32 v21, v17, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v102, 2
	v_add_lshl_u32 v17, v32, v101, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s17
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[36:39], 0 offen
	buffer_store_b32 v23, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v32, v100, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v99, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v0, s[36:39], 0 offen
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v98, 2
	v_add_lshl_u32 v9, v32, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s21
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[36:39], 0 offen
	buffer_store_b32 v11, v19, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v96, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v95, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s48, v93
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v0, s[36:39], 0 offen
	buffer_store_b32 v13, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v94, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s48, v92
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v93, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s48, v91
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[36:39], 0 offen
	buffer_store_b32 v15, v11, s[36:39], 0 offen
	v_add_lshl_u32 v10, v32, v92, 2
	v_or_b32_e32 v38, 54, v116
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v32, v91, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_or_b32_e32 v39, 56, v116
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_or_b32_e32 v37, 58, v116
	v_or_b32_e32 v36, 60, v116
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s48, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s48, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v0, s[36:39], 0 offen
	buffer_store_b32 v1, v9, s[36:39], 0 offen
	v_add_lshl_u32 v0, v32, v38, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s48, v37
	v_cmp_gt_i32_e32 vcc_lo, s48, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v1, v32, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s48, v86
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[36:39], 0 offen
	buffer_store_b32 v3, v11, s[36:39], 0 offen
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s29
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v2, v32, v37, 2
	v_add_lshl_u32 v3, v32, v36, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s75, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v32, v86, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s75, s0
	s_and_b32 vcc_lo, s75, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s75, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[36:39], 0 offen
	buffer_store_b32 v5, v1, s[36:39], 0 offen
	buffer_store_b32 v6, v2, s[36:39], 0 offen
	buffer_store_b32 v7, v3, s[36:39], 0 offen
	buffer_store_b32 v8, v9, s[36:39], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp28:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 8
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.private_seg_size, 8
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19160
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 8
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
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 8
    .sgpr_count:     107
    .sgpr_spill_count: 27
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 1
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
