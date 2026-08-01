	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[24:27], s[0:1], 0x80
	s_load_b128 s[40:43], s[0:1], 0x4c
	s_load_b32 s54, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v70, 5, v0
	s_load_b64 s[28:29], s[0:1], 0x0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 0x198, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 4, v70
	v_or_b32_e32 v72, 8, v70
	v_or_b32_e32 v73, 12, v70
	v_and_b32_e32 v33, 0x60, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	v_add_nc_u32_e32 v77, 0, v0
	s_mov_b32 s69, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v76, 15, v0
	v_lshrrev_b32_e32 v47, 1, v33
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v81, 0, v18
	v_add_nc_u32_e32 v82, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s24
	s_bitcmp1_b32 s24, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s22, s3, s42
	s_cselect_b32 s55, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s21, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s40
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s18, v72
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s18, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[42:43], null, s54, v70, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s20, s54, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s18, v70
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s18, v71
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v74, s54, 2, v42
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
	s_abs_i32 s15, s41
	s_xor_b32 s17, s40, s41
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
	v_cmp_gt_i32_e32 vcc_lo, s42, v1
	v_cmp_gt_i32_e64 s2, s42, v2
	v_cmp_gt_i32_e64 s4, s42, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[43:44], null, s54, 12, v[42:43]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s42, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v75, s54, 3, v42
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s42, v6
	v_cmp_gt_i32_e64 s8, s42, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s9, s6, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s42, v5
	v_cmp_gt_i32_e64 s10, s42, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s13, s9
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s42, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s12, s11, s13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s42, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s16, s13, s12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s42, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s16, s13, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s42, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s16, s14, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s16, s15
	s_sub_i32 s17, s14, s23
	s_add_i32 s23, s16, 1
	s_sub_i32 s34, s17, s15
	s_cmp_ge_u32 s17, s15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s42, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s16, s23, s16
	s_cselect_b32 s17, s34, s17
	s_add_i32 s23, s16, 1
	s_cmp_ge_u32 s17, s15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s42, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s23, s16
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s22, s22, s18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s20
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s34, s22, s54
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s42, v16
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s34, v42
	v_add_nc_u32_e32 v13, s34, v74
	v_add_nc_u32_e32 v14, s34, v75
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s42, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v15, s34, v43
	v_mad_u64_u32 v[2:3], null, s54, 20, v[1:2]
	v_lshl_add_u32 v16, s54, 4, v1
	v_lshl_add_u32 v17, s54, 5, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s54, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s54, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s54, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s54, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s54, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s54, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s54, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s54, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s54, 60, v[1:2]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s20
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s20
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s2, s33
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s20
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v16, v1, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	buffer_load_u8 v13, v13, s[28:31], 0 offen
	buffer_load_u8 v15, v15, s[28:31], 0 offen
	buffer_load_u8 v2, v2, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s20
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s9, s43, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s20
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v8, v8, s[28:31], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s20
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s20
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v9, v9, s[28:31], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s20
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s16, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v10, v10, s[28:31], 0 offen
	buffer_load_u8 v14, v14, s[28:31], 0 offen
	buffer_load_u8 v17, v1, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v11, v11, s[28:31], 0 offen
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
	v_add_nc_u32_e32 v80, 0, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v47, v76
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s9, s9, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v77, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v77, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v77, v4 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v77, v8 offset:1536
	ds_store_b8 v80, v12
	ds_store_b8 v80, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v80, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v80, v9 offset:1536
	ds_store_b8 v81, v13
	ds_store_b8 v81, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v81, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v81, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v82, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v82, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v82, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v82, v11 offset:1536
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v20
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s70, s9, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s24, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s7, s18, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s27
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s7, s7, s27
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s43, s2
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
	s_and_b32 s69, s4, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s70, s70, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s21
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v2
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v2, s18, v1
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s18, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s43, s2
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
	s_min_i32 s70, s70, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x38
	s_load_b32 s68, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v69, s22, v1
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_bfe_u32 v67, v0, 4, 1
	v_cmp_gt_i32_e64 s2, s42, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v78, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v79, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v68, 2, v67
	v_or_b32_e32 v66, 4, v67
	v_or_b32_e32 v65, 6, v67
	v_or_b32_e32 v63, 8, v67
	v_or_b32_e32 v64, 10, v67
	v_or_b32_e32 v62, 12, v67
	v_or_b32_e32 v61, 14, v67
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
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s69, s70
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[44:51], s[0:1], 0x8
	v_dual_mov_b32 v8, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v69
	s_clause 0x2
	s_load_b32 s71, s[0:1], 0x7c
	s_load_b128 s[56:59], s[0:1], 0x28
	s_load_b128 s[12:15], s[0:1], 0x6c
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 16, v0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_lshlrev_b32_e32 v2, 5, v76
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v33
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 4, v78
	v_lshrrev_b32_e32 v38, 3, v33
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_and_b32 v5, 14, v0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v6, 2, v78
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s49, 0xffff
	s_mov_b32 s28, s48
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_lshlrev_b32 v7, 2, v33
	buffer_load_u16 v34, v1, s[28:31], 0 offen
	v_mov_b32_e32 v33, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_xor_b32 s8, s3, s40
	s_mul_f32 s7, s6, 0x4f7ffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v44, 63, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v83, 6, v79
	s_ashr_i32 s1, s8, 31
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v50, 1, v5
	s_xor_b32 s8, s19, s1
	s_cvt_u32_f32 s7, s7
	v_and_or_b32 v85, v3, 24, v2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v48, s18, v36
	v_and_or_b32 v49, v3, 60, v37
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v51, 5, v39
	v_lshl_or_b32 v52, v5, 8, v6
	v_lshl_or_b32 v54, v76, 3, v7
	v_dual_cndmask_b32 v57, 0x1054, v8 :: v_dual_mov_b32 v20, v33
	v_dual_mov_b32 v27, v33 :: v_dual_cndmask_b32 v40, 0x3276, v40
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[45:46], null, s68, v83, v[44:45]
	s_sub_i32 s6, 0, s16
	s_sub_i32 s19, s8, s1
	s_mul_i32 s6, s6, s7
	s_mul_i32 s1, s19, s40
	v_lshl_add_u32 v41, v79, 2, 0
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v58, 1, v44
	v_lshrrev_b32_e32 v53, 2, v4
	v_mul_u32_u24_e32 v56, 0x48, v5
	v_or_b32_e32 v37, v85, v37
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v109, 24, v48
	v_or_b32_e32 v110, 32, v48
	v_xor_b32_e32 v38, v49, v38
	v_or3_b32 v98, v52, v51, v50
	v_xor_b32_e32 v49, v54, v47
	v_lshl_or_b32 v51, v57, 8, v57
	v_lshl_or_b32 v40, v40, 8, v40
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s6, s7, s6
	s_abs_i32 s22, s3
	s_add_i32 s7, s7, s6
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[46:47], null, s68, 6, v[45:46]
	v_mov_b16_e32 v35.l, 0
	v_lshrrev_b32_e32 v55, 1, v4
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v104, s27, v109
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v97, s27, v48
	v_mov_b32_e32 v24, v33
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v105, s27, v110
	v_dual_mov_b32 v15, v33 :: v_dual_and_b32 v40, 0x760076, v40
	v_mov_b32_e32 v16, v33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v59, 8, v48
	v_or_b32_e32 v60, 16, v48
	v_or_b32_e32 v111, 40, v48
	v_or_b32_e32 v112, 48, v48
	v_or_b32_e32 v113, 56, v48
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s42, v48
	v_xor_b32_e32 v48, 8, v85
	v_lshl_or_b32 v50, v39, 2, v56
	s_mul_hi_u32 s23, s22, s7
	v_cmp_gt_i32_e64 s7, s42, v109
	v_cmp_gt_i32_e64 s8, s42, v110
	v_lshl_or_b32 v109, v39, 6, v38
	v_xor_b32_e32 v47, 12, v98
	v_or_b32_e32 v110, v49, v53
	v_and_b32_e32 v49, 0x540054, v51
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	v_xad_u32 v52, v37, 8, 0
	v_xad_u32 v54, v37, 16, 0
	v_mul_lo_u32 v36, s15, v36
	s_ashr_i32 s17, s9, 4
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v106, s27, v111
	v_mov_b32_e32 v23, v33
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v107, s27, v112
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v119, 0, v47
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s42, v111
	v_cmp_gt_i32_e64 s10, s42, v112
	v_xor_b32_e32 v56, 16, v98
	v_or3_b32 v111, v50, v55, v70
	v_add_nc_u32_e32 v112, 0, v48
	v_xor_b32_e32 v55, 0x810, v109
	v_lshl_or_b32 v138, v49, 4, v49
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v120, 0, v56
	v_xor_b32_e32 v57, 20, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v139, 0, v55
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v102, s27, v59
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v108, s27, v113
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v103, s27, v60
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s27, s23, s16
	s_ashr_i32 s5, s5, 31
	s_ashr_i32 s6, s3, 31
	s_sub_i32 s22, s22, s27
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v121, 0, v57
	s_xor_b32 s24, s6, s5
	s_add_i32 s27, s23, 1
	s_sub_i32 s28, s22, s16
	s_cmp_ge_u32 s22, s16
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s14
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s14, s27, s23
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s21, s19, s41
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s42, v59
	v_xor_b32_e32 v59, 28, v98
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s13, s19, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s19, s28, s22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s42, v60
	v_xor_b32_e32 v60, 0x240, v110
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s22, s14, 1
	s_cmp_ge_u32 s19, s16
	v_xor_b32_e32 v114, 16, v85
	v_xor_b32_e32 v115, 24, v85
	v_xor_b32_e32 v38, 4, v98
	v_xor_b32_e32 v39, 8, v98
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s18, s15, s18
	v_xor_b32_e32 v141, 16, v111
	v_xor_b32_e32 v142, 32, v111
	v_xor_b32_e32 v143, 48, v111
	v_xor_b32_e32 v144, 64, v111
	v_xor_b32_e32 v145, 0x50, v111
	v_xor_b32_e32 v146, 0x60, v111
	v_xor_b32_e32 v147, 0x70, v111
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s14, s22, s14
	v_add_nc_u32_e32 v140, 0, v60
	s_add_i32 s73, s13, s18
	s_xor_b32 s13, s14, s24
	s_add_i32 s73, s73, s3
	s_sub_i32 s3, s13, s24
	v_lshl_add_u32 v84, v76, 1, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_mov_b32 v156, 0xff800000
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_mov_b32 v158, 0xff800000
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v160, 0xff800000
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v162, 0xff800000
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v32, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s68, v44
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v116, s26, v97
	v_mov_b32_e32 v2, v33
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v118, 0, v39
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v117, 0, v38
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v94, 2, v83
	v_or_b32_e32 v95, 4, v83
	v_or_b32_e32 v96, 6, v83
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v100, s68, 1, v45
	v_lshl_add_u32 v101, s68, 2, v45
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s11, s42, v113
	v_add_nc_u32_e32 v113, 0, v114
	v_add_nc_u32_e32 v114, 0, v115
	v_subrev_nc_u32_e32 v115, s25, v97
	v_subrev_nc_u32_e32 v124, s25, v102
	v_subrev_nc_u32_e32 v125, s25, v103
	v_subrev_nc_u32_e32 v126, s25, v104
	v_subrev_nc_u32_e32 v127, s25, v105
	v_subrev_nc_u32_e32 v128, s25, v106
	v_subrev_nc_u32_e32 v129, s25, v107
	v_subrev_nc_u32_e32 v130, s25, v108
	v_add_nc_u32_e32 v133, s26, v104
	v_add_nc_u32_e32 v134, s26, v105
	v_add_nc_u32_e32 v135, s26, v106
	v_add_nc_u32_e32 v136, s26, v107
	v_add_nc_u32_e32 v137, s26, v108
	v_and_b32_e32 v138, 0x5040504, v138
	v_add_nc_u32_e32 v141, 0, v141
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v147, 0, v147
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s42, s17, 3
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s76, s3, s21
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s60, s50
	s_mov_b32 s48, s58
	s_mov_b32 s64, s46
	s_mov_b32 s46, s62
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s61, s51, 0xffff
	s_and_b32 s49, s59, 0xffff
	s_and_b32 s65, s47, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s47, s63
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_mul_i32 s74, s76, s43
	.loc	1 976 30 is_stmt 1              ; attention.py:976:30
	s_mul_i32 s75, s76, s42
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s76, s76, s17
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v34.l
	v_add_nc_u32_e32 v99, v41, v58
	v_add_nc_u32_e32 v41, 0, v37
	v_xad_u32 v37, v37, 24, 0
	ds_load_b64 v[47:48], v41
	ds_load_b64 v[49:50], v52
	ds_load_b64 v[51:52], v54
	ds_load_b64 v[53:54], v37
	v_lshl_or_b32 v37, v40, 4, v40
	v_xor_b32_e32 v58, 24, v98
	v_dual_mov_b32 v7, v33 :: v_dual_mul_f32 v152, s12, v35
	v_add_nc_u32_e32 v123, 0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[55:56], null, s71, v76, v[36:37]
	v_add_nc_u32_e32 v122, 0, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v154, v152 :: v_dual_add_nc_u32 v131, s26, v102
	v_dual_mov_b32 v153, v152 :: v_dual_add_nc_u32 v132, s26, v103
	v_and_b32_e32 v148, 0x7060706, v37
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[56:57], null, s15, 24, v[55:56]
	v_lshl_add_u32 v149, s15, 3, v55
	v_lshl_add_u32 v150, s15, 4, v55
	v_lshl_add_u32 v151, s15, 5, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[57:58], null, s15, 40, v[55:56]
	v_mad_u64_u32 v[58:59], null, s15, 48, v[55:56]
	v_mad_u64_u32 v[59:60], null, s15, 56, v[55:56]
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v60, v152
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s3, s69, s71
	.loc	1 964 36                        ; attention.py:964:36
	s_mov_b32 s50, s62
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s73, s3
	.loc	1 964 36                        ; attention.py:964:36
	s_mov_b32 s51, s63
	v_add_lshl_u32 v180, s3, v55, 2
	v_add_lshl_u32 v181, s3, v149, 2
	v_add_lshl_u32 v182, s3, v150, 2
	v_add_lshl_u32 v183, s3, v56, 2
	v_add_lshl_u32 v184, s3, v151, 2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s39
	v_add_lshl_u32 v185, s3, v57, 2
	v_add_lshl_u32 v186, s3, v58, 2
	v_add_lshl_u32 v187, s3, v59, 2
	v_cndmask_b32_e64 v181, 0x80000000, v181, s37
	v_cndmask_b32_e64 v182, 0x80000000, v182, s41
	v_cndmask_b32_e64 v183, 0x80000000, v183, s36
	v_cndmask_b32_e64 v184, 0x80000000, v184, s40
	v_cndmask_b32_e64 v185, 0x80000000, v185, s35
	v_cndmask_b32_e64 v186, 0x80000000, v186, s77
	v_cndmask_b32_e64 v187, 0x80000000, v187, s38
	s_clause 0x7
	buffer_load_b32 v190, v180, s[48:51], 0 offen
	buffer_load_b32 v191, v181, s[48:51], 0 offen
	buffer_load_b32 v192, v182, s[48:51], 0 offen
	buffer_load_b32 v193, v183, s[48:51], 0 offen
	buffer_load_b32 v194, v184, s[48:51], 0 offen
	buffer_load_b32 v196, v186, s[48:51], 0 offen
	buffer_load_b32 v195, v185, s[48:51], 0 offen
	buffer_load_b32 v197, v187, s[48:51], 0 offen
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s3, s69, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v198, v34
	v_cvt_f32_i32_e32 v200, v35
	v_cvt_f32_i32_e32 v199, v38
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v35, v164, v164 :: v_dual_add_nc_u32 v34, 0, v109
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v164, s3, v83
	v_or_b32_e32 v206, s3, v94
	v_or_b32_e32 v207, s3, v95
	v_or_b32_e32 v208, s3, v96
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s3, s75
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s3, s3, s68
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v211, v60, v200 :: v_dual_add_nc_u32 v216, s3, v45
	v_dual_mul_f32 v215, v152, v199 :: v_dual_add_nc_u32 v218, s3, v101
	v_add_nc_u32_e32 v217, s3, v100
	v_add_nc_u32_e32 v219, s3, v46
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s3, s42, v164
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v164, v164, 1, 1
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v204, v37
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v37, v166, v166 :: v_dual_max_f32 v38, v167, v167
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s23, s43, v164
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v203, v40
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v40, v168, v168 :: v_dual_add_nc_u32 v189, 0, v111
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v202, v36
	v_cvt_f32_i32_e32 v201, v39
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v36, v165, v165 :: v_dual_add_nc_u32 v39, 0, v98
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v205, v41
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v41, v169, v169 :: v_dual_add_nc_u32 v188, 0, v110
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s21, s69, 4
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v206, v206, 1, 1
	v_lshl_or_b32 v207, v207, 1, 1
	v_lshl_or_b32 v208, v208, 1, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s21, s21, s76
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s33, s0, s3
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s21, s21, s68
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s22, s43, v206
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v220, s21, v44, 1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s21, s43, v207
	v_cmp_gt_i32_e64 s3, s43, v208
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v180.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v184.h, v174.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v209, v154, v204 :: v_dual_mul_f32 v210, v153, v202
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v184.l, v180.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v212, v152, v198 :: v_dual_mul_f32 v205, v154, v205
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v182.h, v176.l
	v_mov_b16_e64 v182.l, v180.l
	v_mov_b16_e64 v181.h, v178.l
	v_mov_b16_e64 v181.l, v180.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v187.h, v172.l
	v_mov_b16_e64 v187.l, v180.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v183.h, v177.l
	v_mov_b16_e64 v185.h, v175.l
	v_mov_b16_e64 v186.h, v173.l
	v_mov_b16_e64 v183.l, v180.l
	v_mov_b16_e64 v185.l, v180.l
	v_mov_b16_e64 v186.l, v180.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v213, v153, v203 :: v_dual_mul_f32 v214, v60, v201
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v201.h, v180.l
	v_mov_b16_e64 v200.h, v180.l
	v_mov_b16_e64 v199.h, v180.l
	v_mov_b16_e64 v198.h, v180.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v165.h, v180.l
	v_mov_b16_e64 v166.h, v180.l
	v_mov_b16_e64 v167.h, v180.l
	v_mov_b16_e64 v168.h, v180.l
	v_mov_b16_e64 v169.h, v180.l
	v_mov_b16_e64 v202.h, v180.l
	v_mov_b16_e64 v203.h, v180.l
	v_mov_b16_e64 v204.h, v180.l
	.loc	1 978 32                        ; attention.py:978:32
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v220, 0x80000000, v220, s0
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v163
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v170, v170, v170 :: v_dual_max_f32 v171, v171, v171
	v_dual_max_f32 v172, v155, v155 :: v_dual_max_f32 v173, v156, v156
	v_dual_max_f32 v174, v157, v157 :: v_dual_max_f32 v175, v158, v158
	v_dual_max_f32 v176, v159, v159 :: v_dual_max_f32 v177, v160, v160
	v_dual_max_f32 v178, v161, v161 :: v_dual_max_f32 v179, v162, v162
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s17, 0xff800000, v156
	v_cmp_neq_f32_e64 s16, 0xff800000, v157
	v_cmp_neq_f32_e64 s14, 0xff800000, v159
	v_cmp_neq_f32_e64 s18, 0xff800000, v155
	v_cmp_neq_f32_e64 s15, 0xff800000, v158
	v_cmp_neq_f32_e64 s12, 0xff800000, v161
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v162
	v_cmp_neq_f32_e64 s13, 0xff800000, v160
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s69, s69, 16
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v164, 0xff800000, v190, s39
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v190, 0xff800000, v191, s37
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v191, 0xff800000, v192, s41
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v192, 0xff800000, v193, s36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v193, 0xff800000, v194, s40
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v194, 0xff800000, v196, s77
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v195, 0xff800000, v195, s35
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v196, 0xff800000, v197, s38
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v191
	v_cmp_neq_f32_e64 s24, 0xff800000, v164
	v_cmp_neq_f32_e64 s28, 0xff800000, v192
	v_cmp_neq_f32_e64 s30, 0xff800000, v195
	v_cmp_neq_f32_e64 s31, 0xff800000, v194
	v_cmp_neq_f32_e64 s34, 0xff800000, v196
	v_cmp_neq_f32_e64 s29, 0xff800000, v193
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s27, s41, s27
	s_and_b32 s25, s39, s24
	s_and_b32 s28, s36, s28
	s_and_b32 s24, s77, s31
	s_and_b32 s31, s35, s30
	s_and_b32 s30, s38, s34
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	ds_store_2addr_b32 v34, v164, v191 offset1:32
	ds_store_2addr_b32 v34, v193, v194 offset0:64 offset1:96
	ds_store_2addr_b32 v139, v190, v192 offset1:32
	ds_store_2addr_b32 v139, v195, v196 offset0:64 offset1:96
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v192, 0, 1, s27
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v190
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v190, 0, 1, s25
	v_cndmask_b32_e64 v194, 0, 1, s28
	v_cndmask_b32_e64 v196, 0, 1, s30
	s_and_b32 s29, s40, s29
	v_cndmask_b32_e64 v164, 0, 1, s24
	v_cndmask_b32_e64 v193, 0, 1, s29
	v_mov_b16_e64 v166.l, v192.l
	v_cndmask_b32_e64 v195, 0, 1, s31
	v_mov_b16_e64 v167.l, v190.l
	v_mov_b16_e64 v168.l, v196.l
	v_mov_b16_e64 v190.l, v194.l
	s_and_b32 s26, s37, s26
	v_mov_b16_e64 v165.l, v193.l
	v_lshlrev_b16 v164.l, 8, v164.l
	v_lshlrev_b16 v164.h, 8, v166.l
	v_cndmask_b32_e64 v191, 0, 1, s26
	v_mov_b16_e64 v169.l, v195.l
	v_lshlrev_b16 v166.l, 8, v168.l
	v_lshlrev_b16 v168.l, 8, v190.l
	v_or_b16 v194.h, v165.l, v164.l
	v_or_b16 v194.l, v167.l, v164.h
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_cndmask_b32_e64 v197, 0x80000000, v216, s33
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v164.h, v169.l, v166.l
	v_or_b16 v164.l, v191.l, v168.l
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v206, v39
	ds_load_b32 v207, v117
	ds_load_b32 v208, v118
	ds_load_b32 v216, v119
	ds_load_b32 v221, v120
	ds_load_b32 v222, v121
	ds_load_b32 v223, v122
	ds_load_b32 v224, v123
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v188, v194
	ds_store_b32 v140, v164
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v164, v189
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v164, v141
	ds_load_u8_d16 v165, v144
	ds_load_u8_d16 v166, v143
	ds_load_u8_d16 v167, v142
	ds_load_u8_d16 v168, v145
	ds_load_u8_d16 v169, v146
	ds_load_u8_d16 v188, v147
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s69, s70
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v191, 0x3fb8aa3b, v206
	v_dual_mul_f32 v193, 0x3fb8aa3b, v207 :: v_dual_mul_f32 v192, 0x3fb8aa3b, v208
	v_mul_f32_e32 v190, 0x3fb8aa3b, v216
	v_dual_mul_f32 v194, 0x3fb8aa3b, v221 :: v_dual_mul_f32 v189, 0x3fb8aa3b, v222
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v164.l, 1, v164.l
	v_and_b16 v164.h, 1, v164.h
	v_and_b16 v165.l, 1, v165.l
	v_and_b16 v166.l, 1, v166.l
	v_and_b16 v167.l, 1, v167.l
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v195, 0x3fb8aa3b, v224 :: v_dual_fmac_f32 v192, v210, v181
	v_dual_mul_f32 v196, 0x3fb8aa3b, v223 :: v_dual_fmac_f32 v191, v212, v184
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v194, v215, v187
	v_fmac_f32_e32 v190, v209, v180
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v168.l, 1, v168.l
	v_and_b16 v169.l, 1, v169.l
	v_and_b16 v180.l, 1, v188.l
	v_cmp_eq_u16_e64 s37, 1, v164.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v193, v211, v182 :: v_dual_fmac_f32 v196, v213, v185
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s36, 1, v164.h
	v_cmp_eq_u16_e64 s35, 1, v167.l
	v_cmp_eq_u16_e64 s34, 1, v166.l
	v_cmp_eq_u16_e64 s41, 1, v165.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v189, v214, v186
	v_fmac_f32_e32 v195, v205, v183
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s38, 1, v180.l
	v_cmp_eq_u16_e64 s39, 1, v169.l
	v_cmp_eq_u16_e64 s40, 1, v168.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v183, 0xff800000, v191, s37
	v_cndmask_b32_e64 v182, 0xff800000, v193, s36
	v_cndmask_b32_e64 v181, 0xff800000, v192, s35
	v_cndmask_b32_e64 v164, 0xff800000, v190, s34
	v_cndmask_b32_e64 v207, 0xff800000, v194, s41
	v_cndmask_b32_e64 v184, 0xff800000, v195, s38
	v_cndmask_b32_e64 v205, 0xff800000, v196, s39
	v_cndmask_b32_e64 v206, 0xff800000, v189, s40
	ds_store_b32 v39, v183
	ds_store_b32 v117, v182
	ds_store_b32 v118, v181
	ds_store_b32 v119, v164
	ds_store_b32 v120, v207
	ds_store_b32 v121, v206
	ds_store_b32 v122, v205
	ds_store_b32 v123, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[191:192], v139 offset1:32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v39, v183, v182, v181
	v_max3_f32 v180, v164, v207, v206
	v_max_f32_e32 v185, v205, v184
.Ltmp2:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v186, 0x80000000, v217, s33
	v_cndmask_b32_e64 v187, 0x80000000, v218, s33
	v_cndmask_b32_e64 v188, 0x80000000, v219, s33
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[189:190], v34 offset1:32
	ds_load_2addr_b32 v[193:194], v34 offset0:64 offset1:96
	ds_load_2addr_b32 v[195:196], v139 offset0:64 offset1:96
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v212, v192
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v34, v39, v180, v185
.Ltmp5:
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v39, v197, s[64:67], 0 offen
	buffer_load_u8 v185, v186, s[64:67], 0 offen
	buffer_load_u8 v186, v187, s[64:67], 0 offen
	buffer_load_u8 v187, v188, s[64:67], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v188, v220, s[56:59], 0 offen
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v208, v191 :: v_dual_max_f32 v213, v192, v192
	v_permlanex16_b32 v180, v34, s72, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(2)
	v_mov_b32_e32 v210, v190
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v218, v194 :: v_dual_max_f32 v197, v189, v189
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v216, v195
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v180, v163, v34, v180
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v34, v189 :: v_dual_max_f32 v209, v191, v191
	v_mov_b32_dpp v210, v210 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v211, v190, v190 :: v_dual_mov_b32 v214, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v163, v163, v180
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v208, v208 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v218, v218 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v210, v210, v210
.Ltmp13:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v163, v163
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v215, v193, v193 :: v_dual_mov_b32 v220, v196
	v_dual_max_f32 v219, v194, v194 :: v_dual_sub_f32 v164, v164, v180
	v_dual_max_f32 v221, v196, v196 :: v_dual_max_f32 v34, v34, v34
.Ltmp15:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v181, v181, v180 :: v_dual_max_f32 v218, v218, v218
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v216, v216 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v208, v208, v208
	v_dual_max_f32 v212, v212, v212 :: v_dual_max_f32 v217, v195, v195
.Ltmp18:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v182, v182, v180
	v_dual_sub_f32 v183, v183, v180 :: v_dual_max_f32 v214, v214, v214
	v_dual_sub_f32 v207, v207, v180 :: v_dual_max_f32 v34, v197, v34
	v_sub_f32_e32 v205, v205, v180
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v220, v220 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v197, v209, v208
	v_dual_max_f32 v209, v213, v212 :: v_dual_max_f32 v212, v219, v218
.Ltmp21:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v184, v184, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v163, 0, v163, s19
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v216, v216, v216
.Ltmp23:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v207, v207
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v220, v220, v220 :: v_dual_mul_f32 v27, v27, v163
	v_max_f32_e32 v208, v211, v210
.Ltmp25:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v205, v205
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v163
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v211, v217, v216
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v217, v209
.Ltmp28:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v183, v183
	v_exp_f32_e32 v182, v182
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v210, v215, v214 :: v_dual_max_f32 v213, v221, v220
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v216, v208
	v_mov_b32_e32 v214, v34
.Ltmp31:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v164, 0, v164, s34
	v_cndmask_b32_e64 v181, 0, v181, s35
	v_cndmask_b32_e64 v207, 0, v207, s41
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v184, 0, v184, s38
	v_cndmask_b32_e64 v205, 0, v205, s39
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v218, v210 :: v_dual_mul_f32 v29, v29, v163
	v_mov_b32_e32 v221, v213
	v_mov_b32_dpp v214, v214 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v206, v206, v180 :: v_dual_mov_b32 v215, v197
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v182, 0, v182, s36
	v_cndmask_b32_e64 v183, 0, v183, s37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v9, v9, v163 :: v_dual_max_f32 v214, v214, v214
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v167.l, v164.h
	v_mov_b16_e64 v168.l, v181.h
	v_mov_b16_e64 v202.l, v207.h
	v_mov_b16_e64 v203.l, v184.h
	v_mov_b16_e64 v204.l, v205.h
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v216, v216 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v218, v218 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v221, v221 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v163
	v_dual_mul_f32 v19, v19, v163 :: v_dual_and_b32 v168, 1, v168
	v_dual_mul_f32 v21, v21, v163 :: v_dual_and_b32 v202, 1, v202
	v_dual_mul_f32 v23, v23, v163 :: v_dual_and_b32 v204, 1, v204
	v_dual_mul_f32 v11, v11, v163 :: v_dual_max_f32 v216, v216, v216
	v_dual_mul_f32 v13, v13, v163 :: v_dual_max_f32 v218, v218, v218
	v_dual_mul_f32 v1, v1, v163 :: v_dual_max_f32 v34, v34, v214
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v165.l, v182.h
	v_mov_b16_e64 v166.l, v183.h
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v215, v215 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v203, 1, v203
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v221, v221, v221
.Ltmp39:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v167, 1, v167
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v206, v206
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v163 :: v_dual_and_b32 v165, 1, v165
	v_dual_mul_f32 v17, v17, v163 :: v_dual_and_b32 v166, 1, v166
	v_mul_f32_e32 v18, v18, v163
	v_mul_f32_e32 v20, v20, v163
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s34, v164, v164
	v_cmp_o_f32_e64 s35, v181, v181
	v_cmp_o_f32_e64 s38, v184, v184
	v_cmp_o_f32_e64 s39, v205, v205
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v217, v217 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v168, v181, v168, 0x7fff
	v_add3_u32 v184, v184, v203, 0x7fff
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v203, v208, v216 :: v_dual_max_f32 v208, v213, v221
.Ltmp43:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v164, v164, v167, 0x7fff
	v_add3_u32 v167, v207, v202, 0x7fff
	v_add3_u32 v202, v205, v204, 0x7fff
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v205, v210, v218
	v_max_f32_e32 v215, v215, v215
.Ltmp45:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v30, v30, v163 :: v_dual_max_f32 v217, v217, v217
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s19, v182, v182
	v_cmp_o_f32_e64 s33, v183, v183
	v_add3_u32 v166, v183, v166, 0x7fff
	v_add3_u32 v165, v182, v165, 0x7fff
	v_cndmask_b16 v182.l, 0x7fff, v168.h, s35
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v168, v205
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v197, v197, v215
.Ltmp48:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v206, 0, v206, s40
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v219, v211 :: v_dual_mov_b32 v220, v212
.Ltmp50:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v163
	v_dual_mul_f32 v3, v3, v163 :: v_dual_max_f32 v204, v209, v217
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s37, v207, v207
	v_cndmask_b16 v181.h, 0x7fff, v165.h, s19
	v_cndmask_b16 v181.l, 0x7fff, v166.h, s33
	v_cndmask_b16 v182.h, 0x7fff, v164.h, s34
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v34
	v_mov_b32_e32 v166, v203
.Ltmp52:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v24, v24, v163 :: v_dual_mov_b32 v165, v197
	v_mul_f32_e32 v10, v10, v163
	v_dual_mul_f32 v14, v14, v163 :: v_dual_mov_b32 v209, v208
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v169.l, v206.h
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v219, v219 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v220, v220 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v183.l, 0x7fff, v167.h, s37
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v167, v204
	v_mov_b32_dpp v164, v164 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v28, v28, v163 :: v_dual_and_b32 v169, 1, v169
	v_dual_mul_f32 v15, v15, v163 :: v_dual_max_f32 v220, v220, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v16, v16, v163 :: v_dual_max_f32 v165, v165, v165
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v219, v219, v219 :: v_dual_max_f32 v164, v164, v164
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v167, v167 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v209, v209 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v166, v166, v166
.Ltmp60:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v163 :: v_dual_max_f32 v207, v212, v220
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v4, v4, v163 :: v_dual_max_f32 v209, v209, v209
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s36, v206, v206
	v_add3_u32 v169, v206, v169, 0x7fff
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v167, v167, v167 :: v_dual_max_f32 v168, v168, v168
	v_max_f32_e32 v34, v34, v164
	v_dual_max_f32 v164, v197, v165 :: v_dual_max_f32 v165, v203, v166
	v_max_f32_e32 v206, v211, v219
.Ltmp62:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v183.h, 0x7fff, v169.h, s36
	v_cndmask_b16 v184.l, 0x7fff, v202.h, s39
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v202, v207 :: v_dual_max_f32 v197, v208, v209
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v166, v204, v167 :: v_dual_max_f32 v167, v205, v168
.Ltmp65:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v12, v12, v163 :: v_dual_mov_b32 v169, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v209, v197
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v205, v166
	v_mov_b32_e32 v203, v164
	v_mov_b32_dpp v169, v169 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v163
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v202, v202, v202
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v205, v205 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v169, v169, v169
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v209, v209 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v205, v205, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v203, v203, v203 :: v_dual_max_f32 v168, v206, v169
	v_dual_max_f32 v169, v207, v202 :: v_dual_mov_b32 v202, v34
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v206, v167 :: v_dual_max_f32 v209, v209, v209
	v_mov_b32_e32 v207, v168
.Ltmp75:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v197, v197, v209
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v207, v207 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v204, v165
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v202, v202, v202
.Ltmp80:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v184.h, 0x7fff, v184.h, s38
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v171, v171, v197
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v207, v207, v207
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v204, v204 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v34, v34, v202
	v_dual_max_f32 v202, v164, v203 :: v_dual_max_f32 v179, v179, v197
.Ltmp84:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v220, v182, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v204, v204, v204
	v_max_f32_e32 v206, v206, v206
.Ltmp86:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v222, v183, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v224, v184, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v219, v220, v182, v138
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v203, v165, v204
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v208, v169
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v204, v166, v205 :: v_dual_max_f32 v205, v167, v206
	v_max_f32_e32 v206, v168, v207
.Ltmp90:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v220, v220, v182, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v208, v208 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v167, v38, v204
	v_dual_max_f32 v165, v36, v202 :: v_dual_max_f32 v166, v37, v203
	v_max_f32_e32 v175, v175, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v208, v208, v208
.Ltmp94:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v168, v40, v205 :: v_dual_max_f32 v173, v173, v202
	v_dual_max_f32 v176, v176, v205 :: v_dual_sub_f32 v37, v158, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v207, v169, v208 :: v_dual_max_f32 v164, v35, v34
.Ltmp96:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v35, v156, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v169, v41, v206 :: v_dual_sub_f32 v38, v159, v176
	v_max_f32_e32 v178, v178, v207
	v_max_f32_e32 v174, v174, v203
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v156, v189, v164 :: v_dual_sub_f32 v189, v196, v171
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v172, v172, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v41, v161, v178
	v_dual_sub_f32 v36, v157, v174 :: v_dual_sub_f32 v159, v192, v167
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v157, v191, v165
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v189, v189
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v170, v170, v207 :: v_dual_max_f32 v177, v177, v206
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v34, v155, v172 :: v_dual_sub_f32 v155, v162, v179
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v35, v35
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v192, v157
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v158, v190, v166 :: v_dual_sub_f32 v161, v195, v169
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v37, v37
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v191, v156
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v189, 0, v189, s30
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v162, v194, v170
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v194, v159
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v41, v41
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v156, 0, v35, s17
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v197, v162
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v192, s26
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v40, v160, v177
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v160, v193, v168
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v193, v158
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v190, v155
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v196, v161
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v155, 0, v34, s18
	v_cndmask_b32_e64 v158, 0, v37, s15
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v191, s25
	v_cndmask_b32_e64 v37, 0, v194, s28
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v191, v35
.Ltmp98:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v40, v40
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v157, 0, v36, s16
	v_cndmask_b32_e64 v161, 0, v41, s12
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v193, s27
	v_cndmask_b32_e64 v41, 0, v197, s24
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v193, v37
	v_mov_b32_dpp v191, v191 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v38, v38
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v195, v160
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v162, 0, v190, vcc_lo
	v_cndmask_b32_e64 v160, 0, v40, s13
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v196, s31
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v193, v193 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v190, v34 :: v_dual_add_f32 v35, v35, v191
	v_mov_b32_e32 v196, v41
	v_mov_b32_e32 v197, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v193
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v190, v190 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v191, v35
	v_mov_b32_dpp v196, v196 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v192, v36
.Ltmp104:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v159, 0, v38, s14
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v195, s29
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v195, v40
	v_mov_b32_dpp v197, v197 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v190 :: v_dual_mov_b32 v193, v37
	v_add_f32_e32 v41, v41, v196
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v192, v192 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v194, v38 :: v_dual_add_f32 v189, v189, v197
	v_mov_b32_dpp v195, v195 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v192
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v190, v34 :: v_dual_add_f32 v35, v35, v191
	v_mov_b32_e32 v196, v41
	v_mov_b32_dpp v193, v193 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v40, v40, v195 :: v_dual_mov_b32 v197, v189
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v190, v190 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v193
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v191, v35
	v_mov_b32_dpp v196, v196 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v192, v36
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v38, v194 :: v_dual_mov_b32 v195, v40
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v197, v197 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v190 :: v_dual_mov_b32 v193, v37
	v_add_f32_e32 v41, v41, v196
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v192, v192 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v191, v191 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v194, v38 :: v_dual_add_f32 v189, v189, v197
	v_mov_b32_dpp v195, v195 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v192
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v190, v34 :: v_dual_add_f32 v35, v35, v191
	v_mov_b32_e32 v196, v41
	v_mov_b32_dpp v193, v193 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v194, v194 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v40, v40, v195 :: v_dual_mov_b32 v197, v189
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v190, v190 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v191, v37, v193
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v37, v35
	v_mov_b32_dpp v196, v196 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v192, v36
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v38, v194 :: v_dual_mov_b32 v195, v40
	v_dual_add_f32 v34, v34, v190 :: v_dual_mov_b32 v193, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v41, v41, v196
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v192, v192 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v194, v38
	v_mov_b32_dpp v195, v195 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v190, v36, v192
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v36, v34 :: v_dual_add_f32 v225, v189, v197
	v_mov_b32_dpp v194, v194 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v35, v37 :: v_dual_add_f32 v40, v40, v195
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v189, v190
.Ltmp130:
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v195, 15, v185
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v201.l, 4, v39.l
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v192, v38, v194 :: v_dual_mov_b32 v197, v40
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v202, v41
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v36
.Ltmp136:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.l, v39.l, 15
	v_and_b16 v36.h, v185.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v37.l, v186.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v200.l, 4, v185.l
	v_lshrrev_b16 v199.l, 4, v186.l
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v198.l, 4, v187.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v185, 0, v201, s23
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v38, 15, v39
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v188
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v196, 15, v186
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v194, v192 :: v_dual_and_b32 v203, 15, v187
.Ltmp138:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v37.h, v187.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e64 v186, 0, v200, s22
	v_cndmask_b32_e64 v187, 0, v199, s21
	v_cndmask_b32_e64 v188, 0, v198, s3
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v198, -16, v38
	v_or_b32_e32 v199, -16, v195
	v_or_b32_e32 v200, -16, v196
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v36.l
	v_cmp_lt_u16_e64 s3, 7, v36.h
	v_cmp_lt_u16_e64 s12, 7, v37.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v36, -16, v203
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s13, 7, v37.h
.Ltmp139:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v226, v225 :: v_dual_cndmask_b32 v37, v38, v198
.Ltmp140:
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v38, v195, v199, s3
	v_cndmask_b32_e64 v195, v196, v200, s12
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v196, -16, v185
	v_or_b32_e32 v198, -16, v186
	v_or_b32_e32 v199, -16, v187
	v_or_b32_e32 v200, -16, v188
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v185
	v_cmp_lt_u32_e64 s3, 7, v186
	v_cmp_lt_u32_e64 s12, 7, v187
	v_cmp_lt_u32_e64 s14, 7, v188
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v36, v203, v36, s13
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v185, v185, v196, vcc_lo
	v_cndmask_b32_e64 v186, v186, v198, s3
	v_cndmask_b32_e64 v187, v187, v199, s12
	v_cndmask_b32_e64 v188, v188, v200, s14
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v195, v195
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v185, v185
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_mul_f32_e32 v37, v37, v39
	v_mul_f32_e32 v38, v38, v39
	v_mul_f32_e32 v195, v195, v39
	v_dual_mul_f32 v36, v39, v36 :: v_dual_mul_f32 v185, v185, v39
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v193, v193 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v186, v186, v39
	v_mul_f32_e32 v187, v39, v187
	v_mul_f32_e32 v39, v39, v188
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v188, v37, 16, 1
	v_bfe_u32 v196, v38, 16, 1
	v_bfe_u32 v198, v195, 16, 1
	v_bfe_u32 v199, v36, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v188, 0x7fff
	v_bfe_u32 v188, v185, 16, 1
	v_cmp_o_f32_e64 s3, v38, v38
	v_cmp_o_f32_e64 s12, v195, v195
	v_add3_u32 v38, v38, v196, 0x7fff
	v_bfe_u32 v196, v186, 16, 1
	v_add3_u32 v195, v195, v198, 0x7fff
	v_bfe_u32 v198, v187, 16, 1
	v_bfe_u32 v200, v39, 16, 1
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v199, v36, v199, 0x7fff
	v_cmp_o_f32_e64 s14, v185, v185
	v_add3_u32 v185, v185, v188, 0x7fff
	v_cmp_o_f32_e64 s15, v186, v186
	v_cmp_o_f32_e64 s16, v187, v187
	v_cmp_o_f32_e64 s17, v39, v39
	v_cndmask_b16 v36.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s3
	v_add3_u32 v38, v186, v196, 0x7fff
	v_add3_u32 v186, v187, v198, 0x7fff
	v_add3_u32 v39, v39, v200, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v195.h, s12
	v_cndmask_b16 v37.h, 0x7fff, v199.h, s13
	v_cndmask_b16 v38.l, 0x7fff, v185.h, s14
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s15
	v_cndmask_b16 v39.l, 0x7fff, v186.h, s16
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s17
	ds_store_b16 v99, v36
	ds_store_b16_d16_hi v99, v36 offset:512
	ds_store_b16 v99, v37 offset:1024
	ds_store_b16_d16_hi v99, v37 offset:1536
	ds_store_b16 v99, v38 offset:128
	ds_store_b16_d16_hi v99, v38 offset:640
	ds_store_b16 v99, v39 offset:1152
	ds_store_b16_d16_hi v99, v39 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v186, v84 offset:352
	ds_load_u16_d16 v195, v84 offset:576
.Ltmp143:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v194, v194 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v196, v84 offset:832
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v39, v191, v193 :: v_dual_add_f32 v36, v192, v194
.Ltmp146:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v163
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v37, v40, v197 :: v_dual_add_f32 v40, v41, v202
.Ltmp148:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v187, v84 offset:608
	ds_load_u16_d16 v201, v84
	ds_load_u16_d16 v209, v84 offset:32
	ds_load_u16_d16 v193, v84 offset:64
	ds_load_u16_d16 v185, v84 offset:96
	ds_load_u16_d16 v202, v84 offset:256
	ds_load_u16_d16 v194, v84 offset:320
	ds_load_u16_d16 v197, v84 offset:1088
	ds_load_u16_d16 v198, v84 offset:1344
	ds_load_u16_d16 v199, v84 offset:1600
	ds_load_u16_d16 v200, v84 offset:1856
	ds_load_u16_d16 v204, v84 offset:768
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v186, v84 offset:480
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v195, v84 offset:704
	ds_load_u16_d16 v211, v84 offset:544
	ds_load_u16_d16 v205, v84 offset:1024
	ds_load_u16_d16 v212, v84 offset:800
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v196, v84 offset:960
	ds_load_u16_d16 v188, v84 offset:864
	ds_load_u16_d16 v203, v84 offset:512
	ds_load_u16_d16 v210, v84 offset:288
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v190, v189
.Ltmp150:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v201, v84 offset:128
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v209, v84 offset:160
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v193, v84 offset:192
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v185, v84 offset:224
	ds_load_u16_d16 v206, v84 offset:1280
	ds_load_u16_d16 v213, v84 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v197, v84 offset:1216
	ds_load_u16_d16 v189, v84 offset:1120
	ds_load_u16_d16 v207, v84 offset:1536
	ds_load_u16_d16 v214, v84 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v198, v84 offset:1472
	ds_load_u16_d16 v190, v84 offset:1376
	ds_load_u16_d16 v208, v84 offset:1792
	ds_load_u16_d16 v215, v84 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v199, v84 offset:1728
	ds_load_u16_d16 v191, v84 offset:1632
	ds_load_u16_d16 v216, v84 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v200, v84 offset:1984
	ds_load_u16_d16 v192, v84 offset:1888
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v203, v84 offset:640
	ds_load_u16_d16_hi v202, v84 offset:384
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v210, v84 offset:416
	ds_load_u16_d16_hi v194, v84 offset:448
	ds_load_u16_d16_hi v204, v84 offset:896
	ds_load_u16_d16_hi v211, v84 offset:672
	ds_load_u16_d16_hi v187, v84 offset:736
	ds_load_u16_d16_hi v205, v84 offset:1152
	ds_load_u16_d16_hi v212, v84 offset:928
	ds_load_u16_d16_hi v188, v84 offset:992
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v206, v84 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v213, v84 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v189, v84 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v207, v84 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v214, v84 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v190, v84 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v208, v84 offset:1920
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v215, v84 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v191, v84 offset:1760
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v216, v84 offset:1952
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v226, v226 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v192, v84 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v41, v181, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v163
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v221, v222, v183, v138
	v_perm_b32 v222, v222, v183, v148
	v_perm_b32 v223, v224, v184, v138
	v_perm_b32 v217, v41, v181, v138
	v_perm_b32 v218, v41, v181, v148
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v225, v226
.Ltmp154:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v224, v224, v184, v148
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v7, v7, v163 :: v_dual_fmac_f32 v38, v88, v157
	v_dual_mul_f32 v8, v8, v163 :: v_dual_fmac_f32 v35, v87, v156
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v34, v86, v155 :: v_dual_fmac_f32 v39, v89, v158
	v_dual_fmac_f32 v36, v90, v159 :: v_dual_fmac_f32 v37, v91, v160
	v_dual_fmac_f32 v40, v92, v161 :: v_dual_fmac_f32 v41, v93, v162
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[201:208], v[217:224], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[209:216], v[217:224], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[193:200], v[217:224], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[185:192], v[217:224], v[1:8]
	v_dual_mov_b32 v163, v180 :: v_dual_mov_b32 v86, v34
	v_dual_mov_b32 v87, v35 :: v_dual_mov_b32 v88, v38
	v_dual_mov_b32 v89, v39 :: v_dual_mov_b32 v90, v36
	v_dual_mov_b32 v91, v37 :: v_dual_mov_b32 v92, v40
	v_dual_mov_b32 v93, v41 :: v_dual_mov_b32 v158, v175
	v_dual_mov_b32 v155, v172 :: v_dual_mov_b32 v156, v173
	v_dual_mov_b32 v157, v174 :: v_dual_mov_b32 v160, v177
	v_dual_mov_b32 v159, v176 :: v_dual_mov_b32 v162, v179
	v_mov_b32_e32 v161, v178
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v34, s69, v70
	v_or_b32_e32 v35, s69, v71
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s18, s69, s74
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v36, s69, v72
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s3, s18, s54
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s43, v34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v37, s69, v73
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v38, s3, v42
	v_add_nc_u32_e32 v39, s3, v74
	v_add_nc_u32_e32 v40, s3, v75
	v_add_nc_u32_e32 v34, s3, v43
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s43, v35
	v_cmp_gt_i32_e64 s12, s43, v36
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s13, s43, v37
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s20, s3
	.loc	1 908 32                        ; attention.py:908:32
	v_add_nc_u32_e32 v38, 0, v85
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s20, s12
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v39, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s20, s13
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[44:47], 0 offen
	buffer_load_u8 v36, v36, s[44:47], 0 offen
	buffer_load_u8 v37, v37, s[44:47], 0 offen
	buffer_load_u8 v34, v34, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v180, s69, v76
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v77, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v80, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v81, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v82, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[172:173], v38
	ds_load_b64 v[174:175], v112
	ds_load_b64 v[176:177], v113
	ds_load_b64 v[178:179], v114
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
	v_cmp_gt_i32_e64 s3, s43, v180
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[172:173], v[47:48], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s39, s1, s3
	s_and_b32 s37, s5, s3
	s_and_b32 s41, s6, s3
	s_and_b32 s36, s7, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[174:175], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s40, s8, s3
	s_and_b32 s35, s9, s3
	s_and_b32 s77, s10, s3
	s_and_b32 s38, s11, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[176:177], v[51:52], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[178:179], v[53:54], v[34:41] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v180, v97
	v_cmp_le_i32_e64 s3, v180, v102
	v_cmp_le_i32_e64 s12, v180, v103
	v_cmp_le_i32_e64 s13, v180, v104
	v_cmp_le_i32_e64 s14, v180, v105
	v_cmp_le_i32_e64 s15, v180, v106
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s19, vcc_lo, s39
	s_and_b32 s3, s3, s37
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s16, v180, v107
	v_cmp_le_i32_e64 s17, v180, v108
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s12, s12, s41
	s_and_b32 s13, s13, s36
	s_and_not1_b32 s21, s39, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s22, s37, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s35
	s_or_b32 s39, s21, s19
	s_or_b32 s37, s22, s3
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s19, s36, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s77
	s_and_b32 s17, s17, s38
	s_or_b32 s41, s3, s12
	s_or_b32 s36, s19, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s38, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s77, s3, s12
	s_or_b32 s38, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v172, s69, v67
	v_or_b32_e32 v173, s69, v68
	v_add_lshl_u32 v176, s18, v67, 1
	v_or_b32_e32 v174, s69, v66
	v_or_b32_e32 v175, s69, v65
	v_cmp_gt_i32_e32 vcc_lo, s43, v172
	v_or_b32_e32 v177, s69, v63
	v_add_nc_u32_e32 v183, 8, v176
	v_add_nc_u32_e32 v182, 4, v176
	v_or_b32_e32 v178, s69, v64
	v_cndmask_b32_e32 v172, 0x80000000, v176, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v173
	v_or_b32_e32 v179, s69, v62
	v_or_b32_e32 v181, s69, v61
	v_cndmask_b32_e32 v173, 0x80000000, v182, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v174
	v_cndmask_b32_e32 v183, 0x80000000, v183, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v175
	v_add_nc_u32_e32 v174, 16, v176
	v_add_nc_u32_e32 v182, 12, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v175, 0x80000000, v182, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v177
	v_dual_cndmask_b32 v177, 0x80000000, v174 :: v_dual_add_nc_u32 v182, 20, v176
	v_cmp_gt_i32_e32 vcc_lo, s43, v178
	v_add_nc_u32_e32 v174, 24, v176
	v_add_nc_u32_e32 v176, 28, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v182, 0x80000000, v182, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v179
	v_cndmask_b32_e32 v184, 0x80000000, v174, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s43, v181
	v_cndmask_b32_e32 v181, 0x80000000, v176, vcc_lo
	s_clause 0x7
	buffer_load_u16 v174, v172, s[60:63], 0 offen
	buffer_load_u16 v176, v173, s[60:63], 0 offen
	buffer_load_u16 v178, v183, s[60:63], 0 offen
	buffer_load_u16 v179, v175, s[60:63], 0 offen
	buffer_load_u16 v172, v177, s[60:63], 0 offen
	buffer_load_u16 v173, v182, s[60:63], 0 offen
	buffer_load_u16 v175, v184, s[60:63], 0 offen
	buffer_load_u16 v177, v181, s[60:63], 0 offen
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s55
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v180, v115
	v_cmp_ge_i32_e64 s3, v180, v124
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v180, v116
	v_cmp_le_i32_e64 s19, v180, v131
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s12, v180, v125
	v_cmp_ge_i32_e64 s13, v180, v126
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s21, v180, v132
	v_cmp_le_i32_e64 s22, v180, v133
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v180, v127
	v_cmp_ge_i32_e64 s15, v180, v128
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s23, v180, v134
	v_cmp_le_i32_e64 s24, v180, v135
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s3, s3, s19
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v180, v129
	v_cmp_ge_i32_e64 s17, v180, v130
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s25, v180, v136
	v_cmp_le_i32_e64 s26, v180, v137
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s18, s18, s39
	s_and_b32 s3, s3, s37
	s_and_b32 s12, s12, s21
	s_and_b32 s13, s13, s22
	s_and_b32 s12, s12, s41
	s_and_b32 s13, s13, s36
	s_and_b32 s14, s14, s23
	s_and_b32 s15, s15, s24
	s_and_not1_b32 s19, s39, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s21, s37, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s14, s14, s40
	s_and_b32 s15, s15, s35
	s_and_b32 s16, s16, s25
	s_and_b32 s17, s17, s26
	s_or_b32 s39, s19, s18
	s_or_b32 s37, s21, s3
	s_and_not1_b32 s3, s41, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s36, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s77
	s_and_b32 s17, s17, s38
	s_or_b32 s41, s3, s12
	s_or_b32 s36, s18, s13
	s_and_not1_b32 s3, s40, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s35, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s40, s3, s12
	s_or_b32 s35, s13, s14
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s38, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s77, s3, s12
	s_or_b32 s38, s13, s14
	s_branch .LBB0_6
.LBB0_11:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v42, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v43, 3, v79
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x70, v33
	v_and_b32_e32 v42, 4, v42
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v33, 0, v33, v42
	v_add_nc_u32_e32 v42, 0, v78
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s68, v63
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v42, v[34:37]
	ds_store_b128 v42, v[38:41] offset:128
	v_add3_u32 v0, v33, v0, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s68, v64
	v_cmp_gt_i32_e64 s8, s68, v62
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v0, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s68, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v55, -v35, v46, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v56, -v37, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fma_f32 v57, -v39, v48, 1.0
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v58, -v41, v49, 1.0
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_mul_f32_e32 v55, v36, v46
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v42, s4, v29, v0, v29
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_fma_f32 v59, -v35, v55, v36
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_div_scale_f32 v44, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v58, v45 :: v_dual_fmac_f32 v55, v59, v46
	v_fma_f32 v60, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v39, v57, v40
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v70, v48
	v_div_scale_f32 v51, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v45, v54
	v_fma_f32 v35, -v37, v56, v38
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v71, v42, v49
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v58, -v41, v71, v42
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v71, v58, v49
	v_fma_f32 v36, -v44, v53, 1.0
	v_rcp_f32_e32 v37, v52
	v_div_fixup_f32 v28, v33, v0, v28
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v27, v35, v0, v27
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v38, -v52, v37, 1.0
	v_fma_f32 v39, -v41, v71, v42
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fma_f32 v41, -v43, v34, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	v_div_fmas_f32 v39, v39, v49, v71
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fmac_f32_e32 v40, v45, v40
	v_fma_f32 v42, -v44, v33, v35
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_div_fixup_f32 v29, v39, v0, v29
	v_div_fixup_f32 v30, v34, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v42, v53
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_scale_f32 v47, null, v0, v0, v20
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v19
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v36, v35, v45
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v45, null, v0, v0, v21
	v_fmac_f32_e32 v39, v43, v39
	v_fma_f32 v43, -v47, v37, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v43, v37
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fmac_f32_e32 v38, v34, v41
	v_mul_f32_e32 v34, v36, v39
	v_div_scale_f32 v40, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v56, v69, s68
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fmac_f32_e32 v34, v44, v39
	v_fmac_f32_e32 v35, v49, v35
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v21, v0, v21
	v_fma_f32 v44, -v43, v48, 1.0
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v38, s5, v22, v0, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fmas_f32 v33, v33, v39, v34
	v_fma_f32 v39, -v45, v36, v41
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, null, v0, v0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v20, v34, v0, v20
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v34, s3, v23, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v39, -v47, v37, 1.0
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v21, v33, v0, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v39, v37
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v67, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v58, v56, v68, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v59, v56, v66, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_mul_f32_e32 v44, v39, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v54, 60, v67
	v_or_b32_e32 v55, 62, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v37, v44
	v_dual_mul_f32 v44, v46, v43 :: v_dual_mul_f32 v39, v33, v41
	v_fma_f32 v37, -v45, v49, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v36, v0, v24
	v_fma_f32 v34, -v42, v44, v46
	v_fma_f32 v47, -v38, v39, v33
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v34, v43 :: v_dual_fmac_f32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_rcp_f32_e32 v34, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v45, v49, v40
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v42, v44, v46
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v39, v36, v50
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v48, v39, v36
	v_div_fixup_f32 v9, v33, v0, v9
	v_mul_f32_e32 v33, v41, v34
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v10, v35, v0, v10
	v_rcp_f32_e32 v44, v38
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_fma_f32 v35, -v40, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v35, v42
	v_div_fixup_f32 v12, v36, v0, v12
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_div_fmas_f32 v35, v35, v44, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v50, v39, v50
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v39, v50
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v37, v37, v47, v38
	v_div_fixup_f32 v15, v35, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_scale_f32 v37, null, v0, v0, v7
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v0, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v37, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v33, -v46, v36, v39
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v48, v41
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v43, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s68, v67
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s68, v68
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s68, v66
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
	v_cmp_gt_i32_e64 s5, s68, v65
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v8, v57, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v65, 2
	s_clause 0x1
	buffer_store_b32 v25, v58, s[52:55], 0 offen
	buffer_store_b32 v26, v59, s[52:55], 0 offen
	v_add_lshl_u32 v25, v56, v63, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v56, v64, 2
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
	v_or_b32_e32 v32, 16, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v62, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 18, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 20, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s68, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[52:55], 0 offen
	buffer_store_b32 v28, v25, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v61, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s68, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v56, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 22, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s68, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[52:55], 0 offen
	buffer_store_b32 v30, v57, s[52:55], 0 offen
	v_add_lshl_u32 v26, v56, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 24, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 26, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s68, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 28, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s68, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[52:55], 0 offen
	buffer_store_b32 v17, v25, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s68, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 30, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s68, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[52:55], 0 offen
	buffer_store_b32 v19, v27, s[52:55], 0 offen
	v_add_lshl_u32 v18, v56, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 32, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 34, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s68, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 36, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s68, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[52:55], 0 offen
	buffer_store_b32 v21, v17, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s68, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 38, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s68, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[52:55], 0 offen
	buffer_store_b32 v23, v19, s[52:55], 0 offen
	v_add_lshl_u32 v18, v56, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 40, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v45, 42, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s68, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v46, 44, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s68, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[52:55], 0 offen
	buffer_store_b32 v9, v17, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v43, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s68, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v44, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 46, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s68, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[52:55], 0 offen
	buffer_store_b32 v11, v19, s[52:55], 0 offen
	v_add_lshl_u32 v10, v56, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v48, 48, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v49, 50, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s68, v47
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v50, 52, v67
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s68, v48
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[52:55], 0 offen
	buffer_store_b32 v13, v9, s[52:55], 0 offen
	v_add_lshl_u32 v8, v56, v47, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s27, s68, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v48, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s25
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s68, v50
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v14, v10, s[52:55], 0 offen
	buffer_store_b32 v15, v11, s[52:55], 0 offen
	v_add_lshl_u32 v10, v56, v49, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v51, 54, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v52, 56, v67
	v_or_b32_e32 v53, 58, v67
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s28
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s29, s68, v51
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s30, s68, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v16, v8, s[52:55], 0 offen
	buffer_store_b32 v1, v9, s[52:55], 0 offen
	v_add_lshl_u32 v1, v56, v51, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s68, v53
	v_cmp_gt_i32_e32 vcc_lo, s68, v54
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v2, v10, s[52:55], 0 offen
	buffer_store_b32 v3, v11, s[52:55], 0 offen
	v_add_lshl_u32 v2, v56, v52, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s68, v55
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
	buffer_store_b32 v4, v1, s[52:55], 0 offen
	buffer_store_b32 v5, v2, s[52:55], 0 offen
	buffer_store_b32 v6, v3, s[52:55], 0 offen
	buffer_store_b32 v7, v8, s[52:55], 0 offen
	buffer_store_b32 v0, v9, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp155:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 227
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 227
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14812
; TotalNumSgprs: 80
; NumVgprs: 227
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 80
; NumVGPRsForWavesPerEU: 227
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
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
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
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     227
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
