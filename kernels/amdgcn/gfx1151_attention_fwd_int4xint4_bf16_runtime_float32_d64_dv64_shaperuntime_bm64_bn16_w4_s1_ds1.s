	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s34, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v110, 5, v0
	s_load_b64 s[48:49], s[0:1], 0x0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 0x198, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, 4, v110
	v_or_b32_e32 v112, 8, v110
	v_or_b32_e32 v113, 12, v110
	v_and_b32_e32 v33, 0x60, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	v_add_nc_u32_e32 v117, 0, v0
	s_mov_b32 s46, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v116, 15, v0
	v_lshrrev_b32_e32 v34, 1, v33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v121, 0, v18
	v_add_nc_u32_e32 v122, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s25, s3, s30
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s24, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s18, v112
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s18, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[82:83], null, s34, v110, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s27, s34, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s18, v110
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s18, v111
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v114, s34, 2, v82
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 16, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 20, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, 24, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s4, s14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, 28, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s14
	s_cmp_ge_u32 s2, s14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 32, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s14
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, 36, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s15, s29
	s_xor_b32 s17, s28, s29
	s_cvt_f32_u32 s2, s15
	s_sub_i32 s11, 0, s15
	s_ashr_i32 s33, s17, 31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, 40, v1
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v8, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, 44, v1
	v_or_b32_e32 v14, 48, v1
	v_or_b32_e32 v15, 52, v1
	v_or_b32_e32 v16, 56, v1
	v_or_b32_e32 v17, 60, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s30, v1
	v_cmp_gt_i32_e64 s2, s30, v2
	v_cmp_gt_i32_e64 s4, s30, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[83:84], null, s34, 12, v[82:83]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s30, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v115, s34, 3, v82
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s30, v6
	v_cmp_gt_i32_e64 s8, s30, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s9, s6, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s30, v5
	v_cmp_gt_i32_e64 s10, s30, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s13, s9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s30, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s12, s11, s13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s30, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s16, s13, s12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s30, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s16, s13, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s30, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s26, s16, s15
	s_sub_i32 s17, s14, s26
	s_add_i32 s26, s16, 1
	s_sub_i32 s36, s17, s15
	s_cmp_ge_u32 s17, s15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s30, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s16, s26, s16
	s_cselect_b32 s17, s36, s17
	s_add_i32 s26, s16, 1
	s_cmp_ge_u32 s17, s15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s30, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s26, s26, s16
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s25, s25, s18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s27
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s36, s25, s34
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s30, v16
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s36, v82
	v_add_nc_u32_e32 v13, s36, v114
	v_add_nc_u32_e32 v14, s36, v115
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s30, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v15, s36, v83
	v_mad_u64_u32 v[2:3], null, s34, 20, v[1:2]
	v_lshl_add_u32 v16, s34, 4, v1
	v_lshl_add_u32 v17, s34, 5, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s49, s49, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s34, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s34, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s34, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s34, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s34, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s34, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s34, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s34, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s34, 60, v[1:2]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s27
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s26, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s27
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s2, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v16, v1, s[48:51], 0 offen
	buffer_load_u8 v12, v12, s[48:51], 0 offen
	buffer_load_u8 v13, v13, s[48:51], 0 offen
	buffer_load_u8 v15, v15, s[48:51], 0 offen
	buffer_load_u8 v2, v2, s[48:51], 0 offen
	buffer_load_u8 v3, v3, s[48:51], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s27
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s9, s31, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v4, v4, s[48:51], 0 offen
	buffer_load_u8 v8, v8, s[48:51], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[48:51], 0 offen
	buffer_load_u8 v9, v9, s[48:51], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s27
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s16, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[48:51], 0 offen
	buffer_load_u8 v10, v10, s[48:51], 0 offen
	buffer_load_u8 v14, v14, s[48:51], 0 offen
	buffer_load_u8 v17, v1, s[48:51], 0 offen
	buffer_load_u8 v7, v7, s[48:51], 0 offen
	buffer_load_u8 v11, v11, s[48:51], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v1, 0x88, v0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v20, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s9, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v120, 0, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v34, v116
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s9, s9, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v117, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v117, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v117, v4 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v117, v8 offset:1536
	ds_store_b8 v120, v12
	ds_store_b8 v120, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v120, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v120, v9 offset:1536
	ds_store_b8 v121, v13
	ds_store_b8 v121, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v121, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v121, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v122, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v122, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v122, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v122, v11 offset:1536
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v20
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s47, s9, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s7, s18, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s7, s7, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s31, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s4, s2, 31
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s4
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s4, s7, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s46, s4, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s47, s47, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s24
	s_and_not1_b32 vcc_lo, exec_lo, s24
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v2
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v2, s18, v1
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s18, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s31, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 28
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s2, s2, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s47, s47, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v109, s25, v1
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_bfe_u32 v107, v0, 4, 1
	v_cmp_gt_i32_e64 s2, s30, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v118, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v119, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v108, 2, v107
	v_or_b32_e32 v106, 4, v107
	v_or_b32_e32 v105, 6, v107
	v_or_b32_e32 v103, 8, v107
	v_or_b32_e32 v104, 10, v107
	v_or_b32_e32 v102, 12, v107
	v_or_b32_e32 v101, 14, v107
	v_mov_b32_e32 v7, v8
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
	v_mov_b32_e32 v81, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v77, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v79, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v75, v8
	v_mov_b32_e32 v74, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s46, s47
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[36:43], s[0:1], 0x8
	v_dual_mov_b32 v12, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v109
	v_dual_mov_b32 v126, 0xff800000 :: v_dual_lshlrev_b32 v5, 3, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v6, 14, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_lshlrev_b32 v10, 2, v33
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_lshlrev_b32 v11, 2, v118
	v_lshlrev_b32_e32 v38, 4, v33
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 16, v0
	v_lshrrev_b32_e32 v40, 3, v33
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v47, 0xff800000 :: v_dual_lshlrev_b32 v62, 1, v6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s41, 0xffff
	s_mov_b32 s48, s40
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v53, 0x378, v5
	buffer_load_u16 v35, v1, s[48:51], 0 offen
	s_clause 0x2
	s_load_b32 s60, s[0:1], 0x7c
	s_load_b128 s[48:51], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_lshl_or_b32 v60, v116, 3, v10
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v63, 5, v39
	v_lshl_or_b32 v64, v6, 8, v11
	v_lshrrev_b32_e32 v54, 2, v4
	v_xor_b32_e32 v53, v53, v34
	v_xor_b32_e32 v34, v60, v34
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_lshlrev_b32 v3, 5, v116
	v_or3_b32 v146, v64, v63, v62
	v_dual_mov_b32 v41, 0x7632 :: v_dual_lshlrev_b32 v2, 1, v0
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v37, 4, v118
	v_lshrrev_b32_e32 v7, 4, v0
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v8, 1, v119
	v_or_b32_e32 v159, v34, v54
	v_xor_b32_e32 v34, 4, v146
	s_xor_b32 s8, s3, s28
	s_mul_f32 s7, s6, 0x4f7ffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v84, 63, v0
	v_and_or_b32 v133, v2, 24, v3
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v123, 6, v119
	s_ashr_i32 s1, s8, 31
	s_cvt_u32_f32 s7, s7
	s_xor_b32 s8, s19, s1
	v_and_or_b32 v59, v7, 2, v8
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v167, 0, v34
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v34, s15, v37
	s_sub_i32 s6, 0, s16
	v_lshl_add_u32 v46, v119, 2, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, s18, v37
	v_and_or_b32 v65, v2, 60, v38
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v67, 1, v84
	s_sub_i32 s19, s8, s1
	v_or_b32_e32 v38, v133, v38
	v_dual_cndmask_b32 v66, 0x1054, v12 :: v_dual_lshlrev_b32 v55, 7, v6
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v57, 2, v39
	v_lshrrev_b32_e32 v58, 1, v4
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v61, 6, v6
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[85:86], null, s33, v123, v[84:85]
	s_mul_i32 s1, s19, s28
	s_mul_i32 s6, s6, s7
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s6, s7, s6
	v_mov_b32_e32 v27, v33
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v147, v46, v67
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v68, 48, v52
	v_or_b32_e32 v69, 32, v52
	v_or_b32_e32 v70, 16, v52
	v_or_b32_e32 v71, 56, v52
	v_or_b32_e32 v72, 40, v52
	v_or_b32_e32 v73, 24, v52
	v_or_b32_e32 v74, 8, v52
	v_add_nc_u32_e32 v46, 0, v38
	v_or3_b32 v55, v59, v55, v58
	v_or3_b32 v59, v57, v61, v110
	s_abs_i32 s24, s3
	s_add_i32 s7, s7, s6
	v_xad_u32 v61, v38, 8, 0
	v_dual_mov_b32 v10, v33 :: v_dual_cndmask_b32 v41, 0x3276, v41
	v_xor_b32_e32 v40, v65, v40
	v_xad_u32 v62, v38, 16, 0
	s_mul_hi_u32 s25, s24, s7
	v_xad_u32 v38, v38, 24, 0
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[86:87], null, s33, 6, v[85:86]
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v150, s23, v74
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v152, s23, v73
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v154, s23, v72
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v156, s23, v71
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v145, s23, v52
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v151, s23, v70
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v153, s23, v69
	v_dual_mov_b32 v2, v33 :: v_dual_add_nc_u32 v155, s23, v68
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s23, s25, s16
	ds_load_b64 v[87:88], v46
	ds_load_b64 v[89:90], v61
	ds_load_b64 v[91:92], v62
	ds_load_b64 v[93:94], v38
	s_ashr_i32 s5, s5, 31
	v_dual_mov_b32 v45, 0xff800000 :: v_dual_lshlrev_b32 v56, 3, v6
	v_lshl_or_b32 v60, v66, 8, v66
	s_ashr_i32 s6, s3, 31
	v_lshl_or_b32 v161, v39, 6, v40
	v_lshl_or_b32 v40, v41, 8, v41
	s_sub_i32 s23, s24, s23
	s_ashr_i32 s17, s9, 4
	s_xor_b32 s26, s6, s5
	s_add_i32 s24, s25, 1
	s_sub_i32 s28, s23, s16
	s_cmp_ge_u32 s23, s16
	v_mov_b16_e32 v36.l, 0
	v_dual_mov_b32 v15, v33 :: v_dual_and_b32 v40, 0x760076, v40
	v_dual_mov_b32 v4, v33 :: v_dual_and_b32 v39, 0x540054, v60
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s30, v52
	v_xor_b32_e32 v52, 8, v133
	v_or_b32_e32 v157, v53, v54
	v_or3_b32 v158, v55, v57, v56
	v_or3_b32 v160, v59, v56, v58
	v_xor_b32_e32 v53, 8, v146
	v_xor_b32_e32 v54, 12, v146
	v_xor_b32_e32 v55, 16, v146
	v_xor_b32_e32 v56, 20, v146
	v_xor_b32_e32 v57, 24, v146
	v_xor_b32_e32 v58, 28, v146
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s14
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s14, s24, s25
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s20, s19, s29
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s13, s19, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s19, s28, s23
	v_subrev_nc_u32_e32 v165, s21, v145
	v_subrev_nc_u32_e32 v174, s21, v150
	v_subrev_nc_u32_e32 v175, s21, v151
	v_subrev_nc_u32_e32 v176, s21, v152
	v_subrev_nc_u32_e32 v177, s21, v153
	v_subrev_nc_u32_e32 v178, s21, v154
	v_subrev_nc_u32_e32 v179, s21, v155
	v_subrev_nc_u32_e32 v180, s21, v156
	s_add_i32 s21, s14, 1
	s_cmp_ge_u32 s19, s16
	v_dual_mov_b32 v23, v33 :: v_dual_add_nc_u32 v162, 0, v52
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v168, 0, v53
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v170, 0, v55
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v172, 0, v57
	v_xor_b32_e32 v75, 16, v133
	v_xor_b32_e32 v76, 24, v133
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s30, v69
	v_cmp_gt_i32_e64 s10, s30, v68
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s18, s15, s18
	v_xor_b32_e32 v41, 0x440, v157
	v_xor_b32_e32 v52, 16, v158
	v_xor_b32_e32 v59, 32, v158
	v_xor_b32_e32 v60, 48, v158
	v_xor_b32_e32 v63, 64, v158
	v_xor_b32_e32 v64, 0x50, v158
	v_xor_b32_e32 v65, 0x60, v158
	v_xor_b32_e32 v66, 0x70, v158
	v_xor_b32_e32 v67, 0x240, v159
	v_xor_b32_e32 v68, 16, v160
	v_lshl_or_b32 v39, v39, 4, v39
	v_xor_b32_e32 v53, 32, v160
	v_xor_b32_e32 v55, 64, v160
	v_xor_b32_e32 v57, 0x60, v160
	v_xor_b32_e32 v69, 0x810, v161
	v_lshl_or_b32 v37, v40, 4, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s14, s21, s14
	s_add_i32 s29, s13, s18
	s_xor_b32 s13, s14, s26
	s_add_i32 s29, s29, s3
	s_sub_i32 s3, s13, s26
	v_lshl_add_u32 v124, v116, 1, 0
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_mov_b32 v132, 0xff800000
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0xff800000 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v44, 0xff800000
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v48, 0xff800000
	v_dual_mov_b32 v43, 0xff800000 :: v_dual_mov_b32 v50, 0xff800000
	v_dual_mov_b32 v49, 0xff800000 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v51, 0xff800000 :: v_dual_mov_b32 v28, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v84
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v164, 0, v76
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v166, s22, v145
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v163, 0, v75
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v142, 2, v123
	v_or_b32_e32 v143, 4, v123
	v_or_b32_e32 v144, 6, v123
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v148, s33, 1, v85
	v_lshl_add_u32 v149, s33, 2, v85
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s30, v74
	v_cmp_gt_i32_e64 s6, s30, v70
	v_cmp_gt_i32_e64 s7, s30, v73
	v_cmp_gt_i32_e64 s9, s30, v72
	v_cmp_gt_i32_e64 s11, s30, v71
	v_add_nc_u32_e32 v185, s22, v154
	v_add_nc_u32_e32 v187, s22, v156
	v_and_b32_e32 v188, 0x5040504, v39
	v_add_nc_u32_e32 v189, 0, v41
	v_add_nc_u32_e32 v190, 0, v52
	v_add_nc_u32_e32 v191, 0, v59
	v_add_nc_u32_e32 v192, 0, v60
	v_add_nc_u32_e32 v193, 0, v63
	v_add_nc_u32_e32 v194, 0, v64
	v_add_nc_u32_e32 v195, 0, v65
	v_add_nc_u32_e32 v196, 0, v66
	v_add_nc_u32_e32 v197, 0, v67
	v_add_nc_u32_e32 v198, 0, v68
	v_add_nc_u32_e32 v199, 0, v53
	v_add_nc_u32_e32 v201, 0, v55
	v_add_nc_u32_e32 v203, 0, v57
	v_add_nc_u32_e32 v205, 0, v69
	v_and_b32_e32 v206, 0x7060706, v37
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s28, s17, 3
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s63, s3, s20
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s52, s42
	s_mov_b32 s40, s50
	s_mov_b32 s56, s38
	s_mov_b32 s38, s54
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_and_b32 s41, s51, 0xffff
	s_and_b32 s57, s39, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s39, s55
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_mul_i32 s30, s63, s31
	.loc	1 976 30 is_stmt 1              ; attention.py:976:30
	s_mul_i32 s62, s63, s28
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s63, s63, s17
	.loc	1 903 13                        ; attention.py:903:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[95:96], null, s60, v116, v[34:35]
	.loc	1 779 31                        ; attention.py:779:31
	v_mov_b16_e32 v36.h, v35.l
	v_add_nc_u32_e32 v169, 0, v54
	v_xor_b32_e32 v54, 48, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v210, s12, v36
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[96:97], null, s15, 24, v[95:96]
	v_add_nc_u32_e32 v171, 0, v56
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v212, v210 :: v_dual_add_nc_u32 v173, 0, v58
	v_xor_b32_e32 v56, 0x50, v160
	v_xor_b32_e32 v58, 0x70, v160
	v_dual_mov_b32 v214, v210 :: v_dual_add_nc_u32 v181, s22, v150
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[97:98], null, s15, 40, v[95:96]
	v_mad_u64_u32 v[98:99], null, s15, 48, v[95:96]
	v_mad_u64_u32 v[99:100], null, s15, 56, v[95:96]
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v211, v210 :: v_dual_add_nc_u32 v182, s22, v151
	v_dual_mov_b32 v216, v210 :: v_dual_add_nc_u32 v183, s22, v152
	v_dual_mov_b32 v213, v210 :: v_dual_add_nc_u32 v184, s22, v153
	v_dual_mov_b32 v215, v210 :: v_dual_add_nc_u32 v186, s22, v155
	v_add_nc_u32_e32 v200, 0, v54
	v_add_nc_u32_e32 v202, 0, v56
	v_add_nc_u32_e32 v204, 0, v58
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v207, s15, 3, v95
	v_lshl_add_u32 v208, s15, 4, v95
	v_lshl_add_u32 v209, s15, 5, v95
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v100, v210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v58.h, v59.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v59, v34
	v_cvt_f32_i32_e32 v60, v35
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v62, v37
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s3, s46, s60
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v37, v38
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s29, s3
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v36, v39
	v_cvt_f32_i32_e32 v35, v40
	v_cvt_f32_i32_e32 v34, v41
	v_dual_mul_f32 v38, v212, v62 :: v_dual_mul_f32 v39, v211, v61
	v_dual_mul_f32 v40, v100, v60 :: v_dual_mul_f32 v41, v210, v59
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v59, s3, v95, 1
	v_add_lshl_u32 v60, s3, v207, 1
	v_add_lshl_u32 v61, s3, v208, 1
	v_add_lshl_u32 v62, s3, v96, 1
	v_add_lshl_u32 v63, s3, v209, 1
	v_add_lshl_u32 v64, s3, v97, 1
	v_add_lshl_u32 v65, s3, v98, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s59
	v_cndmask_b32_e64 v60, 0x80000000, v60, s26
	v_cndmask_b32_e64 v61, 0x80000000, v61, s64
	v_cndmask_b32_e64 v62, 0x80000000, v62, s50
	v_cndmask_b32_e64 v63, 0x80000000, v63, s65
	v_cndmask_b32_e64 v64, 0x80000000, v64, s51
	v_cndmask_b32_e64 v65, 0x80000000, v65, s66
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	v_add_lshl_u32 v66, s3, v99, 1
	s_clause 0x6
	buffer_load_u16 v59, v59, s[40:43], 0 offen
	buffer_load_u16 v60, v60, s[40:43], 0 offen
	buffer_load_u16 v61, v61, s[40:43], 0 offen
	buffer_load_u16 v62, v62, s[40:43], 0 offen
	buffer_load_u16 v63, v63, s[40:43], 0 offen
	buffer_load_u16 v64, v64, s[40:43], 0 offen
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	v_cndmask_b32_e64 v66, 0x80000000, v66, s58
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v46.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v46.h, v52.l
	v_mov_b16_e32 v52.h, v53.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v34, v216, v34 :: v_dual_mul_f32 v35, v215, v35
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v52.l, v46.l
	v_mov_b16_e32 v54.h, v55.l
	v_mov_b16_e32 v55.l, v46.l
	v_mov_b16_e32 v55.h, v56.l
	v_mov_b16_e32 v56.h, v57.l
	v_mov_b16_e32 v57.l, v46.l
	v_mov_b16_e32 v57.h, v58.l
	v_mov_b16_e32 v58.l, v46.l
	v_mov_b16_e32 v56.l, v46.l
	v_mov_b16_e32 v53.h, v54.l
	v_mov_b16_e32 v54.l, v46.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v36, v214, v36 :: v_dual_mul_f32 v37, v213, v37
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v53.l, v46.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(7)
	v_cndmask_b16 v59.l, 0xff80, v59.l, s59
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v60.l, 0xff80, v60.l, s26
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v59.h, 0xff80, v61.l, s64
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v61, 0, v157
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v63.l, 0xff80, v63.l, s65
	v_cndmask_b16 v60.h, 0xff80, v62.l, s50
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v63.h, 0xff80, v65.l, s66
	v_mov_b16_e32 v65.l, v46.l
	v_mov_b16_e32 v62.l, v46.l
	v_mov_b16_e32 v65.h, v63.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b32 v61, v59, v63 offset1:32
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v61.h, v59.l
	v_mov_b16_e32 v59.l, v46.l
	v_mov_b16_e32 v63.l, v46.l
	v_mov_b16_e32 v61.l, v46.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s12, 0xff800000, v59
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v59.h, 0xff80, v66.l, s58
	v_cndmask_b16 v59.l, 0xff80, v64.l, s51
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v63
	v_cmp_neq_f32_e64 s13, 0xff800000, v61
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v61.h, v60.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s20, s65, s3
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b32 v189, v60, v59 offset1:32
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v62.h, v59.l
	v_mov_b16_e32 v59.l, v46.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s19, s66, vcc_lo
	s_and_b32 s22, s59, s13
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v60.l, v46.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v62
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v59
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v59, 0, v158
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v61
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v61, v59
	ds_load_u16 v62, v190
	ds_load_u16 v63, v191
	ds_load_u16 v64, v192
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v65, v196
	ds_load_u16 v66, v195
	ds_load_u16 v67, v194
	ds_load_u16 v68, v193
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v59, 0, 1, s19
	s_and_b32 s21, s64, s12
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v60
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v60, 0, 1, s20
	s_and_b32 s23, s58, vcc_lo
	v_lshlrev_b16 v59.l, 8, v59.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s24, s51, s3
	s_and_b32 s25, s50, s12
	v_or_b16 v59.h, v60.l, v59.l
	v_cndmask_b32_e64 v60, 0, 1, s21
	s_and_b32 s26, s26, s13
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v42
	.loc	1 978 32                        ; attention.py:978:32
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v59.l, v60.l
	v_cndmask_b32_e64 v60, 0, 1, s22
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v59.l, 8, v59.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v59.l, v60.l, v59.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v65, v34, v46 :: v_dual_add_nc_u32 v60, 0, v159
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v34, 0, v146
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b32 v60, v59
	v_cndmask_b32_e64 v59, 0, 1, s23
	v_cndmask_b32_e64 v60, 0, 1, s24
	v_lshlrev_b16 v59.l, 8, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v59.h, v60.l, v59.l
	v_cndmask_b32_e64 v60, 0, 1, s25
	v_mov_b16_e32 v59.l, v60.l
	v_cndmask_b32_e64 v60, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v59.l, 8, v59.l
	v_or_b16 v59.l, v60.l, v59.l
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v60, 16, v62
	v_lshlrev_b32_e32 v62, 16, v64
	v_lshlrev_b32_e32 v64, 16, v67
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b32 v197, v59
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_add_nc_u32 v59, 0, v160
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v59, v59
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v62, v38, v55
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s17, 1, v59.l
	ds_load_u8_d16 v59, v198
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	v_cmp_eq_u16_e64 s18, 1, v59.l
	ds_load_u8_d16 v59, v199
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s15, 1, v59.l
	ds_load_u8_d16 v59, v200
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	v_cmp_eq_u16_e64 s16, 1, v59.l
	ds_load_u8_d16 v59, v201
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s13, 1, v59.l
	ds_load_u8_d16 v59, v202
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	v_cmp_eq_u16_e64 s14, 1, v59.l
	ds_load_u8_d16 v59, v203
	s_waitcnt lgkmcnt(0)
	v_and_b16 v59.l, 1, v59.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v59.l
	ds_load_u8_d16 v59, v204
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v59.l, 1, v59.l
	v_cmp_eq_u16_e64 s12, 1, v59.l
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v59, 16, v61
	v_lshlrev_b32_e32 v61, 16, v63
	v_lshlrev_b32_e32 v63, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v63, 0x3fb8aa3b, v63 :: v_dual_mul_f32 v60, 0x3fb8aa3b, v60
	v_dual_mul_f32 v67, 0x3fb8aa3b, v59 :: v_dual_lshlrev_b32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v63, v37, v54 :: v_dual_fmac_f32 v60, v40, v57
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v61, 0x3fb8aa3b, v61 :: v_dual_mul_f32 v66, 0x3fb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v67, v41, v58 :: v_dual_mul_f32 v64, 0x3fb8aa3b, v64
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v59, 0xff800000, v60, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v61, v39, v56
	v_fmac_f32_e32 v66, v35, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v60, 0xff800000, v67, s17
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v64, v36, v53
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v57, 0xff800000, v62, s16
	v_cndmask_b32_e64 v58, 0xff800000, v61, s15
	v_cndmask_b32_e64 v56, 0xff800000, v63, s13
	v_cndmask_b32_e64 v53, 0xff800000, v65, s12
	v_cndmask_b32_e32 v54, 0xff800000, v66, vcc_lo
	v_cndmask_b32_e64 v55, 0xff800000, v64, s14
	ds_store_b32 v34, v60
	ds_store_b32 v167, v59
	ds_store_b32 v168, v58
	ds_store_b32 v169, v57
	ds_store_b32 v170, v56
	ds_store_b32 v171, v55
	ds_store_b32 v172, v54
	ds_store_b32 v173, v53
	v_add_nc_u32_e32 v34, 0, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[38:39], v34 offset1:32
	ds_load_2addr_b32 v[34:35], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[40:41], v205 offset1:32
	ds_load_2addr_b32 v[36:37], v205 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v69, v57, v56, v55
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v52, v38
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v61, v38, v38 :: v_dual_max_f32 v62, v40, v40
	v_dual_max_f32 v63, v39, v39 :: v_dual_max_f32 v64, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v65, v34, v34
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v67, v35, v35 :: v_dual_max_f32 v68, v37, v37
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v61, v52
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v61, v52 :: v_dual_max_f32 v70, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v61
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v61, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v61
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v61, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v52, v61
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v61, v40
	v_mov_b32_dpp v61, v61 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v61, v61, v61
	v_max_f32_e32 v61, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v62, v61
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v62, v61
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_max_f32_e32 v61, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v62, v61
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v62, v62, v62
	v_dual_max_f32 v61, v61, v62 :: v_dual_mov_b32 v62, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v62, v62 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v63, v62
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v62, v63
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v62, v62, v63
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v63, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v63, v63 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v62, v62, v63 :: v_dual_mov_b32 v63, v41
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v63, v63 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v63, v63, v63
	v_max_f32_e32 v63, v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v64, v63
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v63, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v64, v63
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v63, v63, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v64, v63
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v64, v64, v64
	v_dual_max_f32 v63, v63, v64 :: v_dual_mov_b32 v64, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v64, v64 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v64, v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v65, v64
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v65
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v65
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v65, v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v65
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v65, v36
	v_mov_b32_dpp v65, v65 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v66, v36, v36 :: v_dual_max_f32 v65, v65, v65
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v66, v65
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_dual_max_f32 v65, v65, v66 :: v_dual_mov_b32 v66, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v67, v66
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v67
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v66, v66, v67
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v67, v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v37
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v67, v67 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v67, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v67
	v_mov_b32_dpp v68, v68 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v67
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v68, v67
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v67, v67, v68
	v_max3_f32 v68, v60, v59, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v68, v68, v69, v70
.Ltmp68:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v70, v125, v125
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v69, v68, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v125, v70, v52
	v_max3_f32 v225, v42, v68, v69
	v_max_f32_e32 v68, v43, v43
	v_max_f32_e32 v70, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v38, v38, v125 :: v_dual_max_f32 v217, v68, v52
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v52, v44, v44
	v_max_f32_e32 v218, v52, v61
	v_max_f32_e32 v52, v45, v45
	v_max_f32_e32 v126, v70, v61
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v61, v43, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v219, v52, v62 :: v_dual_max_f32 v52, v47, v47
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v40, v126
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v220, v52, v63
	v_max_f32_e32 v52, v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v70, v127, v127 :: v_dual_max_f32 v221, v52, v64
	v_dual_max_f32 v52, v49, v49 :: v_dual_max_f32 v127, v70, v62
	v_max_f32_e32 v70, v128, v128
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v62, v44, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v222, v52, v65
	v_max_f32_e32 v52, v50, v50
	v_max_f32_e32 v128, v70, v63
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v63, v45, v219
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v62, v62
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v39, v39, v127
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v223, v52, v66 :: v_dual_max_f32 v52, v51, v51
	v_max_f32_e32 v70, v129, v129
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v41, v41, v128 :: v_dual_max_f32 v224, v52, v67
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v52, v42, v225
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v129, v70, v64
	v_max_f32_e32 v70, v130, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v42, v60, v225
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v68, v51, v224
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v52, v52
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v34, v34, v129
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v130, v70, v65
	v_dual_max_f32 v70, v131, v131 :: v_dual_sub_f32 v65, v48, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_max_f32 v131, v70, v66 :: v_dual_max_f32 v70, v132, v132
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v52, 0, v52, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v43
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v59, v225
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v64, v47, v220
	v_sub_f32_e32 v66, v49, v222
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v65, v65
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v226, 0, v61, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v44
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v64, v64
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v132, v70, v67
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v67, v50, v223
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v66, v66
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v227, 0, v62, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v45
	.loc	1 971 62 is_stmt 1              ; attention.py:971:62
	v_sub_f32_e32 v44, v58, v225
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v67, v67
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v45, v57, v225
	v_sub_f32_e32 v37, v37, v132
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v228, 0, v63, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v47
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v47, v56, v225
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v56, v34
	v_exp_f32_e32 v59, v37
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v131
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v229, 0, v64, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v48
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v48, v55, v225
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v55, v41
	v_exp_f32_e32 v41, v43
	v_exp_f32_e32 v58, v35
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v230, 0, v65, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v49
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v49, v54, v225
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v54, v39
	v_exp_f32_e32 v39, v45
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v52
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v231, 0, v66, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v50
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v50, v53, v225
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v53, v40
	v_exp_f32_e32 v40, v42
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v52
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v232, 0, v67, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v51
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v51, v38
	v_exp_f32_e32 v38, v44
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v44, 0, v54, s21
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v52
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v55, s25
	v_cndmask_b32_e64 v43, 0, v53, s26
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v34, v49
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v49, 0, v58, s19
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v52
	v_mul_f32_e32 v14, v14, v52
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v51, s22
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v52
	v_mul_f32_e32 v6, v6, v52
	v_mul_f32_e32 v8, v8, v52
	v_mul_f32_e32 v27, v27, v52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v51, v42 :: v_dual_cndmask_b32 v34, 0, v34
.Ltmp72:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v52
	v_mul_f32_e32 v17, v17, v52
	v_mul_f32_e32 v19, v19, v52
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v52
	v_mul_f32_e32 v11, v11, v52
	v_mul_f32_e32 v23, v23, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v15, v15, v52 :: v_dual_add_f32 v42, v42, v51
	v_mul_f32_e32 v9, v9, v52
	v_mul_f32_e32 v13, v13, v52
	v_mul_f32_e32 v1, v1, v52
	v_mul_f32_e32 v3, v3, v52
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v51, v42
.Ltmp76:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v52
	v_mul_f32_e32 v7, v7, v52
	v_mul_f32_e32 v28, v28, v52
	v_mul_f32_e32 v32, v32, v52
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v52
	v_mul_f32_e32 v24, v24, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v51
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v51, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v51, v42 :: v_dual_mul_f32 v16, v16, v52
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v74, v42, v51
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v42, v43
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v43, v42
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp89:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v52
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v75, v42, v43 :: v_dual_mov_b32 v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v30, v30, v52 :: v_dual_fmac_f32 v75, v135, v227
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v135, v75 :: v_dual_add_f32 v42, v44, v42
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp98:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v68, v68
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp101:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v233, 0, v68, s3
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s3, s46, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v44, s3, v143
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v44, v44, 1, 1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v78, v42, v43
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v42, v45
.Ltmp107:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v78, v136, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v136, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v45, v42
.Ltmp110:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v130
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v45, s3, v144
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp112:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v36
	v_exp_f32_e32 v36, v47
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v56, s20
	.loc	1 985 31 is_stmt 1              ; attention.py:985:31
	v_lshl_or_b32 v45, v45, 1, 1
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s20, s31, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s21, s31, v45
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp116:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s13
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp118:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v48
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v48, 0, v57, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s14
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
.Ltmp123:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v50
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v59, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v79, v42, v43 :: v_dual_mov_b32 v42, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v79, v137, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v137, v79
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v47, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v76, v42, v43
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v42, v48
.Ltmp137:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v76, v138, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v138, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v48, v42
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v77, v42, v43 :: v_dual_mov_b32 v42, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v49, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v80, v42, v43
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v42, v50
	v_mov_b32_dpp v42, v42 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v50, v42
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v81, v42, v43
.Ltmp162:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v42, s3, v123
	v_or_b32_e32 v43, s3, v142
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s3, s62
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s33
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v81, v141, v233
	v_add_nc_u32_e32 v47, s3, v85
	v_add_nc_u32_e32 v48, s3, v148
	v_add_nc_u32_e32 v49, s3, v149
	v_add_nc_u32_e32 v50, s3, v86
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s3, s28, v42
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v42, v42, 1, 1
	v_lshl_or_b32 v43, v43, 1, 1
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v52 :: v_dual_mov_b32 v141, v81
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s3, s0, s3
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v80, v140, v232
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s3
	v_cndmask_b32_e64 v48, 0x80000000, v48, s3
	v_cndmask_b32_e64 v49, 0x80000000, v49, s3
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s31, v42
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v47, v47, s[56:59], 0 offen
	buffer_load_u8 v48, v48, s[56:59], 0 offen
	buffer_load_u8 v49, v49, s[56:59], 0 offen
	buffer_load_u8 v50, v50, s[56:59], 0 offen
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s19, s31, v43
	v_mov_b32_e32 v140, v80
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(3)
	v_and_b16 v42.l, v47.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v42.h, v48.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v43.l, v49.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v44, 15, v47
	v_and_b32_e32 v45, 15, v48
	v_and_b32_e32 v51, 15, v49
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v47.l, 4, v47.l
	v_lshrrev_b16 v48.l, 4, v48.l
	v_lshrrev_b16 v49.l, 4, v49.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v47.h, v46.l
	v_mov_b16_e32 v48.h, v46.l
	v_mov_b16_e32 v49.h, v46.l
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v54, -16, v51
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v43.h, v50.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e64 v47, 0, v47, s3
	v_cndmask_b32_e64 v48, 0, v48, s19
	v_cndmask_b32_e64 v49, 0, v49, s20
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v42.l
	v_cmp_lt_u16_e64 s19, 7, v42.h
	v_cmp_lt_u16_e64 s20, 7, v43.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v42, -16, v44
	.loc	1 987 29 is_stmt 1              ; attention.py:987:29
	v_and_b32_e32 v53, 15, v50
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v50.l, 4, v50.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v50.h, v46.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v42, v44, v42, s3
	v_cndmask_b32_e64 v44, v51, v54, s20
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s3, 7, v47
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v51, -16, v47
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v50, 0, v50, s21
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s21, 7, v43.h
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v43, -16, v45
	v_or_b32_e32 v55, -16, v53
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v47, v47, v51, s3
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s46, 4
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s20, 7, v49
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s63
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v43, v45, v43, s19
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s33
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v45, v53, v55, s21
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v51, s3, v84, 1
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s21, 7, v50
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v55, -16, v50
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s19, 7, v48
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v53, -16, v48
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v54, -16, v49
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b32_e64 v50, v50, v55, s21
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v48, v48, v53, s19
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v51, v51, s[48:51], 0 offen
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v49, v49, v54, s20
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_add_i32 s46, s46, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s46, s47
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v50, v51, v50
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v18, v18, v52 :: v_dual_fmac_f32 v77, v139, v231
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v42, v42, v51
	v_mul_f32_e32 v47, v47, v51
	v_mul_f32_e32 v43, v43, v51
	v_mul_f32_e32 v48, v48, v51
	v_dual_mul_f32 v44, v44, v51 :: v_dual_mul_f32 v49, v51, v49
	v_mul_f32_e32 v45, v51, v45
	v_mov_b32_e32 v139, v77
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v51, v42, 16, 1
	v_cmp_o_f32_e64 s3, v42, v42
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v74, v134, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v51, v42, v51, 0x7fff
	v_mov_b32_e32 v134, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v42.l, 0x7fff, v51.h, s3
	v_bfe_u32 v51, v47, 16, 1
	v_cmp_o_f32_e64 s3, v47, v47
	v_add3_u32 v51, v47, v51, 0x7fff
	v_bfe_u32 v47, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v42.h, 0x7fff, v51.h, s3
	v_add3_u32 v47, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s3, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v43.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v48, 16, 1
	v_cmp_o_f32_e64 s3, v48, v48
	v_add3_u32 v47, v48, v47, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v48.h, v46.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v43.h, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v44, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	v_add3_u32 v47, v44, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v49, 16, 1
	v_cmp_o_f32_e64 s3, v49, v49
	v_add3_u32 v47, v49, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.h, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v45, 16, 1
	v_cmp_o_f32_e64 s3, v45, v45
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s3
	v_bfe_u32 v47, v50, 16, 1
	v_cmp_o_f32_e64 s3, v50, v50
	v_add3_u32 v47, v50, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s3
	ds_store_b16 v147, v42
	ds_store_b16_d16_hi v147, v42 offset:128
	ds_store_b16 v147, v43 offset:512
	ds_store_b16_d16_hi v147, v43 offset:640
	ds_store_b16 v147, v44 offset:1024
	ds_store_b16_d16_hi v147, v44 offset:1152
	ds_store_b16 v147, v45 offset:1536
	ds_store_b16_d16_hi v147, v45 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v66, v124
	ds_load_u16_d16 v50, v124 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v66, v124 offset:128
	ds_load_u16_d16 v67, v124 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v124 offset:384
	ds_load_u16_d16 v68, v124 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v68, v124 offset:640
	ds_load_u16_d16 v69, v124 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v69, v124 offset:896
	ds_load_u16_d16 v70, v124 offset:1024
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v70, v124 offset:1152
	ds_load_u16_d16 v71, v124 offset:1280
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v71, v124 offset:1408
	ds_load_u16_d16 v72, v124 offset:1536
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v40, s17
	v_cndmask_b32_e64 v40, 0, v41, s18
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v72, v124 offset:1664
	ds_load_u16_d16 v73, v124 offset:1792
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v41.l, v40.h
	v_mov_b16_e32 v41.h, v46.l
	v_cmp_o_f32_e64 s3, v40, v40
	v_mov_b16_e32 v48.l, v47.h
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v73, v124 offset:1920
	ds_load_u16_d16_hi v50, v124 offset:160
	ds_load_u16_d16 v51, v124 offset:288
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v40, v41, 0x7fff
	v_add3_u32 v48, v47, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v41.h, s3
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v38, s15
	v_cndmask_b32_e64 v38, 0, v39, s16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v39.h, v46.l
	v_cmp_o_f32_e64 s3, v47, v47
	v_mov_b16_e32 v47.h, v46.l
	v_mov_b16_e32 v47.l, v41.h
	v_mov_b16_e32 v39.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v40.l, 0x7fff, v48.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v47, v41, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v38, v39, 0x7fff
	v_mov_b16_e32 v39.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s3
	v_mov_b16_e32 v39.h, v46.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v52
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v51, v124 offset:416
	ds_load_u16_d16 v52, v124 offset:544
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v52, v124 offset:672
	ds_load_u16_d16 v53, v124 offset:800
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v53, v124 offset:928
	ds_load_u16_d16 v54, v124 offset:1056
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v54, v124 offset:1184
	ds_load_u16_d16 v55, v124 offset:1312
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v55, v124 offset:1440
	ds_load_u16_d16 v56, v124 offset:1568
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v56, v124 offset:1696
	ds_load_u16_d16 v57, v124 offset:1824
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v57, v124 offset:1952
	ds_load_u16_d16 v58, v124 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v58, v124 offset:192
	ds_load_u16_d16 v59, v124 offset:320
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v59, v124 offset:448
	ds_load_u16_d16 v60, v124 offset:576
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v60, v124 offset:704
	ds_load_u16_d16 v61, v124 offset:832
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v61, v124 offset:960
	ds_load_u16_d16 v62, v124 offset:1088
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v62, v124 offset:1216
	ds_load_u16_d16 v63, v124 offset:1344
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v63, v124 offset:1472
	ds_load_u16_d16 v64, v124 offset:1600
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v64, v124 offset:1728
	ds_load_u16_d16 v65, v124 offset:1856
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v124 offset:1984
	ds_load_u16_d16 v42, v124 offset:96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v42, v124 offset:224
	ds_load_u16_d16 v43, v124 offset:352
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v43, v124 offset:480
	ds_load_u16_d16 v44, v124 offset:608
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v41, v41
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v46.l
	v_and_b32_e32 v39, 1, v39
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v44, v124 offset:736
	ds_load_u16_d16 v45, v124 offset:864
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v38.l, 0x7fff, v47.h, s3
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v37, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v37, v37
	v_mov_b16_e32 v37.l, v34.h
	v_mov_b16_e32 v37.h, v46.l
	v_add3_u32 v41, v36, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	v_mov_b16_e32 v36.l, v35.h
	v_mov_b16_e32 v36.h, v46.l
	v_and_b32_e32 v37, 1, v37
	v_cndmask_b16 v39.l, 0x7fff, v41.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v37, v34, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v46, v39, s61, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v36, v35, v36, 0x7fff
	v_permlanex16_b32 v35, v40, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v41.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_perm_b32 v34, v35, v40, v188
	v_perm_b32 v35, v35, v40, v206
	v_cndmask_b16 v41.l, 0x7fff, v37.h, vcc_lo
	v_permlanex16_b32 v37, v38, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v47, v41, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v37, v38, v188
	v_perm_b32 v37, v37, v38, v206
	v_perm_b32 v38, v46, v39, v188
	v_perm_b32 v39, v46, v39, v206
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v45, v124 offset:992
	ds_load_u16_d16 v46, v124 offset:1120
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v40, v47, v41, v188
	v_perm_b32 v41, v47, v41, v206
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v46, v124 offset:1248
	ds_load_u16_d16 v47, v124 offset:1376
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v47, v124 offset:1504
	ds_load_u16_d16 v48, v124 offset:1632
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v48, v124 offset:1760
	ds_load_u16_d16 v49, v124 offset:1888
	.loc	1 1019 23                       ; attention.py:1019:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[66:73], v[34:41], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[50:57], v[34:41], v[17:24]
	v_dual_mov_b32 v50, v223 :: v_dual_mov_b32 v51, v224
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v49, v124 offset:2016
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[34:41], v[1:8]
	v_mov_b32_e32 v42, v225
	v_dual_mov_b32 v43, v217 :: v_dual_mov_b32 v44, v218
	v_mov_b32_e32 v45, v219
	v_dual_mov_b32 v47, v220 :: v_dual_mov_b32 v48, v221
	v_mov_b32_e32 v49, v222
	v_wmma_f32_16x16x16_bf16 v[9:16], v[58:65], v[34:41], v[9:16]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v34, s46, v110
	v_or_b32_e32 v35, s46, v111
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s18, s46, s30
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v36, s46, v112
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s3, s18, s34
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v37, s46, v113
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v38, s3, v82
	v_add_nc_u32_e32 v39, s3, v114
	v_add_nc_u32_e32 v40, s3, v115
	v_add_nc_u32_e32 v34, s3, v83
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s31, v35
	v_cmp_gt_i32_e64 s12, s31, v36
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s27, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s13, s31, v37
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s27, s3
	.loc	1 908 32                        ; attention.py:908:32
	v_add_nc_u32_e32 v38, 0, v133
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s27, s12
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v39, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s27, s13
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[36:39], 0 offen
	buffer_load_u8 v36, v36, s[36:39], 0 offen
	buffer_load_u8 v37, v37, s[36:39], 0 offen
	buffer_load_u8 v34, v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v46, s46, v116
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v120, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v121, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v122, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[52:53], v38
	ds_load_b64 v[54:55], v162
	ds_load_b64 v[56:57], v163
	ds_load_b64 v[58:59], v164
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s31, v46
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[52:53], v[87:88], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s59, s1, s3
	s_and_b32 s26, s5, s3
	s_and_b32 s64, s6, s3
	s_and_b32 s50, s7, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[54:55], v[89:90], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s65, s8, s3
	s_and_b32 s51, s9, s3
	s_and_b32 s66, s10, s3
	s_and_b32 s58, s11, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[56:57], v[91:92], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[58:59], v[93:94], v[34:41] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v46, v145
	v_cmp_le_i32_e64 s3, v46, v150
	v_cmp_le_i32_e64 s12, v46, v151
	v_cmp_le_i32_e64 s13, v46, v152
	v_cmp_le_i32_e64 s14, v46, v153
	v_cmp_le_i32_e64 s15, v46, v154
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s19, vcc_lo, s59
	s_and_b32 s3, s3, s26
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s16, v46, v155
	v_cmp_le_i32_e64 s17, v46, v156
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s12, s12, s64
	s_and_b32 s13, s13, s50
	s_and_not1_b32 s20, s59, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s26, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s65
	s_and_b32 s15, s15, s51
	s_or_b32 s59, s20, s19
	s_or_b32 s26, s21, s3
	s_and_not1_b32 s3, s64, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s50, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s66
	s_and_b32 s17, s17, s58
	s_or_b32 s64, s3, s12
	s_or_b32 s50, s19, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s65, s3, s12
	s_or_b32 s51, s13, s14
	s_and_not1_b32 s3, s66, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s58, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s66, s3, s12
	s_or_b32 s58, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v52, s46, v107
	v_or_b32_e32 v53, s46, v108
	v_add_lshl_u32 v56, s18, v107, 1
	v_or_b32_e32 v54, s46, v106
	v_or_b32_e32 v55, s46, v105
	v_cmp_gt_i32_e32 vcc_lo, s31, v52
	v_or_b32_e32 v57, s46, v103
	v_add_nc_u32_e32 v62, 8, v56
	v_add_nc_u32_e32 v61, 4, v56
	v_or_b32_e32 v58, s46, v104
	v_cndmask_b32_e32 v52, 0x80000000, v56, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v53
	v_or_b32_e32 v59, s46, v102
	v_or_b32_e32 v60, s46, v101
	v_cndmask_b32_e32 v53, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v54
	v_cndmask_b32_e32 v54, 0x80000000, v62, vcc_lo
	v_add_nc_u32_e32 v62, 16, v56
	v_add_nc_u32_e32 v61, 12, v56
	v_cmp_gt_i32_e32 vcc_lo, s31, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v55, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v57
	v_add_nc_u32_e32 v61, 20, v56
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_add_nc_u32 v57, 24, v56
	v_cmp_gt_i32_e32 vcc_lo, s31, v58
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v63, 0x80000000, v57 :: v_dual_add_nc_u32 v56, 28, v56
	v_cmp_gt_i32_e32 vcc_lo, s31, v60
	v_cndmask_b32_e32 v60, 0x80000000, v56, vcc_lo
	s_clause 0x7
	buffer_load_u16 v59, v52, s[52:55], 0 offen
	buffer_load_u16 v58, v53, s[52:55], 0 offen
	buffer_load_u16 v57, v54, s[52:55], 0 offen
	buffer_load_u16 v56, v55, s[52:55], 0 offen
	buffer_load_u16 v55, v62, s[52:55], 0 offen
	buffer_load_u16 v54, v61, s[52:55], 0 offen
	buffer_load_u16 v53, v63, s[52:55], 0 offen
	buffer_load_u16 v52, v60, s[52:55], 0 offen
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v46, v165
	v_cmp_ge_i32_e64 s3, v46, v174
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v46, v166
	v_cmp_le_i32_e64 s19, v46, v181
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v46, v175
	v_cmp_ge_i32_e64 s13, v46, v176
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s20, v46, v182
	v_cmp_le_i32_e64 s23, v46, v183
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v46, v177
	v_cmp_ge_i32_e64 s15, v46, v178
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s22, v46, v184
	v_cmp_le_i32_e64 s24, v46, v185
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v46, v179
	v_cmp_ge_i32_e64 s17, v46, v180
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s21, v46, v186
	v_cmp_le_i32_e64 s25, v46, v187
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, s12, s20
	s_and_b32 s18, s18, s59
	s_and_b32 s13, s13, s23
	s_and_b32 s3, s3, s26
	s_and_b32 s14, s14, s22
	s_and_b32 s12, s12, s64
	s_and_b32 s15, s15, s24
	s_and_b32 s13, s13, s50
	s_and_not1_b32 s19, s59, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s26, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s21
	s_and_b32 s14, s14, s65
	s_and_b32 s17, s17, s25
	s_and_b32 s15, s15, s51
	s_or_b32 s59, s19, s18
	s_or_b32 s26, s20, s3
	s_and_not1_b32 s3, s64, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s50, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s66
	s_and_b32 s17, s17, s58
	s_or_b32 s64, s3, s12
	s_or_b32 s50, s18, s13
	s_and_not1_b32 s3, s65, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s51, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s65, s3, s12
	s_or_b32 s51, s13, s14
	s_and_not1_b32 s3, s66, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s58, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s66, s3, s12
	s_or_b32 s58, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v34, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v35, 3, v119
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x70, v33
	v_and_b32_e32 v34, 4, v34
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v33, 0, v33, v34
	v_add_nc_u32_e32 v34, 0, v118
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s33, v103
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v34, v[74:77]
	ds_store_b128 v34, v[78:81] offset:128
	v_add3_u32 v0, v33, v0, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s33, v104
	v_cmp_gt_i32_e64 s8, s33, v102
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v0, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s33, v101
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v55, -v35, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v56, -v37, v47, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_mul_f32_e32 v55, v36, v46
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v44, null, v0, v0, v31
	v_div_scale_f32 v51, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_mul_f32_e32 v56, v38, v47
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	v_fmac_f32_e32 v55, v59, v46
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v61, v48 :: v_dual_fmac_f32 v54, v58, v45
	v_div_scale_f32 v52, null, v0, v0, v32
	v_fmac_f32_e32 v56, v60, v47
	v_div_scale_f32 v42, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_rcp_f32_e32 v37, v52
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_mul_f32_e32 v34, v51, v50
	v_fma_f32 v38, -v52, v37, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v33, v0, v28
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v33, -v43, v34, v51
	v_fmac_f32_e32 v37, v38, v37
	v_div_fixup_f32 v27, v35, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v18
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v36, v40, 1.0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v56, v109, s33
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v54, 60, v107
	v_or_b32_e32 v55, 62, v107
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_mul_f32_e32 v62, v42, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v107, 2
	v_add_lshl_u32 v59, v56, v106, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v58, v56, v108, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v39, v0, v29
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v33, -v45, v36, v41
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_fmas_f32 v35, v35, v48, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v42, v36, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v46, -v45, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v46, v35
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
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
	v_div_fixup_f32 v11, v38, v0, v11
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v43, -v37, v33, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v0, v14
	v_rcp_f32_e32 v44, v38
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v33, v43, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v36, s1, v15, v0, v15
	v_fmac_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_div_scale_f32 v41, null, v0, v0, v2
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v40, v36, v44 :: v_dual_fmac_f32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_fma_f32 v46, -v34, v37, 1.0
	v_rcp_f32_e32 v47, v41
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_fma_f32 v49, -v41, v47, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_fmac_f32_e32 v47, v49, v47
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v46, v50, 1.0
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v36, -v41, v38, v49
	v_div_fixup_f32 v15, v35, v0, v15
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_fma_f32 v34, -v34, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_scale_f32 v44, null, v0, v0, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v34, v34, v37, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v37, v0, v2
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v37, null, v0, v0, v7
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v33, v0, v3
	v_fma_f32 v50, -v44, v46, 1.0
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v47, -v40, v43, v38
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_mul_f32_e32 v53, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v33, v36
	v_fmac_f32_e32 v43, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v34, v49, v33
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_fmac_f32_e32 v51, v40, v39
	v_div_fmas_f32 v38, v38, v42, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v35, -v35, v51, v45
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s33, v107
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s33, v108
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s33, v106
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s3
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fixup_f32 v7, v34, v0, v7
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s2, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s33, v105
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v8, v57, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v105, 2
	s_clause 0x1
	buffer_store_b32 v25, v58, s[44:47], 0 offen
	buffer_store_b32 v26, v59, s[44:47], 0 offen
	v_add_lshl_u32 v25, v56, v103, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v56, v104, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v32, 16, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v102, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 18, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 20, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s33, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[44:47], 0 offen
	buffer_store_b32 v28, v25, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v101, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s33, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v56, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 22, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s33, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[44:47], 0 offen
	buffer_store_b32 v30, v57, s[44:47], 0 offen
	v_add_lshl_u32 v26, v56, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 24, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 26, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s33, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 28, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s33, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[44:47], 0 offen
	buffer_store_b32 v17, v25, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s33, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 30, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s33, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[44:47], 0 offen
	buffer_store_b32 v19, v27, s[44:47], 0 offen
	v_add_lshl_u32 v18, v56, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 32, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 34, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s33, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 36, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s33, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[44:47], 0 offen
	buffer_store_b32 v21, v17, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s33, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 38, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s33, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[44:47], 0 offen
	buffer_store_b32 v23, v19, s[44:47], 0 offen
	v_add_lshl_u32 v18, v56, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 40, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v45, 42, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s33, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v46, 44, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s33, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[44:47], 0 offen
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v43, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s33, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v44, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 46, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s33, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[44:47], 0 offen
	buffer_store_b32 v11, v19, s[44:47], 0 offen
	v_add_lshl_u32 v10, v56, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v48, 48, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v49, 50, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s33, v47
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v50, 52, v107
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s33, v48
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[44:47], 0 offen
	buffer_store_b32 v13, v9, s[44:47], 0 offen
	v_add_lshl_u32 v8, v56, v47, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s33, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v48, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s33, v50
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[44:47], 0 offen
	buffer_store_b32 v15, v11, s[44:47], 0 offen
	v_add_lshl_u32 v10, v56, v49, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v51, 54, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v52, 56, v107
	v_or_b32_e32 v53, 58, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s33, v51
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s33, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[44:47], 0 offen
	buffer_store_b32 v1, v9, s[44:47], 0 offen
	v_add_lshl_u32 v1, v56, v51, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s33, v53
	v_cmp_gt_i32_e32 vcc_lo, s33, v54
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[44:47], 0 offen
	buffer_store_b32 v3, v11, s[44:47], 0 offen
	v_add_lshl_u32 v2, v56, v52, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s33, v55
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s3, s2, s29
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v3, v56, v53, 2
	v_add_lshl_u32 v8, v56, v54, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s30
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v55, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s0, s2, s0
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[44:47], 0 offen
	buffer_store_b32 v5, v2, s[44:47], 0 offen
	buffer_store_b32 v6, v3, s[44:47], 0 offen
	buffer_store_b32 v7, v8, s[44:47], 0 offen
	buffer_store_b32 v0, v9, s[44:47], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp163:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 234
		.amdhsa_next_free_sgpr 67
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 234
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 67
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15384
; TotalNumSgprs: 69
; NumVgprs: 234
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 69
; NumVGPRsForWavesPerEU: 234
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     234
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
