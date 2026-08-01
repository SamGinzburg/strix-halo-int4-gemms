	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[48:51], s[0:1], 0x4c
	s_load_b32 s46, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v94, 5, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v95, 2, v94
	v_or_b32_e32 v96, 4, v94
	v_or_b32_e32 v97, 6, v94
	v_or_b32_e32 v98, 8, v94
	v_or_b32_e32 v99, 10, v94
	v_or_b32_e32 v100, 12, v94
	v_or_b32_e32 v102, 16, v94
	v_or_b32_e32 v103, 18, v94
	v_or_b32_e32 v104, 20, v94
	v_or_b32_e32 v105, 22, v94
	v_or_b32_e32 v101, 14, v94
	v_or_b32_e32 v106, 24, v94
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s30, s3, s50
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v107, 26, v94
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s4, s48
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s7, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s29, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v108, 28, v94
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s29, v95
	v_or_b32_e32 v4, s29, v96
	v_or_b32_e32 v5, s29, v97
	v_or_b32_e32 v6, s29, v98
	v_or_b32_e32 v7, s29, v99
	v_or_b32_e32 v8, s29, v100
	v_or_b32_e32 v11, s29, v102
	v_or_b32_e32 v12, s29, v103
	v_or_b32_e32 v13, s29, v104
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[57:58], null, s46, v94, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s29, v94
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s50, v7
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s50, v8
	v_cmp_gt_i32_e64 s11, s50, v11
	v_cmp_gt_i32_e32 vcc_lo, s50, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[58:59], null, s46, 6, v[57:58]
	v_lshl_add_u32 v110, s46, 1, v57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v111, s46, 2, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v112, s46, 3, v57
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[59:60], null, s46, 10, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s2, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[60:61], null, s46, 12, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s2, s4
	s_add_i32 s6, s2, 1
	s_sub_i32 s5, s7, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[61:62], null, s46, 14, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s7, s5, s4
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[62:63], null, s46, 18, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s2
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s2, 1
	s_cmp_ge_u32 s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[63:64], null, s46, 20, v[57:58]
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s6, s2
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s49
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[64:65], null, s46, 22, v[57:58]
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s5, s2
	s_sub_i32 s6, 0, s2
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[65:66], null, s46, 24, v[57:58]
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[66:67], null, s46, 26, v[57:58]
	v_mad_u64_u32 v[67:68], null, s46, 28, v[57:58]
	v_mad_u64_u32 v[68:69], null, s46, 30, v[57:58]
	v_lshl_add_u32 v113, s46, 4, v57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s29, v105
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s50, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s5, v10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s29, v101
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s50, v13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s29, v106
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v109, 30, v94
	.loc	1 757 22 is_stmt 1              ; attention.py:757:22
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s50, v14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s29, v107
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s50, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s5, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s29, v108
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s50, v15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s29, v109
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s50, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s6, s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s50, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s48, s49
	s_mul_hi_u32 s5, s4, s5
	s_ashr_i32 s31, s6, 31
	s_mul_i32 s7, s5, s2
	s_add_i32 s6, s5, 1
	s_sub_i32 s4, s4, s7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s50, v18
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s4, s2
	s_cmp_ge_u32 s4, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s4, s7, s4
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s4, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s50, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s33, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s30, s29
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s46, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s2, s30, s46
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s50, v5
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v10, s2, v57
	v_add_nc_u32_e32 v19, s2, v110
	v_add_nc_u32_e32 v20, s2, v111
	v_add_nc_u32_e32 v21, s2, v58
	v_add_nc_u32_e32 v22, s2, v112
	v_add_nc_u32_e32 v23, s2, v59
	v_add_nc_u32_e32 v24, s2, v60
	v_add_nc_u32_e32 v25, s2, v61
	v_add_nc_u32_e32 v26, s2, v113
	v_add_nc_u32_e32 v27, s2, v62
	v_add_nc_u32_e32 v28, s2, v63
	v_add_nc_u32_e32 v29, s2, v64
	v_add_nc_u32_e32 v30, s2, v65
	v_add_nc_u32_e32 v31, s2, v66
	v_add_nc_u32_e32 v32, s2, v67
	v_add_nc_u32_e32 v33, s2, v68
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s50, v3
	.loc	1 776 22 is_stmt 0              ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s50, v6
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v10, vcc_lo
	s_and_b32 s25, s25, 0xffff
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s33, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v19, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v3, 0x80000000, v20 :: v_dual_add_nc_u32 v116, 0, v18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v34, 32, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v21, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s7, s2, s31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v22, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s5
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v23, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s5
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
	s_and_b32 vcc_lo, s11, s5
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v26, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 1, v34
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v27, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s5
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v28, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	v_cndmask_b32_e32 v11, 0x80000000, v29, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s5
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s4, s51, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v25, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s4, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v30, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v31, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s5
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x3
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	v_cndmask_b32_e32 v15, 0x80000000, v32, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v114, 0, v0
	v_cndmask_b32_e32 v16, 0x80000000, v33, vcc_lo
	s_clause 0x5
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v17, v1, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v33, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v1, 0x88, v0
	v_add_nc_u32_e32 v117, 0, v20
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v21
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s4, s2
	s_mov_b32 s56, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v115, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v19, v33
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s57, s2, 0xffffffe0
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v114, v7
	s_waitcnt vmcnt(14)
	ds_store_b8 v114, v2 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v114, v8 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v114, v9 offset:576
	ds_store_b8 v115, v3
	ds_store_b8 v115, v4 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v10 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v11 offset:576
	ds_store_b8 v116, v5
	ds_store_b8 v116, v6 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v13 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v14 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v17
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v12 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v117, v15 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v117, v16 offset:576
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s29, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s29, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s29, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s51, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 27
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s4, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s2, s2, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s56, s4, 0x7fffffe0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s57, s57, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s28
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s2, s50, v35
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	v_cmp_ne_u32_e64 s4, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s9, s29, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s51, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 31
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 27
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s9, s9, 31
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s57, s57, s9
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s50, s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_bfe_u32 v91, v0, 4, 1
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v93, s30, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s56, s57
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, 2, v91
	v_or_b32_e32 v90, 4, v91
	v_or_b32_e32 v89, 6, v91
	v_or_b32_e32 v88, 8, v91
	v_or_b32_e32 v87, 10, v91
	v_or_b32_e32 v86, 12, v91
	v_or_b32_e32 v85, 14, v91
	v_or_b32_e32 v84, 16, v91
	v_or_b32_e32 v83, 18, v91
	v_or_b32_e32 v82, 20, v91
	v_or_b32_e32 v80, 22, v91
	v_or_b32_e32 v81, 24, v91
	v_or_b32_e32 v79, 26, v91
	v_or_b32_e32 v78, 28, v91
	v_or_b32_e32 v77, 30, v91
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
	v_mov_b32_e32 v41, v8
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[36:43], s[0:1], 0x8
	s_xor_b32 s9, s3, s48
	s_mul_f32 s16, s8, 0x4f7ffffe
	s_mov_b32 s8, 0
	s_ashr_i32 s18, s9, 31
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_lshlrev_b32_e32 v1, 1, v93
	v_dual_mov_b32 v3, 0x5410 :: v_dual_lshlrev_b32 v42, 5, v33
	v_lshlrev_b32_e32 v43, 4, v34
	v_dual_mov_b32 v45, 0x7632 :: v_dual_add_nc_u32 v118, s23, v35
	v_lshl_add_u32 v119, v33, 1, 0
	v_mov_b32_e32 v40, s15
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s41, 0xffff
	s_mov_b32 s24, s40
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_and_b32 v2, 16, v0
	buffer_load_u16 v41, v1, s[24:27], 0 offen
	v_dual_mov_b32 v38, s13 :: v_dual_lshlrev_b32 v1, 1, v0
	v_mov_b32_e32 v39, s14
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	s_load_b32 s1, s[0:1], 0x6c
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v46, 24, v1
	s_xor_b32 s19, s19, s18
	s_cvt_u32_f32 s16, s16
	s_sub_i32 s17, 0, s6
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v34, s9
	v_dual_mov_b32 v37, s12 :: v_dual_mov_b32 v36, s11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v35, s10 :: v_dual_mov_b32 v28, v25
	v_dual_mov_b32 v33, s8 :: v_dual_mov_b32 v30, v25
	v_dual_cndmask_b32 v47, 0x1054, v3 :: v_dual_mov_b32 v18, v25
	s_sub_i32 s8, s19, s18
	v_or3_b32 v43, v42, v43, v46
	s_mul_i32 s9, s8, s48
	s_mul_i32 s17, s17, s16
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s9, s16, s17
	v_mov_b32_e32 v22, v25
	v_or_b32_e32 v42, v42, v46
	v_lshl_or_b32 v46, v47, 8, v47
	v_add_nc_u32_e32 v47, 0, v43
	s_abs_i32 s10, s3
	s_add_i32 s16, s16, s9
	v_xad_u32 v48, v43, 8, 0
	v_dual_mov_b32 v20, v25 :: v_dual_cndmask_b32 v45, 0x3276, v45
	v_xad_u32 v49, v43, 16, 0
	s_ashr_i32 s7, s7, 31
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s9, s10, s16
	v_xad_u32 v43, v43, 24, 0
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s3, s3, s7
	s_mul_i32 s7, s9, s6
	ds_load_b64 v[69:70], v47
	ds_load_b64 v[71:72], v48
	ds_load_b64 v[73:74], v49
	ds_load_b64 v[75:76], v43
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v46, 0x540054, v46
	v_lshl_or_b32 v45, v45, 8, v45
	s_sub_i32 s7, s10, s7
	s_add_i32 s11, s9, 1
	s_sub_i32 s10, s7, s6
	s_cmp_ge_u32 s7, s6
	v_mov_b16_e32 v44.l, 0
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v122, 0, v42
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v43, 0x760076, v45
	v_xor_b32_e32 v50, 8, v42
	v_xor_b32_e32 v51, 16, v42
	v_xor_b32_e32 v52, 24, v42
	v_lshl_or_b32 v42, v46, 4, v46
	s_cselect_b32 s9, s11, s9
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s1, s1, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s10, s7
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s7, s6
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v126, 0x5040504, v42
	v_lshl_or_b32 v42, v43, 4, v43
	s_cselect_b32 s6, s10, s9
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s8, s8, s49
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s6, s6, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s50, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s3, s6, s3
	v_subrev_nc_u32_e32 v120, s21, v118
	v_dual_mov_b32 v32, v25 :: v_dual_add_nc_u32 v121, s22, v118
	v_mov_b32_e32 v26, v25
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v124, 0, v51
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v128, 0x7060706, v42
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v123, 0, v50
	v_mov_b32_e32 v11, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v125, 0, v52
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v132, v25
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s43, s43, 0xffff
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s48, s3, s8
	s_mov_b32 s52, s38
	s_mov_b32 s38, s54
	s_mov_b32 s40, s42
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s53, s39, 0xffff
	s_mov_b32 s39, s55
	s_mov_b32 s41, s43
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s48, s48, s51
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	s_mov_b32 s49, 0x76543210
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v44.h, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v14, v25 :: v_dual_mul_f32 v127, s1, v44
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v16, v25
	v_dual_mov_b32 v2, v25 :: v_dual_mov_b32 v131, v127
	.loc	1 847 25                        ; attention.py:847:25
	v_mov_b32_e32 v129, v127
	v_mov_b32_e32 v130, v127
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 889 30                        ; attention.py:889:30
	v_mad_u64_u32 v[151:152], null, s74, s50, v[0:1]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v50, v50
	v_dual_mul_f32 v45, v131, v45 :: v_dual_add_nc_u32 v152, s50, v151
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v141.h, v149.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v130, v51 :: v_dual_add_nc_u32 v153, s50, v152
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v159.h, v148.l
	v_mov_b16_e64 v160.h, v146.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v43, v129, v43 :: v_dual_add_nc_u32 v154, s50, v153
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v159.l, v141.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v162.h, v145.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v56, v56
	v_dual_mul_f32 v168, v131, v52 :: v_dual_add_nc_u32 v155, s50, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v164.h, v143.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v161.h, v147.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v41, v127, v41 :: v_dual_add_nc_u32 v156, s50, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v163.h, v144.l
	v_mov_b16_e64 v161.l, v141.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v170, v129, v50 :: v_dual_add_nc_u32 v157, s50, v156
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v189.h, v140.l
	v_mov_b16_e64 v140.l, v141.l
	v_mov_b16_e64 v140.h, v139.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v130, v47 :: v_dual_add_nc_u32 v158, s50, v157
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s1, s56, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v172, v127, v49 :: v_dual_add_nc_u32 v149, s50, v158
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s3, s56, 2
	s_or_b32 s6, s56, 3
	s_or_b32 s7, s56, 4
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v159, v170, v159 :: v_dual_add_nc_u32 v146, s50, v149
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s8, s56, 5
	s_or_b32 s9, s56, 6
	s_or_b32 s10, s56, 7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v178, v131, v56 :: v_dual_add_nc_u32 v145, s50, v146
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s11, s56, 8
	s_or_b32 s12, s56, 9
	s_or_b32 s13, s56, 10
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v180, v130, v55 :: v_dual_add_nc_u32 v143, s50, v145
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s14, s56, 11
	s_or_b32 s15, s56, 12
	s_or_b32 s16, s56, 13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v178, v161 :: v_dual_add_nc_u32 v144, s50, v143
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s17, s56, 14
	s_or_b32 s18, s56, 15
	s_or_b32 s19, s56, 16
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v182, v129, v54 :: v_dual_add_nc_u32 v147, s50, v144
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s20, s56, 17
	s_or_b32 s21, s56, 18
	s_or_b32 s22, s56, 19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v43, v43, v140 :: v_dual_add_nc_u32 v148, s50, v147
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s23, s56, 20
	s_or_b32 s24, s56, 21
	s_or_b32 s25, s56, 22
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v184, v127, v53 :: v_dual_add_nc_u32 v165, s50, v148
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s26, s56, 23
	s_or_b32 s27, s56, 24
	s_or_b32 s28, s56, 25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v44, v130, v44 :: v_dual_add_nc_u32 v167, s50, v165
	.loc	1 819 31                        ; attention.py:819:31
	s_or_b32 s29, s56, 26
	s_or_b32 s30, s56, 27
	s_or_b32 s31, s56, 28
	s_or_b32 s33, s56, 29
	s_or_b32 s34, s56, 30
	s_or_b32 s35, s56, 31
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_add_nc_u32_e32 v169, s50, v167
	.loc	1 892 27                        ; attention.py:892:27
	s_cmp_lt_i32 s56, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s1, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v127, v42
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s1, -1, 0
	s_cmp_lt_i32 s3, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v131, v48 :: v_dual_add_nc_u32 v171, s50, v169
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s6, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s7, s51
	v_add_nc_u32_e32 v173, s50, v171
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s8, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v163.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s9, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v129, v46
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s10, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v163, v182, v163 :: v_dual_add_nc_u32 v174, s50, v173
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s11, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v160.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s12, s51
	v_add_nc_u32_e32 v175, s50, v174
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v186.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s51
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v186.h, v142.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s51
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v136.h, v134.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v134, v172, v160
	v_dual_mul_f32 v45, v45, v186 :: v_dual_add_nc_u32 v176, s50, v175
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v150.h, v150.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s17, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v150.l, v141.l
	v_add_nc_u32_e32 v177, s50, v176
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s18, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v164.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v150, v168, v150
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s20, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v184, v164 :: v_dual_add_nc_u32 v179, s50, v177
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s21, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v162.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s21, -1, 0
	s_cmp_lt_i32 s22, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v160, v166, v141 :: v_dual_add_nc_u32 v181, s50, v179
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s23, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s24, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v162, v180, v162 :: v_dual_add_nc_u32 v183, s50, v181
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s24, -1, 0
	s_cmp_lt_i32 s25, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v139.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s25, -1, 0
	s_cmp_lt_i32 s26, s51
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v44, v44, v189 :: v_dual_add_nc_u32 v185, s50, v183
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s27, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v139.h, v138.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s28, s51
	v_add_nc_u32_e32 v187, s50, v185
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s29, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v138.h, v137.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s30, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v137.l, v141.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s31, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v137.h, v135.l
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s33, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v135.l, v141.l
	v_mov_b16_e64 v135.h, v136.l
	v_mov_b16_e64 v136.l, v141.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v42, v139
	v_add_nc_u32_e32 v188, s50, v187
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s34, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v144, 1, v144
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s35, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v142, 1, v149
	.loc	1 892 27                        ; attention.py:892:27
	s_cselect_b32 s27, -1, 0
	.loc	1 892 26 is_stmt 0              ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s74
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v50, 1, v152
	v_lshlrev_b32_e32 v49, 1, v151
	v_lshlrev_b32_e32 v53, 1, v155
	v_lshlrev_b32_e32 v54, 1, v156
	v_lshlrev_b32_e32 v156, 1, v174
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v47, v47, v137 :: v_dual_lshlrev_b32 v174, 1, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v138.l, v141.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v41, v136
	v_dual_mul_f32 v46, v46, v135 :: v_dual_add_nc_u32 v151, s50, v188
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v155, 1, v167
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v48, v138 :: v_dual_lshlrev_b32 v167, 1, v179
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v160, s71
	v_cndmask_b32_e64 v136, 0xff800000, v150, s70
	v_cndmask_b32_e64 v137, 0xff800000, v159, s72
	v_cndmask_b32_e64 v134, 0xff800000, v134, s73
	v_cndmask_b32_e64 v140, 0xff800000, v163, s68
	v_cndmask_b32_e64 v150, 0xff800000, v164, s69
	v_cndmask_b32_e64 v47, 0xff800000, v47, s59
	v_cndmask_b32_e64 v46, 0xff800000, v46, s60
	v_cndmask_b32_e64 v44, 0xff800000, v44, s62
	v_cndmask_b32_e64 v159, 0xff800000, v43, s63
	v_cndmask_b32_e64 v160, 0xff800000, v42, s64
	v_cndmask_b32_e64 v45, 0xff800000, v45, s61
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v51, 1, v153
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_lshlrev_b32 v145, 1, v145
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s75
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v146, 1, v146
	v_lshlrev_b32_e32 v55, 1, v157
	v_lshlrev_b32_e32 v157, 1, v175
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v42, v134, v137 :: v_dual_lshlrev_b32 v175, 1, v188
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v161, s66
	v_cndmask_b32_e64 v139, 0xff800000, v162, s67
	v_cndmask_b32_e64 v48, 0xff800000, v48, s58
	v_cndmask_b32_e64 v41, 0xff800000, v41, s65
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v136, v150, v140
	v_max3_f32 v161, v160, v159, v44
	v_max3_f32 v162, v45, v46, v47
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_lshlrev_b32 v52, 1, v154
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s77
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v163, v139, v138, v41
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s78
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v135, v43
	v_max3_f32 v43, v161, v162, v48
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s79
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_lshlrev_b32 v56, 1, v158
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s76
	s_and_b32 vcc_lo, s0, s81
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v143, 1, v143
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s80
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v142, 0x80000000, v142, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s12
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v163, v43
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v146, 0x80000000, v146, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v149, 0x80000000, v143, s1
	v_lshlrev_b32_e32 v143, 1, v147
	v_cndmask_b32_e32 v145, 0x80000000, v145, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s15
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v147, 0x80000000, v144, vcc_lo
	v_lshlrev_b32_e32 v144, 1, v148
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s16
	s_and_b32 s1, s0, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v152, 0x80000000, v143, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v153, 0x80000000, v144 :: v_dual_lshlrev_b32 v148, 1, v165
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v42, v133, v42, v43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v158, 1, v176
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v154, 0x80000000, v148, s1
	s_clause 0x6
	buffer_load_u16 v142, v142, s[52:55], 0 offen
	buffer_load_u16 v143, v146, s[52:55], 0 offen
	buffer_load_u16 v144, v145, s[52:55], 0 offen
	buffer_load_u16 v145, v149, s[52:55], 0 offen
	buffer_load_u16 v146, v147, s[52:55], 0 offen
	buffer_load_u16 v147, v152, s[52:55], 0 offen
	buffer_load_u16 v148, v153, s[52:55], 0 offen
	v_cndmask_b32_e32 v153, 0x80000000, v155, vcc_lo
	v_lshlrev_b32_e32 v155, 1, v173
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v43, v133, v42 :: v_dual_lshlrev_b32 v176, 1, v151
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v165, 1, v177
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v152, 1, v169
	v_cndmask_b32_e64 v155, 0x80000000, v155, s1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s1, s0, s26
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v56, v56, s[52:55], 0 offen
	buffer_load_u16 v149, v154, s[52:55], 0 offen
	v_cndmask_b32_e64 v165, 0x80000000, v165, s1
	v_lshlrev_b32_e32 v169, 1, v181
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v140, v140, v42 :: v_dual_lshlrev_b32 v173, 1, v185
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_u16 v165, v165, s[52:55], 0 offen
	v_lshlrev_b32_e32 v154, 1, v171
	v_cndmask_b32_e32 v152, 0x80000000, v152, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v136, v136, v42 :: v_dual_lshlrev_b32 v171, 1, v183
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v154, 0x80000000, v154, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s23
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v151, v151, s50, 1
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s24
	s_and_b32 s1, s0, s8
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s25
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v173, 0x80000000, v173, s1
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s11
	s_and_b32 s1, s0, s27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v167, 0x80000000, v167, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v151, 0x80000000, v151, s1
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x6
	buffer_load_u16 v49, v49, s[52:55], 0 offen
	buffer_load_u16 v50, v50, s[52:55], 0 offen
	buffer_load_u16 v51, v51, s[52:55], 0 offen
	buffer_load_u16 v52, v52, s[52:55], 0 offen
	buffer_load_u16 v53, v53, s[52:55], 0 offen
	buffer_load_u16 v54, v54, s[52:55], 0 offen
	buffer_load_u16 v55, v55, s[52:55], 0 offen
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s7
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x6
	buffer_load_u16 v153, v153, s[52:55], 0 offen
	buffer_load_u16 v152, v152, s[52:55], 0 offen
	buffer_load_u16 v154, v154, s[52:55], 0 offen
	buffer_load_u16 v155, v155, s[52:55], 0 offen
	buffer_load_u16 v156, v156, s[52:55], 0 offen
	buffer_load_u16 v157, v157, s[52:55], 0 offen
	buffer_load_u16 v158, v158, s[52:55], 0 offen
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s3
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v43, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s0, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v138, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v176, 0x80000000, v176, vcc_lo
	s_clause 0x7
	buffer_load_u16 v167, v167, s[52:55], 0 offen
	buffer_load_u16 v169, v169, s[52:55], 0 offen
	buffer_load_u16 v171, v171, s[52:55], 0 offen
	buffer_load_u16 v173, v173, s[52:55], 0 offen
	buffer_load_u16 v174, v174, s[52:55], 0 offen
	buffer_load_u16 v175, v175, s[52:55], 0 offen
	buffer_load_u16 v176, v176, s[52:55], 0 offen
	buffer_load_u16 v151, v151, s[52:55], 0 offen
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v133
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v138, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.h, v141.l
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v133, v134, v42
	v_sub_f32_e32 v134, v137, v42
	v_sub_f32_e32 v135, v135, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v41, v41, v42 :: v_dual_mul_f32 v18, v18, v43
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v134, v134
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v42 :: v_dual_mul_f32 v27, v27, v43
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v137, v150, v42 :: v_dual_mul_f32 v32, v32, v43
	v_dual_sub_f32 v150, v160, v42 :: v_dual_mul_f32 v25, v25, v43
	v_dual_sub_f32 v45, v45, v42 :: v_dual_mul_f32 v22, v22, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v41
	v_exp_f32_e32 v161, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v133, s73
	v_cndmask_b32_e64 v44, 0, v134, s72
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v162, v45
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v141.l
	v_mov_b16_e32 v45.l, v41.h
	v_mov_b16_e64 v133.l, v44.h
	v_mov_b16_e64 v133.h, v141.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v135, s71
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v139, v139, v42 :: v_dual_mul_f32 v30, v30, v43
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v10, v10, v43 :: v_dual_and_b32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v12, v12, v43 :: v_dual_and_b32 v133, 1, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v136, s70
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v134.h
	v_mov_b16_e64 v136.h, v141.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v43
	v_mul_f32_e32 v14, v14, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v41, v45, 0x7fff
	v_add3_u32 v133, v44, v133, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_mov_b16_e64 v163.l, v135.h
	v_cmp_o_f32_e64 s1, v41, v41
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v44
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s69
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v133.h, vcc_lo
	v_and_b32_e32 v133, 1, v163
	v_cndmask_b16 v136.l, 0x7fff, v45.h, s1
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v134, v135
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v134, v44, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, 0, v140, s68
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v134, v134
	v_mov_b16_e64 v134.l, v137.h
	v_mov_b16_e64 v134.h, v141.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v43 :: v_dual_add_f32 v45, v41, v45
	v_mul_f32_e32 v2, v2, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v135, v133, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_mov_b16_e64 v135.l, v140.h
	v_mov_b16_e64 v135.h, v141.l
	v_and_b32_e32 v41, 1, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v139, s67
	v_cndmask_b32_e64 v138, 0, v138, s66
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v43
	v_mul_f32_e32 v8, v8, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v163.h, 0x7fff, v133.h, vcc_lo
	v_cndmask_b16 v163.l, 0x7fff, v44.h, s1
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v133, v137, v140 :: v_dual_and_b32 v44, 1, v135
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v135, v137, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v134, v138
.Ltmp20:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v138.h
	v_mov_b16_e64 v139.h, v141.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v133, v137
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v159, v159, v42 :: v_dual_mul_f32 v20, v20, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v139, 1, v139
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v133, v45, v133
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v140, v44, 0x7fff
	v_mov_b16_e64 v44.l, v134.h
	v_mov_b16_e64 v44.h, v141.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v135.h, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v160, s65
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v46, v46, v42 :: v_dual_mul_f32 v29, v29, v43
	v_dual_sub_f32 v47, v47, v42 :: v_dual_mul_f32 v24, v24, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v135, v134, v44, 0x7fff
	v_add3_u32 v44, v138, v139, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v150, s64
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v42 :: v_dual_mul_f32 v31, v31, v43
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_cmp_o_f32_e64 s1, v134, v134
	v_mov_b16_e64 v134.l, v137.h
	v_mov_b16_e64 v134.h, v141.l
	v_mov_b16_e64 v138.l, v139.h
	v_mov_b16_e64 v138.h, v141.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v134
	v_and_b32_e32 v134, 1, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v159, s63
	v_cndmask_b32_e64 v150, 0, v161, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.l, 0x7fff, v135.h, s1
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v137, v139
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v137, v45, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v138, v150
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_add3_u32 v45, v139, v134, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_mov_b16_e64 v134.l, v138.h
	v_mov_b16_e64 v134.h, v141.l
	v_mov_b16_e64 v139.l, v150.h
	v_mov_b16_e64 v139.h, v141.l
	v_cndmask_b16 v45.l, 0x7fff, v140.h, s1
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v135, v137
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v162, s61
	v_cndmask_b32_e64 v46, 0, v46, s60
	v_cndmask_b32_e64 v140, 0, v48, s58
	v_cndmask_b32_e64 v47, 0, v47, s59
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v23, v23, v43 :: v_dual_and_b32 v134, 1, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v139, 1, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v43 :: v_dual_add_f32 v48, v137, v46
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v47, v140
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v134, v138, v134, 0x7fff
	v_add3_u32 v139, v150, v139, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_cmp_o_f32_e64 s1, v138, v138
	v_mov_b16_e64 v150.l, v46.h
	v_mov_b16_e64 v150.h, v141.l
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v48, v159
.Ltmp34:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v200.l, 0x7fff, v134.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v15, v15, v43 :: v_dual_and_b32 v134, 1, v150
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v135, v48
.Ltmp36:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v48, v114, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v134, v46, v134, 0x7fff
	v_mov_b16_e64 v150.l, v47.h
	v_mov_b16_e64 v138.h, v141.l
	v_cndmask_b16 v200.h, 0x7fff, v139.h, vcc_lo
	v_mov_b16_e64 v139.h, v141.l
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v141, 1, v150
	v_mov_b16_e64 v139.l, v140.h
	v_cmp_o_f32_e64 s6, v47, v47
	v_cmp_o_f32_e64 s3, v140, v140
	v_mov_b16_e64 v138.l, v137.h
	v_add3_u32 v46, v47, v141, 0x7fff
	v_and_b32_e32 v139, 1, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v137, v137
	v_and_b32_e32 v138, 1, v138
	v_cndmask_b16 v204.l, 0x7fff, v46.h, s6
	v_permlanex16_b32 v162, v41, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v44, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v137, v138, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v162, v41, v126
	v_perm_b32 v162, v162, v41, v128
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v198, v45, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v201, v200, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s56, s56, 32
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(21)
	ds_store_b16 v48, v49
	s_waitcnt vmcnt(20)
	ds_store_b16 v48, v50 offset:128
	s_waitcnt vmcnt(19)
	ds_store_b16 v48, v51 offset:256
	s_waitcnt vmcnt(18)
	ds_store_b16 v48, v52 offset:384
	s_waitcnt vmcnt(17)
	ds_store_b16 v48, v53 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b16 v48, v54 offset:640
	s_waitcnt vmcnt(15)
	ds_store_b16 v48, v55 offset:768
	ds_store_b16 v48, v56 offset:896
	ds_store_b16 v48, v142 offset:1024
	ds_store_b16 v48, v143 offset:1152
	ds_store_b16 v48, v144 offset:1280
	ds_store_b16 v48, v145 offset:1408
	ds_store_b16 v48, v146 offset:1536
	ds_store_b16 v48, v147 offset:1664
	ds_store_b16 v48, v148 offset:1792
	ds_store_b16 v48, v149 offset:1920
	s_waitcnt vmcnt(14)
	ds_store_b16 v48, v153 offset:2048
	s_waitcnt vmcnt(13)
	ds_store_b16 v48, v152 offset:2176
	s_waitcnt vmcnt(12)
	ds_store_b16 v48, v154 offset:2304
	s_waitcnt vmcnt(11)
	ds_store_b16 v48, v155 offset:2432
	s_waitcnt vmcnt(10)
	ds_store_b16 v48, v156 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b16 v48, v157 offset:2688
	s_waitcnt vmcnt(8)
	ds_store_b16 v48, v158 offset:2816
	ds_store_b16 v48, v165 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v48, v167 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v48, v169 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v48, v171 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v48, v173 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v48, v174 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v48, v175 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v48, v176 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v48, v151 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v48, v119 offset:512
	ds_load_u16_d16 v134, v119 offset:288
	ds_load_u16_d16 v143, v119 offset:608
	ds_load_u16_d16 v142, v119 offset:352
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v54, v133, v135
.Ltmp38:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v46, v119
	ds_load_u16_d16 v133, v119 offset:32
	ds_load_u16_d16 v151, v119 offset:576
	ds_load_u16_d16 v47, v119 offset:256
	ds_load_u16_d16 v149, v119 offset:64
	ds_load_u16_d16 v150, v119 offset:320
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v142, v119 offset:480
	ds_load_u16_d16 v141, v119 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v140, v139, 0x7fff
	v_permlanex16_b32 v50, v163, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v55.h, 0x7fff, v134.h, vcc_lo
	v_cndmask_b16 v55.l, 0x7fff, v138.h, s1
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v56, v54, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v204.h, 0x7fff, v49.h, s3
	v_permlanex16_b32 v49, v136, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v159, v50, v163, v126
	v_perm_b32 v160, v50, v163, v128
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v54, v56
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v202, v55, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v157, v49, v136, v126
	v_perm_b32 v158, v49, v136, v128
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v49, v119 offset:768
	ds_load_u16_d16 v152, v119 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v119 offset:704
	ds_load_u16_d16 v135, v119 offset:544
	ds_load_u16_d16_hi v46, v119 offset:128
	ds_load_u16_d16_hi v133, v119 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v149, v119 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v141, v119 offset:224
	ds_load_u16_d16_hi v48, v119 offset:640
	ds_load_u16_d16_hi v47, v119 offset:384
	ds_load_u16_d16_hi v134, v119 offset:416
	ds_load_u16_d16_hi v150, v119 offset:448
	ds_load_u16_d16 v153, v119 offset:1088
	ds_load_u16_d16 v154, v119 offset:1344
	ds_load_u16_d16 v155, v119 offset:1600
	ds_load_u16_d16 v156, v119 offset:1856
	ds_load_u16_d16 v165, v119 offset:2112
	ds_load_u16_d16 v167, v119 offset:2624
	ds_load_u16_d16 v168, v119 offset:2880
	ds_load_u16_d16 v169, v119 offset:3136
	ds_load_u16_d16 v170, v119 offset:3392
	ds_load_u16_d16 v171, v119 offset:3648
	ds_load_u16_d16 v172, v119 offset:3904
	ds_load_u16_d16 v50, v119 offset:1024
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v49, v119 offset:896
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v135, v119 offset:672
	ds_load_u16_d16 v136, v119 offset:800
	ds_load_u16_d16_hi v152, v119 offset:960
	ds_load_u16_d16 v144, v119 offset:864
	ds_load_u16_d16_hi v143, v119 offset:736
	ds_load_u16_d16 v51, v119 offset:1280
	ds_load_u16_d16 v137, v119 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v153, v119 offset:1216
	ds_load_u16_d16 v145, v119 offset:1120
	ds_load_u16_d16 v52, v119 offset:1536
	ds_load_u16_d16 v138, v119 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v154, v119 offset:1472
	ds_load_u16_d16 v146, v119 offset:1376
	ds_load_u16_d16 v53, v119 offset:1792
	ds_load_u16_d16 v139, v119 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v155, v119 offset:1728
	ds_load_u16_d16 v147, v119 offset:1632
	ds_load_u16_d16 v173, v119 offset:2048
	ds_load_u16_d16 v140, v119 offset:1824
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v156, v119 offset:1984
	ds_load_u16_d16 v148, v119 offset:1888
	ds_load_u16_d16 v174, v119 offset:2304
	ds_load_u16_d16 v181, v119 offset:2080
	ds_load_u16_d16 v166, v119 offset:2368
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v165, v119 offset:2240
	ds_load_u16_d16 v189, v119 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v50, v119 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v136, v119 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v144, v119 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v51, v119 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v119 offset:1184
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v145, v119 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v52, v119 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v138, v119 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v146, v119 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v53, v119 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v139, v119 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v147, v119 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v173, v119 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v140, v119 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v148, v119 offset:2016
	ds_load_u16_d16 v175, v119 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v174, v119 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v181, v119 offset:2208
	ds_load_u16_d16 v182, v119 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v166, v119 offset:2496
	ds_load_u16_d16 v190, v119 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v189, v119 offset:2272
	ds_load_u16_d16 v176, v119 offset:2816
	ds_load_u16_d16 v183, v119 offset:2592
	ds_load_u16_d16_hi v167, v119 offset:2752
	ds_load_u16_d16 v191, v119 offset:2656
	ds_load_u16_d16 v177, v119 offset:3072
	ds_load_u16_d16 v184, v119 offset:2848
	ds_load_u16_d16_hi v168, v119 offset:3008
	ds_load_u16_d16 v192, v119 offset:2912
	ds_load_u16_d16 v178, v119 offset:3328
	ds_load_u16_d16 v185, v119 offset:3104
	ds_load_u16_d16_hi v169, v119 offset:3264
	ds_load_u16_d16 v193, v119 offset:3168
	ds_load_u16_d16 v179, v119 offset:3584
	ds_load_u16_d16 v186, v119 offset:3360
	ds_load_u16_d16_hi v170, v119 offset:3520
	ds_load_u16_d16 v194, v119 offset:3424
	ds_load_u16_d16 v180, v119 offset:3840
	ds_load_u16_d16 v187, v119 offset:3616
	ds_load_u16_d16_hi v171, v119 offset:3776
	ds_load_u16_d16 v195, v119 offset:3680
	ds_load_u16_d16 v188, v119 offset:3872
	ds_load_u16_d16_hi v172, v119 offset:4032
	ds_load_u16_d16 v196, v119 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v175, v119 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v182, v119 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v190, v119 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v176, v119 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v183, v119 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v191, v119 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v177, v119 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v184, v119 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v192, v119 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v178, v119 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v185, v119 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v193, v119 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v179, v119 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v186, v119 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v194, v119 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v180, v119 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v187, v119 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v195, v119 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v188, v119 offset:4000
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v205, v204, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v196, v119 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v164, v44, v126
	v_perm_b32 v164, v164, v44, v128
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v41, v132, v43
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v197, v198, v45, v126
	v_perm_b32 v198, v198, v45, v128
	v_perm_b32 v199, v201, v200, v126
	v_perm_b32 v200, v201, v200, v128
	v_perm_b32 v201, v202, v55, v126
	v_perm_b32 v202, v202, v55, v128
	v_perm_b32 v203, v205, v204, v126
	v_perm_b32 v204, v205, v204, v128
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[46:53], v[157:164], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[133:140], v[157:164], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[149:156], v[157:164], v[9:16]
	v_mov_b32_e32 v132, v41
	v_wmma_f32_16x16x16_bf16 v[1:8], v[141:148], v[157:164], v[1:8]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[173:180], v[197:204], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[181:188], v[197:204], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[165:172], v[197:204], v[9:16]
	v_mov_b32_e32 v133, v42
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[189:196], v[197:204], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s56, s57
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v41, s56, v94
	v_or_b32_e32 v42, s56, v95
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s74, s56, s48
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v43, s56, v96
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s1, s74, s46
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s51, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v44, s56, v97
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v134, s1, v57
	v_add_nc_u32_e32 v135, s1, v110
	v_add_nc_u32_e32 v136, s1, v111
	v_add_nc_u32_e32 v137, s1, v58
	v_add_nc_u32_e32 v138, s1, v112
	v_add_nc_u32_e32 v139, s1, v59
	v_add_nc_u32_e32 v140, s1, v60
	v_add_nc_u32_e32 v141, s1, v61
	v_add_nc_u32_e32 v142, s1, v113
	v_add_nc_u32_e32 v143, s1, v62
	v_add_nc_u32_e32 v144, s1, v63
	v_add_nc_u32_e32 v145, s1, v64
	v_add_nc_u32_e32 v146, s1, v65
	v_add_nc_u32_e32 v147, s1, v66
	v_add_nc_u32_e32 v148, s1, v67
	v_add_nc_u32_e32 v149, s1, v68
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s51, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v45, s56, v98
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s51, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v46, s56, v99
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s51, v44
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v47, s56, v100
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v41, 0x80000000, v134, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s51, v45
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s56, v102
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v42, 0x80000000, v135, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s3
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s51, v46
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s56, v103
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v43, 0x80000000, v136, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s51, v47
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s56, v104
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v44, 0x80000000, v137, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s7
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s51, v49
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s56, v105
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v45, 0x80000000, v138, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v48, s56, v101
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s51, v50
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v46, 0x80000000, v139, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s9
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s51, v51
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s56, v106
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v47, 0x80000000, v140, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s11
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s51, v52
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s56, v107
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s51, v48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v48, 0x80000000, v142, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s12
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v55, s56, v108
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v49, 0x80000000, v143, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s13
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s51, v53
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v56, s56, v109
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v50, 0x80000000, v144, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s14
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s51, v54
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v51, 0x80000000, v145, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s10
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s51, v55
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v52, 0x80000000, v141, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s15
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s51, v56
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v53, 0x80000000, v146, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s16
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v41, v41, s[36:39], 0 offen
	buffer_load_u8 v42, v42, s[36:39], 0 offen
	buffer_load_u8 v43, v43, s[36:39], 0 offen
	buffer_load_u8 v44, v44, s[36:39], 0 offen
	buffer_load_u8 v45, v45, s[36:39], 0 offen
	buffer_load_u8 v46, v46, s[36:39], 0 offen
	v_cndmask_b32_e32 v54, 0x80000000, v147, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s17
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x3
	buffer_load_u8 v48, v48, s[36:39], 0 offen
	buffer_load_u8 v49, v49, s[36:39], 0 offen
	buffer_load_u8 v50, v50, s[36:39], 0 offen
	buffer_load_u8 v51, v51, s[36:39], 0 offen
	v_cndmask_b32_e32 v55, 0x80000000, v148, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s5, s18
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v141, s56, v91
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v56, 0x80000000, v149, vcc_lo
	s_clause 0x5
	buffer_load_u8 v53, v53, s[36:39], 0 offen
	buffer_load_u8 v54, v54, s[36:39], 0 offen
	buffer_load_u8 v47, v47, s[36:39], 0 offen
	buffer_load_u8 v52, v52, s[36:39], 0 offen
	buffer_load_u8 v55, v55, s[36:39], 0 offen
	buffer_load_u8 v56, v56, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v151, s56, v92
	v_or_b32_e32 v152, s56, v90
	v_or_b32_e32 v153, s56, v89
	v_or_b32_e32 v154, s56, v88
	v_or_b32_e32 v155, s56, v87
	v_or_b32_e32 v156, s56, v86
	v_or_b32_e32 v157, s56, v85
	v_or_b32_e32 v158, s56, v84
	v_or_b32_e32 v159, s56, v83
	v_or_b32_e32 v160, s56, v82
	v_or_b32_e32 v161, s56, v80
	v_or_b32_e32 v162, s56, v81
	v_or_b32_e32 v163, s56, v79
	v_or_b32_e32 v164, s56, v78
	v_or_b32_e32 v165, s56, v77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s3, s51, v153
	v_cmp_gt_i32_e64 s6, s51, v152
	v_cmp_gt_i32_e64 s7, s51, v151
	v_cmp_gt_i32_e64 s12, s51, v141
	v_cmp_gt_i32_e64 s1, s51, v157
	v_cmp_gt_i32_e64 s17, s51, v156
	v_cmp_gt_i32_e64 s18, s51, v155
	v_cmp_gt_i32_e64 s19, s51, v154
	v_cmp_gt_i32_e64 s8, s51, v162
	v_cmp_gt_i32_e64 s13, s51, v161
	v_cmp_gt_i32_e64 s15, s51, v160
	v_cmp_gt_i32_e64 s16, s51, v159
	v_cmp_gt_i32_e64 s9, s51, v165
	v_cmp_gt_i32_e64 s14, s51, v164
	v_cmp_gt_i32_e64 s11, s51, v163
	v_cmp_gt_i32_e64 s10, s51, v158
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s73, s2, s12
	s_and_b32 s72, s2, s7
	s_and_b32 s71, s2, s6
	s_and_b32 s70, s2, s3
	s_and_b32 s69, s2, s19
	s_and_b32 s68, s2, s18
	s_and_b32 s67, s2, s17
	s_and_b32 s66, s2, s1
	s_and_b32 s65, s2, s10
	s_and_b32 s64, s2, s16
	s_and_b32 s63, s2, s15
	s_and_b32 s62, s2, s13
	s_and_b32 s61, s2, s8
	s_and_b32 s60, s2, s11
	s_and_b32 s59, s2, s14
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s58, s2, s9
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v114, v41
	s_waitcnt vmcnt(14)
	ds_store_b8 v114, v42 offset:64
	s_waitcnt vmcnt(9)
	ds_store_b8 v114, v48 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v114, v49 offset:576
	ds_store_b8 v115, v43
	ds_store_b8 v115, v44 offset:64
	s_waitcnt vmcnt(7)
	ds_store_b8 v115, v50 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v115, v51 offset:576
	ds_store_b8 v116, v45
	ds_store_b8 v116, v46 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v116, v53 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v116, v54 offset:576
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v47
	s_waitcnt vmcnt(2)
	ds_store_b8 v117, v52 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v117, v55 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v117, v56 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[134:137], v122 offset1:1
	ds_load_2addr_stride64_b64 v[142:145], v123 offset1:1
	ds_load_2addr_stride64_b64 v[146:149], v124 offset1:1
	ds_load_2addr_stride64_b64 v[166:169], v125 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[134:135], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[136:137], v[69:70], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[142:143], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[144:145], v[71:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[146:147], v[73:74], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[148:149], v[73:74], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[166:167], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[75:76], v[41:48] neg_lo:[1,1,0]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v151, v118
	v_cmp_le_i32_e64 s21, v152, v118
	v_cmp_le_i32_e64 s22, v153, v118
	v_cmp_le_i32_e64 s23, v154, v118
	v_cmp_le_i32_e64 s24, v155, v118
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s20, s20, s72
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v156, v118
	v_cmp_le_i32_e64 s26, v157, v118
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s71
	s_and_b32 s22, s22, s70
	s_and_not1_b32 s72, s72, exec_lo
	s_and_b32 s20, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v158, v118
	v_cmp_le_i32_e64 s28, v159, v118
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s69
	s_and_b32 s24, s24, s68
	s_or_b32 s72, s72, s20
	s_and_not1_b32 s20, s71, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s70, s70, exec_lo
	s_and_b32 s22, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v160, v118
	v_cmp_le_i32_e64 s30, v161, v118
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s67
	s_and_b32 s26, s26, s66
	s_or_b32 s71, s20, s21
	s_or_b32 s70, s70, s22
	s_and_not1_b32 s20, s69, exec_lo
	s_and_b32 s21, s23, exec_lo
	s_and_not1_b32 s22, s68, exec_lo
	s_and_b32 s23, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v162, v118
	v_cmp_le_i32_e64 s33, v163, v118
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s65
	s_and_b32 s28, s28, s64
	s_or_b32 s69, s20, s21
	s_or_b32 s68, s22, s23
	s_and_not1_b32 s20, s67, exec_lo
	s_and_b32 s21, s25, exec_lo
	s_and_not1_b32 s22, s66, exec_lo
	s_and_b32 s23, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v141, v118
	v_cmp_le_i32_e64 s34, v164, v118
	v_cmp_le_i32_e64 s35, v165, v118
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s63
	s_and_b32 s30, s30, s62
	s_or_b32 s67, s20, s21
	s_or_b32 s66, s22, s23
	s_and_not1_b32 s20, s65, exec_lo
	s_and_b32 s21, s27, exec_lo
	s_and_not1_b32 s22, s64, exec_lo
	s_and_b32 s23, s28, exec_lo
	s_and_b32 s31, s31, s61
	s_and_b32 s33, s33, s60
	s_or_b32 s65, s20, s21
	s_or_b32 s64, s22, s23
	s_and_not1_b32 s20, s63, exec_lo
	s_and_b32 s21, s29, exec_lo
	s_and_not1_b32 s22, s62, exec_lo
	s_and_b32 s23, s30, exec_lo
	s_and_b32 s75, vcc_lo, s73
	s_and_b32 s34, s34, s59
	s_and_b32 s35, s35, s58
	s_or_b32 s63, s20, s21
	s_or_b32 s62, s22, s23
	s_and_not1_b32 s20, s61, exec_lo
	s_and_b32 s21, s31, exec_lo
	s_and_not1_b32 s22, s60, exec_lo
	s_and_b32 s23, s33, exec_lo
	s_and_not1_b32 s73, s73, exec_lo
	s_and_b32 s75, s75, exec_lo
	s_or_b32 s61, s20, s21
	s_or_b32 s60, s22, s23
	s_and_not1_b32 s20, s59, exec_lo
	s_and_b32 s21, s34, exec_lo
	s_and_not1_b32 s22, s58, exec_lo
	s_and_b32 s23, s35, exec_lo
	s_or_b32 s73, s73, s75
	s_or_b32 s59, s20, s21
	s_or_b32 s58, s22, s23
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v134, s74, v91, 1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s47
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_add_nc_u32_e32 v135, 4, v134
	v_add_nc_u32_e32 v136, 8, v134
	v_add_nc_u32_e32 v137, 12, v134
	v_add_nc_u32_e32 v138, 16, v134
	v_add_nc_u32_e32 v139, 20, v134
	v_add_nc_u32_e32 v140, 24, v134
	v_add_nc_u32_e32 v142, 28, v134
	v_add_nc_u32_e32 v166, 32, v134
	v_add_nc_u32_e32 v167, 36, v134
	v_add_nc_u32_e32 v168, 40, v134
	v_add_nc_u32_e32 v169, 44, v134
	v_add_nc_u32_e32 v170, 48, v134
	v_add_nc_u32_e32 v171, 52, v134
	v_add_nc_u32_e32 v172, 56, v134
	v_add_nc_u32_e32 v173, 60, v134
	v_cndmask_b32_e64 v134, 0x80000000, v134, s12
	v_cndmask_b32_e64 v135, 0x80000000, v135, s7
	v_cndmask_b32_e64 v136, 0x80000000, v136, s6
	v_cndmask_b32_e64 v137, 0x80000000, v137, s3
	v_cndmask_b32_e64 v138, 0x80000000, v138, s19
	v_cndmask_b32_e64 v139, 0x80000000, v139, s18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s17
	v_cndmask_b32_e64 v142, 0x80000000, v142, s1
	s_clause 0x7
	buffer_load_u16 v146, v134, s[40:43], 0 offen
	buffer_load_u16 v148, v135, s[40:43], 0 offen
	buffer_load_u16 v149, v136, s[40:43], 0 offen
	buffer_load_u16 v150, v137, s[40:43], 0 offen
	buffer_load_u16 v143, v138, s[40:43], 0 offen
	buffer_load_u16 v144, v139, s[40:43], 0 offen
	buffer_load_u16 v145, v140, s[40:43], 0 offen
	buffer_load_u16 v147, v142, s[40:43], 0 offen
	v_cndmask_b32_e64 v134, 0x80000000, v167, s16
	v_cndmask_b32_e64 v135, 0x80000000, v168, s15
	v_cndmask_b32_e64 v136, 0x80000000, v169, s13
	v_cndmask_b32_e64 v137, 0x80000000, v170, s8
	v_cndmask_b32_e64 v167, 0x80000000, v172, s14
	v_cndmask_b32_e64 v168, 0x80000000, v173, s9
	v_cndmask_b32_e64 v169, 0x80000000, v171, s11
	v_cndmask_b32_e64 v166, 0x80000000, v166, s10
	s_clause 0x7
	buffer_load_u16 v138, v134, s[40:43], 0 offen
	buffer_load_u16 v139, v135, s[40:43], 0 offen
	buffer_load_u16 v140, v136, s[40:43], 0 offen
	buffer_load_u16 v142, v137, s[40:43], 0 offen
	buffer_load_u16 v135, v167, s[40:43], 0 offen
	buffer_load_u16 v137, v168, s[40:43], 0 offen
	buffer_load_u16 v136, v169, s[40:43], 0 offen
	buffer_load_u16 v134, v166, s[40:43], 0 offen
	.loc	1 865 17                        ; attention.py:865:17
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v141, v120
	v_cmp_ge_i32_e64 s1, v151, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v141, v121
	v_cmp_le_i32_e64 s20, v151, v121
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v152, v120
	v_cmp_ge_i32_e64 s6, v153, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v152, v121
	v_cmp_le_i32_e64 s22, v153, v121
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v154, v120
	v_cmp_ge_i32_e64 s8, v155, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v154, v121
	v_cmp_le_i32_e64 s24, v155, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s1, s1, s20
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v156, v120
	v_cmp_ge_i32_e64 s10, v157, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v156, v121
	v_cmp_le_i32_e64 s26, v157, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s6, s6, s22
	s_and_b32 s3, s3, s21
	s_and_b32 s19, s19, s73
	s_and_b32 s1, s1, s72
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v158, v120
	v_cmp_ge_i32_e64 s12, v159, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v158, v121
	v_cmp_le_i32_e64 s28, v159, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s3, s3, s71
	s_and_b32 s6, s6, s70
	s_and_b32 s7, s7, s23
	s_and_b32 s8, s8, s24
	s_and_not1_b32 s20, s73, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s72, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v160, v120
	v_cmp_ge_i32_e64 s14, v161, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v160, v121
	v_cmp_le_i32_e64 s30, v161, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s26
	s_and_b32 s9, s9, s25
	s_and_b32 s7, s7, s69
	s_and_b32 s8, s8, s68
	s_or_b32 s73, s20, s19
	s_or_b32 s72, s21, s1
	s_and_not1_b32 s1, s71, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s19, s70, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v162, v120
	v_cmp_ge_i32_e64 s16, v163, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v162, v121
	v_cmp_le_i32_e64 s33, v163, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s9, s9, s67
	s_and_b32 s10, s10, s66
	s_and_b32 s12, s12, s28
	s_and_b32 s11, s11, s27
	s_or_b32 s71, s1, s3
	s_or_b32 s70, s19, s6
	s_and_not1_b32 s1, s69, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s68, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v164, v120
	v_cmp_ge_i32_e64 s18, v165, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v164, v121
	v_cmp_le_i32_e64 s35, v165, v121
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s30
	s_and_b32 s13, s13, s29
	s_and_b32 s12, s12, s64
	s_and_b32 s11, s11, s65
	s_or_b32 s69, s1, s3
	s_or_b32 s68, s6, s7
	s_and_not1_b32 s1, s67, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s66, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_and_b32 s13, s13, s63
	s_and_b32 s15, s15, s31
	s_and_b32 s14, s14, s62
	s_and_b32 s16, s16, s33
	s_or_b32 s67, s1, s3
	s_or_b32 s66, s6, s7
	s_and_not1_b32 s1, s65, exec_lo
	s_and_b32 s3, s11, exec_lo
	s_and_not1_b32 s6, s64, exec_lo
	s_and_b32 s7, s12, exec_lo
	s_and_b32 s15, s15, s61
	s_and_b32 s18, s18, s35
	s_and_b32 s17, s17, s34
	s_and_b32 s16, s16, s60
	s_or_b32 s65, s1, s3
	s_or_b32 s64, s6, s7
	s_and_not1_b32 s1, s63, exec_lo
	s_and_b32 s3, s13, exec_lo
	s_and_not1_b32 s6, s62, exec_lo
	s_and_b32 s7, s14, exec_lo
	s_and_b32 s17, s17, s59
	s_and_b32 s18, s18, s58
	s_or_b32 s63, s1, s3
	s_or_b32 s62, s6, s7
	s_and_not1_b32 s1, s61, exec_lo
	s_and_b32 s3, s15, exec_lo
	s_and_not1_b32 s6, s60, exec_lo
	s_and_b32 s7, s16, exec_lo
	s_or_b32 s61, s1, s3
	s_or_b32 s60, s6, s7
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s3, s17, exec_lo
	s_and_not1_b32 s6, s58, exec_lo
	s_and_b32 s7, s18, exec_lo
	s_or_b32 s59, s1, s3
	s_or_b32 s58, s6, s7
	s_branch .LBB0_6
.LBB0_11:                               ; %Flow258
	.loc	1 0 21                          ; attention.py:0:21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v33, null, v41, v41, v25
	v_div_scale_f32 v34, null, v41, v41, v26
	v_div_scale_f32 v35, null, v41, v41, v27
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v41, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v41, v26
	v_div_scale_f32 v44, null, v41, v41, v28
	v_div_scale_f32 v50, s3, v28, v41, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v33, v36, 1.0
	v_fma_f32 v43, -v34, v37, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v35, v38, 1.0
	s_mov_b32 s47, 0x31027000
	v_dual_fmac_f32 v36, v42, v36 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v42, s1, v27, v41, v27
	v_dual_fmac_f32 v38, v45, v38 :: v_dual_mul_f32 v45, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v46, v40, v37
	v_rcp_f32_e32 v43, v44
	s_mov_b32 s46, 0x7ffffffe
	v_mul_f32_e32 v47, v42, v38
	v_fma_f32 v48, -v33, v45, v39
	v_fma_f32 v49, -v34, v46, v40
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s50, v88
	v_cmp_gt_i32_e64 s7, s50, v87
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v35, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v48, v36 :: v_dual_fmac_f32 v46, v49, v37
	v_div_scale_f32 v48, null, v41, v41, v29
	v_fma_f32 v51, -v44, v43, 1.0
	v_fma_f32 v33, -v33, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v46, v40
	v_rcp_f32_e32 v39, v48
	v_div_scale_f32 v40, null, v41, v41, v30
	v_fmac_f32_e32 v43, v51, v43
	v_div_fmas_f32 v33, v33, v36, v45
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v40
	v_dual_fmac_f32 v47, v52, v38 :: v_dual_mul_f32 v36, v50, v43
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v37, -v48, v39, 1.0
	v_div_fixup_f32 v25, v33, v41, v25
	v_div_scale_f32 v46, null, v41, v41, v32
	v_fma_f32 v33, -v44, v36, v50
	v_div_fixup_f32 v26, v34, v41, v26
	v_fma_f32 v34, -v35, v47, v42
	v_fmac_f32_e32 v39, v37, v39
	v_fma_f32 v35, -v40, v45, 1.0
	v_div_scale_f32 v37, null, v41, v41, v31
	v_fmac_f32_e32 v36, v33, v43
	v_div_scale_f32 v33, s4, v29, v41, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v35, v45
	v_rcp_f32_e32 v35, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v49, v46
	v_div_fmas_f32 v34, v34, v38, v47
	v_fma_f32 v38, -v44, v36, v50
	v_div_scale_f32 v44, s1, v30, v41, v30
	v_mul_f32_e32 v42, v33, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v34, v41, v27
	v_div_fmas_f32 v36, v38, v43, v36
	v_mul_f32_e32 v43, v44, v45
	v_fma_f32 v38, -v48, v42, v33
	v_fma_f32 v47, -v37, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v36, v41, v28
	v_fma_f32 v34, -v40, v43, v44
	v_div_scale_f32 v36, s3, v31, v41, v31
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v47, -v46, v49, 1.0
	v_fmac_f32_e32 v42, v38, v39
	v_div_scale_f32 v38, null, v41, v41, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v34, v45 :: v_dual_mul_f32 v34, v36, v35
	v_fmac_f32_e32 v49, v47, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v48, v42, v33
	v_rcp_f32_e32 v48, v38
	v_div_scale_f32 v47, s5, v32, v41, v32
	v_div_scale_f32 v50, null, v41, v41, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v33, v39, v42
	v_fma_f32 v39, -v40, v43, v44
	v_fma_f32 v40, -v37, v34, v36
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v47, v49
	v_fma_f32 v44, -v38, v48, 1.0
	v_div_fixup_f32 v29, v33, v41, v29
	v_fmac_f32_e32 v34, v40, v35
	v_div_fmas_f32 v39, v39, v45, v43
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v44, s1, v17, v41, v17
	v_fma_f32 v33, -v37, v34, v36
	v_div_scale_f32 v45, null, v41, v41, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v44, v48
	v_rcp_f32_e32 v40, v50
	v_div_fmas_f32 v33, v33, v35, v34
	v_fma_f32 v43, -v46, v42, v47
	v_div_fixup_f32 v30, v39, v41, v30
	v_fma_f32 v35, -v38, v36, v44
	v_div_scale_f32 v39, null, v41, v41, v19
	v_div_fixup_f32 v31, v33, v41, v31
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v36, v35, v48
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v37, -v50, v40, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v41
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s50, v86
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v38, v36, v44
	v_div_scale_f32 v38, s4, v19, v41, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v45, v35, 1.0
	v_fmac_f32_e32 v42, v43, v49
	v_div_scale_f32 v43, s3, v18, v41, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v34, -v46, v42, v47
	v_div_scale_f32 v47, null, v41, v41, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s50, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v49, v42
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v40, v37, v40
	v_rcp_f32_e32 v37, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v34, v41, v32
	v_div_fmas_f32 v33, v33, v48, v36
	v_mul_f32_e32 v42, v43, v40
	v_div_scale_f32 v44, s1, v20, v41, v20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v33, v41, v17
	v_fma_f32 v34, -v50, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v39, v37, 1.0
	v_mul_f32_e32 v48, v44, v35
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v34, v40
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v41, v41, v21
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s50, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v50, v42, v43
	v_mul_f32_e32 v34, v38, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v46
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s50, v83
	v_cmp_gt_i32_e64 s12, s50, v82
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v43, -v39, v34, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s50, v80
	v_cmp_gt_i32_e64 s14, s50, v81
	v_cmp_gt_i32_e64 s15, s50, v79
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v43, v37
	v_fma_f32 v43, -v47, v49, 1.0
	v_fma_f32 v50, -v46, v36, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s50, v78
	v_cmp_gt_i32_e64 s17, s50, v77
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v43, v49
	v_div_fmas_f32 v33, v33, v40, v42
	v_fma_f32 v40, -v45, v48, v44
	v_fmac_f32_e32 v36, v50, v36
	v_div_scale_f32 v42, s3, v21, v41, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v33, v41, v18
	v_fma_f32 v33, -v39, v34, v38
	v_fmac_f32_e32 v48, v40, v35
	v_div_scale_f32 v40, null, v41, v41, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v42, v36
	v_div_scale_f32 v39, s5, v22, v41, v22
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v34, -v45, v48, v44
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v45, null, v41, v41, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v46, v38, v42
	v_mul_f32_e32 v44, v39, v49
	v_div_fmas_f32 v34, v34, v35, v48
	v_rcp_f32_e32 v35, v45
	v_div_fixup_f32 v19, v33, v41, v19
	v_fmac_f32_e32 v38, v37, v36
	v_fma_f32 v37, -v47, v44, v39
	v_fma_f32 v48, -v40, v43, 1.0
	v_div_fixup_f32 v20, v34, v41, v20
	v_div_scale_f32 v34, s1, v23, v41, v23
	v_fma_f32 v33, -v46, v38, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v44, v37, v49 :: v_dual_fmac_f32 v43, v48, v43
	v_fma_f32 v37, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v38
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v38, v34, v43
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, null, v41, v41, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s3, v24, v41, v24
	v_div_fmas_f32 v36, v36, v49, v44
	v_rcp_f32_e32 v42, v37
	v_fma_f32 v44, -v40, v38, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v39, v35
	v_div_scale_f32 v47, null, v41, v41, v10
	v_div_fixup_f32 v21, v33, v41, v21
	v_fmac_f32_e32 v38, v44, v43
	v_div_fixup_f32 v22, v36, v41, v22
	v_fma_f32 v33, -v45, v46, v39
	v_rcp_f32_e32 v36, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v37, v42, 1.0
	v_fma_f32 v34, -v40, v38, v34
	v_div_scale_f32 v40, null, v41, v41, v11
	v_fmac_f32_e32 v46, v33, v35
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v33, s4, v9, v41, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v40
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v48, -v47, v36, 1.0
	v_div_fmas_f32 v34, v34, v43, v38
	v_fma_f32 v38, -v45, v46, v39
	v_mul_f32_e32 v39, v33, v42
	v_div_scale_f32 v43, s1, v10, v41, v10
	v_fmac_f32_e32 v36, v48, v36
	v_div_scale_f32 v49, null, v41, v41, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v40, v44, 1.0
	v_fma_f32 v48, -v37, v39, v33
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v50, v43, v36
	v_rcp_f32_e32 v51, v49
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v11, v41, v11
	v_div_fmas_f32 v35, v38, v35, v46
	v_fmac_f32_e32 v39, v48, v42
	v_fma_f32 v38, -v47, v50, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v46, v45, v44
	v_div_fixup_f32 v23, v34, v41, v23
	v_div_fixup_f32 v24, v35, v41, v24
	v_fma_f32 v33, -v37, v39, v33
	v_div_scale_f32 v37, null, v41, v41, v13
	v_fma_f32 v34, -v40, v46, v45
	v_fmac_f32_e32 v50, v38, v36
	v_fma_f32 v35, -v49, v51, 1.0
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v34, v44
	v_rcp_f32_e32 v34, v37
	v_fma_f32 v38, -v47, v50, v43
	v_fmac_f32_e32 v51, v35, v51
	v_div_scale_f32 v35, s3, v12, v41, v12
	v_div_fmas_f32 v33, v33, v42, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v38, v36, v50
	v_fma_f32 v38, -v40, v46, v45
	v_mul_f32_e32 v39, v35, v51
	v_div_scale_f32 v40, null, v41, v41, v14
	v_fma_f32 v42, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v41, v9
	v_div_fmas_f32 v38, v38, v44, v46
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v44, -v49, v39, v35
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s1, v13, v41, v13
	v_div_fixup_f32 v10, v36, v41, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v51
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v33, v42, v34
	v_div_fixup_f32 v11, v38, v41, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v43, 1.0
	v_fma_f32 v35, -v49, v39, v35
	v_div_scale_f32 v38, null, v41, v41, v15
	v_fma_f32 v44, -v37, v33, v42
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v41, v14
	v_div_fmas_f32 v35, v35, v51, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v44, v34
	v_rcp_f32_e32 v45, v38
	v_mul_f32_e32 v39, v36, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v35, v41, v12
	v_fma_f32 v35, -v37, v33, v42
	v_div_scale_f32 v44, null, v41, v41, v16
	v_fma_f32 v37, -v40, v39, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v41, v41, v1
	v_fma_f32 v42, -v38, v45, 1.0
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v39, v37, v43
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v41, v15
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v41, v41, v2
	v_div_fixup_f32 v13, v33, v41, v13
	v_fma_f32 v36, -v40, v39, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v34, v37, 1.0
	v_mul_f32_e32 v40, v35, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v33, v46
	v_div_scale_f32 v33, s3, v16, v41, v16
	v_fmac_f32_e32 v37, v47, v37
	v_div_scale_f32 v47, null, v41, v41, v3
	v_div_fmas_f32 v36, v36, v43, v39
	v_fma_f32 v39, -v38, v40, v35
	v_mul_f32_e32 v43, v33, v46
	v_div_scale_f32 v49, s4, v1, v41, v1
	v_fma_f32 v50, -v42, v48, 1.0
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v40, v39, v45
	v_fma_f32 v39, -v44, v43, v33
	v_mul_f32_e32 v52, v49, v37
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v41, v2
	v_div_fixup_f32 v14, v36, v41, v14
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v43, v39, v46
	v_fma_f32 v36, -v34, v52, v49
	v_mul_f32_e32 v38, v50, v48
	v_fma_f32 v39, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v44, v43, v33
	v_fmac_f32_e32 v52, v36, v37
	v_fma_f32 v36, -v42, v38, v50
	v_fmac_f32_e32 v51, v39, v51
	v_div_scale_f32 v39, s1, v3, v41, v3
	v_div_fmas_f32 v35, v35, v45, v40
	v_fma_f32 v34, -v34, v52, v49
	v_fmac_f32_e32 v38, v36, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v51
	v_div_scale_f32 v40, null, v41, v41, v4
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v35, v41, v15
	v_div_fmas_f32 v33, v33, v46, v43
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v40
	v_div_fmas_f32 v34, v34, v37, v52
	v_fma_f32 v37, -v42, v38, v50
	v_fma_f32 v42, -v47, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v33, v41, v16
	v_div_fixup_f32 v1, v34, v41, v1
	v_div_fmas_f32 v37, v37, v48, v38
	v_fmac_f32_e32 v36, v42, v51
	v_div_scale_f32 v34, null, v41, v41, v5
	v_fma_f32 v35, -v40, v43, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v47, v36, v39
	v_div_fixup_f32 v2, v37, v41, v2
	v_div_scale_f32 v37, null, v41, v41, v7
	v_fmac_f32_e32 v43, v35, v43
	v_div_fmas_f32 v33, v33, v51, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v35, null, v41, v41, v6
	v_rcp_f32_e32 v42, v37
	v_div_scale_f32 v45, null, v41, v41, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v41, v4
	v_div_fixup_f32 v3, v33, v41, v3
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v44, v38, v43
	v_fma_f32 v49, -v37, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v41, v5
	v_fma_f32 v46, -v35, v39, 1.0
	v_fma_f32 v48, -v40, v44, v38
	v_fmac_f32_e32 v42, v49, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v33, v36
	v_div_scale_f32 v49, s4, v7, v41, v7
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s3, v6, v41, v6
	v_fma_f32 v51, -v45, v47, 1.0
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v34, v50, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, v46, v39 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s5, v8, v41, v8
	v_fma_f32 v38, -v40, v44, v38
	v_fmac_f32_e32 v50, v48, v36
	v_fma_f32 v40, -v35, v52, v46
	v_fma_f32 v48, -v37, v53, v49
	v_mul_f32_e32 v54, v51, v47
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v33, -v34, v50, v33
	v_fmac_f32_e32 v52, v40, v39
	v_fmac_f32_e32 v53, v48, v42
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v48, v93, s50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v45, v54, v51
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v52, v46
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s50, v91
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v50
	v_fmac_f32_e32 v54, v34, v47
	v_fma_f32 v34, -v37, v53, v49
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s50, v92
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v91, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s50, v90
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v50, v48, v92, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v45, v54, v51
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v51, v48, v90, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v42, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s50, v89
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	buffer_store_b32 v25, v49, s[44:47], 0 offen
	v_add_lshl_u32 v25, v48, v89, 2
	s_clause 0x1
	buffer_store_b32 v26, v50, s[44:47], 0 offen
	buffer_store_b32 v27, v51, s[44:47], 0 offen
	v_add_lshl_u32 v26, v48, v88, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v48, v87, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v49, v48, v86, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v48, v85, 2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_add_lshl_u32 v26, v48, v84, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v30, v27, s[44:47], 0 offen
	buffer_store_b32 v31, v49, s[44:47], 0 offen
	v_add_lshl_u32 v27, v48, v83, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v28, v48, v82, 2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v32, v25, s[44:47], 0 offen
	buffer_store_b32 v17, v26, s[44:47], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v80, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_clause 0x1
	buffer_store_b32 v18, v27, s[44:47], 0 offen
	buffer_store_b32 v19, v28, s[44:47], 0 offen
	v_add_lshl_u32 v18, v48, v81, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v48, v79, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v33, v41, v5
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 32, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v48, v78, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v41, v7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 34, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v41, v6
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 36, v91
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s50, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_clause 0x1
	buffer_store_b32 v20, v17, s[44:47], 0 offen
	buffer_store_b32 v21, v18, s[44:47], 0 offen
	v_add_lshl_u32 v17, v48, v77, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v47, v54
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s50, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v18, v48, v33, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s50, v35
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v19, s[44:47], 0 offen
	buffer_store_b32 v23, v25, s[44:47], 0 offen
	v_add_lshl_u32 v19, v48, v34, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v36, v41, v8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 38, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v20, v48, v35, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 40, v91
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v41, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v38, 42, v91
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s50, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 44, v91
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s50, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v24, v17, s[44:47], 0 offen
	buffer_store_b32 v9, v18, s[44:47], 0 offen
	v_add_lshl_u32 v9, v48, v36, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s50, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v19, s[44:47], 0 offen
	buffer_store_b32 v11, v20, s[44:47], 0 offen
	v_add_lshl_u32 v10, v48, v37, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 46, v91
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s50, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v48, v38, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 48, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v48, v39, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 50, v91
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s50, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 52, v91
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s50, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_clause 0x1
	buffer_store_b32 v12, v9, s[44:47], 0 offen
	buffer_store_b32 v13, v10, s[44:47], 0 offen
	v_add_lshl_u32 v9, v48, v40, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s50, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v10, v48, v41, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s50, v43
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v11, s[44:47], 0 offen
	buffer_store_b32 v15, v17, s[44:47], 0 offen
	v_add_lshl_u32 v11, v48, v42, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 54, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v12, v48, v43, 2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v45, 56, v91
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v46, 58, v91
	v_or_b32_e32 v47, 60, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v0, 62, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s50, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s50, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v9, s[44:47], 0 offen
	buffer_store_b32 v1, v10, s[44:47], 0 offen
	v_add_lshl_u32 v1, v48, v44, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s50, v46
	v_cmp_gt_i32_e32 vcc_lo, s50, v47
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v11, s[44:47], 0 offen
	buffer_store_b32 v3, v12, s[44:47], 0 offen
	v_add_lshl_u32 v2, v48, v45, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s50, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s2, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v48, v46, 2
	v_add_lshl_u32 v9, v48, v47, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v48, v0, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v9, s[44:47], 0 offen
	buffer_store_b32 v8, v0, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp43:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 206
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_vgpr, 206
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14708
; TotalNumSgprs: 84
; NumVgprs: 206
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 206
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     206
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
