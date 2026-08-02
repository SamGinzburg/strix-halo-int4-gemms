	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[36:39], s[0:1], 0x4c
	s_load_b32 s50, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v79, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 2, v79
	v_or_b32_e32 v81, 4, v79
	v_or_b32_e32 v82, 6, v79
	v_or_b32_e32 v83, 8, v79
	v_or_b32_e32 v84, 10, v79
	v_or_b32_e32 v85, 12, v79
	v_or_b32_e32 v87, 16, v79
	v_or_b32_e32 v88, 18, v79
	v_or_b32_e32 v89, 20, v79
	v_or_b32_e32 v90, 22, v79
	v_or_b32_e32 v86, 14, v79
	v_or_b32_e32 v91, 24, v79
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s30, s3, s38
	s_cselect_b32 s51, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, 26, v79
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s29, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v93, 28, v79
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s29, v80
	v_or_b32_e32 v4, s29, v81
	v_or_b32_e32 v5, s29, v82
	v_or_b32_e32 v6, s29, v83
	v_or_b32_e32 v7, s29, v84
	v_or_b32_e32 v8, s29, v85
	v_or_b32_e32 v11, s29, v87
	v_or_b32_e32 v12, s29, v88
	v_or_b32_e32 v13, s29, v89
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[57:58], null, s50, v79, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s29, v79
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s38, v7
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s38, v8
	v_cmp_gt_i32_e64 s11, s38, v11
	v_cmp_gt_i32_e32 vcc_lo, s38, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[58:59], null, s50, 6, v[57:58]
	v_lshl_add_u32 v95, s50, 1, v57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v96, s50, 2, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v97, s50, 3, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[59:60], null, s50, 10, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[60:61], null, s50, 12, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[61:62], null, s50, 14, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[62:63], null, s50, 18, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[63:64], null, s50, 20, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s37
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[64:65], null, s50, 22, v[57:58]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[65:66], null, s50, 24, v[57:58]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s50, 26, v[57:58]
	v_mad_u64_u32 v[67:68], null, s50, 28, v[57:58]
	v_mad_u64_u32 v[68:69], null, s50, 30, v[57:58]
	v_lshl_add_u32 v98, s50, 4, v57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s29, v90
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s38, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s29, v86
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s38, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s29, v91
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v94, 30, v79
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s38, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s29, v92
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s38, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s29, v93
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s38, v15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s29, v94
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s38, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s38, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s36, s37
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s31, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s38, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 32, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s50, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s30, s29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s38, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s30, s50
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v10, s2, v57
	v_add_nc_u32_e32 v19, s2, v95
	v_add_nc_u32_e32 v20, s2, v96
	v_add_nc_u32_e32 v21, s2, v58
	v_add_nc_u32_e32 v22, s2, v97
	v_add_nc_u32_e32 v23, s2, v59
	v_add_nc_u32_e32 v24, s2, v60
	v_add_nc_u32_e32 v25, s2, v61
	v_add_nc_u32_e32 v26, s2, v98
	v_add_nc_u32_e32 v27, s2, v62
	v_add_nc_u32_e32 v28, s2, v63
	v_add_nc_u32_e32 v29, s2, v64
	v_add_nc_u32_e32 v30, s2, v65
	v_add_nc_u32_e32 v31, s2, v66
	v_add_nc_u32_e32 v32, s2, v67
	v_add_nc_u32_e32 v33, s2, v68
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s38, v3
	v_cmp_gt_i32_e64 s6, s38, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s38, v6
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s33, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v20, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 1, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s2, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v7, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v24, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v10, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s4
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s39, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s5, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v16, 0x80000000, v33 :: v_dual_add_nc_u32 v99, 0, v0
	s_clause 0x5
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v17, v1, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	v_add_nc_u32_e32 v101, 0, v18
	v_add_nc_u32_e32 v102, 0, v20
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s9, v21
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s5, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v100, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v19, v34
	s_mov_b32 s60, 0
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s61, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v99, v7
	s_waitcnt vmcnt(14)
	ds_store_b8 v99, v2 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v99, v8 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v99, v9 offset:576
	ds_store_b8 v100, v3
	ds_store_b8 v100, v4 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v100, v10 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v100, v11 offset:576
	ds_store_b8 v101, v5
	ds_store_b8 v101, v6 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v101, v13 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v101, v14 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v102, v17
	s_waitcnt vmcnt(2)
	ds_store_b8 v102, v12 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v102, v15 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v102, v16 offset:576
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v33, s29, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s29, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s29, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s39, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s6, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s60, s5, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s61, s61, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s2, s38, v33
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	v_cmp_ne_u32_e64 s5, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s29, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 32
	s_min_i32 s6, s39, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s10, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 27
	s_add_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s6, s6, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s61, s61, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v77, s30, v1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v78, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s60, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_cmp_eq_u32_e64 s6, 0, v78
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
	v_mov_b32_e32 v41, v8
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[40:47], s[0:1], 0x8
	v_dual_mov_b32 v2, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v77
	s_xor_b32 s10, s3, s36
	s_mul_f32 s17, s9, 0x4f7ffffe
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v34, 5, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v104, s23, v33
	v_lshlrev_b32_e32 v35, 4, v35
	v_lshlrev_b32_e32 v4, 3, v0
	s_ashr_i32 s20, s10, 31
	s_load_b32 s1, s[0:1], 0x6c
	s_xor_b32 s19, s19, s20
	s_cvt_u32_f32 s17, s17
	s_sub_i32 s18, 0, s7
	v_cndmask_b32_e64 v39, 0x1054, v2, s6
	v_cndmask_b32_e64 v40, 0x3276, v3, s6
	v_mov_b32_e32 v26, v25
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s45, 0xffff
	s_mov_b32 s24, s44
	v_mov_b32_e32 v144, 0xff800000
	buffer_load_u16 v36, v1, s[24:27], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	s_sub_i32 s19, s19, s20
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v37, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v38, 24, v1
	v_mov_b32_e32 v27, v25
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v41, 48, v4
	v_xor_b32_e32 v42, v4, v1
	v_or3_b32 v35, v34, v35, v38
	s_mul_i32 s20, s19, s36
	s_mul_i32 s18, s18, s17
	s_sub_i32 s3, s3, s20
	s_mul_hi_u32 s18, s17, s18
	v_mov_b32_e32 v31, v25
	v_or_b32_e32 v34, v34, v38
	v_lshl_or_b32 v38, v39, 8, v39
	v_lshl_or_b32 v39, v40, 8, v40
	v_add_nc_u32_e32 v40, 0, v35
	v_bfe_i32 v5, v0, 3, 1
	v_and_or_b32 v122, v42, 48, v37
	v_and_or_b32 v37, 0x1c0, v37, v41
	s_abs_i32 s20, s3
	s_add_i32 s17, s17, s18
	v_xad_u32 v41, v35, 8, 0
	v_xad_u32 v42, v35, 16, 0
	s_ashr_i32 s16, s8, 31
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s17, s20, s17
	v_xad_u32 v35, v35, 24, 0
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s3, s3, s16
	s_mul_i32 s16, s17, s7
	ds_load_b64 v[69:70], v40
	ds_load_b64 v[71:72], v41
	ds_load_b64 v[73:74], v42
	ds_load_b64 v[75:76], v35
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v43, 0x210, v5
	s_sub_i32 s16, s20, s16
	s_add_i32 s18, s17, 1
	s_sub_i32 s20, s16, s7
	s_cmp_ge_u32 s16, s7
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v38, 0x540054, v38
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v39, 0x760076, v39
	v_xor_b32_e32 v123, v37, v43
	v_mov_b16_e32 v33.l, 0
	s_cselect_b32 s17, s18, s17
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s1, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s16, s20, s16
	s_add_i32 s18, s17, 1
	s_cmp_ge_u32 s16, s7
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v124, 0, v34
	v_xor_b32_e32 v44, 8, v34
	v_xor_b32_e32 v45, 16, v34
	v_xor_b32_e32 v46, 24, v34
	v_lshl_or_b32 v34, v38, 4, v38
	v_lshl_or_b32 v35, v39, 4, v39
	v_xor_b32_e32 v37, 16, v123
	v_xor_b32_e32 v38, 32, v123
	v_xor_b32_e32 v39, 48, v123
	v_xor_b32_e32 v40, 0x420, v123
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v103, 4, v78
	s_mov_b32 s8, 0
	v_xor_b32_e32 v47, 16, v122
	v_xor_b32_e32 v48, 32, v122
	v_xor_b32_e32 v49, 48, v122
	v_xor_b32_e32 v41, 0x430, v123
	v_xor_b32_e32 v42, 0x410, v123
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s18, s17
	s_mov_b32 s15, s8
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	v_dual_mov_b32 v11, v25 :: v_dual_and_b32 v132, 0x5040504, v34
	v_dual_mov_b32 v12, v25 :: v_dual_and_b32 v133, 0x7060706, v35
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v134, 0, v37
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v135, 0, v38
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v136, 0, v39
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v137, 0, v40
	v_mov_b32_e32 v7, v25
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s19, s19, s37
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s38, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v105, 2, v103
	v_or_b32_e32 v106, 4, v103
	v_or_b32_e32 v107, 6, v103
	v_or_b32_e32 v108, 8, v103
	v_or_b32_e32 v109, 10, v103
	v_or_b32_e32 v110, 12, v103
	v_or_b32_e32 v111, 14, v103
	v_or_b32_e32 v112, 16, v103
	v_or_b32_e32 v113, 18, v103
	v_or_b32_e32 v114, 20, v103
	v_or_b32_e32 v115, 22, v103
	v_or_b32_e32 v116, 24, v103
	v_or_b32_e32 v117, 26, v103
	v_or_b32_e32 v118, 28, v103
	v_or_b32_e32 v119, 30, v103
	v_subrev_nc_u32_e32 v120, s21, v104
	v_dual_mov_b32 v30, v25 :: v_dual_add_nc_u32 v121, s22, v104
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v126, 0, v44
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v127, 0, v45
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v128, 0, v46
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v129, 0, v47
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v130, 0, v48
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v131, 0, v49
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v138, 0, v41
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v139, 0, v42
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v125, v25
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s47, s47, 0xffff
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s52, s42
	s_mov_b32 s42, s54
	s_mov_b32 s56, s46
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s43, s55
	s_mov_b32 s57, s47
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v3, v25 :: v_dual_mul_f32 v140, s1, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s7, s3
	v_mov_b32_e32 v40, s15
	s_sub_i32 s1, s1, s3
	v_dual_mov_b32 v4, v25 :: v_dual_mov_b32 v141, v140
	v_dual_mov_b32 v5, v25 :: v_dual_mov_b32 v142, v140
	v_dual_mov_b32 v6, v25 :: v_dual_mov_b32 v143, v140
	v_dual_mov_b32 v39, s14 :: v_dual_mov_b32 v38, s13
	v_dual_mov_b32 v37, s12 :: v_dual_mov_b32 v36, s11
	v_dual_mov_b32 v35, s10 :: v_dual_mov_b32 v34, s9
	v_mov_b32_e32 v33, s8
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s37, s1, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s37, s37, s39
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 889 30 is_stmt 1              ; attention.py:889:30
	v_mad_u64_u32 v[162:163], null, s75, s38, v[0:1]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s1, s60, 1
	s_or_b32 s3, s60, 2
	s_or_b32 s7, s60, 3
	s_or_b32 s8, s60, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v142, v51 :: v_dual_add_nc_u32 v163, s38, v162
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s9, s60, 5
	s_or_b32 s10, s60, 6
	s_or_b32 s11, s60, 7
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v143, v52 :: v_dual_add_nc_u32 v167, s38, v163
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s12, s60, 8
	s_or_b32 s13, s60, 9
	s_or_b32 s14, s60, 10
	s_or_b32 s15, s60, 11
	s_or_b32 s16, s60, 12
	s_or_b32 s17, s60, 13
	s_or_b32 s18, s60, 14
	s_or_b32 s19, s60, 15
	s_or_b32 s20, s60, 16
	s_or_b32 s26, s60, 17
	s_or_b32 s27, s60, 18
	s_or_b32 s28, s60, 19
	s_or_b32 s29, s60, 20
	s_or_b32 s30, s60, 21
	s_or_b32 s31, s60, 22
	s_or_b32 s33, s60, 23
	s_or_b32 s34, s60, 24
	s_or_b32 s35, s60, 25
	s_or_b32 s36, s60, 26
	s_or_b32 s75, s60, 27
	s_or_b32 s76, s60, 28
	s_or_b32 s77, s60, 29
	s_or_b32 s78, s60, 30
	s_or_b32 s79, s60, 31
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v49
	v_add_nc_u32_e32 v168, s38, v167
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s60, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s1, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v175, v140, v49
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s3, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v174, v141, v50 :: v_dual_add_nc_u32 v169, s38, v168
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s7, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v56
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s8, s39
	v_add_nc_u32_e32 v170, s38, v169
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s9, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s10, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, v143, v52
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s11, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v180, v142, v55 :: v_dual_add_nc_u32 v171, s38, v170
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s12, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s13, s39
	v_add_nc_u32_e32 v172, s38, v171
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s14, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s15, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v181, v141, v54
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s16, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v182, v140, v53 :: v_dual_add_nc_u32 v173, s38, v172
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s17, s39
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v160.h, v161.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s18, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v195, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s19, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v45
	v_add_nc_u32_e32 v161, s38, v173
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s20, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v199, v44
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s26, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v202, v143, v42 :: v_dual_add_nc_u32 v51, s38, v161
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s27, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s28, s39
	v_add_nc_u32_e32 v49, s38, v51
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s29, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s30, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v143, v48
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s31, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v142, v47 :: v_dual_add_nc_u32 v50, s38, v49
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s33, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v197, v43
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s34, s39
	v_add_nc_u32_e32 v56, s38, v50
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s35, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s36, s39
	v_add_nc_u32_e32 v52, s38, v56
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s75, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.l, 0
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s76, s39
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v140, v41
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s77, s39
	v_add_nc_u32_e32 v55, s38, v52
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s78, s39
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v159.h, v160.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s79, s39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v160.l, v149.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s12, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s80
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v43, 1, v163
	v_lshlrev_b32_e32 v42, 1, v162
	v_add_nc_u32_e32 v54, s38, v55
	v_lshlrev_b32_e32 v44, 1, v167
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v149.h, v158.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v176.h, v156.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v192.h, v150.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v51, 1, v51
	v_lshlrev_b32_e32 v156, 1, v173
	v_lshlrev_b32_e32 v150, 1, v169
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v147.h, v145.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v175, v160
	v_dual_mul_f32 v160, v164, v149 :: v_dual_add_nc_u32 v53, s38, v54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s81
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.h, v151.l
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_lshlrev_b32 v151, 1, v170
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s83
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v45, 1, v168
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v158.h, v159.l
	v_mov_b16_e64 v159.l, v149.l
	v_add_nc_u32_e32 v184, s38, v53
	v_mov_b16_e64 v186.h, v152.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v152, 0x80000000, v150, vcc_lo
	v_lshlrev_b32_e32 v150, 1, v171
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s82
	s_and_b32 vcc_lo, s0, s84
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v178.h, v154.l
	v_mov_b16_e64 v183.h, v153.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	v_dual_cndmask_b32 v154, 0x80000000, v151 :: v_dual_lshlrev_b32 v153, 1, v172
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s85
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v177.h, v155.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v155, 0x80000000, v150, vcc_lo
	s_clause 0x6
	buffer_load_u16 v42, v42, s[52:55], 0 offen
	buffer_load_u16 v150, v43, s[52:55], 0 offen
	buffer_load_u16 v43, v44, s[52:55], 0 offen
	buffer_load_u16 v151, v45, s[52:55], 0 offen
	buffer_load_u16 v44, v152, s[52:55], 0 offen
	buffer_load_u16 v152, v154, s[52:55], 0 offen
	buffer_load_u16 v45, v155, s[52:55], 0 offen
	v_lshlrev_b32_e32 v154, 1, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v159, v174, v159
	v_add_nc_u32_e32 v185, s38, v184
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s87
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v158.l, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v155, 0x80000000, v156, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s88
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v141, v46 :: v_dual_add_nc_u32 v187, s38, v185
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v158, v166, v158
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s89
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_lshlrev_b32 v50, 1, v50
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s25
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v49, 1, v49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s86
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.l, v149.l
	v_mov_b16_e64 v165.h, v157.l
	v_add_nc_u32_e32 v188, s38, v187
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v153, 0x80000000, v153, s1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s90
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v54, 1, v54
	v_cndmask_b32_e64 v156, 0x80000000, v49, s1
	v_lshlrev_b32_e32 v49, 1, v56
	v_cndmask_b32_e32 v56, 0x80000000, v50, vcc_lo
	v_lshlrev_b32_e32 v50, 1, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v186.l, v149.l
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s24
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v165, v179, v165 :: v_dual_add_nc_u32 v190, s38, v188
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v52, 1, v55
	v_cndmask_b32_e32 v55, 0x80000000, v49, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v53, 1, v53
	v_cndmask_b32_e32 v157, 0x80000000, v50, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v177.l, v149.l
	v_add_nc_u32_e32 v191, s38, v190
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s23
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v161, 0x80000000, v52, s1
	s_clause 0x6
	buffer_load_u16 v49, v155, s[52:55], 0 offen
	buffer_load_u16 v154, v154, s[52:55], 0 offen
	buffer_load_u16 v50, v51, s[52:55], 0 offen
	buffer_load_u16 v155, v156, s[52:55], 0 offen
	buffer_load_u16 v51, v56, s[52:55], 0 offen
	buffer_load_u16 v156, v55, s[52:55], 0 offen
	buffer_load_u16 v52, v157, s[52:55], 0 offen
	v_dual_cndmask_b32 v56, 0x80000000, v53 :: v_dual_lshlrev_b32 v55, 1, v184
	v_lshlrev_b32_e32 v53, 1, v185
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v148.h, v146.l
	v_mov_b16_e64 v146.l, v149.l
	v_mov_b16_e64 v146.h, v147.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v181, v177 :: v_dual_lshlrev_b32 v167, 1, v191
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s18
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v178.l, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v162, 0x80000000, v53, s1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s15
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v183.l, v149.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v46, v146
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v167, 0x80000000, v167, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v182, v178 :: v_dual_add_nc_u32 v193, s38, v191
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_u16 v153, v153, s[52:55], 0 offen
	buffer_load_u16 v157, v161, s[52:55], 0 offen
	buffer_load_u16 v171, v167, s[52:55], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v178, v202, v183 :: v_dual_lshlrev_b32 v53, 1, v188
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v161, 1, v187
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s19
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v192.l, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v147.l, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v163, 0x80000000, v161, vcc_lo
	v_lshlrev_b32_e32 v161, 1, v190
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v190, v140, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v41, v41, v147 :: v_dual_add_nc_u32 v194, s38, v193
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v191.h, v148.l
	v_mov_b16_e64 v148.l, v149.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v175, v190, v192 :: v_dual_add_nc_u32 v196, s38, v194
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.l, v149.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v145, s74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v47, v148
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v159, s73
	v_add_nc_u32_e32 v198, s38, v196
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v170, 1, v193
	v_cndmask_b32_e32 v168, 0x80000000, v53, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s14
	v_add_nc_u32_e32 v200, s38, v198
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v169, 0x80000000, v161, vcc_lo
	s_clause 0x6
	buffer_load_u16 v53, v54, s[52:55], 0 offen
	buffer_load_u16 v161, v56, s[52:55], 0 offen
	buffer_load_u16 v54, v55, s[52:55], 0 offen
	buffer_load_u16 v162, v162, s[52:55], 0 offen
	buffer_load_u16 v55, v163, s[52:55], 0 offen
	buffer_load_u16 v163, v168, s[52:55], 0 offen
	buffer_load_u16 v56, v169, s[52:55], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v160, s72
	v_cndmask_b32_e64 v160, 0xff800000, v166, s69
	v_add_nc_u32_e32 v201, s38, v200
	v_cndmask_b32_e64 v166, 0xff800000, v46, s47
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v46, v145, v148
.Ltmp2:
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v191.l, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v173, 1, v201
	v_lshlrev_b32_e32 v168, 1, v194
	v_lshlrev_b32_e32 v169, 1, v196
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v176.l, v149.l
	v_add_nc_u32_e32 v203, s38, v201
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v167, 0x80000000, v170 :: v_dual_lshlrev_b32 v172, 1, v200
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v170, 1, v198
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s10
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v48, v191 :: v_dual_cndmask_b32 v169, 0x80000000, v169
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v174, v180, v176
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v184, 1, v203
	v_add_lshl_u32 v185, v203, s38, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v170, 0x80000000, v170, s1
	v_cndmask_b32_e32 v173, 0x80000000, v173, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s3
	s_and_b32 s1, s0, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v184, 0x80000000, v184, vcc_lo
	v_cndmask_b32_e64 v185, 0x80000000, v185, s1
	s_clause 0x7
	buffer_load_u16 v167, v167, s[52:55], 0 offen
	buffer_load_u16 v187, v168, s[52:55], 0 offen
	buffer_load_u16 v168, v169, s[52:55], 0 offen
	buffer_load_u16 v188, v170, s[52:55], 0 offen
	buffer_load_u16 v169, v172, s[52:55], 0 offen
	buffer_load_u16 v172, v173, s[52:55], 0 offen
	buffer_load_u16 v170, v184, s[52:55], 0 offen
	buffer_load_u16 v173, v185, s[52:55], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v184, v142, v199 :: v_dual_mul_f32 v185, v141, v197
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v158, s71
	v_cndmask_b32_e64 v158, 0xff800000, v165, s67
	v_cndmask_b32_e64 v159, 0xff800000, v174, s68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v177, v184, v186 :: v_dual_mul_f32 v176, v185, v189
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, 0xff800000, v164, s70
	v_cndmask_b32_e64 v165, 0xff800000, v47, s46
	v_cndmask_b32_e64 v175, 0xff800000, v175, s65
	v_cndmask_b32_e64 v174, 0xff800000, v177, s63
	v_cndmask_b32_e64 v176, 0xff800000, v176, s64
	v_cndmask_b32_e64 v177, 0xff800000, v178, s62
	v_cndmask_b32_e64 v48, 0xff800000, v48, s45
	v_cndmask_b32_e64 v41, 0xff800000, v41, s66
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v147, v164, v160
	v_max3_f32 v178, v175, v176, v174
	v_max3_f32 v179, v177, v166, v165
.Ltmp4:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v180, v159, v158, v41
	v_max3_f32 v46, v46, v146, v47
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v47, v178, v179, v48
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.h, v149.l
	v_mov_b16_e64 v179.h, v149.l
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s60, s60, 32
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v46, v180, v47
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.h, v149.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s60, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v47, v46, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v46, v144, v46, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v47, v144, v46
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 885 25                        ; attention.py:885:25
	v_dual_cndmask_b32 v47, 0, v47 :: v_dual_sub_f32 v144, v145, v46
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v145, v148, v46
	v_sub_f32_e32 v146, v146, v46
	v_dual_sub_f32 v147, v147, v46 :: v_dual_mul_f32 v26, v26, v47
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v145, v145
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v147, v147
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v148, v164, v46 :: v_dual_mul_f32 v31, v31, v47
	v_dual_sub_f32 v160, v160, v46 :: v_dual_mul_f32 v17, v17, v47
	v_dual_sub_f32 v159, v159, v46 :: v_dual_mul_f32 v28, v28, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v145, 0, v145, s73
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v158, v158, v46 :: v_dual_mul_f32 v19, v19, v47
	v_dual_sub_f32 v164, v175, v46 :: v_dual_mul_f32 v21, v21, v47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v178.l, v144.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v175, v176, v46 :: v_dual_mul_f32 v18, v18, v47
	v_dual_sub_f32 v176, v177, v46 :: v_dual_mul_f32 v11, v11, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.l, v145.h
	v_mov_b16_e64 v177.h, v149.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v159, v159
	v_exp_f32_e32 v158, v158
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v47 :: v_dual_and_b32 v178, 1, v178
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s72
	v_cndmask_b32_e64 v147, 0, v147, s71
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v20, v20, v47 :: v_dual_and_b32 v177, 1, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v178, v144, v178, 0x7fff
	v_mov_b16_e64 v179.l, v146.h
	v_cmp_o_f32_e64 s1, v144, v144
	v_mov_b16_e64 v180.l, v147.h
	v_add3_u32 v177, v145, v177, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v47 :: v_dual_add_f32 v144, v144, v145
	v_mul_f32_e32 v3, v3, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_cndmask_b16 v177.l, 0x7fff, v178.h, s1
	v_and_b32_e32 v178, 1, v180
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s69
	v_cndmask_b32_e64 v148, 0, v148, s70
	v_cndmask_b32_e64 v158, 0, v158, s67
	v_cndmask_b32_e64 v159, 0, v159, s68
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v179
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v41, v41, v46 :: v_dual_mul_f32 v30, v30, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v177.h, 0x7fff, v177.h, vcc_lo
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v179, v146, v147
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v146, v145, 0x7fff
	v_add3_u32 v178, v147, v178, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_cmp_o_f32_e64 s1, v146, v146
	v_mov_b16_e64 v146.l, v160.h
	v_mov_b16_e64 v147.l, v148.h
	v_mov_b16_e64 v147.h, v149.l
	v_mov_b16_e64 v146.h, v149.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v164, v164
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v178.l, 0x7fff, v145.h, s1
	v_and_b32_e32 v145, 1, v147
	v_and_b32_e32 v146, 1, v146
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v47 :: v_dual_add_f32 v147, v148, v160
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v144, v179
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v178.h, 0x7fff, v178.h, vcc_lo
	v_add3_u32 v145, v148, v145, 0x7fff
	v_add3_u32 v146, v160, v146, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_mov_b16_e64 v160.l, v158.h
	v_mov_b16_e64 v179.l, v159.h
	v_mov_b16_e64 v179.h, v149.l
	v_mov_b16_e64 v160.h, v149.l
	v_cmp_o_f32_e64 s1, v148, v148
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v148, v159, v158
.Ltmp18:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v174, v174, v46 :: v_dual_mul_f32 v23, v23, v47
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v47
	v_dual_mul_f32 v7, v7, v47 :: v_dual_and_b32 v160, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v180.h, 0x7fff, v146.h, vcc_lo
	v_and_b32_e32 v146, 1, v179
	v_cndmask_b16 v180.l, 0x7fff, v145.h, s1
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v147, v148
.Ltmp20:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s66
	v_cndmask_b32_e64 v148, 0, v164, s65
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v146, v159, v146, 0x7fff
	v_add3_u32 v147, v158, v160, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_mov_b16_e64 v158.l, v41.h
	v_mov_b16_e64 v158.h, v149.l
	v_cmp_o_f32_e64 s1, v159, v159
	v_mov_b16_e64 v159.l, v148.h
	v_mov_b16_e64 v159.h, v149.l
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v166, v166, v46 :: v_dual_mul_f32 v9, v9, v47
	v_dual_sub_f32 v165, v165, v46 :: v_dual_mul_f32 v32, v32, v47
	v_dual_sub_f32 v48, v48, v46 :: v_dual_mul_f32 v13, v13, v47
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v47
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v144, v144, v145 :: v_dual_and_b32 v145, 1, v158
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v208.l, 0x7fff, v146.h, s1
	v_and_b32_e32 v146, 1, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v175, s64
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v48, v48
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v208.h, 0x7fff, v147.h, vcc_lo
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v147, v41, v148
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v41, v145, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v174, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v146, v148, v146, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_cmp_o_f32_e64 s1, v41, v41
	v_mov_b16_e64 v148.l, v159.h
	v_mov_b16_e64 v148.h, v149.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.l, v158.h
	v_mov_b16_e64 v41.h, v149.l
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v159, v158
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v209.l, 0x7fff, v145.h, s1
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v47 :: v_dual_and_b32 v145, 1, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_cndmask_b16 v209.h, 0x7fff, v146.h, vcc_lo
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v147, v160
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v166, s47
	v_cndmask_b32_e64 v148, 0, v176, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v159, v145, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s45
	v_cndmask_b32_e64 v159, 0, v165, s46
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v158, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v148, v147
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v147.h
	v_mov_b16_e64 v160.h, v149.l
	v_mov_b16_e64 v164.l, v148.h
	v_mov_b16_e64 v164.h, v149.l
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v165, v159, v48 :: v_dual_mul_f32 v4, v4, v47
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v145.h, s1
	v_and_b32_e32 v145, 1, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v160, 1, v164
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v158, v165
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v48.h
	v_mov_b16_e64 v165.l, v159.h
	v_mov_b16_e64 v165.h, v149.l
	v_add3_u32 v149, v148, v160, 0x7fff
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v146, v158
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v160, 1, v164
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v158, 1, v165
	v_add3_u32 v145, v147, v145, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v147, v147
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v216, v144, v146
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v146, v48, v160, 0x7fff
	v_add3_u32 v144, v159, v158, 0x7fff
	v_cmp_o_f32_e64 s3, v48, v48
	v_cmp_o_f32_e64 s7, v159, v159
	v_permlanex16_b32 v48, v177, s44, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s1, v148, v148
	v_cndmask_b16 v213.h, 0x7fff, v145.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(30)
	v_mov_b16_e64 v42.h, v150.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v215.l, 0x7fff, v144.h, s7
	v_perm_b32 v144, v48, v177, v132
	v_perm_b32 v145, v48, v177, v133
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v43.h, v151.l
	s_waitcnt vmcnt(26)
	v_mov_b16_e64 v44.h, v152.l
	v_add_nc_u32_e32 v48, 0, v122
	s_waitcnt vmcnt(23)
	v_mov_b16_e64 v49.h, v154.l
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v50.h, v155.l
	s_waitcnt vmcnt(19)
	v_mov_b16_e64 v51.h, v156.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v213.l, 0x7fff, v149.h, s1
	v_permlanex16_b32 v147, v178, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v149, v180, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v217, v216, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v45.h, v153.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v52.h, v157.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v56.h, v171.l
	ds_store_b128 v48, v[42:45]
	ds_store_b128 v129, v[49:52]
	v_add_nc_u32_e32 v42, 0, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v215.h, 0x7fff, v146.h, s3
	v_permlanex16_b32 v210, v208, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v211, v209, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v212, v41, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v146, v147, v178, v132
	v_perm_b32 v147, v147, v178, v133
	v_perm_b32 v148, v149, v180, v132
	v_perm_b32 v149, v149, v180, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v210, v208, v132
	v_perm_b32 v151, v210, v208, v133
	v_perm_b32 v208, v211, v209, v132
	v_perm_b32 v209, v211, v209, v133
	v_perm_b32 v210, v212, v41, v132
	v_perm_b32 v211, v212, v41, v133
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v216, v217
.Ltmp42:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v214, v213, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v218, v215, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v53.h, v161.l
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v41, v125, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v54.h, v162.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v55.h, v163.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v212, v214, v213, v132
	v_perm_b32 v213, v214, v213, v133
	v_perm_b32 v214, v218, v215, v132
	v_perm_b32 v215, v218, v215, v133
	v_mov_b32_e32 v125, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v167.h, v187.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v168.h, v188.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v169.h, v172.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v170.h, v173.l
	ds_store_b128 v130, v[53:56]
	ds_store_b128 v131, v[167:170]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v42
	ds_load_b128 v[152:155], v42 offset:2048
	ds_load_b128 v[52:55], v134
	ds_load_b128 v[156:159], v134 offset:2048
	ds_load_b128 v[160:163], v135
	ds_load_b128 v[168:171], v135 offset:2048
	ds_load_b128 v[176:179], v137
	ds_load_b128 v[184:187], v137 offset:2048
	ds_load_b128 v[180:183], v138
	ds_load_b128 v[188:191], v138 offset:2048
	ds_load_b128 v[164:167], v136
	ds_load_b128 v[172:175], v136 offset:2048
	ds_load_b128 v[192:195], v42 offset:1024
	ds_load_b128 v[196:199], v139
	ds_load_b128 v[200:203], v42 offset:3072
	ds_load_b128 v[204:207], v139 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[48:55], v[144:151], v[25:32]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[152:159], v[144:151], v[9:16]
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[176:183], v[144:151], v[17:24]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[184:191], v[144:151], v[1:8]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[160:167], v[208:215], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[168:175], v[208:215], v[9:16]
	v_mov_b32_e32 v144, v46
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[192:199], v[208:215], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[200:207], v[208:215], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s60, v79
	v_or_b32_e32 v42, s60, v80
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s75, s60, s37
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s60, v81
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s1, s75, s50
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s39, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s60, v82
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v145, s1, v57
	v_add_nc_u32_e32 v146, s1, v95
	v_add_nc_u32_e32 v147, s1, v96
	v_add_nc_u32_e32 v148, s1, v58
	v_add_nc_u32_e32 v149, s1, v97
	v_add_nc_u32_e32 v150, s1, v59
	v_add_nc_u32_e32 v151, s1, v60
	v_add_nc_u32_e32 v152, s1, v61
	v_add_nc_u32_e32 v153, s1, v98
	v_add_nc_u32_e32 v154, s1, v62
	v_add_nc_u32_e32 v155, s1, v63
	v_add_nc_u32_e32 v156, s1, v64
	v_add_nc_u32_e32 v157, s1, v65
	v_add_nc_u32_e32 v158, s1, v66
	v_add_nc_u32_e32 v159, s1, v67
	v_add_nc_u32_e32 v160, s1, v68
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s39, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, s60, v83
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s39, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, s60, v84
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s39, v44
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v47, s60, v85
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v145, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s39, v45
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s60, v87
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v146, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s39, v46
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s60, v88
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v147, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s39, v47
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s60, v89
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v148, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s8
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s39, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s60, v90
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v149, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s9
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v48, s60, v86
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s39, v50
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v150, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s10
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s39, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s60, v91
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v151, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s39, v52
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s60, v92
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s39, v48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v153, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s13
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v55, s60, v93
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v49, 0x80000000, v154, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s39, v53
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v56, s60, v94
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v50, 0x80000000, v155, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s15
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s39, v54
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v51, 0x80000000, v156, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s11
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s39, v55
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v52, 0x80000000, v152, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s39, v56
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v53, 0x80000000, v157, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v41, v41, s[40:43], 0 offen
	buffer_load_u8 v42, v42, s[40:43], 0 offen
	buffer_load_u8 v43, v43, s[40:43], 0 offen
	buffer_load_u8 v44, v44, s[40:43], 0 offen
	buffer_load_u8 v45, v45, s[40:43], 0 offen
	buffer_load_u8 v46, v46, s[40:43], 0 offen
	v_cndmask_b32_e32 v54, 0x80000000, v158, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v48, v48, s[40:43], 0 offen
	buffer_load_u8 v49, v49, s[40:43], 0 offen
	buffer_load_u8 v50, v50, s[40:43], 0 offen
	buffer_load_u8 v51, v51, s[40:43], 0 offen
	v_cndmask_b32_e32 v55, 0x80000000, v159, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v149, s60, v103
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v56, 0x80000000, v160, vcc_lo
	s_clause 0x5
	buffer_load_u8 v53, v53, s[40:43], 0 offen
	buffer_load_u8 v54, v54, s[40:43], 0 offen
	buffer_load_u8 v47, v47, s[40:43], 0 offen
	buffer_load_u8 v52, v52, s[40:43], 0 offen
	buffer_load_u8 v55, v55, s[40:43], 0 offen
	buffer_load_u8 v56, v56, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v162, s60, v105
	v_or_b32_e32 v163, s60, v106
	v_or_b32_e32 v164, s60, v107
	v_or_b32_e32 v165, s60, v108
	v_or_b32_e32 v166, s60, v109
	v_or_b32_e32 v167, s60, v110
	v_or_b32_e32 v168, s60, v111
	v_or_b32_e32 v169, s60, v112
	v_or_b32_e32 v170, s60, v113
	v_or_b32_e32 v171, s60, v114
	v_or_b32_e32 v172, s60, v115
	v_or_b32_e32 v173, s60, v116
	v_or_b32_e32 v174, s60, v117
	v_or_b32_e32 v175, s60, v118
	v_or_b32_e32 v176, s60, v119
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s39, v164
	v_cmp_gt_i32_e64 s3, s39, v163
	v_cmp_gt_i32_e64 s7, s39, v162
	v_cmp_gt_i32_e64 s9, s39, v149
	v_cmp_gt_i32_e64 s8, s39, v168
	v_cmp_gt_i32_e64 s18, s39, v167
	v_cmp_gt_i32_e64 s19, s39, v166
	v_cmp_gt_i32_e64 s20, s39, v165
	v_cmp_gt_i32_e64 s10, s39, v173
	v_cmp_gt_i32_e64 s14, s39, v172
	v_cmp_gt_i32_e64 s16, s39, v171
	v_cmp_gt_i32_e64 s17, s39, v170
	v_cmp_gt_i32_e64 s11, s39, v176
	v_cmp_gt_i32_e64 s15, s39, v175
	v_cmp_gt_i32_e64 s13, s39, v174
	v_cmp_gt_i32_e64 s12, s39, v169
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s74, s2, s9
	s_and_b32 s73, s2, s7
	s_and_b32 s72, s2, s3
	s_and_b32 s71, s2, s1
	s_and_b32 s70, s2, s20
	s_and_b32 s69, s2, s19
	s_and_b32 s68, s2, s18
	s_and_b32 s67, s2, s8
	s_and_b32 s66, s2, s12
	s_and_b32 s65, s2, s17
	s_and_b32 s64, s2, s16
	s_and_b32 s63, s2, s14
	s_and_b32 s62, s2, s10
	s_and_b32 s47, s2, s13
	s_and_b32 s46, s2, s15
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s45, s2, s11
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v99, v41
	s_waitcnt vmcnt(14)
	ds_store_b8 v99, v42 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v99, v48 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v99, v49 offset:576
	ds_store_b8 v100, v43
	ds_store_b8 v100, v44 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v100, v50 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v100, v51 offset:576
	ds_store_b8 v101, v45
	ds_store_b8 v101, v46 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v101, v53 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v101, v54 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v102, v47
	s_waitcnt vmcnt(2)
	ds_store_b8 v102, v52 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v102, v55 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v102, v56 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v124 offset1:1
	ds_load_2addr_stride64_b64 v[150:153], v126 offset1:1
	ds_load_2addr_stride64_b64 v[154:157], v127 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v128 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[145:146], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[152:153], v[71:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[154:155], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[156:157], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[158:159], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[75:76], v[41:48] neg_lo:[1,1,0]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v162, v104
	v_cmp_le_i32_e64 s22, v163, v104
	v_cmp_le_i32_e64 s23, v164, v104
	v_cmp_le_i32_e64 s24, v165, v104
	v_cmp_le_i32_e64 s25, v166, v104
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s21, s21, s73
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v167, v104
	v_cmp_le_i32_e64 s27, v168, v104
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s72
	s_and_b32 s23, s23, s71
	s_and_not1_b32 s73, s73, exec_lo
	s_and_b32 s21, s21, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v169, v104
	v_cmp_le_i32_e64 s29, v170, v104
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s70
	s_and_b32 s25, s25, s69
	s_or_b32 s73, s73, s21
	s_and_not1_b32 s21, s72, exec_lo
	s_and_b32 s22, s22, exec_lo
	s_and_not1_b32 s71, s71, exec_lo
	s_and_b32 s23, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v171, v104
	v_cmp_le_i32_e64 s31, v172, v104
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s26, s68
	s_and_b32 s27, s27, s67
	s_or_b32 s72, s21, s22
	s_or_b32 s71, s71, s23
	s_and_not1_b32 s21, s70, exec_lo
	s_and_b32 s22, s24, exec_lo
	s_and_not1_b32 s23, s69, exec_lo
	s_and_b32 s24, s25, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v173, v104
	v_cmp_le_i32_e64 s34, v174, v104
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s66
	s_and_b32 s29, s29, s65
	s_or_b32 s70, s21, s22
	s_or_b32 s69, s23, s24
	s_and_not1_b32 s21, s68, exec_lo
	s_and_b32 s22, s26, exec_lo
	s_and_not1_b32 s23, s67, exec_lo
	s_and_b32 s24, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v149, v104
	v_cmp_le_i32_e64 s35, v175, v104
	v_cmp_le_i32_e64 s36, v176, v104
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s64
	s_and_b32 s31, s31, s63
	s_or_b32 s68, s21, s22
	s_or_b32 s67, s23, s24
	s_and_not1_b32 s21, s66, exec_lo
	s_and_b32 s22, s28, exec_lo
	s_and_not1_b32 s23, s65, exec_lo
	s_and_b32 s24, s29, exec_lo
	s_and_b32 s33, s33, s62
	s_and_b32 s34, s34, s47
	s_or_b32 s66, s21, s22
	s_or_b32 s65, s23, s24
	s_and_not1_b32 s21, s64, exec_lo
	s_and_b32 s22, s30, exec_lo
	s_and_not1_b32 s23, s63, exec_lo
	s_and_b32 s24, s31, exec_lo
	s_and_b32 s76, vcc_lo, s74
	s_and_b32 s35, s35, s46
	s_and_b32 s36, s36, s45
	s_or_b32 s64, s21, s22
	s_or_b32 s63, s23, s24
	s_and_not1_b32 s21, s62, exec_lo
	s_and_b32 s22, s33, exec_lo
	s_and_not1_b32 s23, s47, exec_lo
	s_and_b32 s24, s34, exec_lo
	s_and_not1_b32 s74, s74, exec_lo
	s_and_b32 s76, s76, exec_lo
	s_or_b32 s62, s21, s22
	s_or_b32 s47, s23, s24
	s_and_not1_b32 s21, s46, exec_lo
	s_and_b32 s22, s35, exec_lo
	s_and_not1_b32 s23, s45, exec_lo
	s_and_b32 s24, s36, exec_lo
	s_or_b32 s74, s74, s76
	s_or_b32 s46, s21, s22
	s_or_b32 s45, s23, s24
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v145, s75, v103, 1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_add_nc_u32_e32 v146, 4, v145
	v_add_nc_u32_e32 v147, 8, v145
	v_add_nc_u32_e32 v148, 12, v145
	v_add_nc_u32_e32 v150, 16, v145
	v_add_nc_u32_e32 v151, 20, v145
	v_add_nc_u32_e32 v152, 24, v145
	v_add_nc_u32_e32 v153, 28, v145
	v_add_nc_u32_e32 v177, 32, v145
	v_add_nc_u32_e32 v178, 36, v145
	v_add_nc_u32_e32 v179, 40, v145
	v_add_nc_u32_e32 v180, 44, v145
	v_add_nc_u32_e32 v181, 48, v145
	v_add_nc_u32_e32 v182, 52, v145
	v_add_nc_u32_e32 v183, 56, v145
	v_add_nc_u32_e32 v184, 60, v145
	v_cndmask_b32_e64 v145, 0x80000000, v145, s9
	v_cndmask_b32_e64 v146, 0x80000000, v146, s7
	v_cndmask_b32_e64 v147, 0x80000000, v147, s3
	v_cndmask_b32_e64 v148, 0x80000000, v148, s1
	v_cndmask_b32_e64 v150, 0x80000000, v150, s20
	v_cndmask_b32_e64 v151, 0x80000000, v151, s19
	v_cndmask_b32_e64 v152, 0x80000000, v152, s18
	v_cndmask_b32_e64 v153, 0x80000000, v153, s8
	s_clause 0x7
	buffer_load_u16 v161, v145, s[56:59], 0 offen
	buffer_load_u16 v160, v146, s[56:59], 0 offen
	buffer_load_u16 v158, v147, s[56:59], 0 offen
	buffer_load_u16 v159, v148, s[56:59], 0 offen
	buffer_load_u16 v154, v150, s[56:59], 0 offen
	buffer_load_u16 v155, v151, s[56:59], 0 offen
	buffer_load_u16 v156, v152, s[56:59], 0 offen
	buffer_load_u16 v157, v153, s[56:59], 0 offen
	v_cndmask_b32_e64 v145, 0x80000000, v178, s17
	v_cndmask_b32_e64 v146, 0x80000000, v179, s16
	v_cndmask_b32_e64 v147, 0x80000000, v180, s14
	v_cndmask_b32_e64 v148, 0x80000000, v181, s10
	v_cndmask_b32_e64 v178, 0x80000000, v183, s15
	v_cndmask_b32_e64 v179, 0x80000000, v184, s11
	v_cndmask_b32_e64 v180, 0x80000000, v182, s13
	v_cndmask_b32_e64 v177, 0x80000000, v177, s12
	s_clause 0x7
	buffer_load_u16 v150, v145, s[56:59], 0 offen
	buffer_load_u16 v151, v146, s[56:59], 0 offen
	buffer_load_u16 v152, v147, s[56:59], 0 offen
	buffer_load_u16 v153, v148, s[56:59], 0 offen
	buffer_load_u16 v146, v178, s[56:59], 0 offen
	buffer_load_u16 v148, v179, s[56:59], 0 offen
	buffer_load_u16 v147, v180, s[56:59], 0 offen
	buffer_load_u16 v145, v177, s[56:59], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v149, v120
	v_cmp_ge_i32_e64 s1, v162, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v149, v121
	v_cmp_le_i32_e64 s21, v162, v121
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v163, v120
	v_cmp_ge_i32_e64 s7, v164, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v163, v121
	v_cmp_le_i32_e64 s23, v164, v121
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v165, v120
	v_cmp_ge_i32_e64 s9, v166, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v165, v121
	v_cmp_le_i32_e64 s25, v166, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s1, s1, s21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v167, v120
	v_cmp_ge_i32_e64 s11, v168, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v167, v121
	v_cmp_le_i32_e64 s27, v168, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s7, s7, s23
	s_and_b32 s3, s3, s22
	s_and_b32 s20, s20, s74
	s_and_b32 s1, s1, s73
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v169, v120
	v_cmp_ge_i32_e64 s13, v170, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v169, v121
	v_cmp_le_i32_e64 s29, v170, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s72
	s_and_b32 s7, s7, s71
	s_and_b32 s8, s8, s24
	s_and_b32 s9, s9, s25
	s_and_not1_b32 s21, s74, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s73, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v171, v120
	v_cmp_ge_i32_e64 s15, v172, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v171, v121
	v_cmp_le_i32_e64 s31, v172, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s27
	s_and_b32 s10, s10, s26
	s_and_b32 s8, s8, s70
	s_and_b32 s9, s9, s69
	s_or_b32 s74, s21, s20
	s_or_b32 s73, s22, s1
	s_and_not1_b32 s1, s72, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s20, s71, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v173, v120
	v_cmp_ge_i32_e64 s17, v174, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v173, v121
	v_cmp_le_i32_e64 s34, v174, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s68
	s_and_b32 s11, s11, s67
	s_and_b32 s13, s13, s29
	s_and_b32 s12, s12, s28
	s_or_b32 s72, s1, s3
	s_or_b32 s71, s20, s7
	s_and_not1_b32 s1, s70, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s69, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v175, v120
	v_cmp_ge_i32_e64 s19, v176, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v175, v121
	v_cmp_le_i32_e64 s36, v176, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s15, s15, s31
	s_and_b32 s14, s14, s30
	s_and_b32 s13, s13, s65
	s_and_b32 s12, s12, s66
	s_or_b32 s70, s1, s3
	s_or_b32 s69, s7, s8
	s_and_not1_b32 s1, s68, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s67, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_and_b32 s14, s14, s64
	s_and_b32 s16, s16, s33
	s_and_b32 s15, s15, s63
	s_and_b32 s17, s17, s34
	s_or_b32 s68, s1, s3
	s_or_b32 s67, s7, s8
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s3, s12, exec_lo
	s_and_not1_b32 s7, s65, exec_lo
	s_and_b32 s8, s13, exec_lo
	s_and_b32 s16, s16, s62
	s_and_b32 s19, s19, s36
	s_and_b32 s18, s18, s35
	s_and_b32 s17, s17, s47
	s_or_b32 s66, s1, s3
	s_or_b32 s65, s7, s8
	s_and_not1_b32 s1, s64, exec_lo
	s_and_b32 s3, s14, exec_lo
	s_and_not1_b32 s7, s63, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_and_b32 s18, s18, s46
	s_and_b32 s19, s19, s45
	s_or_b32 s64, s1, s3
	s_or_b32 s63, s7, s8
	s_and_not1_b32 s1, s62, exec_lo
	s_and_b32 s3, s16, exec_lo
	s_and_not1_b32 s7, s47, exec_lo
	s_and_b32 s8, s17, exec_lo
	s_or_b32 s62, s1, s3
	s_or_b32 s47, s7, s8
	s_and_not1_b32 s1, s46, exec_lo
	s_and_b32 s3, s18, exec_lo
	s_and_not1_b32 s7, s45, exec_lo
	s_and_b32 s8, s19, exec_lo
	s_or_b32 s46, s1, s3
	s_or_b32 s45, s7, s8
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 0 21                          ; attention.py:0:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v0, null, v41, v41, v25
	v_div_scale_f32 v33, null, v41, v41, v26
	v_div_scale_f32 v34, null, v41, v41, v27
	v_rcp_f32_e32 v35, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v25, v41, v25
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v26, v41, v26
	v_div_scale_f32 v43, null, v41, v41, v28
	v_div_scale_f32 v49, s3, v28, v41, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v0, v35, 1.0
	v_fma_f32 v42, -v33, v36, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v34, v37, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s49, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v42, v36
	v_div_scale_f32 v40, s1, v27, v41, v27
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v44, v37 :: v_dual_mul_f32 v44, v38, v35
	v_mul_f32_e32 v45, v39, v36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v46, v40, v37
	v_fma_f32 v47, -v0, v44, v38
	v_fma_f32 v48, -v33, v45, v39
	v_fma_f32 v50, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v34, v46, v40
	v_dual_fmac_f32 v44, v47, v35 :: v_dual_fmac_f32 v45, v48, v36
	v_div_scale_f32 v47, null, v41, v41, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v39
	v_div_scale_f32 v39, null, v41, v41, v30
	v_fmac_f32_e32 v46, v51, v37
	v_rcp_f32_e32 v38, v47
	v_div_fmas_f32 v0, v0, v35, v44
	v_mul_f32_e32 v35, v49, v42
	v_rcp_f32_e32 v44, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v45
	v_fma_f32 v36, -v43, v35, v49
	v_div_fixup_f32 v0, v0, v41, v25
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v47, v38, 1.0
	v_div_fixup_f32 v25, v33, v41, v26
	v_fma_f32 v26, -v34, v46, v40
	v_fma_f32 v34, -v39, v44, 1.0
	v_fmac_f32_e32 v35, v36, v42
	v_div_scale_f32 v36, null, v41, v41, v31
	v_fmac_f32_e32 v38, v45, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v44
	v_div_scale_f32 v45, null, v41, v41, v32
	v_rcp_f32_e32 v34, v36
	v_div_fmas_f32 v26, v26, v37, v46
	v_div_scale_f32 v33, s4, v29, v41, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v45
	v_fma_f32 v37, -v43, v35, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v41, v30
	v_div_fixup_f32 v26, v26, v41, v27
	v_fma_f32 v46, -v36, v34, 1.0
	v_div_fmas_f32 v35, v37, v42, v35
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v46, v34
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fixup_f32 v27, v35, v41, v28
	v_div_scale_f32 v35, s3, v31, v41, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v66, v25, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v46, v48
	v_mul_f32_e32 v40, v33, v38
	v_div_scale_f32 v46, s5, v32, v41, v32
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v67, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v47, v40, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v25, v25
	v_cmp_o_f32_e64 s36, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v41, v41, v17
	v_fma_f32 v33, -v47, v40, v33
	v_mul_f32_e32 v47, v35, v34
	v_mul_f32_e32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v49, v37
	v_fma_f32 v28, -v39, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v28, v44
	v_div_fmas_f32 v28, v33, v38, v40
	v_fma_f32 v40, -v37, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v36, v47, v35
	v_fma_f32 v33, -v39, v42, v43
	v_mul_f32_e32 v39, v46, v48
	v_fmac_f32_e32 v49, v40, v49
	v_div_scale_f32 v40, s1, v17, v41, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v44, v42
	v_fma_f32 v42, -v45, v39, v46
	v_div_fixup_f32 v28, v28, v41, v29
	v_div_scale_f32 v43, null, v41, v41, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v29, v33, v41, v30
	v_mul_f32_e32 v33, v40, v49
	v_fmac_f32_e32 v47, v38, v34
	v_fmac_f32_e32 v39, v42, v48
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v38, v43
	v_fma_f32 v42, -v37, v33, v40
	v_fma_f32 v30, -v36, v47, v35
	v_div_scale_f32 v36, null, v41, v41, v19
	v_div_scale_f32 v44, s3, v18, v41, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v30, v30, v34, v47
	v_fma_f32 v34, -v45, v39, v46
	v_div_scale_f32 v45, null, v41, v41, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v38, 1.0
	v_div_fmas_f32 v34, v34, v48, v39
	v_rcp_f32_e32 v39, v45
	v_fmac_f32_e32 v33, v42, v49
	v_div_fixup_f32 v30, v30, v41, v31
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v41, v32
	v_div_scale_f32 v47, null, v41, v41, v22
	v_fma_f32 v32, -v37, v33, v40
	v_div_scale_f32 v37, s4, v19, v41, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v39, 1.0
	v_fmac_f32_e32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v32, v32, v49, v33
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, s1, v20, v41, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v17, v32, v41, v17
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v36, v35, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v46, v35
	v_div_scale_f32 v46, null, v41, v41, v21
	v_dual_mul_f32 v33, v37, v35 :: v_dual_mul_f32 v42, v44, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v43, v42, v44
	v_fmac_f32_e32 v42, v34, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v34, v46
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v36, v33, v37
	v_mul_f32_e32 v44, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v38, v42
	v_fmac_f32_e32 v33, v43, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v38, -v45, v44, v40
	v_fma_f32 v43, -v47, v48, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v32, v41, v18
	v_fma_f32 v32, -v36, v33, v37
	v_fmac_f32_e32 v44, v38, v39
	v_fmac_f32_e32 v48, v43, v48
	v_div_scale_f32 v37, s5, v22, v41, v22
	v_fma_f32 v49, -v46, v34, 1.0
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v45, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v37, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s3, v21, v41, v21
	v_div_fmas_f32 v33, v33, v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v37
	v_fmac_f32_e32 v34, v49, v34
	v_div_scale_f32 v38, null, v41, v41, v23
	v_div_fixup_f32 v19, v32, v41, v19
	v_dual_fmac_f32 v43, v39, v48 :: v_dual_mul_f32 v36, v42, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v33, v41, v20
	v_div_scale_f32 v33, s1, v23, v41, v23
	v_fma_f32 v35, -v46, v36, v42
	v_div_scale_f32 v45, null, v41, v41, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v35, v34
	v_fma_f32 v44, -v38, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v32, -v46, v36, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v46, null, v41, v41, v10
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v47, v43, v37
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v36, v33, v40
	v_div_scale_f32 v37, null, v41, v41, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v48, v43
	v_fma_f32 v39, -v45, v35, 1.0
	v_fma_f32 v43, -v38, v36, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v41, v22
	v_rcp_f32_e32 v34, v46
	v_fmac_f32_e32 v36, v43, v40
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v41, v24
	v_div_fixup_f32 v21, v32, v41, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v38, v36, v33
	v_fma_f32 v43, -v37, v42, 1.0
	v_div_scale_f32 v38, null, v41, v41, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v34, 1.0
	v_div_fmas_f32 v33, v33, v40, v36
	v_div_scale_f32 v40, s1, v10, v41, v10
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, v47, v34
	v_rcp_f32_e32 v43, v38
	v_div_scale_f32 v48, null, v41, v41, v12
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v49, v40, v34 :: v_dual_mul_f32 v44, v39, v35
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v23, v33, v41, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v45, v44, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v32, v35
	v_div_scale_f32 v32, s4, v9, v41, v9
	v_fma_f32 v36, -v45, v44, v39
	v_fma_f32 v45, -v38, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, v32, v42
	v_div_fmas_f32 v35, v36, v35, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v41, v11
	v_fma_f32 v36, -v46, v49, v40
	v_fma_f32 v47, -v37, v39, v32
	v_div_fixup_f32 v24, v35, v41, v24
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v36, v34
	v_div_scale_f32 v36, null, v41, v41, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v38, v44, v45
	v_fmac_f32_e32 v39, v47, v42
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s3, v12, v41, v12
	v_fmac_f32_e32 v44, v33, v43
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v37, -v46, v49, v40
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v42, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, null, v41, v41, v14
	v_div_fmas_f32 v34, v37, v34, v49
	v_fma_f32 v37, -v38, v44, v45
	v_mul_f32_e32 v38, v35, v50
	v_fma_f32 v40, -v36, v33, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v41, v9
	v_div_fmas_f32 v37, v37, v43, v44
	v_fma_f32 v43, -v48, v38, v35
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v41, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v37, v41, v11
	v_fmac_f32_e32 v38, v43, v50
	v_div_scale_f32 v37, null, v41, v41, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v48, v38, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v37
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v43, -v36, v32, v40
	v_div_fixup_f32 v10, v34, v41, v10
	v_div_fmas_f32 v35, v35, v50, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v43, v33
	v_div_scale_f32 v43, null, v41, v41, v16
	v_div_fixup_f32 v12, v35, v41, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v39, v42, 1.0
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v40, -v37, v44, 1.0
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v35, v33, v32
	v_fmac_f32_e32 v44, v40, v44
	v_div_scale_f32 v40, null, v41, v41, v2
	v_div_scale_f32 v33, null, v41, v41, v1
	v_div_scale_f32 v35, s1, v15, v41, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_div_fixup_f32 v13, v32, v41, v13
	v_fma_f32 v32, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v41, v16
	v_fma_f32 v49, -v40, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v47, v49, v47 :: v_dual_fmac_f32 v42, v34, v42
	v_div_scale_f32 v34, s4, v14, v41, v14
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v41, v1
	v_mul_f32_e32 v38, v34, v42
	v_div_scale_f32 v49, s5, v2, v41, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v39, v38, v34
	v_fmac_f32_e32 v38, v36, v42
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v44
	v_div_fmas_f32 v34, v34, v42, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v35
	v_mul_f32_e32 v42, v32, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v34, v41, v14
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v41, v41, v3
	v_fmac_f32_e32 v39, v38, v44
	v_fma_f32 v38, -v43, v42, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v48, v36
	v_rcp_f32_e32 v50, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v42, v38, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v33, v51, v48
	v_mul_f32_e32 v37, v49, v47
	v_div_fmas_f32 v34, v34, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v35, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v50, 1.0
	v_fma_f32 v35, -v40, v37, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v41, v41, v4
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s1, v3, v41, v3
	v_fma_f32 v33, -v33, v51, v48
	v_fmac_f32_e32 v37, v35, v47
	v_div_fmas_f32 v32, v32, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v50
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v42, v39
	v_div_fmas_f32 v33, v33, v36, v51
	v_fma_f32 v36, -v40, v37, v49
	v_fma_f32 v40, -v46, v35, v38
	v_div_fixup_f32 v16, v32, v41, v16
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v1, v33, v41, v1
	v_div_scale_f32 v33, null, v41, v41, v5
	v_fmac_f32_e32 v35, v40, v50
	v_div_fmas_f32 v36, v36, v47, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v34, v41, v15
	v_fma_f32 v34, -v39, v42, 1.0
	v_fma_f32 v32, -v46, v35, v38
	v_div_fixup_f32 v2, v36, v41, v2
	v_div_scale_f32 v36, null, v41, v41, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v34, v42
	v_div_fmas_f32 v32, v32, v50, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v4, v41, v4
	v_div_scale_f32 v34, null, v41, v41, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v32, v41, v3
	v_mul_f32_e32 v43, v37, v42
	v_div_scale_f32 v44, null, v41, v41, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v32, -v33, v35, 1.0
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v47, -v39, v43, v37
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v41, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v45, -v34, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v49, v32, v35
	v_fma_f32 v48, -v36, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s3, v6, v41, v6
	v_fma_f32 v47, -v33, v49, v32
	v_fma_f32 v37, -v39, v43, v37
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v41, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v47, v35 :: v_dual_fmac_f32 v40, v48, v40
	v_div_scale_f32 v48, s4, v7, v41, v7
	v_mul_f32_e32 v51, v45, v38
	v_fma_f32 v32, -v33, v49, v32
	v_div_fmas_f32 v37, v37, v42, v43
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v53, v50, v46 :: v_dual_mul_f32 v52, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v35, v49
	v_fma_f32 v39, -v34, v51, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v44, v53, v50
	v_fma_f32 v47, -v36, v52, v48
	v_div_fixup_f32 v5, v32, v41, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v33, v46 :: v_dual_fmac_f32 v52, v47, v40
	v_div_fixup_f32 v4, v37, v41, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v65, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v34, v51, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s34, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v52, v48
	v_fma_f32 v35, -v44, v53, v50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v65, v32, v65, 0x7fff
	v_add3_u32 v32, v25, v66, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v26, v67, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v65.h, s34
	v_bfe_u32 v65, v27, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s35
	v_bfe_u32 v32, v28, 16, 1
	v_bfe_u32 v66, v29, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v34, v41, v6
	v_div_fmas_f32 v35, v35, v46, v53
	v_div_fixup_f32 v7, v33, v41, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	v_cndmask_b32_e64 v34, 0, v18, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s36
	v_add3_u32 v65, v27, v65, 0x7fff
	v_cmp_o_f32_e64 s34, v27, v27
	v_add3_u32 v27, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v28, v28
	v_add3_u32 v28, v29, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v29, v29
	v_bfe_u32 v29, v30, 16, 1
	v_bfe_u32 v32, v31, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v35, v41, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v19, s0
	v_cndmask_b32_e64 v36, 0, v20, s0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v65.h, s34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s35
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s36
	v_bfe_u32 v28, v33, 16, 1
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cmp_o_f32_e64 s34, v30, v30
	v_add3_u32 v30, v31, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_bfe_u32 v31, v34, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v21, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v33, v28, 0x7fff
	v_cmp_o_f32_e64 s36, v33, v33
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s34
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v35, 16, 1
	v_bfe_u32 v32, v36, 16, 1
	v_add3_u32 v31, v34, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v34, v34
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s36
	v_add3_u32 v30, v35, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v35, v35
	v_add3_u32 v32, v36, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v36, v36
	v_cndmask_b16 v28.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v37, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s35
	v_bfe_u32 v33, v22, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v23, 16, 1
	v_add3_u32 v31, v37, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v37, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v9, s0
	v_cndmask_b32_e64 v39, 0, v10, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v22, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v22, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v24, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v11, s0
	v_cndmask_b32_e64 v41, 0, v12, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.h, 0x7fff, v33.h, s35
	v_bfe_u32 v32, v38, 16, 1
	v_bfe_u32 v33, v39, 16, 1
	v_add3_u32 v31, v24, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v42, 0, v13, s0
	v_cndmask_b32_e64 v43, 0, v14, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s36
	v_add3_u32 v24, v38, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v38, v38
	v_add3_u32 v32, v39, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v39, v39
	v_cndmask_b16 v22.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v40, 16, 1
	v_bfe_u32 v33, v41, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v15, s0
	v_cndmask_b32_e64 v45, 0, v16, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_cndmask_b16 v24.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v42, 16, 1
	v_add3_u32 v31, v40, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v40, v40
	v_add3_u32 v33, v41, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v41, v41
	v_bfe_u32 v34, v43, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v46, 0, v1, s0
	v_cndmask_b32_e64 v47, 0, v2, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v32, v42, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v42, v42
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s35
	v_bfe_u32 v33, v44, 16, 1
	v_bfe_u32 v35, v45, 16, 1
	v_add3_u32 v34, v43, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v43, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v48, 0, v3, s0
	v_cndmask_b32_e64 v53, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s36
	v_add3_u32 v33, v44, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v44, v44
	v_add3_u32 v35, v45, v35, 0x7fff
	v_cmp_o_f32_e64 s36, v45, v45
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s34
	v_bfe_u32 v34, v46, 16, 1
	v_bfe_u32 v36, v47, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v49, 0, v4, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v50, 1, v78
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v51, 0, v5, s0
	v_cndmask_b32_e64 v52, 0, v6, s0
	v_cndmask_b32_e64 v54, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s35
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s36
	v_bfe_u32 v35, v48, 16, 1
	v_add3_u32 v34, v46, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v46, v46
	v_add3_u32 v36, v47, v36, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_bfe_u32 v39, v53, 16, 1
	v_bfe_u32 v37, v49, 16, 1
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v55, 1, v50
	v_or_b32_e32 v56, 2, v50
	v_or_b32_e32 v57, 3, v50
	v_or_b32_e32 v58, 4, v50
	v_or_b32_e32 v59, 5, v50
	v_or_b32_e32 v60, 6, v50
	v_or_b32_e32 v61, 7, v50
	v_or_b32_e32 v62, 16, v50
	v_or_b32_e32 v63, 17, v50
	v_or_b32_e32 v64, 18, v50
	v_or_b32_e32 v21, 19, v50
	v_or_b32_e32 v20, 20, v50
	v_or_b32_e32 v19, 21, v50
	v_or_b32_e32 v18, 22, v50
	v_or_b32_e32 v17, 23, v50
	v_or_b32_e32 v16, 32, v50
	v_or_b32_e32 v15, 33, v50
	v_or_b32_e32 v14, 34, v50
	v_or_b32_e32 v13, 35, v50
	v_or_b32_e32 v12, 36, v50
	v_or_b32_e32 v11, 37, v50
	v_or_b32_e32 v10, 38, v50
	v_or_b32_e32 v9, 39, v50
	v_or_b32_e32 v8, 48, v50
	v_or_b32_e32 v7, 49, v50
	v_or_b32_e32 v6, 50, v50
	v_or_b32_e32 v5, 51, v50
	v_or_b32_e32 v4, 52, v50
	v_or_b32_e32 v3, 53, v50
	v_or_b32_e32 v2, 54, v50
	v_or_b32_e32 v0, 55, v50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v35, v48, v35, 0x7fff
	v_cmp_o_f32_e64 s36, v48, v48
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s34
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s35
	v_bfe_u32 v36, v51, 16, 1
	v_bfe_u32 v38, v52, 16, 1
	v_bfe_u32 v40, v54, 16, 1
	v_add3_u32 v39, v53, v39, 0x7fff
	v_cmp_o_f32_e64 s37, v53, v53
	v_add3_u32 v37, v49, v37, 0x7fff
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v1, v77, s38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s38, v50
	v_cmp_gt_i32_e64 s31, s38, v55
	v_cmp_gt_i32_e64 s30, s38, v56
	v_cmp_gt_i32_e64 s29, s38, v57
	v_cmp_gt_i32_e64 s28, s38, v58
	v_cmp_gt_i32_e64 s27, s38, v59
	v_cmp_gt_i32_e64 s26, s38, v60
	v_cmp_gt_i32_e64 s25, s38, v61
	v_cmp_gt_i32_e64 s24, s38, v62
	v_cmp_gt_i32_e64 s23, s38, v63
	v_cmp_gt_i32_e64 s22, s38, v64
	v_cmp_gt_i32_e64 s21, s38, v21
	v_cmp_gt_i32_e64 s20, s38, v20
	v_cmp_gt_i32_e64 s19, s38, v19
	v_cmp_gt_i32_e64 s18, s38, v18
	v_cmp_gt_i32_e64 s17, s38, v17
	v_cmp_gt_i32_e64 s16, s38, v16
	v_cmp_gt_i32_e64 s15, s38, v15
	v_cmp_gt_i32_e64 s14, s38, v14
	v_cmp_gt_i32_e64 s13, s38, v13
	v_cmp_gt_i32_e64 s12, s38, v12
	v_cmp_gt_i32_e64 s11, s38, v11
	v_cmp_gt_i32_e64 s10, s38, v10
	v_cmp_gt_i32_e64 s5, s38, v9
	v_cmp_gt_i32_e64 s4, s38, v8
	v_cmp_gt_i32_e64 s3, s38, v7
	v_cmp_gt_i32_e64 s1, s38, v6
	v_cmp_gt_i32_e64 s0, s38, v5
	v_cmp_gt_i32_e32 vcc_lo, s38, v4
	v_cmp_gt_i32_e64 s9, s38, v3
	v_cmp_gt_i32_e64 s8, s38, v2
	v_cmp_gt_i32_e64 s7, s38, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s36
	v_cmp_o_f32_e64 s34, v49, v49
	v_add3_u32 v36, v51, v36, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	v_add3_u32 v38, v52, v38, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_add3_u32 v40, v54, v40, 0x7fff
	v_cmp_o_f32_e64 s38, v54, v54
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s37
	v_mov_b32_e32 v39, 0x5410
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s34
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s35
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s36
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s38
	v_cndmask_b32_e64 v38, v27, v26, s6
	v_cndmask_b32_e64 v26, v26, v27, s6
	v_cndmask_b32_e64 v27, v29, v25, s6
	v_cndmask_b32_e64 v25, v25, v29, s6
	v_cndmask_b32_e64 v29, v23, v28, s6
	v_cndmask_b32_e64 v23, v28, v23, s6
	v_cndmask_b32_e64 v28, v22, v30, s6
	v_mov_b32_e32 v40, 0x7632
	v_cndmask_b32_e64 v22, v30, v22, s6
	v_cndmask_b32_e64 v30, v32, v24, s6
	v_cndmask_b32_e64 v24, v24, v32, s6
	v_cndmask_b32_e64 v32, 0x1054, v39, s6
	v_cndmask_b32_e64 v39, 0x3276, v40, s6
	s_mov_b32 s34, 0x76543210
	v_cndmask_b32_e64 v40, v33, v31, s6
	v_cndmask_b32_e64 v31, v31, v33, s6
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v39, v39, 8, v39
	v_cndmask_b32_e64 v33, v36, v34, s6
	v_cndmask_b32_e64 v34, v34, v36, s6
	v_cndmask_b32_e64 v36, v37, v35, s6
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v39, 0x760076, v39
	v_cndmask_b32_e64 v35, v35, v37, s6
	v_permlanex16_b32 v26, v26, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v50, v1, v50, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v37, v39, 4, v39
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v54, v1, v55, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v25, v25, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v22, v22, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x7060706, v37
	v_permlanex16_b32 v31, v31, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v26, v38, v32
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v55, v1, v56, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v26, v26, v38, v37
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v38, v25, v27, v32
	v_perm_b32 v25, v25, v27, v37
	v_perm_b32 v27, v23, v29, v32
	v_perm_b32 v23, v23, v29, v37
	v_perm_b32 v29, v22, v28, v32
	v_perm_b32 v22, v22, v28, v37
	v_perm_b32 v28, v24, v30, v32
	v_perm_b32 v24, v24, v30, v37
	v_perm_b32 v30, v31, v40, v32
	v_perm_b32 v31, v31, v40, v37
	v_perm_b32 v40, v34, v33, v32
	v_perm_b32 v33, v34, v33, v37
	v_perm_b32 v32, v35, v36, v32
	v_perm_b32 v34, v35, v36, v37
	v_mov_b16_e32 v35.l, v39.h
	v_mov_b16_e32 v35.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s6
	buffer_store_b16 v39, v50, s[48:51], 0 offen
	v_add_lshl_u32 v39, v1, v57, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v26.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v35, v54, s[48:51], 0 offen
	buffer_store_b16 v26, v55, s[48:51], 0 offen
	v_add_lshl_u32 v26, v1, v58, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s29
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v50, v1, v60, 1
	v_cndmask_b32_e64 v35, 0x80000000, v39, s6
	v_add_lshl_u32 v39, v1, v59, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v38.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v37.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v39, 0x80000000, v39, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s26
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v68, v35, s[48:51], 0 offen
	buffer_store_b16 v38, v26, s[48:51], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v50, s6
	v_add_lshl_u32 v26, v1, v61, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v36.l, v25.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v37, v39, s[48:51], 0 offen
	buffer_store_b16 v25, v50, s[48:51], 0 offen
	v_add_lshl_u32 v25, v1, v62, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s25
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v35, v1, v63, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s24
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v37, v1, v64, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s23
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s22
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s19
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v1, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v15, v1, v15, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s16
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v14, v1, v14, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s15
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v13, v1, v13, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s14
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v12, v1, v12, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s13
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v4, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s12
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s11
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s9
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s10
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v36.h, v68.h
	v_mov_b16_e32 v41.l, v23.h
	v_mov_b16_e32 v41.h, v68.h
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v42.h, v68.h
	v_mov_b16_e32 v43.l, v22.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v24.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v28.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v31.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v30.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v33.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v51.l, v40.h
	v_mov_b16_e32 v51.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v53.l, v32.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v52.l, v34.h
	v_mov_b16_e32 v52.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v36, v26, s[48:51], 0 offen
	buffer_store_b16 v27, v25, s[48:51], 0 offen
	buffer_store_b16 v42, v35, s[48:51], 0 offen
	buffer_store_b16 v23, v37, s[48:51], 0 offen
	buffer_store_b16 v41, v21, s[48:51], 0 offen
	buffer_store_b16 v29, v20, s[48:51], 0 offen
	buffer_store_b16 v44, v19, s[48:51], 0 offen
	buffer_store_b16 v22, v18, s[48:51], 0 offen
	buffer_store_b16 v43, v17, s[48:51], 0 offen
	buffer_store_b16 v28, v16, s[48:51], 0 offen
	buffer_store_b16 v46, v15, s[48:51], 0 offen
	buffer_store_b16 v24, v14, s[48:51], 0 offen
	buffer_store_b16 v45, v13, s[48:51], 0 offen
	buffer_store_b16 v30, v12, s[48:51], 0 offen
	buffer_store_b16 v48, v11, s[48:51], 0 offen
	buffer_store_b16 v31, v10, s[48:51], 0 offen
	buffer_store_b16 v47, v9, s[48:51], 0 offen
	buffer_store_b16 v40, v8, s[48:51], 0 offen
	buffer_store_b16 v51, v7, s[48:51], 0 offen
	buffer_store_b16 v33, v6, s[48:51], 0 offen
	buffer_store_b16 v49, v5, s[48:51], 0 offen
	buffer_store_b16 v32, v4, s[48:51], 0 offen
	buffer_store_b16 v53, v1, s[48:51], 0 offen
	buffer_store_b16 v34, v2, s[48:51], 0 offen
	buffer_store_b16 v52, v0, s[48:51], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 219
		.amdhsa_next_free_sgpr 91
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 219
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 91
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15644
; TotalNumSgprs: 93
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 93
; NumVGPRsForWavesPerEU: 219
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     93
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     219
    .vgpr_spill_count: 0
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
