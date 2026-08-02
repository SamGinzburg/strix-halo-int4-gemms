	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s33, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v62, 5, v0
	s_load_b64 s[24:25], s[0:1], 0x0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_and_b32_e32 v45, 0x60, v0
	v_or_b32_e32 v63, 4, v62
	v_or_b32_e32 v64, 8, v62
	v_or_b32_e32 v65, 12, v62
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x110, v0
	v_xor_b32_e32 v19, 0x198, v0
	v_add_nc_u32_e32 v69, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v47, 1, v45
	s_mov_b32 s46, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v73, 0, v18
	v_add_nc_u32_e32 v74, 0, v19
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v68, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s34, s3, s30
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s19, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s15, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s52, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s6, 0, s15
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s52, v64
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s52, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[42:43], null, s33, v62, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s52, v63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s4
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s33, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s52, v62
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s6, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v66, s33, 2, v42
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
	s_cselect_b32 s53, s6, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s29
	s_xor_b32 s18, s28, s29
	s_cvt_f32_u32 s2, s16
	s_sub_i32 s12, 0, s16
	s_ashr_i32 s37, s18, 31
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
	v_mad_u64_u32 v[43:44], null, s33, 12, v[42:43]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s7, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v67, s33, 3, v42
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
	s_mul_i32 s36, s17, s16
	s_sub_i32 s18, s15, s36
	s_add_i32 s36, s17, 1
	s_sub_i32 s38, s18, s16
	s_cmp_ge_u32 s18, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s17, s36, s17
	s_cselect_b32 s18, s38, s18
	s_add_i32 s36, s17, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s36, s36, s17
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s34, s34, s52
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s38, s34, s33
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s38, v42
	v_add_nc_u32_e32 v13, s38, v66
	v_add_nc_u32_e32 v14, s38, v67
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s18, s30, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v15, s38, v43
	v_mad_u64_u32 v[2:3], null, s33, 20, v[1:2]
	v_lshl_add_u32 v16, s33, 4, v1
	v_lshl_add_u32 v17, s33, 5, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s25, 0xffff
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
	s_xor_b32 s2, s36, s37
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s37
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
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s4
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s10, s31, 15
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v17, 0x88, v0
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s14, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s18, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v20, s2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s2, s10, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v72, 0, v17
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s2, s2, 28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v69, v1
	s_waitcnt vmcnt(12)
	ds_store_b8 v69, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v69, v16 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v69, v8 offset:1536
	ds_store_b8 v72, v12
	ds_store_b8 v72, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v72, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v72, v9 offset:1536
	ds_store_b8 v73, v13
	ds_store_b8 v73, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v73, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v74, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v74, v4 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v74, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v74, v11 offset:1536
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v20
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s10, s10, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s47, s10, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s2, s20, 0x10008
	.loc	1 774 26                        ; attention.py:774:26
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s52, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s52, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s23
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
	s_max_i32 s5, s8, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s46, s5, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s47, s47, s2
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s5, 1, v1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v1, v47, v68
	.loc	1 809 9                         ; attention.py:809:9
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9                           ; attention.py:0:9
	s_add_i32 s2, s52, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 64
	s_min_i32 s2, s31, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 28
	s_add_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s2, s2, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s47, s47, s2
.LBB0_4:
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v46, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v2, s52, v1
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s46, s47
	v_lshrrev_b32_e32 v75, 1, v46
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v46
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 74 is_stmt 0                ; attention.py:0:74
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr33
.LBB0_7:                                ; %Flow157
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v61, s34, v1
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x38
	s_load_b32 s34, s[0:1], 0x64
	v_cmp_gt_i32_e64 s2, s30, v2
	v_and_b32_e32 v70, 0x70, v0
	v_dual_mov_b32 v6, v8 :: v_dual_and_b32 v71, 64, v0
	v_cmp_eq_u32_e64 s13, 0, v46
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
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_load_b256 s[36:43], s[0:1], 0x8
	v_dual_mov_b32 v8, 0x7632 :: v_dual_lshlrev_b32 v1, 1, v61
	s_clause 0x2
	s_load_b32 s60, s[0:1], 0x7c
	s_load_b128 s[48:51], s[0:1], 0x28
	s_load_b128 s[16:19], s[0:1], 0x6c
	v_dual_mov_b32 v158, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 14, v0
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v70
	v_dual_mov_b32 v7, 0x5410 :: v_dual_lshlrev_b32 v2, 5, v68
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v0
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v44, 63, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v50, 1, v4
	v_lshlrev_b32_e32 v51, 5, v39
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s41, 0xffff
	s_mov_b32 s24, s40
	v_lshl_or_b32 v52, v4, 8, v5
	buffer_load_u16 v34, v1, s[24:27], 0 offen
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v45
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 4, v70
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v6, 2, v45
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v77, 6, v71
	v_and_or_b32 v79, v3, 24, v2
	v_cndmask_b32_e64 v56, 0x3276, v8, s13
	v_mov_b32_e32 v22, v33
	v_or3_b32 v89, v52, v51, v50
	s_xor_b32 s9, s3, s28
	s_mul_f32 s8, s7, 0x4f7ffffe
	v_lshrrev_b32_e32 v38, 3, v45
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v48, s52, v36
	v_and_or_b32 v49, v3, 60, v37
	v_lshl_or_b32 v53, v68, 3, v6
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v76, 4, v46
	v_mov_b16_e32 v35.l, 0
	v_lshrrev_b32_e32 v40, 2, v46
	v_lshl_add_u32 v41, v71, 2, 0
	s_ashr_i32 s1, s9, 31
	v_mul_u32_u24_e32 v54, 0x48, v4
	v_cndmask_b32_e64 v55, 0x1054, v7, s13
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v57, 1, v44
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[45:46], null, s34, v77, v[44:45]
	v_or_b32_e32 v37, v79, v37
	v_lshl_or_b32 v52, v56, 8, v56
	v_xor_b32_e32 v56, 20, v89
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s16, s16, 0x3fb8aa3b
	s_xor_b32 s9, s53, s1
	s_cvt_u32_f32 s8, s8
	v_mul_lo_u32 v36, s19, v36
	s_sub_i32 s7, 0, s14
	s_sub_i32 s20, s9, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v100, 40, v48
	v_xor_b32_e32 v38, v49, v38
	v_xor_b32_e32 v49, v53, v47
	v_mov_b32_e32 v10, v33
	v_lshl_or_b32 v50, v39, 2, v54
	v_lshl_or_b32 v51, v55, 8, v55
	v_xad_u32 v53, v37, 8, 0
	v_xad_u32 v54, v37, 16, 0
	v_xor_b32_e32 v55, 16, v89
	s_mul_i32 s1, s20, s28
	s_mul_i32 s7, s7, s8
	s_sub_i32 s3, s3, s1
	s_mul_hi_u32 s7, s8, s7
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[46:47], null, s34, 6, v[45:46]
	s_ashr_i32 s15, s10, 4
	v_dual_mov_b32 v27, v33 :: v_dual_add_nc_u32 v88, s23, v48
	v_dual_mov_b32 v19, v33 :: v_dual_add_nc_u32 v96, s23, v100
	v_mov_b32_e32 v2, v33
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v58, 8, v48
	v_or_b32_e32 v59, 16, v48
	v_or_b32_e32 v60, 24, v48
	v_or_b32_e32 v99, 32, v48
	v_or_b32_e32 v101, 48, v48
	v_or_b32_e32 v102, 56, v48
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s30, v48
	v_xor_b32_e32 v48, 8, v79
	v_cmp_gt_i32_e64 s10, s30, v100
	v_xor_b32_e32 v47, 12, v89
	v_or_b32_e32 v100, v49, v40
	v_and_b32_e32 v49, 0x760076, v52
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v110, 0, v55
	s_abs_i32 s25, s3
	s_add_i32 s8, s8, s7
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v92, s23, v58
	s_mul_hi_u32 s26, s25, s8
	v_dual_mov_b32 v31, v33 :: v_dual_add_nc_u32 v94, s23, v60
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v98, s23, v102
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v40, 0x540054, v51
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v93, s23, v59
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v95, s23, v99
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v97, s23, v101
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v109, 0, v47
	v_cmp_gt_i32_e64 s11, s30, v101
	v_cmp_gt_i32_e64 s12, s30, v102
	v_or3_b32 v101, v50, v75, v62
	v_add_nc_u32_e32 v102, 0, v48
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s23, s26, s14
	v_lshl_or_b32 v129, v49, 4, v49
	s_ashr_i32 s6, s6, 31
	s_ashr_i32 s7, s3, 31
	s_sub_i32 s23, s25, s23
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s30, v99
	v_lshl_or_b32 v99, v39, 6, v38
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s27, s7, s6
	s_add_i32 s25, s26, 1
	s_sub_i32 s28, s23, s14
	s_cmp_ge_u32 s23, s14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s30, v58
	v_xor_b32_e32 v58, 28, v89
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s18
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s18, s25, s26
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s24, s20, s29
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s30, v59
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s17, s20, s17
	v_xor_b32_e32 v59, 0x810, v99
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s20, s28, s23
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s30, v60
	v_subrev_nc_u32_e32 v105, s21, v88
	v_xor_b32_e32 v60, 0x240, v100
	v_subrev_nc_u32_e32 v114, s21, v92
	v_subrev_nc_u32_e32 v115, s21, v93
	v_subrev_nc_u32_e32 v116, s21, v94
	v_subrev_nc_u32_e32 v117, s21, v95
	v_subrev_nc_u32_e32 v118, s21, v96
	v_subrev_nc_u32_e32 v119, s21, v97
	v_subrev_nc_u32_e32 v120, s21, v98
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s21, s18, 1
	s_cmp_ge_u32 s20, s14
	v_xor_b32_e32 v103, 16, v79
	v_xor_b32_e32 v104, 24, v79
	v_xor_b32_e32 v38, 4, v89
	v_xor_b32_e32 v39, 8, v89
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s30, s19, s52
	v_xor_b32_e32 v132, 16, v101
	v_xor_b32_e32 v133, 32, v101
	v_xor_b32_e32 v134, 48, v101
	v_xor_b32_e32 v135, 64, v101
	v_xor_b32_e32 v136, 0x50, v101
	v_xor_b32_e32 v137, 0x60, v101
	v_xor_b32_e32 v138, 0x70, v101
	v_lshl_or_b32 v40, v40, 4, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s14, s21, s18
	v_add_nc_u32_e32 v130, 0, v59
	v_add_nc_u32_e32 v131, 0, v60
	s_add_i32 s30, s17, s30
	s_xor_b32 s14, s14, s27
	s_add_i32 s30, s30, s3
	s_sub_i32 s3, s14, s27
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v82, 0
	v_lshl_add_u32 v78, v68, 1, 0
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_mov_b32 v146, 0xff800000
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_mov_b32 v148, 0xff800000
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_mov_b32 v150, 0xff800000
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v152, 0xff800000
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_mov_b32 v32, v33
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_mov_b32 v18, v33
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_mov_b32 v20, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s34, v44
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v104, 0, v104
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v106, s22, v88
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v108, 0, v39
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v103, 0, v103
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v107, 0, v38
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v91, s34, 2, v45
	v_add_nc_u32_e32 v122, s22, v93
	v_add_nc_u32_e32 v123, s22, v94
	v_add_nc_u32_e32 v124, s22, v95
	v_add_nc_u32_e32 v125, s22, v96
	v_add_nc_u32_e32 v126, s22, v97
	v_add_nc_u32_e32 v127, s22, v98
	v_and_b32_e32 v128, 0x5040504, v40
	v_and_b32_e32 v129, 0x7060706, v129
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v138, 0, v138
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s29, s15, 3
	s_and_b32 s43, s43, 0xffff
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s64, s3, s24
	s_mov_b32 s61, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s52, s50
	s_mov_b32 s40, s38
	s_mov_b32 s38, s54
	s_mov_b32 s56, s42
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s53, s51, 0xffff
	s_and_b32 s41, s39, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s39, s55
	s_mov_b32 s57, s43
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_mul_i32 s62, s64, s31
	.loc	1 976 30 is_stmt 1              ; attention.py:976:30
	s_mul_i32 s63, s64, s29
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s64, s64, s15
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v35.h, v34.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v142, s16, v35 :: v_dual_add_nc_u32 v111, 0, v56
	v_add_nc_u32_e32 v90, v41, v57
	v_add_nc_u32_e32 v41, 0, v37
	v_xad_u32 v37, v37, 24, 0
	v_xor_b32_e32 v57, 24, v89
	ds_load_b64 v[47:48], v41
	ds_load_b64 v[49:50], v53
	ds_load_b64 v[51:52], v54
	ds_load_b64 v[53:54], v37
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[55:56], null, s60, v68, v[36:37]
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v112, 0, v57
	v_add_nc_u32_e32 v113, 0, v58
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v144, v142 :: v_dual_add_nc_u32 v121, s22, v92
	v_mov_b32_e32 v143, v142
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[56:57], null, s19, 24, v[55:56]
	v_lshl_add_u32 v139, s19, 3, v55
	v_lshl_add_u32 v140, s19, 4, v55
	v_lshl_add_u32 v141, s19, 5, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[57:58], null, s19, 40, v[55:56]
	v_mad_u64_u32 v[58:59], null, s19, 48, v[55:56]
	v_mad_u64_u32 v[59:60], null, s19, 56, v[55:56]
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v60, v142
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s3, s46, s60
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v190, v35
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s30, s3
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v192, v36
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v162, s3, v55, 2
	v_add_lshl_u32 v171, s3, v139, 2
	v_add_lshl_u32 v172, s3, v140, 2
	v_add_lshl_u32 v173, s3, v56, 2
	v_add_lshl_u32 v174, s3, v141, 2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s71
	v_add_lshl_u32 v175, s3, v57, 2
	v_add_lshl_u32 v176, s3, v58, 2
	v_add_lshl_u32 v177, s3, v59, 2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s67
	v_cndmask_b32_e64 v172, 0x80000000, v172, s69
	v_cndmask_b32_e64 v173, 0x80000000, v173, s28
	v_cndmask_b32_e64 v174, 0x80000000, v174, s68
	v_cndmask_b32_e64 v175, 0x80000000, v175, s65
	v_cndmask_b32_e64 v176, 0x80000000, v176, s70
	v_cndmask_b32_e64 v177, 0x80000000, v177, s66
	s_clause 0x7
	buffer_load_b32 v179, v162, s[52:55], 0 offen
	buffer_load_b32 v180, v171, s[52:55], 0 offen
	buffer_load_b32 v181, v172, s[52:55], 0 offen
	buffer_load_b32 v182, v173, s[52:55], 0 offen
	buffer_load_b32 v183, v174, s[52:55], 0 offen
	buffer_load_b32 v184, v176, s[52:55], 0 offen
	buffer_load_b32 v185, v177, s[52:55], 0 offen
	buffer_load_b32 v186, v175, s[52:55], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v194, v37
	v_cvt_f32_i32_e32 v189, v38
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v36, v154, v154 :: v_dual_add_nc_u32 v35, 0, v89
	v_dual_max_f32 v37, v155, v155 :: v_dual_add_nc_u32 v178, 0, v100
	v_dual_max_f32 v38, v156, v156 :: v_dual_add_nc_u32 v187, 0, v101
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s3, s46, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s14, s46, 4
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v154, 2, v77
	v_or_b32_e32 v155, 4, v77
	v_or_b32_e32 v156, 6, v77
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v188, v34
	v_cvt_f32_i32_e32 v191, v39
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v39, v157, v157 :: v_dual_add_nc_u32 v34, 0, v99
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v157, s34, 1, v45
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s15, s3, s63
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s14, s64
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s15, s15, s34
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s14, s14, s34
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v193, v40
	v_cvt_f32_i32_e32 v195, v41
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v154, s3, v154
	v_or_b32_e32 v155, s3, v155
	v_or_b32_e32 v156, s3, v156
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v40, v158, v158 :: v_dual_max_f32 v41, v159, v159
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v158, s3, v77
	v_add_nc_u32_e32 v212, s15, v157
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v157, s14, v44, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v196, v144, v194 :: v_dual_mul_f32 v197, v143, v192
	v_dual_mul_f32 v200, v144, v195 :: v_dual_mul_f32 v201, v143, v193
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v194, v154, 1, 1
	v_lshl_or_b32 v193, v155, 1, 1
	v_lshl_or_b32 v192, v156, 1, 1
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s20, s29, v158
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v195, v158, 1, 1
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v215, 0x80000000, v157, s0
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v162.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v165.h, v169.l
	v_mov_b16_e64 v172.h, v165.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v198, v60, v190 :: v_dual_mul_f32 v199, v142, v188
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v165.l, v162.l
	v_mov_b16_e64 v172.l, v162.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v168.h, v167.l
	v_mov_b16_e64 v169.h, v168.l
	v_mov_b16_e64 v168.l, v162.l
	v_mov_b16_e64 v162.h, v170.l
	v_mov_b16_e64 v176.h, v164.l
	v_mov_b16_e64 v177.h, v163.l
	v_mov_b16_e64 v176.l, v162.l
	v_mov_b16_e64 v177.l, v162.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v202, v60, v191 :: v_dual_mul_f32 v203, v142, v189
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v173.h, v166.l
	v_mov_b16_e64 v169.l, v162.l
	v_mov_b16_e64 v173.l, v162.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v191.h, v162.l
	v_mov_b16_e64 v190.h, v162.l
	v_mov_b16_e64 v189.h, v162.l
	v_mov_b16_e64 v188.h, v162.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v159.h, v162.l
	v_mov_b16_e64 v204.h, v162.l
	v_mov_b16_e64 v205.h, v162.l
	v_mov_b16_e64 v206.h, v162.l
	v_mov_b16_e64 v207.h, v162.l
	v_mov_b16_e64 v208.h, v162.l
	v_mov_b16_e64 v209.h, v162.l
	v_mov_b16_e64 v210.h, v162.l
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s20, s0, s20
	.loc	1 978 32                        ; attention.py:978:32
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v160, v160, v160 :: v_dual_max_f32 v161, v161, v161
	v_dual_max_f32 v166, v147, v147 :: v_dual_max_f32 v167, v148, v148
	v_dual_max_f32 v163, v145, v145 :: v_dual_max_f32 v164, v146, v146
	v_dual_max_f32 v170, v149, v149 :: v_dual_max_f32 v171, v150, v150
	v_dual_max_f32 v174, v151, v151 :: v_dual_max_f32 v175, v152, v152
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s46, s46, 16
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v154, 0xff800000, v179, s71
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v155, 0xff800000, v180, s67
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v156, 0xff800000, v181, s69
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v157, 0xff800000, v182, s28
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v158, 0xff800000, v183, s68
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v179, 0xff800000, v184, s70
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v181, 0xff800000, v185, s66
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v180, 0xff800000, v186, s65
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b32 v34, v154, v156 offset1:32
	ds_store_2addr_b32 v34, v158, v179 offset0:64 offset1:96
	ds_store_2addr_b32 v130, v155, v157 offset1:32
	ds_store_2addr_b32 v130, v180, v181 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v182, v35
	ds_load_b32 v183, v107
	ds_load_b32 v184, v108
	ds_load_b32 v185, v109
	ds_load_b32 v186, v110
	ds_load_b32 v216, v111
	ds_load_b32 v217, v112
	ds_load_b32 v218, v113
	v_add_nc_u32_e32 v211, s15, v45
	v_add_nc_u32_e32 v213, s15, v91
	v_add_nc_u32_e32 v214, s15, v46
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v155
	v_cmp_neq_f32_e64 s15, 0xff800000, v156
	v_cmp_neq_f32_e64 s19, 0xff800000, v179
	v_cmp_neq_f32_e64 s17, 0xff800000, v157
	v_cmp_neq_f32_e64 s18, 0xff800000, v180
	v_cmp_neq_f32_e64 s21, 0xff800000, v181
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v154
	v_cmp_neq_f32_e64 s16, 0xff800000, v158
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s14, s67, s3
	s_and_b32 s15, s69, s15
	s_and_b32 s3, s70, s19
	s_and_b32 s17, s28, s17
	s_and_b32 s18, s65, s18
	s_and_b32 s19, s66, s21
	v_cndmask_b32_e64 v156, 0, 1, s15
	v_cndmask_b32_e64 v154, 0, 1, s3
	v_cndmask_b32_e64 v179, 0, 1, s17
	v_cndmask_b32_e64 v181, 0, 1, s18
	v_cndmask_b32_e64 v158, 0, 1, s19
	s_and_b32 vcc_lo, s71, vcc_lo
	s_and_b32 s16, s68, s16
	v_cndmask_b32_e64 v157, 0, 1, vcc_lo
	v_cndmask_b32_e64 v155, 0, 1, s16
	v_lshlrev_b16 v154.l, 8, v154.l
	v_lshlrev_b16 v154.h, 8, v156.l
	v_cndmask_b32_e64 v180, 0, 1, s14
	v_mov_b16_e64 v159.l, v181.l
	v_lshlrev_b16 v155.h, 8, v158.l
	v_lshlrev_b16 v156.l, 8, v179.l
	v_or_b16 v157.h, v155.l, v154.l
	v_or_b16 v157.l, v157.l, v154.h
	s_waitcnt lgkmcnt(0)
	v_or_b16 v154.h, v159.l, v155.h
	v_or_b16 v154.l, v180.l, v156.l
	s_barrier
	ds_store_b32 v178, v157
	ds_store_b32 v131, v154
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v154, v187
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v154, v132
	ds_load_u8_d16 v155, v135
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v155, v136
	ds_load_u8_d16 v156, v137
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v156, v138
	ds_load_u8_d16 v157, v134
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v157, v133
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	v_dual_mul_f32 v179, 0x3fb8aa3b, v184 :: v_dual_mul_f32 v178, 0x3fb8aa3b, v182
	v_mul_f32_e32 v180, 0x3fb8aa3b, v183
	v_dual_mul_f32 v158, 0x3fb8aa3b, v185 :: v_dual_mul_f32 v183, 0x3fb8aa3b, v216
	v_mul_f32_e32 v184, 0x3fb8aa3b, v186
	v_dual_mul_f32 v181, 0x3fb8aa3b, v218 :: v_dual_mul_f32 v182, 0x3fb8aa3b, v217
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v179, v197, v165 :: v_dual_fmac_f32 v178, v199, v172
	v_fmac_f32_e32 v180, v198, v168
	v_fmac_f32_e32 v158, v196, v162
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v154.l, 1, v154.l
	v_and_b16 v154.h, 1, v154.h
	v_and_b16 v155.l, 1, v155.l
	v_and_b16 v155.h, 1, v155.h
	v_and_b16 v156.l, 1, v156.l
	v_and_b16 v156.h, 1, v156.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v157.l, 1, v157.l
	v_and_b16 v157.h, 1, v157.h
	v_cmp_eq_u16_e64 s24, 1, v154.l
	v_cmp_eq_u16_e64 s23, 1, v154.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v183, v202, v176
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s21, 1, v157.l
	v_cmp_eq_u16_e64 s22, 1, v157.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v184, v203, v177
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s28, 1, v155.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v182, v201, v173
	v_fmac_f32_e32 v181, v200, v169
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v154, 0xff800000, v178, s24
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s25, 1, v156.h
	v_cmp_eq_u16_e64 s26, 1, v156.l
	v_cmp_eq_u16_e64 s27, 1, v155.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v165, 0xff800000, v180, s23
	v_cndmask_b32_e64 v157, 0xff800000, v179, s22
	v_cndmask_b32_e64 v158, 0xff800000, v158, s21
	v_cndmask_b32_e64 v155, 0xff800000, v184, s28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v168, 0xff800000, v181, s25
	v_cndmask_b32_e64 v156, 0xff800000, v182, s26
	v_cndmask_b32_e64 v169, 0xff800000, v183, s27
	ds_store_b32 v35, v154
	ds_store_b32 v107, v165
	ds_store_b32 v108, v157
	ds_store_b32 v109, v158
	ds_store_b32 v110, v155
	ds_store_b32 v111, v169
	ds_store_b32 v112, v156
	ds_store_b32 v113, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[185:186], v34 offset0:64 offset1:96
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v35, v154, v165, v157
	v_max3_f32 v162, v158, v155, v169
	v_max_f32_e32 v172, v156, v168
.Ltmp2:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v173, 0x80000000, v211, s20
	v_cndmask_b32_e64 v176, 0x80000000, v212, s20
	v_cndmask_b32_e64 v177, 0x80000000, v214, s20
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[181:182], v34 offset1:32
	ds_load_2addr_b32 v[183:184], v130 offset1:32
	ds_load_2addr_b32 v[196:197], v130 offset0:64 offset1:96
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s46, s47
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(3)
	v_mov_b32_e32 v201, v185
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v162, v35, v162, v172
.Ltmp5:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v172, 0x80000000, v213, s20
	s_clause 0x3
	buffer_load_u8 v34, v173, s[40:43], 0 offen
	buffer_load_u8 v35, v176, s[40:43], 0 offen
	buffer_load_u8 v178, v172, s[40:43], 0 offen
	buffer_load_u8 v179, v177, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v180, v215, s[48:51], 0 offen
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v187, v162, s61, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(2)
	v_mov_b32_e32 v172, v181
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v176, v183 :: v_dual_max_f32 v211, v196, v196
	v_mov_b32_e32 v199, v184
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v162, v153, v162, v187
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v187, v182
	v_mov_b32_e32 v203, v196
	v_mov_b32_dpp v172, v172 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v176, v176 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v173, v181, v181
	v_dual_max_f32 v177, v183, v183 :: v_dual_mov_b32 v212, v186
.Ltmp10:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v165, v165, v162
	v_dual_sub_f32 v157, v157, v162 :: v_dual_max_f32 v172, v172, v172
	v_dual_sub_f32 v169, v169, v162 :: v_dual_max_f32 v176, v176, v176
	v_sub_f32_e32 v156, v156, v162
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v187, v187 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v214, v197
	v_mov_b32_dpp v199, v199 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v198, v182, v182 :: v_dual_max_f32 v215, v197, v197
	v_dual_max_f32 v200, v184, v184 :: v_dual_max_f32 v213, v186, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v216, v153, v162 :: v_dual_max_f32 v199, v199, v199
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v158, v158, v162 :: v_dual_max_f32 v203, v203, v203
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v201, v201 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v212, v212 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v169, v169
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v187, v187, v187
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v172, v173, v172
	v_max_f32_e32 v173, v177, v176
.Ltmp19:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v156, v156
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v202, v185, v185 :: v_dual_sub_f32 v155, v155, v162
.Ltmp21:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v154, v154, v162 :: v_dual_max_f32 v201, v201, v201
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v216, v216
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v214, v214, v214 :: v_dual_max_f32 v177, v200, v199
	v_max_f32_e32 v212, v212, v212
	v_max_f32_e32 v176, v198, v187
	v_max_f32_e32 v198, v211, v203
.Ltmp23:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v168, v168, v162 :: v_dual_max_f32 v187, v202, v201
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v153
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v165, 0, v165, s23
	v_cndmask_b32_e64 v169, 0, v169, s27
	v_cndmask_b32_e64 v156, 0, v156, s26
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v211, v177
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v199, v213, v212
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v203, v176
	v_dual_mov_b32 v201, v172 :: v_dual_max_f32 v200, v215, v214
	v_dual_mov_b32 v213, v198 :: v_dual_mov_b32 v202, v173
.Ltmp27:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v158, v158
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v153, 0, v216, s20
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v215, v200
.Ltmp29:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v159.l, v165.h
	v_mov_b16_e64 v207.l, v169.h
	v_mov_b16_e64 v210.l, v156.h
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v201, v201 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v203, v203 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v212, v187 :: v_dual_mul_f32 v25, v25, v153
.Ltmp31:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v26, v26, v153 :: v_dual_and_b32 v159, 1, v159
	v_dual_mul_f32 v28, v28, v153 :: v_dual_and_b32 v207, 1, v207
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v30, v30, v153 :: v_dual_max_f32 v203, v203, v203
	v_dual_mul_f32 v19, v19, v153 :: v_dual_and_b32 v210, 1, v210
	v_dual_mul_f32 v21, v21, v153 :: v_dual_max_f32 v202, v202, v202
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v211, v211 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v201, v201, v201
.Ltmp34:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v154, 0, v154, s24
	v_cndmask_b32_e64 v158, 0, v158, s21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v32, v32, v153 :: v_dual_max_f32 v211, v211, v211
	v_mul_f32_e32 v20, v20, v153
	v_mul_f32_e32 v11, v11, v153
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s20, v165, v165
	v_cmp_o_f32_e64 s24, v169, v169
	v_cmp_o_f32_e64 s27, v156, v156
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v212, v212 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v159, v165, v159, 0x7fff
	v_add3_u32 v165, v169, v207, 0x7fff
	v_add3_u32 v156, v156, v210, 0x7fff
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v169, v172, v201
	v_dual_max_f32 v201, v173, v202 :: v_dual_max_f32 v202, v176, v203
.Ltmp38:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v168, v168
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v153 :: v_dual_max_f32 v203, v177, v211
	v_dual_mul_f32 v23, v23, v153 :: v_dual_max_f32 v212, v212, v212
	v_mul_f32_e32 v1, v1, v153
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v204.l, v154.h
	v_mov_b16_e64 v205.l, v158.h
	v_cndmask_b16 v177.l, 0x7fff, v156.h, s27
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v156, v202
	v_dual_mov_b32 v214, v199 :: v_dual_mul_f32 v29, v29, v153
.Ltmp40:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v153 :: v_dual_and_b32 v204, 1, v204
	v_dual_mul_f32 v24, v24, v153 :: v_dual_max_f32 v187, v187, v212
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v205, 1, v205
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v157, 0, v157, s22
	v_cndmask_b32_e64 v155, 0, v155, s28
	v_cndmask_b32_e64 v168, 0, v168, s25
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s21, v154, v154
	v_cmp_o_f32_e64 s22, v158, v158
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v154, v154, v204, 0x7fff
	v_add3_u32 v158, v158, v205, 0x7fff
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v156, v156, v156 :: v_dual_mul_f32 v9, v9, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v214, v214, v214
.Ltmp46:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v206.l, v157.h
	v_mov_b16_e64 v208.l, v155.h
	v_mov_b16_e64 v209.l, v168.h
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v213, v213 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v215, v215 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v172.l, 0x7fff, v154.h, s21
	v_cndmask_b16 v173.h, 0x7fff, v158.h, s22
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v158, v187
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v156, v202, v156 :: v_dual_mul_f32 v15, v15, v153
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v154, v169 :: v_dual_mul_f32 v31, v31, v153
.Ltmp52:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v17, v17, v153 :: v_dual_and_b32 v206, 1, v206
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v208, 1, v208
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v18, v18, v153 :: v_dual_max_f32 v215, v215, v215
	v_dual_mul_f32 v10, v10, v153 :: v_dual_max_f32 v199, v199, v214
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v154, v154 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v209, 1, v209
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v213, v213, v213
.Ltmp57:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v153 :: v_dual_max_f32 v200, v200, v215
	v_mul_f32_e32 v2, v2, v153
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s23, v157, v157
	v_cmp_o_f32_e64 s25, v155, v155
	v_cmp_o_f32_e64 s26, v168, v168
	v_add3_u32 v157, v157, v206, 0x7fff
	v_add3_u32 v155, v155, v208, 0x7fff
	v_cndmask_b16 v176.h, 0x7fff, v165.h, s24
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v165, v199 :: v_dual_max_f32 v154, v154, v154
.Ltmp59:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v168, v168, v209, 0x7fff
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v158, v158
	v_max_f32_e32 v198, v198, v213
.Ltmp61:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v153
	v_mul_f32_e32 v14, v14, v153
	v_mul_f32_e32 v16, v16, v153
	v_mul_f32_e32 v3, v3, v153
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v172.h, 0x7fff, v159.h, s20
	v_cndmask_b16 v173.l, 0x7fff, v157.h, s23
	v_cndmask_b16 v176.l, 0x7fff, v155.h, s25
	v_cndmask_b16 v177.h, 0x7fff, v168.h, s26
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v155, v201
	v_mov_b32_e32 v157, v203
	v_dual_mov_b32 v159, v198 :: v_dual_mov_b32 v168, v200
	v_mov_b32_dpp v165, v165 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v155, v155 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v159, v159 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v165, v165, v165 :: v_dual_max_f32 v158, v187, v158
.Ltmp64:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v4, v4, v153 :: v_dual_max_f32 v155, v155, v155
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v157, v157, v157 :: v_dual_max_f32 v168, v168, v168
	v_dual_max_f32 v159, v159, v159 :: v_dual_max_f32 v154, v169, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v165, v199, v165
	v_dual_max_f32 v155, v201, v155 :: v_dual_max_f32 v168, v200, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v157, v203, v157
	v_dual_max_f32 v159, v198, v159 :: v_dual_mov_b32 v198, v156
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v200, v158
	v_dual_mov_b32 v169, v154 :: v_dual_mov_b32 v202, v165
.Ltmp67:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v145
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v187, v155
	v_mov_b32_dpp v200, v200 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v202, v202 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v199, v157
	v_mov_b32_e32 v201, v159
	v_mov_b32_dpp v169, v169 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v198, v198, v198
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v200, v200, v200
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v203, v168 :: v_dual_max_f32 v202, v202, v202
	v_mov_b32_dpp v199, v199 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v201, v201 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v169, v169, v169 :: v_dual_max_f32 v198, v156, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v187, v187, v187 :: v_dual_max_f32 v202, v165, v202
	v_max_f32_e32 v200, v158, v200
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v203, v203 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v201, v201, v201 :: v_dual_max_f32 v156, v38, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v169, v154, v169 :: v_dual_max_f32 v160, v160, v202
	v_max_f32_e32 v199, v199, v199
	v_dual_max_f32 v203, v203, v203 :: v_dual_max_f32 v158, v40, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v201, v159, v201
.Ltmp76:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v154, v36, v169 :: v_dual_max_f32 v199, v157, v199
	v_max_f32_e32 v165, v166, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v203, v168, v203 :: v_dual_max_f32 v168, v171, v201
.Ltmp78:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v182, v182, v156
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v166, v167, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v38, v147, v165 :: v_dual_max_f32 v167, v170, v200
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v170, v175, v203
	v_max_f32_e32 v163, v163, v169
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v187, v155, v187
.Ltmp80:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v175, v181, v154
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v40, v149, v167 :: v_dual_max_f32 v169, v174, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v36, v145, v163
	v_sub_f32_e32 v174, v152, v170
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v164, v164, v187
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v175, v175
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v155, v37, v187
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v37, v146, v164
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v182, v182
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v157, v39, v199
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v39, v148, v166
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v40, v40
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v159, v41, v201 :: v_dual_sub_f32 v186, v186, v160
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v174, v174
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v145, 0, v36, s20
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e32 v36, 0, v175, vcc_lo
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v37, v37
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v146
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v39, v39
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v186, v186
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v175, v36
.Ltmp82:
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v195
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v153
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v146, 0, v37, s20
	v_cmp_neq_f32_e64 s20, 0xff800000, v147
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v171, v151, v169
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_permlanex16_b32 v217, v177, s61, 0xfedcba98 op_sel:[1,0]
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v175 :: v_dual_mul_f32 v5, v5, v153
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp86:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v147, 0, v38, s20
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v182, s15
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v161, v161, v203
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v148
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v171, v171
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_perm_b32 v216, v217, v177, v128
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v182, v38
.Ltmp88:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v217, v217, v177, v129
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v148, 0, v39, s20
	v_cmp_neq_f32_e64 s20, 0xff800000, v149
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v153
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v182, v182 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v181, v183, v155
	v_dual_sub_f32 v183, v184, v157 :: v_dual_sub_f32 v184, v185, v158
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v149, 0, v40, s20
	v_cmp_neq_f32_e64 s20, 0xff800000, v150
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v38, v182 :: v_dual_sub_f32 v185, v196, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v181, v181
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v153
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v182, v38
.Ltmp94:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v185, v185
	v_mov_b32_e32 v153, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v182, v182 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v184, s16
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v41, v150, v168
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v181, s14
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v38, v182
.Ltmp98:
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v191.l, 4, v34.l
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v40
.Ltmp100:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v41, v41
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v200, 15, v179
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v182, v38
.Ltmp102:
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v198, 15, v35
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v184, v184 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v190.l, 4, v35.l
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v199, 15, v178
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v182, v182 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v175, v36
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v40, v40, v184 :: v_dual_sub_f32 v187, v197, v161
.Ltmp107:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v150, 0, v41, s20
	v_cmp_neq_f32_e64 s20, 0xff800000, v151
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v185, s18
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v40
.Ltmp109:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v187, v187
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v182, v38, v182
.Ltmp111:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v151, 0, v171, s20
	v_cmp_neq_f32_e64 s20, 0xff800000, v152
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v184, v184 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v185, v41
.Ltmp113:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v171, 0, v186, s3
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v152, 0, v174, s20
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v184
.Ltmp117:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v174, 0, v187, s19
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v186, v171 :: v_dual_mov_b32 v181, v37
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v184, v40 :: v_dual_mov_b32 v187, v174
	v_mov_b32_dpp v186, v186 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v175, v36
	v_mov_b32_dpp v184, v184 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v171, v171, v186
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v181, v181 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v175, v175 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v184
	v_add_f32_e32 v174, v174, v187
.Ltmp124:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v183, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v186, v171 :: v_dual_add_f32 v175, v36, v175
.Ltmp126:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.l, v34.l, 15
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v187, v174
.Ltmp128:
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v197, 15, v34
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v186, v186 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v180
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v38, v175
.Ltmp132:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v36.h, v35.l, 15
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v183, s17
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v171, v171, v186
	v_dual_add_f32 v41, v41, v185 :: v_dual_mov_b32 v184, v182
.Ltmp134:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v189.l, 4, v178.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v39
	v_dual_mov_b32 v186, v171 :: v_dual_mov_b32 v185, v41
.Ltmp136:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v188.l, 4, v179.l
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v183, v183 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v186, v186 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v185, v185 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v39, v39, v183
	v_dual_add_f32 v171, v171, v186 :: v_dual_mov_b32 v186, v40
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v187, v187 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v41, v41, v185 :: v_dual_mov_b32 v196, v171
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v186, v186 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v174, v174, v187
.Ltmp143:
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v35, 0, v191, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v194
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v39
.Ltmp145:
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v191, -16, v200
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v187, v174 :: v_dual_add_f32 v40, v40, v186
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v183, v183 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v181, v37 :: v_dual_fmac_f32 v40, v84, v149
	v_dual_mov_b32 v149, v167 :: v_dual_add_f32 v174, v174, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v181, v181 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v39, v39, v183 :: v_dual_mov_b32 v84, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v218, v174 :: v_dual_add_f32 v37, v37, v181
	v_mov_b32_dpp v218, v218 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v181, v37
	v_mov_b32_dpp v181, v181 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v181, v37, v181
.Ltmp150:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v37.l, v178.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e32 v178, 0, v190, vcc_lo
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v193
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v37.h, v179.l, 15
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v190, -16, v199
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v179, 0, v189, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v192
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v39
.Ltmp152:
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v189, -16, v198
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v192, -16, v178
	v_or_b32_e32 v193, -16, v179
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v180, 0, v188, vcc_lo
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v188, -16, v197
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v36.l
.Ltmp153:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v183, v183 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp154:
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v194, -16, v180
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v188, v197, v188, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v36.h
.Ltmp155:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp156:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v188, v188
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v36, v198, v189, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v37.l
.Ltmp157:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v185, v185 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v183, v39, v183 :: v_dual_mul_f32 v188, v188, v34
.Ltmp159:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v189, v199, v190, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v37.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v190, -16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v41, v41, v185 :: v_dual_mul_f32 v36, v36, v34
.Ltmp161:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v189, v189
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v37, v200, v191, vcc_lo
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v35
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v185, v183
.Ltmp163:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v189, v189, v34
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v35, v35, v190, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v178
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v190, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v191, v189, 16, 1
	v_cmp_o_f32_e64 s14, v189, v189
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v178, v178, v192, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v179
.Ltmp164:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v187, v41 :: v_dual_add_f32 v38, v175, v38
.Ltmp165:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v36, v36, v190, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v178, v178
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v179, v179, v193, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v180
	.loc	1 1020 23 is_stmt 1             ; attention.py:1020:23
	v_fmac_f32_e32 v38, v80, v145
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v178, v178, v34
	v_cvt_f32_i32_e32 v179, v179
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v180, v180, v194, vcc_lo
	v_mov_b32_e32 v80, v38
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v39, v181
.Ltmp167:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v35, v35, v34
	v_cvt_f32_i32_e32 v180, v180
	v_mul_f32_e32 v179, v34, v179
	v_mul_f32_e32 v37, v34, v37
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_bfe_u32 v190, v178, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v180, v34, v180
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v34, v188, 16, 1
	v_bfe_u32 v192, v37, 16, 1
	v_cmp_o_f32_e64 s15, v37, v37
	v_add3_u32 v189, v189, v191, 0x7fff
	v_bfe_u32 v191, v179, 16, 1
	v_add3_u32 v34, v188, v34, 0x7fff
	v_bfe_u32 v188, v35, 16, 1
	v_add3_u32 v37, v37, v192, 0x7fff
	v_bfe_u32 v192, v180, 16, 1
	v_cmp_o_f32_e64 s16, v35, v35
	v_cmp_o_f32_e64 s17, v178, v178
	v_add3_u32 v188, v35, v188, 0x7fff
	v_cmp_o_f32_e64 s18, v179, v179
	v_cmp_o_f32_e64 s19, v180, v180
	v_cndmask_b16 v34.l, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_add3_u32 v36, v178, v190, 0x7fff
	v_add3_u32 v178, v179, v191, 0x7fff
	v_add3_u32 v179, v180, v192, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v189.h, s14
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s15
	v_cndmask_b16 v36.l, 0x7fff, v188.h, s16
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s17
	v_cndmask_b16 v37.l, 0x7fff, v178.h, s18
	v_cndmask_b16 v37.h, 0x7fff, v179.h, s19
	ds_store_b16 v90, v34
	ds_store_b16_d16_hi v90, v34 offset:512
	ds_store_b16 v90, v35 offset:1024
	ds_store_b16_d16_hi v90, v35 offset:1536
	ds_store_b16 v90, v36 offset:128
	ds_store_b16_d16_hi v90, v36 offset:640
	ds_store_b16 v90, v37 offset:1152
	ds_store_b16_d16_hi v90, v37 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v186, v78
	ds_load_u16_d16 v194, v78 offset:32
	ds_load_u16_d16 v202, v78 offset:64
	ds_load_u16_d16 v178, v78 offset:96
	ds_load_u16_d16 v179, v78 offset:352
.Ltmp168:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v187, v187 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v182, v184
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v185, v185 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp171:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v171, v196 :: v_dual_add_f32 v39, v181, v39
	v_add_f32_e32 v41, v41, v187
.Ltmp172:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v37, v172, s61, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp173:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v183, v185
.Ltmp174:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v205, v78 offset:832
	ds_load_u16_d16 v189, v78 offset:768
	ds_load_u16_d16 v196, v78 offset:544
	ds_load_u16_d16 v188, v78 offset:512
	ds_load_u16_d16 v195, v78 offset:288
	ds_load_u16_d16 v204, v78 offset:576
	ds_load_u16_d16 v187, v78 offset:256
	ds_load_u16_d16 v203, v78 offset:320
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v179, v78 offset:480
	ds_load_u16_d16 v206, v78 offset:1088
	ds_load_u16_d16 v190, v78 offset:1024
	ds_load_u16_d16 v197, v78 offset:800
	ds_load_u16_d16 v181, v78 offset:864
	ds_load_u16_d16 v180, v78 offset:608
	ds_load_u16_d16_hi v186, v78 offset:128
	ds_load_u16_d16_hi v194, v78 offset:160
	ds_load_u16_d16_hi v202, v78 offset:192
	ds_load_u16_d16_hi v178, v78 offset:224
	ds_load_u16_d16 v207, v78 offset:1344
	ds_load_u16_d16 v191, v78 offset:1280
	ds_load_u16_d16 v198, v78 offset:1056
	ds_load_u16_d16 v182, v78 offset:1120
	ds_load_u16_d16 v208, v78 offset:1600
	ds_load_u16_d16 v192, v78 offset:1536
	ds_load_u16_d16 v199, v78 offset:1312
	ds_load_u16_d16 v183, v78 offset:1376
	ds_load_u16_d16 v209, v78 offset:1856
	ds_load_u16_d16 v193, v78 offset:1792
	ds_load_u16_d16 v200, v78 offset:1568
	ds_load_u16_d16 v184, v78 offset:1632
	ds_load_u16_d16 v201, v78 offset:1824
	ds_load_u16_d16 v185, v78 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v204, v78 offset:704
	ds_load_u16_d16_hi v188, v78 offset:640
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v187, v78 offset:384
	ds_load_u16_d16_hi v195, v78 offset:416
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v203, v78 offset:448
	ds_load_u16_d16_hi v205, v78 offset:960
	ds_load_u16_d16_hi v189, v78 offset:896
	ds_load_u16_d16_hi v196, v78 offset:672
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v180, v78 offset:736
	ds_load_u16_d16_hi v206, v78 offset:1216
	ds_load_u16_d16_hi v190, v78 offset:1152
	ds_load_u16_d16_hi v197, v78 offset:928
	ds_load_u16_d16_hi v181, v78 offset:992
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v207, v78 offset:1472
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v191, v78 offset:1408
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v198, v78 offset:1184
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v182, v78 offset:1248
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v208, v78 offset:1728
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v192, v78 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v199, v78 offset:1440
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v183, v78 offset:1504
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v209, v78 offset:1984
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v193, v78 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v200, v78 offset:1696
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v184, v78 offset:1760
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v201, v78 offset:1952
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v185, v78 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v171, v173, s61, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v175, v176, s61, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v210, v37, v172, v128
	v_perm_b32 v211, v37, v172, v129
.Ltmp175:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v174, v218
.Ltmp176:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v212, v171, v173, v128
	v_perm_b32 v213, v171, v173, v129
	v_perm_b32 v214, v175, v176, v128
	v_perm_b32 v215, v175, v176, v129
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v39, v81, v146 :: v_dual_fmac_f32 v34, v82, v147
	v_fmac_f32_e32 v35, v83, v148
	v_dual_fmac_f32 v41, v85, v150 :: v_dual_fmac_f32 v36, v86, v151
	v_fmac_f32_e32 v37, v87, v152
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[186:193], v[210:217], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[202:209], v[210:217], v[9:16]
	v_mov_b32_e32 v81, v39
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[194:201], v[210:217], v[17:24]
	v_dual_mov_b32 v82, v34 :: v_dual_mov_b32 v83, v35
	v_dual_mov_b32 v85, v41 :: v_dual_mov_b32 v86, v36
	v_mov_b32_e32 v87, v37
	v_dual_mov_b32 v145, v163 :: v_dual_mov_b32 v146, v164
	v_dual_mov_b32 v147, v165 :: v_dual_mov_b32 v148, v166
	v_dual_mov_b32 v150, v168 :: v_dual_mov_b32 v151, v169
	v_mov_b32_e32 v152, v170
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[210:217], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v34, s46, v62
	v_or_b32_e32 v35, s46, v63
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s20, s46, s62
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v36, s46, v64
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s3, s20, s33
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v37, s46, v65
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v38, s3, v42
	v_add_nc_u32_e32 v39, s3, v66
	v_add_nc_u32_e32 v40, s3, v67
	v_add_nc_u32_e32 v34, s3, v43
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s31, v35
	v_cmp_gt_i32_e64 s14, s31, v36
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s15, s31, v37
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 908 32                        ; attention.py:908:32
	v_add_nc_u32_e32 v38, 0, v79
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s14
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v39, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s15
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
	v_or_b32_e32 v162, s46, v68
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s5
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v69, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v72, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v73, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v74, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[163:164], v38
	ds_load_b64 v[165:166], v102
	ds_load_b64 v[167:168], v103
	ds_load_b64 v[169:170], v104
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
	v_cmp_gt_i32_e64 s3, s31, v162
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[163:164], v[47:48], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s71, s1, s3
	s_and_b32 s67, s6, s3
	s_and_b32 s69, s7, s3
	s_and_b32 s28, s8, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[165:166], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s68, s9, s3
	s_and_b32 s65, s10, s3
	s_and_b32 s70, s11, s3
	s_and_b32 s66, s12, s3
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[167:168], v[51:52], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[169:170], v[53:54], v[34:41] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v162, v88
	v_cmp_le_i32_e64 s3, v162, v92
	v_cmp_le_i32_e64 s14, v162, v93
	v_cmp_le_i32_e64 s15, v162, v94
	v_cmp_le_i32_e64 s16, v162, v95
	v_cmp_le_i32_e64 s17, v162, v96
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s21, vcc_lo, s71
	s_and_b32 s3, s3, s67
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s18, v162, v97
	v_cmp_le_i32_e64 s19, v162, v98
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s14, s14, s69
	s_and_b32 s15, s15, s28
	s_and_not1_b32 s22, s71, exec_lo
	s_and_b32 s21, s21, exec_lo
	s_and_not1_b32 s23, s67, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s68
	s_and_b32 s17, s17, s65
	s_or_b32 s71, s22, s21
	s_or_b32 s67, s23, s3
	s_and_not1_b32 s3, s69, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s21, s28, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s70
	s_and_b32 s19, s19, s66
	s_or_b32 s69, s3, s14
	s_or_b32 s28, s21, s15
	s_and_not1_b32 s3, s68, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s65, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s68, s3, s14
	s_or_b32 s65, s15, s16
	s_and_not1_b32 s3, s70, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s66, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s70, s3, s14
	s_or_b32 s66, s15, s16
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_or_b32_e32 v163, 2, v76
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_or_b32_e32 v166, s46, v76
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v164, 4, v76
	.loc	1 0 0                           ; attention.py:0
	v_add_lshl_u32 v171, s20, v76, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v165, 6, v76
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v163, s46, v163
	v_cmp_gt_i32_e32 vcc_lo, s31, v166
	v_or_b32_e32 v164, s46, v164
	v_add_nc_u32_e32 v172, 4, v171
	v_or_b32_e32 v165, s46, v165
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v167, 8, v76
	.loc	1 0 0                           ; attention.py:0
	v_cndmask_b32_e32 v166, 0x80000000, v171, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v163
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v168, 10, v76
	v_or_b32_e32 v169, 12, v76
	.loc	1 0 0                           ; attention.py:0
	v_or_b32_e32 v167, s46, v167
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v170, 14, v76
	.loc	1 0 0                           ; attention.py:0
	v_dual_cndmask_b32 v163, 0x80000000, v172 :: v_dual_add_nc_u32 v172, 12, v171
	v_add_nc_u32_e32 v173, 8, v171
	v_cmp_gt_i32_e32 vcc_lo, s31, v164
	v_or_b32_e32 v168, s46, v168
	v_or_b32_e32 v169, s46, v169
	v_or_b32_e32 v170, s46, v170
	v_dual_cndmask_b32 v164, 0x80000000, v173 :: v_dual_add_nc_u32 v173, 16, v171
	v_cmp_gt_i32_e32 vcc_lo, s31, v165
	v_dual_cndmask_b32 v172, 0x80000000, v172 :: v_dual_add_nc_u32 v165, 20, v171
	v_cmp_gt_i32_e32 vcc_lo, s31, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v173, 0x80000000, v173, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v168
	v_add_nc_u32_e32 v167, 24, v171
	v_dual_cndmask_b32 v168, 0x80000000, v165 :: v_dual_add_nc_u32 v171, 28, v171
	v_cmp_gt_i32_e32 vcc_lo, s31, v169
	v_cndmask_b32_e32 v174, 0x80000000, v167, vcc_lo
	v_cmp_gt_i32_e32 vcc_lo, s31, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v171, 0x80000000, v171, vcc_lo
	s_clause 0x7
	buffer_load_u16 v165, v166, s[56:59], 0 offen
	buffer_load_u16 v167, v163, s[56:59], 0 offen
	buffer_load_u16 v169, v164, s[56:59], 0 offen
	buffer_load_u16 v170, v172, s[56:59], 0 offen
	buffer_load_u16 v163, v173, s[56:59], 0 offen
	buffer_load_u16 v164, v168, s[56:59], 0 offen
	buffer_load_u16 v166, v174, s[56:59], 0 offen
	buffer_load_u16 v168, v171, s[56:59], 0 offen
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v162, v105
	v_cmp_ge_i32_e64 s3, v162, v114
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s20, v162, v106
	v_cmp_le_i32_e64 s21, v162, v121
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v162, v115
	v_cmp_ge_i32_e64 s15, v162, v116
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s22, v162, v122
	v_cmp_le_i32_e64 s23, v162, v123
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s16, v162, v117
	v_cmp_ge_i32_e64 s17, v162, v118
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s24, v162, v124
	v_cmp_le_i32_e64 s25, v162, v125
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s3, s3, s21
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s18, v162, v119
	v_cmp_ge_i32_e64 s19, v162, v120
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s26, v162, v126
	v_cmp_le_i32_e64 s27, v162, v127
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s20, s20, s71
	s_and_b32 s3, s3, s67
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_b32 s14, s14, s69
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_and_not1_b32 s21, s71, exec_lo
	s_and_b32 s20, s20, exec_lo
	s_and_not1_b32 s22, s67, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s16, s16, s68
	s_and_b32 s17, s17, s65
	s_and_b32 s18, s18, s26
	s_and_b32 s19, s19, s27
	s_or_b32 s71, s21, s20
	s_or_b32 s67, s22, s3
	s_and_not1_b32 s3, s69, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_not1_b32 s20, s28, exec_lo
	s_and_b32 s15, s15, exec_lo
	s_and_b32 s18, s18, s70
	s_and_b32 s19, s19, s66
	s_or_b32 s69, s3, s14
	s_or_b32 s28, s20, s15
	s_and_not1_b32 s3, s68, exec_lo
	s_and_b32 s14, s16, exec_lo
	s_and_not1_b32 s15, s65, exec_lo
	s_and_b32 s16, s17, exec_lo
	s_or_b32 s68, s3, s14
	s_or_b32 s65, s15, s16
	s_and_not1_b32 s3, s70, exec_lo
	s_and_b32 s14, s18, exec_lo
	s_and_not1_b32 s15, s66, exec_lo
	s_and_b32 s16, s19, exec_lo
	s_or_b32 s70, s3, s14
	s_or_b32 s66, s15, s16
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v33, v75
.LBB0_15:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v42, 4, v0
	v_lshrrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v44, 3, v71
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v42, 0x70, v42
	v_and_b32_e32 v43, 4, v43
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v65, 18, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s33, s34, v33
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v42, 0, v42, v43
	v_add_nc_u32_e32 v43, 0, v70
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.h, 0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s34, v65
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v43, v[38:41]
	ds_store_b128 v43, v[34:37] offset:128
	v_add3_u32 v0, v42, v0, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v0, v0
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v0, v0, v25
	v_div_scale_f32 v36, null, v0, v0, v26
	v_div_scale_f32 v42, null, v0, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v34
	v_rcp_f32_e32 v47, v36
	v_div_scale_f32 v38, null, v0, v0, v27
	v_div_scale_f32 v44, null, v0, v0, v30
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v35, vcc_lo, v25, v0, v25
	v_div_scale_f32 v40, null, v0, v0, v28
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v34, v46, 1.0
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v51, v44
	v_fma_f32 v56, -v36, v47, 1.0
	v_div_scale_f32 v37, s0, v26, v0, v26
	v_fmac_f32_e32 v46, v55, v46
	v_rcp_f32_e32 v49, v40
	v_fma_f32 v59, -v42, v50, 1.0
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v39, s1, v27, v0, v27
	v_mul_f32_e32 v55, v35, v46
	v_fma_f32 v57, -v38, v48, 1.0
	v_fma_f32 v60, -v44, v51, 1.0
	v_fmac_f32_e32 v50, v59, v50
	v_div_scale_f32 v41, s3, v28, v0, v28
	v_fma_f32 v59, -v34, v55, v35
	v_mul_f32_e32 v56, v37, v47
	v_fma_f32 v58, -v40, v49, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_fmac_f32 v51, v60, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v46
	v_fma_f32 v60, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v58, v49
	v_mul_f32_e32 v57, v39, v48
	v_div_scale_f32 v43, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v60, v47
	v_fma_f32 v34, -v34, v55, v35
	v_fma_f32 v62, -v38, v57, v39
	v_mul_f32_e32 v58, v41, v49
	v_div_scale_f32 v52, s5, v30, v0, v30
	v_fma_f32 v35, -v36, v56, v37
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v57, v62, v48
	v_fma_f32 v63, -v40, v58, v41
	v_div_fmas_f32 v35, v35, v47, v56
	v_div_scale_f32 v45, null, v0, v0, v31
	v_mul_f32_e32 v64, v43, v50
	v_fma_f32 v36, -v38, v57, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v35, v0, v26
	v_dual_mul_f32 v35, v52, v51 :: v_dual_fmac_f32 v58, v63, v49
	v_div_scale_f32 v53, null, v0, v0, v32
	v_rcp_f32_e32 v54, v45
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v40, v58, v41
	v_div_fmas_f32 v36, v36, v48, v57
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v0, v25
	v_rcp_f32_e32 v38, v53
	v_div_fmas_f32 v34, v37, v49, v58
	v_fma_f32 v59, -v42, v64, v43
	v_div_fixup_f32 v27, v36, v0, v27
	v_fma_f32 v37, -v45, v54, 1.0
	v_div_scale_f32 v36, s1, v31, v0, v31
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v44, v35, v52
	v_fmac_f32_e32 v64, v59, v50
	v_fmac_f32_e32 v54, v37, v54
	v_fma_f32 v39, -v53, v38, 1.0
	v_div_scale_f32 v47, null, v0, v0, v18
	v_fmac_f32_e32 v35, v34, v51
	v_fma_f32 v40, -v42, v64, v43
	v_mul_f32_e32 v34, v36, v54
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s3, v32, v0, v32
	v_fma_f32 v42, -v44, v35, v52
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v37, null, v0, v0, v17
	v_div_fmas_f32 v40, v40, v50, v64
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v45, v34, v36
	v_mul_f32_e32 v44, v39, v38
	v_div_fmas_f32 v35, v42, v51, v35
	v_rcp_f32_e32 v42, v47
	v_rcp_f32_e32 v41, v37
	v_fmac_f32_e32 v34, v43, v54
	v_fma_f32 v43, -v53, v44, v39
	v_div_fixup_f32 v29, v40, v0, v29
	v_div_fixup_f32 v30, v35, v0, v30
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v45, v34, v36
	v_fmac_f32_e32 v44, v43, v38
	v_div_scale_f32 v43, null, v0, v0, v19
	v_fma_f32 v40, -v47, v42, 1.0
	v_fma_f32 v46, -v37, v41, 1.0
	v_div_fmas_f32 v34, v35, v54, v34
	v_fma_f32 v35, -v53, v44, v39
	v_div_scale_f32 v48, null, v0, v0, v20
	v_fmac_f32_e32 v42, v40, v42
	v_rcp_f32_e32 v40, v43
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_div_fmas_f32 v35, v35, v38, v44
	v_rcp_f32_e32 v38, v48
	v_div_scale_f32 v45, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v36, v46, v41
	v_fma_f32 v44, -v43, v40, 1.0
	v_div_fixup_f32 v31, v34, v0, v31
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v35, v0, v32
	v_fma_f32 v39, -v37, v36, v46
	v_fmac_f32_e32 v40, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v48, v38, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v55, 1, v33
	v_or_b32_e32 v56, 2, v33
	v_or_b32_e32 v57, 3, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_dual_fmac_f32 v36, v39, v41 :: v_dual_mul_f32 v39, v45, v42
	v_div_scale_f32 v44, null, v0, v0, v22
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v36, v46
	v_div_scale_f32 v46, null, v0, v0, v21
	v_fma_f32 v35, -v47, v39, v45
	v_div_scale_f32 v37, s3, v19, v0, v19
	v_div_fmas_f32 v34, v34, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v39, v35, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v37, v40
	v_div_scale_f32 v41, s4, v20, v0, v20
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v17, v34, v0, v17
	v_fma_f32 v34, -v47, v39, v45
	v_fma_f32 v45, -v43, v35, v37
	v_mul_f32_e32 v47, v41, v38
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v46, v36, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v42, v39
	v_fmac_f32_e32 v35, v45, v40
	v_fma_f32 v39, -v48, v47, v41
	v_fmac_f32_e32 v36, v50, v36
	v_div_scale_f32 v42, s1, v21, v0, v21
	v_fma_f32 v45, -v44, v49, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_fma_f32 v34, -v43, v35, v37
	v_fmac_f32_e32 v47, v39, v38
	v_mul_f32_e32 v37, v42, v36
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v39, s5, v22, v0, v22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v0, v0, v23
	v_div_fmas_f32 v34, v34, v40, v35
	v_fma_f32 v40, -v46, v37, v42
	v_mul_f32_e32 v45, v39, v49
	v_fma_f32 v35, -v48, v47, v41
	v_rcp_f32_e32 v41, v43
	v_div_scale_f32 v48, null, v0, v0, v24
	v_fmac_f32_e32 v37, v40, v36
	v_fma_f32 v40, -v44, v45, v39
	v_div_fixup_f32 v19, v34, v0, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v46, v37, v42
	v_fmac_f32_e32 v45, v40, v49
	v_div_fmas_f32 v35, v35, v38, v47
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v38, v48
	v_div_fmas_f32 v34, v34, v36, v37
	v_fma_f32 v36, -v44, v45, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v43, v41, 1.0
	v_div_scale_f32 v46, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v49, v45
	v_div_fixup_f32 v20, v35, v0, v20
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fma_f32 v40, -v48, v38, 1.0
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v35, v41
	v_div_scale_f32 v39, null, v0, v0, v9
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v24, v0, v24
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v44, -v43, v37, v35
	v_div_fixup_f32 v21, v34, v0, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v45, v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v0, v0, v12
	v_fmac_f32_e32 v36, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v48, v45, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v58, 4, v33
	v_or_b32_e32 v59, 5, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v34, v38
	v_div_scale_f32 v34, s4, v9, v0, v9
	v_fmac_f32_e32 v37, v44, v41
	v_fma_f32 v44, -v39, v42, 1.0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v60, 6, v33
	v_or_b32_e32 v62, 7, v33
	v_or_b32_e32 v63, 16, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v37, v35
	v_div_scale_f32 v43, null, v0, v0, v11
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v64, 17, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v41, v37
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v41, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v35, v0, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v66, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v41, v36
	v_fma_f32 v37, -v48, v45, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v67, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v47, -v43, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v38, v45
	v_fma_f32 v38, -v46, v50, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v47, v44
	v_div_scale_f32 v47, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v38, v36
	v_div_scale_f32 v38, null, v0, v0, v13
	v_dual_mul_f32 v45, v47, v44 :: v_dual_mul_f32 v40, v34, v42
	v_div_fixup_f32 v24, v37, v0, v24
	v_fma_f32 v37, -v49, v51, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v45, v47
	v_fma_f32 v48, -v39, v40, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v37, s1, v12, v0, v12
	v_dual_fmac_f32 v40, v48, v42 :: v_dual_fmac_f32 v45, v35, v44
	v_rcp_f32_e32 v35, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v46, v50, v41
	v_div_scale_f32 v41, null, v0, v0, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v42, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_div_fmas_f32 v36, v39, v36, v50
	v_fma_f32 v39, -v43, v45, v47
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v34, v0, v9
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v13, v0, v13
	v_div_fmas_f32 v39, v39, v44, v45
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v34, v42, v35
	v_div_fixup_f32 v10, v36, v0, v10
	v_div_fixup_f32 v11, v39, v0, v11
	v_div_scale_f32 v39, null, v0, v0, v15
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s31, s34, v55
	v_cmp_gt_i32_e64 s30, s34, v56
	v_cmp_gt_i32_e64 s29, s34, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v39
	v_mul_f32_e32 v40, v37, v51
	v_fma_f32 v36, -v41, v43, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s28, s34, v58
	v_cmp_gt_i32_e64 s27, s34, v59
	v_cmp_gt_i32_e64 s26, s34, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v49, v40, v37
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, s4, v14, v0, v14
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s34, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v44, v51
	v_fma_f32 v44, -v38, v34, v42
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s34, v63
	v_cmp_gt_i32_e64 s23, s34, v64
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s35, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v49, v40, v37
	v_fmac_f32_e32 v34, v44, v35
	v_div_scale_f32 v44, null, v0, v0, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s36, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v51, v40
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v12, v37, v0, v12
	v_fma_f32 v37, -v38, v34, v42
	v_fma_f32 v42, -v39, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v37, v35, v34
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v0, v0, v2
	v_div_scale_f32 v35, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v34, v0, v13
	v_fma_f32 v34, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v37, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	v_div_scale_f32 v34, s3, v16, v0, v16
	v_mul_f32_e32 v40, v36, v43
	v_div_scale_f32 v49, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v42, v48, 1.0
	v_fma_f32 v38, -v41, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v2, v0, v2
	v_fmac_f32_e32 v40, v38, v43
	v_rcp_f32_e32 v38, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v41, v40, v36
	v_mul_f32_e32 v41, v37, v45
	v_div_fmas_f32 v36, v36, v43, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v35, v38, 1.0
	v_fma_f32 v40, -v39, v41, v37
	v_mul_f32_e32 v43, v34, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v0, v14
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v0, v0, v3
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v36, -v39, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v40, v46
	v_mul_f32_e32 v39, v50, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v44, v43, v34
	v_div_scale_f32 v41, null, v0, v0, v4
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v36, v0, v15
	v_div_scale_f32 v45, null, v0, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v51 :: v_dual_mul_f32 v52, v49, v38
	v_div_fmas_f32 v34, v34, v46, v43
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v40, s1, v3, v0, v3
	v_fma_f32 v37, -v35, v52, v49
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v34, v0, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v41, v43, 1.0
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v36, v43
	v_fma_f32 v35, -v35, v52, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v37, v48
	v_mul_f32_e32 v37, v40, v51
	v_div_scale_f32 v36, null, v0, v0, v6
	v_div_fmas_f32 v35, v35, v38, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v35, v0, v1
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v42, v51
	v_div_scale_f32 v35, null, v0, v0, v5
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v38, v0, v2
	v_fma_f32 v34, -v47, v37, v40
	v_div_scale_f32 v38, null, v0, v0, v7
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v39, vcc_lo, v4, v0, v4
	v_div_fixup_f32 v3, v34, v0, v3
	v_fma_f32 v46, -v36, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v51, -v45, v47, 1.0
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v38, v42, 1.0
	v_dual_fmac_f32 v40, v46, v40 :: v_dual_fmac_f32 v47, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v5, v0, v5
	v_fma_f32 v48, -v41, v44, v39
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v7, v0, v7
	v_mul_f32_e32 v50, v34, v37
	v_div_scale_f32 v46, s3, v6, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v48, v43 :: v_dual_mul_f32 v53, v49, v42
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v44, v39
	v_fmac_f32_e32 v50, v48, v37
	v_fma_f32 v48, -v38, v53, v49
	v_mul_f32_e32 v52, v46, v40
	v_mul_f32_e32 v54, v51, v47
	v_div_fmas_f32 v39, v39, v43, v44
	v_fma_f32 v34, -v35, v50, v34
	v_fmac_f32_e32 v53, v48, v42
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v35, -v45, v54, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v39, v0, v4
	v_div_fmas_f32 v34, v34, v37, v50
	v_fmac_f32_e32 v52, v41, v40
	v_fmac_f32_e32 v54, v35, v47
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v34, v0, v5
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v37, -v45, v54, v51
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v34, 0, v17, s0
	v_cndmask_b32_e64 v38, 0, v21, s0
	v_cndmask_b32_e64 v39, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v36, v0, v6
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v36, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v35, 0, v18, s0
	v_cndmask_b32_e64 v41, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v37, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v20, s0
	v_cndmask_b32_e64 v42, 0, v12, s0
	v_cndmask_b32_e64 v43, 0, v13, s0
	v_cndmask_b32_e64 v44, 0, v14, s0
	v_cndmask_b32_e64 v45, 0, v15, s0
	v_cndmask_b32_e64 v46, 0, v16, s0
	v_cndmask_b32_e64 v47, 0, v1, s0
	v_cndmask_b32_e64 v48, 0, v2, s0
	v_cndmask_b32_e64 v49, 0, v3, s0
	v_cndmask_b32_e64 v50, 0, v4, s0
	v_cndmask_b32_e64 v51, 0, v5, s0
	v_cndmask_b32_e64 v52, 0, v6, s0
	v_cndmask_b32_e64 v53, 0, v7, s0
	v_cndmask_b32_e64 v54, 0, v0, s0
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v21, 19, v33
	v_or_b32_e32 v20, 20, v33
	v_or_b32_e32 v19, 21, v33
	v_or_b32_e32 v18, 22, v33
	v_or_b32_e32 v17, 23, v33
	v_or_b32_e32 v16, 32, v33
	v_or_b32_e32 v15, 33, v33
	v_or_b32_e32 v14, 34, v33
	v_or_b32_e32 v13, 35, v33
	v_or_b32_e32 v12, 36, v33
	v_or_b32_e32 v11, 37, v33
	v_or_b32_e32 v10, 38, v33
	v_or_b32_e32 v9, 39, v33
	v_or_b32_e32 v8, 48, v33
	v_or_b32_e32 v7, 49, v33
	v_or_b32_e32 v6, 50, v33
	v_or_b32_e32 v5, 51, v33
	v_or_b32_e32 v4, 52, v33
	v_or_b32_e32 v3, 53, v33
	v_or_b32_e32 v2, 54, v33
	v_or_b32_e32 v0, 55, v33
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v1, v61, s34
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v61, v25, 16, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s34, v21
	v_cmp_gt_i32_e64 s20, s34, v20
	v_cmp_gt_i32_e64 s19, s34, v19
	v_cmp_gt_i32_e64 s18, s34, v18
	v_cmp_gt_i32_e64 s17, s34, v17
	v_cmp_gt_i32_e64 s16, s34, v16
	v_cmp_gt_i32_e64 s15, s34, v15
	v_cmp_gt_i32_e64 s14, s34, v14
	v_cmp_gt_i32_e64 s12, s34, v13
	v_cmp_gt_i32_e64 s11, s34, v12
	v_cmp_gt_i32_e64 s10, s34, v11
	v_cmp_gt_i32_e64 s9, s34, v10
	v_cmp_gt_i32_e64 s5, s34, v9
	v_cmp_gt_i32_e64 s4, s34, v8
	v_cmp_gt_i32_e64 s3, s34, v7
	v_cmp_gt_i32_e64 s1, s34, v6
	v_cmp_gt_i32_e64 s0, s34, v5
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	v_cmp_gt_i32_e64 s8, s34, v3
	v_cmp_gt_i32_e64 s7, s34, v2
	v_cmp_gt_i32_e64 s6, s34, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v61, v25, v61, 0x7fff
	v_cmp_o_f32_e64 s34, v25, v25
	v_add3_u32 v25, v26, v66, 0x7fff
	v_add3_u32 v26, v27, v67, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v66, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v61.h, s34
	v_bfe_u32 v61, v29, 16, 1
	v_cmp_o_f32_e64 s34, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s35
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s36
	v_add3_u32 v28, v29, v61, 0x7fff
	v_cmp_o_f32_e64 s35, v29, v29
	v_add3_u32 v29, v30, v66, 0x7fff
	v_cmp_o_f32_e64 s36, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s34
	v_bfe_u32 v27, v31, 16, 1
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s35
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s36
	v_bfe_u32 v29, v34, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s34, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v32, v32
	v_bfe_u32 v31, v35, 16, 1
	v_add3_u32 v29, v34, v29, 0x7fff
	v_cmp_o_f32_e64 s36, v34, v34
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s34
	v_cndmask_b16 v27.h, 0x7fff, v30.h, s35
	v_bfe_u32 v30, v36, 16, 1
	v_bfe_u32 v32, v37, 16, 1
	v_add3_u32 v31, v35, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v35, v35
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s36
	v_add3_u32 v30, v36, v30, 0x7fff
	v_cmp_o_f32_e64 s35, v36, v36
	v_add3_u32 v32, v37, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v37, v37
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v38, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s35
	v_bfe_u32 v34, v22, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v23, 16, 1
	v_add3_u32 v31, v38, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v38, v38
	v_add3_u32 v34, v22, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v22, v22
	v_add3_u32 v22, v23, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v24, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v34.h, s35
	v_bfe_u32 v32, v39, 16, 1
	v_bfe_u32 v34, v40, 16, 1
	v_cmp_o_f32_e64 s34, v24, v24
	v_add3_u32 v31, v24, v31, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s36
	v_add3_u32 v24, v39, v32, 0x7fff
	v_cmp_o_f32_e64 s35, v39, v39
	v_add3_u32 v32, v40, v34, 0x7fff
	v_cmp_o_f32_e64 s36, v40, v40
	v_cndmask_b16 v22.h, 0x7fff, v31.h, s34
	v_bfe_u32 v31, v41, 16, 1
	v_bfe_u32 v34, v42, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s35
	v_cndmask_b16 v24.h, 0x7fff, v32.h, s36
	v_bfe_u32 v32, v43, 16, 1
	v_add3_u32 v31, v41, v31, 0x7fff
	v_cmp_o_f32_e64 s34, v41, v41
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v42, v42
	v_bfe_u32 v35, v44, 16, 1
	v_add3_u32 v32, v43, v32, 0x7fff
	v_cmp_o_f32_e64 s36, v43, v43
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s34
	v_cndmask_b16 v31.h, 0x7fff, v34.h, s35
	v_bfe_u32 v34, v45, 16, 1
	v_bfe_u32 v36, v46, 16, 1
	v_add3_u32 v35, v44, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v44, v44
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s36
	v_add3_u32 v34, v45, v34, 0x7fff
	v_cmp_o_f32_e64 s35, v45, v45
	v_add3_u32 v36, v46, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v46, v46
	v_cndmask_b16 v32.h, 0x7fff, v35.h, s34
	v_bfe_u32 v35, v47, 16, 1
	v_bfe_u32 v37, v48, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s35
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s36
	v_bfe_u32 v36, v49, 16, 1
	v_add3_u32 v35, v47, v35, 0x7fff
	v_cmp_o_f32_e64 s34, v47, v47
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v48, v48
	v_bfe_u32 v40, v53, 16, 1
	v_bfe_u32 v38, v50, 16, 1
	v_add3_u32 v36, v49, v36, 0x7fff
	v_cmp_o_f32_e64 s36, v49, v49
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s34
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s35
	v_bfe_u32 v37, v51, 16, 1
	v_bfe_u32 v39, v52, 16, 1
	v_bfe_u32 v41, v54, 16, 1
	v_add3_u32 v40, v53, v40, 0x7fff
	v_cmp_o_f32_e64 s37, v53, v53
	v_add3_u32 v38, v50, v38, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s36
	v_cmp_o_f32_e64 s34, v50, v50
	v_add3_u32 v37, v51, v37, 0x7fff
	v_cmp_o_f32_e64 s35, v51, v51
	v_add3_u32 v39, v52, v39, 0x7fff
	v_cmp_o_f32_e64 s36, v52, v52
	v_add3_u32 v41, v54, v41, 0x7fff
	v_cmp_o_f32_e64 s38, v54, v54
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s37
	v_mov_b32_e32 v40, 0x5410
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s34
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s35
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s36
	v_cndmask_b16 v38.h, 0x7fff, v41.h, s38
	v_cndmask_b32_e64 v39, v28, v25, s13
	v_cndmask_b32_e64 v25, v25, v28, s13
	v_cndmask_b32_e64 v28, v27, v26, s13
	v_cndmask_b32_e64 v26, v26, v27, s13
	v_cndmask_b32_e64 v27, v23, v29, s13
	v_cndmask_b32_e64 v23, v29, v23, s13
	v_cndmask_b32_e64 v29, v22, v30, s13
	v_mov_b32_e32 v41, 0x7632
	v_cndmask_b32_e64 v22, v30, v22, s13
	v_cndmask_b32_e64 v30, v32, v24, s13
	v_cndmask_b32_e64 v24, v24, v32, s13
	v_cndmask_b32_e64 v32, 0x1054, v40, s13
	v_cndmask_b32_e64 v40, 0x3276, v41, s13
	s_mov_b32 s34, 0x76543210
	v_cndmask_b32_e64 v41, v34, v31, s13
	v_cndmask_b32_e64 v31, v31, v34, s13
	v_lshl_or_b32 v32, v32, 8, v32
	v_lshl_or_b32 v40, v40, 8, v40
	v_cndmask_b32_e64 v34, v37, v35, s13
	v_cndmask_b32_e64 v35, v35, v37, s13
	v_cndmask_b32_e64 v37, v38, v36, s13
	v_and_b32_e32 v32, 0x540054, v32
	v_and_b32_e32 v40, 0x760076, v40
	v_cndmask_b32_e64 v36, v36, v38, s13
	v_permlanex16_b32 v25, v25, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v33, v1, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v38, v40, 4, v40
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v54, v1, v55, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v26, v26, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x5040504, v32
	v_permlanex16_b32 v22, v22, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s34, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v38, 0x7060706, v38
	v_permlanex16_b32 v31, v31, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v25, v39, v32
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s13, s2, s33
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v55, v1, v56, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v25, v25, v39, v38
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v54, 0x80000000, v54, s13
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s13, s2, s30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v39, v26, v28, v32
	v_perm_b32 v26, v26, v28, v38
	v_perm_b32 v28, v23, v27, v32
	v_perm_b32 v23, v23, v27, v38
	v_perm_b32 v27, v22, v29, v32
	v_perm_b32 v22, v22, v29, v38
	v_perm_b32 v29, v24, v30, v32
	v_perm_b32 v24, v24, v30, v38
	v_perm_b32 v30, v31, v41, v32
	v_perm_b32 v31, v31, v41, v38
	v_perm_b32 v41, v35, v34, v32
	v_perm_b32 v34, v35, v34, v38
	v_perm_b32 v32, v36, v37, v32
	v_perm_b32 v35, v36, v37, v38
	v_mov_b16_e32 v36.l, v40.h
	v_mov_b16_e32 v36.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v55, 0x80000000, v55, s13
	buffer_store_b16 v40, v33, s[44:47], 0 offen
	v_add_lshl_u32 v33, v1, v57, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v68.l, v25.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v36, v54, s[44:47], 0 offen
	buffer_store_b16 v25, v55, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v58, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s13, s2, s29
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v36, v1, v59, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s28
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v40, v1, v60, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v39.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v36, 0x80000000, v36, s13
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s13, s2, s26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v40, 0x80000000, v40, s13
	s_clause 0x1
	buffer_store_b16 v68, v33, s[44:47], 0 offen
	buffer_store_b16 v39, v25, s[44:47], 0 offen
	v_add_lshl_u32 v25, v1, v62, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v26.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v38, v36, s[44:47], 0 offen
	buffer_store_b16 v26, v40, s[44:47], 0 offen
	v_add_lshl_u32 v26, v1, v63, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s13, s2, s25
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v33, v1, v64, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s24
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v36, v1, v65, 1
	v_cndmask_b32_e64 v26, 0x80000000, v26, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s23
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s22
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s19
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v1, v17, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v1, v16, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s17
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v1, v4, 1
	v_add_lshl_u32 v15, v1, v15, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s16
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v13, v1, v13, 1
	v_add_lshl_u32 v11, v1, v11, 1
	v_add_lshl_u32 v9, v1, v9, 1
	v_add_lshl_u32 v7, v1, v7, 1
	v_add_lshl_u32 v5, v1, v5, 1
	v_add_lshl_u32 v3, v1, v3, 1
	v_add_lshl_u32 v14, v1, v14, 1
	v_add_lshl_u32 v12, v1, v12, 1
	v_add_lshl_u32 v10, v1, v10, 1
	v_add_lshl_u32 v8, v1, v8, 1
	v_add_lshl_u32 v6, v1, v6, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s15
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v2, v1, v2, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s5, s2, s5
	s_and_b32 s3, s2, s3
	s_and_b32 s0, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s8
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v15, 0x80000000, v15, s13
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s2, s14
	s_and_b32 s11, s2, s11
	s_and_b32 s9, s2, s9
	s_and_b32 s4, s2, s4
	s_and_b32 s1, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v1, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v37.h, v68.h
	v_mov_b16_e32 v42.l, v23.h
	v_mov_b16_e32 v42.h, v68.h
	v_mov_b16_e32 v43.l, v28.h
	v_mov_b16_e32 v43.h, v68.h
	v_mov_b16_e32 v44.l, v22.h
	v_mov_b16_e32 v44.h, v68.h
	v_mov_b16_e32 v45.l, v27.h
	v_mov_b16_e32 v45.h, v68.h
	v_mov_b16_e32 v46.l, v24.h
	v_mov_b16_e32 v46.h, v68.h
	v_mov_b16_e32 v47.l, v29.h
	v_mov_b16_e32 v47.h, v68.h
	v_mov_b16_e32 v48.l, v31.h
	v_mov_b16_e32 v48.h, v68.h
	v_mov_b16_e32 v49.l, v30.h
	v_mov_b16_e32 v49.h, v68.h
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v50.h, v68.h
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v53.l, v32.h
	v_mov_b16_e32 v53.h, v68.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v52.l, v35.h
	v_mov_b16_e32 v52.h, v68.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x18
	buffer_store_b16 v37, v25, s[44:47], 0 offen
	buffer_store_b16 v28, v26, s[44:47], 0 offen
	buffer_store_b16 v43, v33, s[44:47], 0 offen
	buffer_store_b16 v23, v36, s[44:47], 0 offen
	buffer_store_b16 v42, v21, s[44:47], 0 offen
	buffer_store_b16 v27, v20, s[44:47], 0 offen
	buffer_store_b16 v45, v19, s[44:47], 0 offen
	buffer_store_b16 v22, v18, s[44:47], 0 offen
	buffer_store_b16 v44, v17, s[44:47], 0 offen
	buffer_store_b16 v29, v16, s[44:47], 0 offen
	buffer_store_b16 v47, v15, s[44:47], 0 offen
	buffer_store_b16 v24, v14, s[44:47], 0 offen
	buffer_store_b16 v46, v13, s[44:47], 0 offen
	buffer_store_b16 v30, v12, s[44:47], 0 offen
	buffer_store_b16 v49, v11, s[44:47], 0 offen
	buffer_store_b16 v31, v10, s[44:47], 0 offen
	buffer_store_b16 v48, v9, s[44:47], 0 offen
	buffer_store_b16 v41, v8, s[44:47], 0 offen
	buffer_store_b16 v51, v7, s[44:47], 0 offen
	buffer_store_b16 v34, v6, s[44:47], 0 offen
	buffer_store_b16 v50, v5, s[44:47], 0 offen
	buffer_store_b16 v32, v4, s[44:47], 0 offen
	buffer_store_b16 v53, v1, s[44:47], 0 offen
	buffer_store_b16 v35, v2, s[44:47], 0 offen
	buffer_store_b16 v52, v0, s[44:47], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp177:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 72
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 219
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16584
; TotalNumSgprs: 74
; NumVgprs: 219
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 74
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
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
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
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
