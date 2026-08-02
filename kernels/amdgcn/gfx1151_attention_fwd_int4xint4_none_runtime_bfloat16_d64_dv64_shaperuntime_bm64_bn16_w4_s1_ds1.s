	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s33, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v64, 5, v0
	s_load_b64 s[36:37], s[0:1], 0x0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 4, v64
	v_or_b32_e32 v66, 8, v64
	v_or_b32_e32 v67, 12, v64
	v_and_b32_e32 v35, 0x60, v0
	v_and_b32_e32 v33, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 0x198, v0
	s_mov_b32 s42, 0
	v_add_nc_u32_e32 v70, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 1, v35
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v72, 0, v18
	v_add_nc_u32_e32 v73, 0, v20
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s44
	s_bitcmp1_b32 s44, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s22, s3, s30
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s20, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s15, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s21, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s6, 0, s15
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s21, v66
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s21, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[49:50], null, s33, v64, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s21, v65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s4
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s33, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s21, v64
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v68, s33, 2, v49
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 16, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s5, s5, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 20, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, 24, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s5, s15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, 28, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s6
	s_add_i32 s6, s5, 1
	s_sub_i32 s7, s2, s15
	s_cmp_ge_u32 s2, s15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v10, 32, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s5, s6, s5
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s15
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, 36, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s6, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s29
	s_xor_b32 s18, s28, s29
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s12, 0, s16
	s_ashr_i32 s24, s18, 31
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
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[50:51], null, s33, 12, v[49:50]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s7, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v69, s33, 3, v49
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s30, v6
	v_cmp_gt_i32_e64 s9, s30, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s10, s7, 0x4f7ffffe
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s30, v5
	v_cmp_gt_i32_e64 s11, s30, v10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s14, s10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s30, v9
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s13, s12, s14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s30, v11
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s14, s13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s30, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s17, s14, s17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s30, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s15, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s17, s16
	s_sub_i32 s18, s15, s23
	s_add_i32 s23, s17, 1
	s_sub_i32 s25, s18, s16
	s_cmp_ge_u32 s18, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s17, s23, s17
	s_cselect_b32 s18, s25, s18
	s_add_i32 s23, s17, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s23, s17
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s22, s22, s21
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s25, s22, s33
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s25, v49
	v_add_nc_u32_e32 v13, s25, v68
	v_add_nc_u32_e32 v14, s25, v69
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s30, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v15, s25, v50
	v_mad_u64_u32 v[2:3], null, s33, 20, v[1:2]
	v_lshl_add_u32 v16, s33, 4, v1
	v_lshl_add_u32 v17, s33, 5, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s33, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s33, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s33, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s33, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s33, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s33, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s33, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s33, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s33, 60, v[1:2]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s9, s2, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v16, v1, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v13, v13, s[36:39], 0 offen
	buffer_load_u8 v15, v15, s[36:39], 0 offen
	buffer_load_u8 v2, v2, s[36:39], 0 offen
	buffer_load_u8 v3, v3, s[36:39], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s4
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s10, s31, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v21, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v4, v4, s[36:39], 0 offen
	buffer_load_u8 v8, v8, s[36:39], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s10, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[36:39], 0 offen
	buffer_load_u8 v9, v9, s[36:39], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[36:39], 0 offen
	buffer_load_u8 v10, v10, s[36:39], 0 offen
	buffer_load_u8 v14, v14, s[36:39], 0 offen
	buffer_load_u8 v17, v1, s[36:39], 0 offen
	buffer_load_u8 v7, v7, s[36:39], 0 offen
	buffer_load_u8 v11, v11, s[36:39], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v21
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s10, s10, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s43, s10, -16
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_add_nc_u32_e32 v71, 0, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v19, v33
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s44, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v70, v16
	s_waitcnt vmcnt(12)
	ds_store_b8 v70, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v70, v4 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v70, v8 offset:1536
	ds_store_b8 v71, v12
	ds_store_b8 v71, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v71, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v71, v9 offset:1536
	ds_store_b8 v72, v13
	ds_store_b8 v72, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v72, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v72, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v73, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v73, v17 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v73, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v11 offset:1536
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v34, s21, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s21, s46
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s21, s45
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s47
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s47
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s31, s2
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	s_lshr_b32 s5, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s2, s2, s5
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s5, s6, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s42, s5, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s43, s43, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v2, 0, 1, s20
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_cmp_gt_i32_e64 s2, s30, v34
	.loc	1 809 9                         ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s20
	v_cmp_ne_u32_e64 s5, 1, v2
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s6, s21, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 64
	s_min_i32 s6, s31, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s11, s6, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 28
	s_add_i32 s6, s6, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s6, s6, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s43, s43, s6
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v63, 16, v0
	v_add_nc_u32_e32 v62, s22, v1
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_ge_i32 s42, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s6, 0, v63
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
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[20:27], s[0:1], 0x8
	v_dual_mov_b32 v4, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v62
	v_dual_mov_b32 v3, 0x5410 :: v_dual_lshlrev_b32 v42, 5, v33
	v_lshl_add_u32 v76, v33, 1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v33, 0
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v51, 63, v0
	s_xor_b32 s11, s3, s28
	s_mul_f32 s12, s8, 0x4f7ffffe
	v_dual_mov_b32 v103, 0xff800000 :: v_dual_and_b32 v2, 64, v0
	v_mov_b32_e32 v38, v33
	v_lshlrev_b32_e32 v48, 1, v51
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v75, s47, v34
	v_dual_mov_b32 v36, v33 :: v_dual_lshlrev_b32 v43, 4, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v88, s46, v75
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	v_mov_b32_e32 v34, v33
	buffer_load_u16 v41, v1, s[36:39], 0 offen
	v_lshlrev_b32_e32 v1, 1, v0
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x28
	s_load_b32 s8, s[0:1], 0x6c
	s_ashr_i32 s1, s10, 4
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v0, 6, v0
	s_ashr_i32 s10, s11, 31
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v45, 24, v1
	s_xor_b32 s11, s19, s10
	s_cvt_u32_f32 s12, s12
	s_sub_i32 s13, 0, s7
	v_cndmask_b32_e64 v46, 0x1054, v3, s6
	v_cndmask_b32_e64 v47, 0x3276, v4, s6
	s_sub_i32 s10, s11, s10
	v_or3_b32 v43, v42, v43, v45
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[52:53], null, s34, v0, v[51:52]
	v_lshl_add_u32 v54, v2, 2, 0
	s_mul_i32 s11, s10, s28
	s_mul_i32 s13, s13, s12
	s_sub_i32 s3, s3, s11
	s_mul_hi_u32 s11, s12, s13
	v_mov_b32_e32 v30, v25
	v_or_b32_e32 v42, v42, v45
	v_lshl_or_b32 v45, v46, 8, v46
	v_lshl_or_b32 v46, v47, 8, v47
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v47, 0, v43
	v_add_nc_u32_e32 v89, v54, v48
	s_abs_i32 s13, s3
	s_add_i32 s12, s12, s11
	v_xad_u32 v48, v43, 8, 0
	v_xad_u32 v58, v43, 16, 0
	s_ashr_i32 s9, s9, 31
	s_ashr_i32 s3, s3, 31
	s_mul_hi_u32 s11, s13, s12
	v_xad_u32 v43, v43, 24, 0
	v_mad_u64_u32 v[53:54], null, s34, 6, v[52:53]
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s3, s3, s9
	s_mul_i32 s9, s11, s7
	ds_load_b64 v[54:55], v47
	ds_load_b64 v[56:57], v48
	ds_load_b64 v[58:59], v58
	ds_load_b64 v[60:61], v43
	s_sub_i32 s9, s13, s9
	s_add_i32 s12, s11, 1
	s_sub_i32 s13, s9, s7
	s_cmp_ge_u32 s9, s7
	v_mov_b16_e32 v44.l, 0
	v_dual_mov_b32 v35, v33 :: v_dual_and_b32 v46, 0x760076, v46
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v45, 0x540054, v45
	s_cselect_b32 s11, s12, s11
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s8, s8, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s11, 1
	s_cmp_ge_u32 s9, s7
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v74, 4, v63
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v92, 0, v42
	v_xor_b32_e32 v93, 8, v42
	v_xor_b32_e32 v94, 16, v42
	v_xor_b32_e32 v95, 24, v42
	v_lshl_or_b32 v42, v45, 4, v45
	v_lshl_or_b32 v43, v46, 4, v46
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s12, s11
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s10, s10, s29
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s7, s7, s3
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v77, 2, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s3, s7, s3
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v78, 4, v0
	v_or_b32_e32 v79, 6, v0
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s34, v51
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v80, 2, v74
	v_or_b32_e32 v81, 4, v74
	v_or_b32_e32 v82, 6, v74
	v_or_b32_e32 v83, 8, v74
	v_or_b32_e32 v84, 10, v74
	v_or_b32_e32 v85, 12, v74
	v_or_b32_e32 v86, 14, v74
	v_subrev_nc_u32_e32 v87, s45, v75
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v96, 0x5040504, v42
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v18, v25 :: v_dual_add_nc_u32 v93, 0, v93
	v_mov_b32_e32 v19, v25
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v95, 0, v95
	v_mov_b32_e32 v21, v25
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v97, 0x7060706, v43
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v90, s34, 1, v52
	v_lshl_add_u32 v91, s34, 2, v52
	v_mov_b32_e32 v102, v25
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s28, s1, 3
	s_and_b32 s27, s27, 0xffff
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s48, s3, s10
	s_mov_b32 s36, s22
	s_mov_b32 s22, s38
	s_mov_b32 s44, s26
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s23, s39
	s_mov_b32 s45, s27
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_mul_i32 s29, s48, s31
	.loc	1 976 30 is_stmt 1              ; attention.py:976:30
	s_mul_i32 s30, s48, s28
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s48, s48, s1
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s49, 0x76543210
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v44.h, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v29, v25 :: v_dual_mul_f32 v98, s8, v44
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v24, v25
	v_dual_mov_b32 v10, v25 :: v_dual_mov_b32 v101, v98
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v99, v98
	v_mov_b32_e32 v100, v98
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s42, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s7, s42, 4
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v104, s1, v0
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s7, s7, s48
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s1, s30
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s7, s7, s34
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s3, s3, s34
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s28, v104
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v108, s7, v51, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v42, v42
	v_add_nc_u32_e32 v105, s3, v52
	v_cvt_f32_i32_e32 v43, v43
	v_add_nc_u32_e32 v106, s3, v90
	v_cvt_f32_i32_e32 v44, v44
	v_add_nc_u32_e32 v107, s3, v91
	v_cvt_f32_i32_e32 v48, v48
	v_add_nc_u32_e32 v109, s3, v53
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v43, v100, v43 :: v_dual_mul_f32 v42, v99, v42
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v44, v101, v44
	v_dual_mul_f32 v48, v101, v48 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v118, 0x80000000, v109, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v109, v108, s[24:27], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v108, v105, s[36:39], 0 offen
	buffer_load_u8 v105, v106, s[36:39], 0 offen
	buffer_load_u8 v106, v107, s[36:39], 0 offen
	buffer_load_u8 v107, v118, s[36:39], 0 offen
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v118.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v118.h, v117.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v110.h, v116.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v111.h, v114.l
	v_mov_b16_e32 v112.h, v112.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v113.h, v115.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v115.h, v111.l
	v_mov_b16_e32 v116.h, v110.l
	v_mov_b16_e32 v110.l, v118.l
	v_mov_b16_e32 v111.l, v118.l
	v_mov_b16_e32 v112.l, v118.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v41, v98, v41 :: v_dual_mul_f32 v46, v99, v46
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v113.l, v118.l
	v_mov_b16_e32 v114.l, v118.l
	v_mov_b16_e32 v115.l, v118.l
	v_mov_b16_e32 v116.l, v118.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v47, v100, v47
	v_dual_mul_f32 v45, v98, v45 :: v_dual_mul_f32 v44, v44, v118
	v_dual_mul_f32 v41, v41, v112 :: v_dual_mul_f32 v42, v42, v111
	v_dual_mul_f32 v43, v43, v110 :: v_dual_mul_f32 v46, v46, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v45, v45, v116 :: v_dual_mul_f32 v48, v48, v113
	v_mul_f32_e32 v47, v47, v114
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s50
	v_cndmask_b32_e64 v43, 0xff800000, v43, s55
	v_cndmask_b32_e64 v110, 0xff800000, v42, s51
	v_cndmask_b32_e64 v41, 0xff800000, v41, s53
	v_cndmask_b32_e64 v48, 0xff800000, v48, s56
	v_cndmask_b32_e64 v46, 0xff800000, v46, s52
	v_cndmask_b32_e64 v45, 0xff800000, v45, s54
	v_cndmask_b32_e64 v47, 0xff800000, v47, s57
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v42, v41, v110, v43
.Ltmp2:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v103
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v117, s1, v77
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v113, v44, v45, v46
	v_max_f32_e32 v114, v47, v48
.Ltmp4:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v104, v104, 1, 1
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v119, s1, v78
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v111.h, v118.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v123.h, v118.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v42, v42, v113, v114
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.h, v118.l
	v_mov_b16_e32 v114.h, v118.l
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v117, v117, 1, 1
	.loc	1 985 30 is_stmt 0              ; attention.py:985:30
	v_cmp_gt_i32_e64 s12, s31, v104
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v124, v42, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v120, s1, v79
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v112.h, v118.l
	v_mov_b16_e32 v115.h, v118.l
	v_mov_b16_e32 v116.h, v118.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v42, v103, v42, v124
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v118.h, v118.l
	v_mov_b16_e32 v121.h, v118.l
	v_mov_b16_e32 v122.h, v118.l
	v_mov_b16_e32 v125.h, v118.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v41, v41, v42
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v124, v103, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v126.h, v118.l
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v119, v119, 1, 1
	v_lshl_or_b32 v120, v120, 1, 1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v41, v41
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v124, v124
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v110, v110, v42
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s42, s42, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	s_cmp_lt_i32 s42, s43
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v41, s53
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v43, v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v121.l, v41.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v127, v43
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v43, 0, v124 :: v_dual_sub_f32 v44, v44, v42
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v45, v45, v42
	v_sub_f32_e32 v46, v46, v42
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v43
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v43
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v43
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v46, v46
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v20, v20, v43 :: v_dual_and_b32 v121, 1, v121
	v_mul_f32_e32 v12, v12, v43
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v103, 0, v110, s51
	v_cndmask_b32_e64 v110, 0, v127, s55
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v44, 0, v44, s50
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v43
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s54
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v118.l, v103.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v46, 0, v46, s52
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.l, v44.h
	v_mov_b16_e32 v114.l, v110.h
	v_mov_b16_e32 v123.l, v45.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v43
	v_dual_mul_f32 v22, v22, v43 :: v_dual_and_b32 v113, 1, v113
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v122.l, v46.h
	v_and_b32_e32 v114, 1, v114
	v_and_b32_e32 v123, 1, v123
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v31, v31, v43 :: v_dual_add_f32 v128, v45, v46
	v_dual_mul_f32 v17, v17, v43 :: v_dual_and_b32 v118, 1, v118
	v_dual_mul_f32 v21, v21, v43 :: v_dual_and_b32 v122, 1, v122
	v_mul_f32_e32 v14, v14, v43
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v127, v110, v44
.Ltmp10:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s7, v110, v110
	v_cmp_o_f32_e64 s8, v45, v45
	v_add3_u32 v110, v110, v114, 0x7fff
	v_add3_u32 v113, v44, v113, 0x7fff
	v_add3_u32 v114, v45, v123, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v43
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v124, v41, v103
.Ltmp12:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_cmp_o_f32_e64 s1, v41, v41
	v_cmp_o_f32_e64 s11, v46, v46
	v_add3_u32 v121, v41, v121, 0x7fff
	v_add3_u32 v103, v103, v118, 0x7fff
	v_add3_u32 v118, v46, v122, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v43
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v47, v47, v42 :: v_dual_mul_f32 v30, v30, v43
	v_dual_sub_f32 v48, v48, v42 :: v_dual_mul_f32 v29, v29, v43
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v124, v124, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v47, v47
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v43
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v43
	v_mul_f32_e32 v5, v5, v43
	v_mul_f32_e32 v6, v6, v43
	v_mul_f32_e32 v8, v8, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v47, s57
	v_cndmask_b32_e64 v48, 0, v48, s56
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v126.l, v47.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v43
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v129, v47, v48 :: v_dual_mul_f32 v10, v10, v43
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v125.l, v48.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v127, v128, v129 :: v_dual_and_b32 v126, 1, v126
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v48, v48
	v_and_b32_e32 v125, 1, v125
	v_cmp_o_f32_e64 s10, v47, v47
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v45, 16, v109
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v111.l, 4, v108.l
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v112.l, 4, v105.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v44.l, v106.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v109, 15, v106
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v115.l, 4, v106.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v104, 0, v111, s12
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s12, s31, v117
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.l, v108.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v46, 15, v108
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v44.h, v107.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v122, 15, v107
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v106, 0, v112, s12
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s12, s31, v119
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v116.l, 4, v107.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v41.h, v105.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v108, 15, v105
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v105, -16, v46
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v107, 0, v115, s12
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s12, s31, v120
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v115, -16, v109
	v_or_b32_e32 v112, -16, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v111, 0, v116, s12
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v41.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v116, -16, v122
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v46, v46, v105, s12
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v41.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v105, -16, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v41, v108, v112, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v44.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v112, -16, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v43 :: v_dual_mul_f32 v46, v46, v45
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v108, v109, v115, s12
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v44.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v109, -16, v106
	v_or_b32_e32 v115, -16, v111
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v16, v16, v43 :: v_dual_mul_f32 v41, v41, v45
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v44, v122, v116, s12
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s12, 7, v104
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s13, v41, v41
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v104, v104, v105, s12
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s12, 7, v106
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v3, v3, v43 :: v_dual_mul_f32 v108, v108, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v44, v45, v44
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v105, v106, v109, s12
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s12, 7, v107
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v109, v46, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v104, v104, v45
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v106, v107, v112, s12
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s12, 7, v111
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v43
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v112, v44, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v105, v105, v45
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v107, v111, v115, s12
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v111, v108, 16, 1
	v_cmp_o_f32_e64 s12, v46, v46
	v_add3_u32 v46, v46, v109, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v106, v45, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v109, v104, 16, 1
	v_cmp_o_f32_e64 s14, v108, v108
	v_cmp_o_f32_e64 s15, v44, v44
	v_add3_u32 v108, v108, v111, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v45, v45, v107
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v107, v41, 16, 1
	v_bfe_u32 v111, v106, 16, 1
	v_add3_u32 v44, v44, v112, 0x7fff
	v_cmp_o_f32_e64 s16, v104, v104
	v_bfe_u32 v112, v45, 16, 1
	v_add3_u32 v41, v41, v107, 0x7fff
	v_bfe_u32 v107, v105, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v46.h, s12
	v_add3_u32 v46, v104, v109, 0x7fff
	v_cmp_o_f32_e64 s17, v105, v105
	v_cmp_o_f32_e64 s18, v106, v106
	v_add3_u32 v104, v105, v107, 0x7fff
	v_cmp_o_f32_e64 s19, v45, v45
	v_add3_u32 v105, v106, v111, 0x7fff
	v_add3_u32 v106, v45, v112, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s13
	v_cndmask_b16 v45.h, 0x7fff, v104.h, s17
	v_cndmask_b16 v44.l, 0x7fff, v108.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s15
	v_cndmask_b16 v46.l, 0x7fff, v105.h, s18
	v_cndmask_b16 v46.h, 0x7fff, v106.h, s19
	ds_store_b16 v89, v41
	ds_store_b16 v89, v45 offset:128
	ds_store_b16_d16_hi v89, v41 offset:512
	ds_store_b16_d16_hi v89, v45 offset:640
	ds_store_b16 v89, v44 offset:1024
	ds_store_b16 v89, v46 offset:1152
	ds_store_b16_d16_hi v89, v44 offset:1536
	ds_store_b16_d16_hi v89, v46 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v105, v76 offset:512
	ds_load_u16_d16 v112, v76 offset:288
	ds_load_u16_d16 v121, v76 offset:608
	ds_load_u16_d16 v120, v76 offset:352
	ds_load_u16_d16 v129, v76 offset:576
	ds_load_u16_d16 v130, v76 offset:832
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v124, v127
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v46.h, 0x7fff, v103.h, vcc_lo
	v_add3_u32 v44, v47, v126, 0x7fff
	v_add3_u32 v45, v48, v125, 0x7fff
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v46.l, 0x7fff, v121.h, s1
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v103, v41, s49, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v47.h, 0x7fff, v113.h, s3
	v_cndmask_b16 v48.l, 0x7fff, v114.h, s8
	v_cndmask_b16 v47.l, 0x7fff, v110.h, s7
	v_cndmask_b16 v48.h, 0x7fff, v118.h, s11
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v41, v41, v103
.Ltmp24:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v131, v76 offset:1088
	ds_load_u16_d16 v132, v76 offset:1344
	ds_load_u16_d16 v133, v76 offset:1600
	ds_load_u16_d16 v134, v76 offset:1856
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v120, v76 offset:480
	ds_load_u16_d16 v106, v76 offset:768
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v129, v76 offset:704
	ds_load_u16_d16 v113, v76 offset:544
	ds_load_u16_d16 v104, v76 offset:256
	ds_load_u16_d16 v128, v76 offset:320
	ds_load_u16_d16 v103, v76
	ds_load_u16_d16 v111, v76 offset:32
	ds_load_u16_d16 v127, v76 offset:64
	ds_load_u16_d16 v119, v76 offset:96
	ds_load_u16_d16 v107, v76 offset:1024
	ds_load_u16_d16 v114, v76 offset:800
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v130, v76 offset:960
	ds_load_u16_d16 v122, v76 offset:864
	ds_load_u16_d16 v108, v76 offset:1280
	ds_load_u16_d16 v115, v76 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v131, v76 offset:1216
	ds_load_u16_d16 v123, v76 offset:1120
	ds_load_u16_d16 v109, v76 offset:1536
	ds_load_u16_d16 v116, v76 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v132, v76 offset:1472
	ds_load_u16_d16 v124, v76 offset:1376
	ds_load_u16_d16 v110, v76 offset:1792
	ds_load_u16_d16 v117, v76 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v133, v76 offset:1728
	ds_load_u16_d16 v125, v76 offset:1632
	ds_load_u16_d16 v118, v76 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v134, v76 offset:1984
	ds_load_u16_d16 v126, v76 offset:1888
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v103, v76 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v111, v76 offset:160
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v127, v76 offset:192
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v119, v76 offset:224
	ds_load_u16_d16_hi v105, v76 offset:640
	ds_load_u16_d16_hi v104, v76 offset:384
	ds_load_u16_d16_hi v112, v76 offset:416
	ds_load_u16_d16_hi v128, v76 offset:448
	ds_load_u16_d16_hi v106, v76 offset:896
	ds_load_u16_d16_hi v113, v76 offset:672
	ds_load_u16_d16_hi v121, v76 offset:736
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v107, v76 offset:1152
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v114, v76 offset:928
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v122, v76 offset:992
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v108, v76 offset:1408
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v115, v76 offset:1184
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v123, v76 offset:1248
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v109, v76 offset:1664
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v116, v76 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v124, v76 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v110, v76 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v117, v76 offset:1696
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v125, v76 offset:1760
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v76 offset:1952
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s9
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v126, v76 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s10
	v_permlanex16_b32 v44, v46, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v138, v47, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v140, v48, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v41, v102, v43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v142, v45, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v44, v46, v96
	v_perm_b32 v136, v44, v46, v97
	v_perm_b32 v137, v138, v47, v96
	v_perm_b32 v138, v138, v47, v97
	v_perm_b32 v139, v140, v48, v96
	v_perm_b32 v140, v140, v48, v97
	v_perm_b32 v141, v142, v45, v96
	v_perm_b32 v142, v142, v45, v97
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v7, v7, v43 :: v_dual_mov_b32 v102, v41
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[103:110], v[135:142], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[135:142], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[127:134], v[135:142], v[9:16]
	v_mov_b32_e32 v103, v42
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[135:142], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_11
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v41, s42, v64
	v_or_b32_e32 v42, s42, v65
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s26, s42, s29
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v43, s42, v66
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s1, s26, s33
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v44, s42, v67
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v45, s1, v49
	v_add_nc_u32_e32 v46, s1, v68
	v_add_nc_u32_e32 v47, s1, v69
	v_add_nc_u32_e32 v41, s1, v50
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s1, s31, v42
	v_cmp_gt_i32_e64 s3, s31, v43
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s7, s31, v44
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v42, 0x80000000, v45, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v104, s42, v74
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v43, 0x80000000, v46, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v105, s42, v80
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v44, 0x80000000, v47, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v106, s42, v81
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_u8 v42, v42, s[20:23], 0 offen
	buffer_load_u8 v43, v43, s[20:23], 0 offen
	buffer_load_u8 v44, v44, s[20:23], 0 offen
	buffer_load_u8 v41, v41, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v107, s42, v82
	v_or_b32_e32 v108, s42, v83
	v_or_b32_e32 v109, s42, v84
	v_or_b32_e32 v118, s42, v85
	v_or_b32_e32 v119, s42, v86
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s1, s31, v107
	v_cmp_gt_i32_e64 s3, s31, v106
	v_cmp_gt_i32_e64 s7, s31, v105
	v_cmp_gt_i32_e64 s11, s31, v104
	v_cmp_gt_i32_e64 s8, s31, v119
	v_cmp_gt_i32_e64 s9, s31, v118
	v_cmp_gt_i32_e64 s10, s31, v109
	v_cmp_gt_i32_e64 s12, s31, v108
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s53, s2, s11
	s_and_b32 s51, s2, s7
	s_and_b32 s55, s2, s3
	s_and_b32 s50, s2, s1
	s_and_b32 s54, s2, s12
	s_and_b32 s52, s2, s10
	s_and_b32 s57, s2, s9
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s56, s2, s8
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v70, v42
	s_waitcnt vmcnt(2)
	ds_store_b8 v71, v43
	s_waitcnt vmcnt(1)
	ds_store_b8 v72, v44
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[110:111], v92
	ds_load_b64 v[112:113], v93
	ds_load_b64 v[114:115], v94
	ds_load_b64 v[116:117], v95
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[54:55], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[56:57], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[58:59], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[60:61], v[41:48] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v104, v75
	v_cmp_le_i32_e64 s13, v105, v75
	v_cmp_le_i32_e64 s14, v106, v75
	v_cmp_le_i32_e64 s15, v107, v75
	v_cmp_le_i32_e64 s16, v108, v75
	v_cmp_le_i32_e64 s17, v109, v75
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s27, vcc_lo, s53
	s_and_b32 s13, s13, s51
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s18, v118, v75
	v_cmp_le_i32_e64 s19, v119, v75
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s14, s14, s55
	s_and_b32 s15, s15, s50
	s_and_not1_b32 s53, s53, exec_lo
	s_and_b32 s27, s27, exec_lo
	s_and_not1_b32 s51, s51, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s54
	s_and_b32 s17, s17, s52
	s_or_b32 s53, s53, s27
	s_or_b32 s51, s51, s13
	s_and_not1_b32 s13, s55, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s27, s50, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s57
	s_and_b32 s19, s19, s56
	s_or_b32 s55, s13, s14
	s_or_b32 s50, s27, s15
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s52, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s54, s13, s14
	s_or_b32 s52, s15, s16
	s_and_not1_b32 s13, s57, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s56, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s57, s13, s14
	s_or_b32 s56, s15, s16
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v110, s26, v74, 1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_add_nc_u32_e32 v111, 4, v110
	v_add_nc_u32_e32 v112, 8, v110
	v_add_nc_u32_e32 v113, 12, v110
	v_add_nc_u32_e32 v114, 16, v110
	v_add_nc_u32_e32 v115, 20, v110
	v_add_nc_u32_e32 v116, 24, v110
	v_add_nc_u32_e32 v117, 28, v110
	v_cndmask_b32_e64 v110, 0x80000000, v110, s11
	v_cndmask_b32_e64 v111, 0x80000000, v111, s7
	v_cndmask_b32_e64 v120, 0x80000000, v112, s3
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	v_cndmask_b32_e64 v121, 0x80000000, v114, s12
	v_cndmask_b32_e64 v115, 0x80000000, v115, s10
	v_cndmask_b32_e64 v122, 0x80000000, v116, s9
	v_cndmask_b32_e64 v123, 0x80000000, v117, s8
	s_clause 0x7
	buffer_load_u16 v112, v110, s[44:47], 0 offen
	buffer_load_u16 v114, v111, s[44:47], 0 offen
	buffer_load_u16 v116, v120, s[44:47], 0 offen
	buffer_load_u16 v117, v113, s[44:47], 0 offen
	buffer_load_u16 v110, v121, s[44:47], 0 offen
	buffer_load_u16 v111, v115, s[44:47], 0 offen
	buffer_load_u16 v113, v122, s[44:47], 0 offen
	buffer_load_u16 v115, v123, s[44:47], 0 offen
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v104, v87
	v_cmp_ge_i32_e64 s1, v105, v87
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v104, v88
	v_cmp_le_i32_e64 s13, v105, v88
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v106, v87
	v_cmp_ge_i32_e64 s7, v107, v87
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v106, v88
	v_cmp_le_i32_e64 s15, v107, v88
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v108, v87
	v_cmp_ge_i32_e64 s9, v109, v87
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v108, v88
	v_cmp_le_i32_e64 s17, v109, v88
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s13
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v118, v87
	v_cmp_ge_i32_e64 s11, v119, v87
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v118, v88
	v_cmp_le_i32_e64 s19, v119, v88
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s7, s7, s15
	s_and_b32 s3, s3, s14
	s_and_b32 s12, s12, s53
	s_and_b32 s1, s1, s51
	s_and_b32 s3, s3, s55
	s_and_b32 s7, s7, s50
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_not1_b32 s13, s53, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s51, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s11, s11, s19
	s_and_b32 s10, s10, s18
	s_and_b32 s8, s8, s54
	s_and_b32 s9, s9, s52
	s_or_b32 s53, s13, s12
	s_or_b32 s51, s14, s1
	s_and_not1_b32 s1, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s12, s50, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s57
	s_and_b32 s11, s11, s56
	s_or_b32 s55, s1, s3
	s_or_b32 s50, s12, s7
	s_and_not1_b32 s1, s54, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_and_not1_b32 s7, s52, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s54, s1, s3
	s_or_b32 s52, s7, s8
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s3, s10, exec_lo
	s_and_not1_b32 s7, s56, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s57, s1, s3
	s_or_b32 s56, s7, s8
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
	s_and_b32 s41, s41, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v42, v36
	v_div_scale_f32 v40, s1, v27, v41, v27
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v44, v37 :: v_dual_mul_f32 v44, v38, v35
	v_mul_f32_e32 v45, v39, v36
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
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
	v_div_fixup_f32 v15, v34, v41, v15
	v_fma_f32 v34, -v39, v42, 1.0
	v_div_fmas_f32 v36, v36, v47, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v46, v35, v38
	v_div_scale_f32 v44, null, v41, v41, v8
	v_fmac_f32_e32 v42, v34, v42
	v_div_scale_f32 v34, null, v41, v41, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v50, v35
	v_rcp_f32_e32 v35, v33
	v_div_fixup_f32 v2, v36, v41, v2
	v_div_scale_f32 v36, null, v41, v41, v7
	v_rcp_f32_e32 v38, v34
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v37, vcc_lo, v4, v41, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_fixup_f32 v3, v32, v41, v3
	v_fma_f32 v32, -v33, v35, 1.0
	v_mul_f32_e32 v43, v37, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v34, v38, 1.0
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v41, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v36, v40, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_fma_f32 v47, -v39, v43, v37
	v_dual_mul_f32 v49, v32, v35 :: v_dual_fmac_f32 v38, v45, v38
	v_div_scale_f32 v45, s3, v6, v41, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v41, v8
	v_fmac_f32_e32 v40, v48, v40
	v_div_scale_f32 v48, s4, v7, v41, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v33, v49, v32
	v_mul_f32_e32 v51, v45, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v53, v50, v46 :: v_dual_mul_f32 v52, v48, v40
	v_fma_f32 v37, -v39, v43, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v47, v35
	v_fma_f32 v39, -v34, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v36, v52, v48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v32, -v33, v49, v32
	v_fma_f32 v33, -v44, v53, v50
	v_fmac_f32_e32 v51, v39, v38
	v_fmac_f32_e32 v52, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v37, v41, v4
	v_fmac_f32_e32 v53, v33, v46
	v_fma_f32 v34, -v34, v51, v45
	v_fma_f32 v33, -v36, v52, v48
	v_div_fmas_f32 v32, v32, v35, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v38, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v32, v41, v5
	v_div_fmas_f32 v33, v33, v40, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v34, v41, v6
	v_div_fmas_f32 v35, v35, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v0, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v33, v41, v7
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_lshrrev_b32_e32 v50, 1, v63
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v33, 0, v17, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v35, v41, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v18, s0
	v_cndmask_b32_e64 v35, 0, v19, s0
	v_cndmask_b32_e64 v36, 0, v20, s0
	v_cndmask_b32_e64 v37, 0, v21, s0
	v_cndmask_b32_e64 v38, 0, v9, s0
	v_cndmask_b32_e64 v39, 0, v10, s0
	v_cndmask_b32_e64 v40, 0, v11, s0
	v_cndmask_b32_e64 v41, 0, v12, s0
	v_cndmask_b32_e64 v42, 0, v13, s0
	v_cndmask_b32_e64 v43, 0, v14, s0
	v_cndmask_b32_e64 v44, 0, v15, s0
	v_cndmask_b32_e64 v45, 0, v16, s0
	v_cndmask_b32_e64 v46, 0, v1, s0
	v_cndmask_b32_e64 v47, 0, v2, s0
	v_cndmask_b32_e64 v48, 0, v3, s0
	v_cndmask_b32_e64 v49, 0, v4, s0
	v_cndmask_b32_e64 v51, 0, v5, s0
	v_cndmask_b32_e64 v52, 0, v6, s0
	v_cndmask_b32_e64 v53, 0, v7, s0
	v_cndmask_b32_e64 v54, 0, v8, s0
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v55, 1, v50
	v_or_b32_e32 v56, 2, v50
	v_or_b32_e32 v57, 3, v50
	v_or_b32_e32 v58, 4, v50
	v_or_b32_e32 v59, 5, v50
	v_or_b32_e32 v60, 6, v50
	v_or_b32_e32 v61, 7, v50
	v_or_b32_e32 v63, 16, v50
	v_or_b32_e32 v64, 17, v50
	v_or_b32_e32 v65, 18, v50
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
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v1, v62, s34
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v62, v32, 16, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s34, v50
	v_cmp_gt_i32_e64 s31, s34, v55
	v_cmp_gt_i32_e64 s30, s34, v56
	v_cmp_gt_i32_e64 s29, s34, v57
	v_cmp_gt_i32_e64 s28, s34, v58
	v_cmp_gt_i32_e64 s27, s34, v59
	v_cmp_gt_i32_e64 s26, s34, v60
	v_cmp_gt_i32_e64 s25, s34, v61
	v_cmp_gt_i32_e64 s24, s34, v63
	v_cmp_gt_i32_e64 s23, s34, v64
	v_cmp_gt_i32_e64 s22, s34, v65
	v_cmp_gt_i32_e64 s21, s34, v21
	v_cmp_gt_i32_e64 s20, s34, v20
	v_cmp_gt_i32_e64 s19, s34, v19
	v_cmp_gt_i32_e64 s18, s34, v18
	v_cmp_gt_i32_e64 s17, s34, v17
	v_cmp_gt_i32_e64 s16, s34, v16
	v_cmp_gt_i32_e64 s15, s34, v15
	v_cmp_gt_i32_e64 s14, s34, v14
	v_cmp_gt_i32_e64 s13, s34, v13
	v_cmp_gt_i32_e64 s12, s34, v12
	v_cmp_gt_i32_e64 s11, s34, v11
	v_cmp_gt_i32_e64 s10, s34, v10
	v_cmp_gt_i32_e64 s5, s34, v9
	v_cmp_gt_i32_e64 s4, s34, v8
	v_cmp_gt_i32_e64 s3, s34, v7
	v_cmp_gt_i32_e64 s1, s34, v6
	v_cmp_gt_i32_e64 s0, s34, v5
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	v_cmp_gt_i32_e64 s9, s34, v3
	v_cmp_gt_i32_e64 s8, s34, v2
	v_cmp_gt_i32_e64 s7, s34, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v62, v32, v62, 0x7fff
	v_cmp_o_f32_e64 s34, v32, v32
	v_add3_u32 v32, v25, v66, 0x7fff
	v_add3_u32 v25, v26, v67, 0x7fff
	v_bfe_u32 v66, v29, 16, 1
	v_cmp_o_f32_e64 s37, v53, v53
	v_cndmask_b16 v26.l, 0x7fff, v62.h, s34
	v_bfe_u32 v62, v27, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s35
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s36
	v_cmp_o_f32_e64 s34, v27, v27
	v_add3_u32 v62, v27, v62, 0x7fff
	v_cmp_o_f32_e64 s35, v28, v28
	v_add3_u32 v27, v28, v32, 0x7fff
	v_add3_u32 v28, v29, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v29, v29
	v_bfe_u32 v29, v30, 16, 1
	v_bfe_u32 v32, v31, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v62.h, s34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s35
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s36
	v_bfe_u32 v28, v33, 16, 1
	v_add3_u32 v29, v30, v29, 0x7fff
	v_cmp_o_f32_e64 s34, v30, v30
	v_add3_u32 v30, v31, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v31, v31
	v_bfe_u32 v31, v34, 16, 1
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
	v_add3_u32 v33, v22, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v22, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v24, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v33.h, s35
	v_bfe_u32 v32, v38, 16, 1
	v_bfe_u32 v33, v39, 16, 1
	v_cmp_o_f32_e64 s34, v24, v24
	v_add3_u32 v31, v24, v31, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s36
	v_add3_u32 v24, v38, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v38, v38
	v_add3_u32 v32, v39, v33, 0x7fff
	v_cmp_o_f32_e64 s36, v39, v39
	v_cndmask_b16 v22.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v40, 16, 1
	v_bfe_u32 v33, v41, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_cndmask_b16 v24.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v42, 16, 1
	v_add3_u32 v31, v40, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v40, v40
	v_add3_u32 v33, v41, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v41, v41
	v_bfe_u32 v34, v43, 16, 1
	v_add3_u32 v32, v42, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v42, v42
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s35
	v_bfe_u32 v33, v44, 16, 1
	v_bfe_u32 v35, v45, 16, 1
	v_add3_u32 v34, v43, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v43, v43
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s36
	v_add3_u32 v33, v44, v33, 0x7fff
	v_cmp_o_f32_e64 s35, v44, v44
	v_add3_u32 v35, v45, v35, 0x7fff
	v_cmp_o_f32_e64 s36, v45, v45
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s34
	v_bfe_u32 v34, v46, 16, 1
	v_bfe_u32 v36, v47, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s35
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s36
	v_bfe_u32 v35, v48, 16, 1
	v_add3_u32 v34, v46, v34, 0x7fff
	v_cmp_o_f32_e64 s34, v46, v46
	v_add3_u32 v36, v47, v36, 0x7fff
	v_cmp_o_f32_e64 s35, v47, v47
	v_bfe_u32 v39, v53, 16, 1
	v_bfe_u32 v37, v49, 16, 1
	v_add3_u32 v35, v48, v35, 0x7fff
	v_cmp_o_f32_e64 s36, v48, v48
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s34
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s35
	v_bfe_u32 v36, v51, 16, 1
	v_bfe_u32 v38, v52, 16, 1
	v_bfe_u32 v40, v54, 16, 1
	v_add3_u32 v39, v53, v39, 0x7fff
	v_add3_u32 v37, v49, v37, 0x7fff
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
	buffer_store_b16 v39, v50, s[40:43], 0 offen
	v_add_lshl_u32 v39, v1, v57, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v26.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v35, v54, s[40:43], 0 offen
	buffer_store_b16 v26, v55, s[40:43], 0 offen
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
	buffer_store_b16 v68, v35, s[40:43], 0 offen
	buffer_store_b16 v38, v26, s[40:43], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v50, s6
	v_add_lshl_u32 v26, v1, v61, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v36.l, v25.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v37, v39, s[40:43], 0 offen
	buffer_store_b16 v25, v50, s[40:43], 0 offen
	v_add_lshl_u32 v25, v1, v63, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s6, s2, s25
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v35, v1, v64, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s6
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s2, s24
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v37, v1, v65, 1
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
	buffer_store_b16 v36, v26, s[40:43], 0 offen
	buffer_store_b16 v27, v25, s[40:43], 0 offen
	buffer_store_b16 v42, v35, s[40:43], 0 offen
	buffer_store_b16 v23, v37, s[40:43], 0 offen
	buffer_store_b16 v41, v21, s[40:43], 0 offen
	buffer_store_b16 v29, v20, s[40:43], 0 offen
	buffer_store_b16 v44, v19, s[40:43], 0 offen
	buffer_store_b16 v22, v18, s[40:43], 0 offen
	buffer_store_b16 v43, v17, s[40:43], 0 offen
	buffer_store_b16 v28, v16, s[40:43], 0 offen
	buffer_store_b16 v46, v15, s[40:43], 0 offen
	buffer_store_b16 v24, v14, s[40:43], 0 offen
	buffer_store_b16 v45, v13, s[40:43], 0 offen
	buffer_store_b16 v30, v12, s[40:43], 0 offen
	buffer_store_b16 v48, v11, s[40:43], 0 offen
	buffer_store_b16 v31, v10, s[40:43], 0 offen
	buffer_store_b16 v47, v9, s[40:43], 0 offen
	buffer_store_b16 v40, v8, s[40:43], 0 offen
	buffer_store_b16 v51, v7, s[40:43], 0 offen
	buffer_store_b16 v33, v6, s[40:43], 0 offen
	buffer_store_b16 v49, v5, s[40:43], 0 offen
	buffer_store_b16 v32, v4, s[40:43], 0 offen
	buffer_store_b16 v53, v1, s[40:43], 0 offen
	buffer_store_b16 v34, v2, s[40:43], 0 offen
	buffer_store_b16 v52, v0, s[40:43], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 143
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 143
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12792
; TotalNumSgprs: 60
; NumVgprs: 143
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 143
; Occupancy: 10
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     143
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
