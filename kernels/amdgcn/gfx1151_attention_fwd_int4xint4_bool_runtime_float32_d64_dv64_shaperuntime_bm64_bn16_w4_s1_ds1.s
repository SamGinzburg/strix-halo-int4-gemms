	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b128 s[20:23], s[0:1], 0x80
	s_load_b128 s[28:31], s[0:1], 0x4c
	s_load_b32 s57, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v77, 5, v0
	s_clause 0x1
	s_load_b64 s[40:41], s[0:1], 0x0
	s_load_b64 s[36:37], s[0:1], 0x18
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v18, 0x88, v0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v78, 4, v77
	v_or_b32_e32 v79, 8, v77
	v_or_b32_e32 v80, 12, v77
	v_and_b32_e32 v33, 0x60, v0
	v_and_b32_e32 v83, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v85, 0, v0
	v_xor_b32_e32 v19, 0x110, v0
	v_xor_b32_e32 v20, 0x198, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v42, 1, v33
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s38, s42
	s_mov_b32 s39, s43
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v87, 0, v19
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s20
	s_bitcmp1_b32 s20, 8
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s16, s3, s30
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v88, 0, v20
	s_cselect_b32 s19, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s14, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	s_abs_i32 s2, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s18, v79
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s18, v80
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v44, 4, v33
	v_add_nc_u32_e32 v86, 0, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 31, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[46:47], null, s57, v77, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s26, s57, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s18, v77
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v2, s18, v78
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v81, s57, 2, v46
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
	s_cselect_b32 s24, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s15, s29
	s_xor_b32 s25, s28, s29
	s_cvt_f32_u32 s2, s15
	s_sub_i32 s11, 0, s15
	s_ashr_i32 s25, s25, 31
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
	v_mad_u64_u32 v[47:48], null, s57, 12, v[46:47]
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s6, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s30, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v82, s57, 3, v46
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
	s_mul_hi_u32 s17, s13, s12
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s12, s30, v12
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s17, s13, s17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s13, s30, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s17, s14, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s27, s17, s15
	s_add_i32 s33, s17, 1
	s_sub_i32 s27, s14, s27
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s14, s30, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s34, s27, s15
	s_cmp_ge_u32 s27, s15
	s_cselect_b32 s17, s33, s17
	s_cselect_b32 s27, s34, s27
	s_add_i32 s33, s17, 1
	s_cmp_ge_u32 s27, s15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s15, s30, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s27, s33, s17
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s33, s16, s18
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s26
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s34, s33, s57
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s16, s30, v16
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s34, v46
	v_add_nc_u32_e32 v13, s34, v81
	v_add_nc_u32_e32 v14, s34, v82
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s17, s30, v17
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v15, s34, v47
	v_mad_u64_u32 v[2:3], null, s57, 20, v[1:2]
	v_lshl_add_u32 v16, s57, 4, v1
	v_lshl_add_u32 v17, s57, 5, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s41, 0xffff
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s57, 24, v[1:2]
	v_mad_u64_u32 v[4:5], null, s57, 28, v[1:2]
	v_mad_u64_u32 v[5:6], null, s57, 36, v[1:2]
	v_mad_u64_u32 v[6:7], null, s57, 40, v[1:2]
	v_mad_u64_u32 v[7:8], null, s57, 44, v[1:2]
	v_mad_u64_u32 v[8:9], null, s57, 48, v[1:2]
	v_mad_u64_u32 v[9:10], null, s57, 52, v[1:2]
	v_mad_u64_u32 v[10:11], null, s57, 56, v[1:2]
	v_mad_u64_u32 v[11:12], null, s57, 60, v[1:2]
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s2, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v12, 0x80000000, v13, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s26
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s4, s27, s25
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v13, 0x80000000, v14, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s5, s26
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s5, s4, s25
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v14, 0x80000000, v15, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s6, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v15, 0x80000000, v16, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s7, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s6, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s8, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s9, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s10, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s11, s26
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x5
	buffer_load_u8 v1, v1, s[40:43], 0 offen
	buffer_load_u8 v12, v12, s[40:43], 0 offen
	buffer_load_u8 v13, v13, s[40:43], 0 offen
	buffer_load_u8 v15, v15, s[40:43], 0 offen
	buffer_load_u8 v2, v2, s[40:43], 0 offen
	buffer_load_u8 v3, v3, s[40:43], 0 offen
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s12, s26
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v17, v42, v83
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s14, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s13, s26
	.loc	1 780 17                        ; attention.py:780:17
	v_add_nc_u32_e32 v68, s33, v17
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s15, s26
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v16, v16, s[40:43], 0 offen
	buffer_load_u8 v8, v8, s[40:43], 0 offen
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s16, s26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s18, v17
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s17, s26
	.loc	1 774 26                        ; attention.py:774:26
	s_clause 0x1
	buffer_load_u8 v5, v5, s[40:43], 0 offen
	buffer_load_u8 v9, v9, s[40:43], 0 offen
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x5
	buffer_load_u8 v6, v6, s[40:43], 0 offen
	buffer_load_u8 v10, v10, s[40:43], 0 offen
	buffer_load_u8 v14, v14, s[40:43], 0 offen
	buffer_load_u8 v4, v4, s[40:43], 0 offen
	buffer_load_u8 v7, v7, s[40:43], 0 offen
	buffer_load_u8 v11, v11, s[40:43], 0 offen
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v18, 1, v68
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s30, v17
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(15)
	ds_store_b8 v85, v1
	s_waitcnt vmcnt(12)
	ds_store_b8 v85, v15 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v85, v16 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v85, v8 offset:1536
	ds_store_b8 v86, v12
	ds_store_b8 v86, v2 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v86, v5 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v86, v9 offset:1536
	ds_store_b8 v87, v13
	ds_store_b8 v87, v3 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v87, v6 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v87, v10 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v88, v14
	s_waitcnt vmcnt(2)
	ds_store_b8 v88, v4 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v88, v7 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v88, v11 offset:1536
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v17, 0x80000000, v18, s2
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v1, 5, v83
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v45, v17, s[36:39], 0 offen
	s_mov_b32 s39, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v90, v43, 24, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, v90, v44
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 8, 0
	v_xad_u32 v4, v1, 16, 0
	v_xad_u32 v1, v1, 24, 0
	ds_load_b64 v[48:49], v2
	ds_load_b64 v[50:51], v3
	ds_load_b64 v[52:53], v4
	ds_load_b64 v[54:55], v1
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s31, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s7, s6, 31
	s_lshr_b32 s8, s7, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s38, s6, -16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s7, v1
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s8, s20, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s18, s22
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s18, s21
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s8, s23
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s23
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s8, s8, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s8, s31, s8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s8, s8, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s9, s8, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s8, s8, s9
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s9, s10, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s8, s8, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s39, s9, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s38, s38, s8
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v91, 0, 1, s19
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s8, s18, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 64
	s_min_i32 s8, s31, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 28
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s8, s8, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s38, s38, s8
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x64
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_bfe_u32 v75, v0, 4, 1
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v89, 64, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v84, 0x70, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s39, s38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v76, 2, v75
	v_or_b32_e32 v74, 4, v75
	v_or_b32_e32 v73, 6, v75
	v_or_b32_e32 v71, 8, v75
	v_or_b32_e32 v72, 10, v75
	v_or_b32_e32 v70, 12, v75
	v_or_b32_e32 v69, 14, v75
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
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v34, v8
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s28
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_load_b64 s[34:35], s[0:1], 0x30
	s_xor_b32 s9, s24, s8
	s_cvt_u32_f32 s7, s7
	s_sub_i32 s11, s9, s8
	s_sub_i32 s8, 0, s4
	s_mul_i32 s9, s11, s28
	s_mul_i32 s8, s8, s7
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s8, s7, s8
	s_abs_i32 s9, s3
	s_add_i32 s7, s7, s8
	s_ashr_i32 s8, s3, 31
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s5, s5, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s10, s7, s4
	s_xor_b32 s5, s8, s5
	s_sub_i32 s8, s9, s10
	s_ashr_i32 s6, s6, 4
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s4
	s_cmp_ge_u32 s8, s4
	s_load_b32 s58, s[0:1], 0x7c
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 4, v84
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s4, s9, s7
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x8
	s_load_b128 s[44:47], s[0:1], 0x20
	s_xor_b32 s0, s4, s5
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s1, s11, s29
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s5
	v_mov_b16_e32 v1.l, 0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v1.h, v45.l
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v5, 16, v3
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s62, s0, s1
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s12, 0x3fb8aa3b
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v4, 8, v3
	v_or_b32_e32 v8, 40, v3
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v12, s18, v5
	.loc	1 928 41 is_stmt 1              ; attention.py:928:41
	v_mul_f32_e32 v92, s0, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v3
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v9, 48, v3
	.loc	1 0 0                           ; attention.py:0
	v_and_b32_e32 v2, 16, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s18, v4
	v_or_b32_e32 v15, s18, v8
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v93, s23, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s30, v1
	v_mul_lo_u32 v1, s58, v83
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, s18, v9
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_or_b32_e32 v6, 24, v3
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v94, s23, v11
	v_add_nc_u32_e32 v98, s23, v15
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s30, v15
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v99, s23, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s30, v16
	v_mov_b32_e32 v15, 0x5410
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[57:58], null, s15, v4, v[1:2]
	v_lshlrev_b32_e32 v4, 2, v33
	v_lshrrev_b32_e32 v16, 3, v33
	v_mov_b32_e32 v33, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v7, 32, v3
	v_or_b32_e32 v10, 56, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[58:59], null, s15, v5, v[1:2]
	v_mad_u64_u32 v[59:60], null, s15, v6, v[1:2]
	v_mov_b32_e32 v31, v33
	v_lshl_or_b32 v4, v83, 3, v4
	v_mad_u64_u32 v[60:61], null, s15, v7, v[1:2]
	v_mad_u64_u32 v[61:62], null, s15, v8, v[1:2]
	v_mad_u64_u32 v[62:63], null, s15, v9, v[1:2]
	v_mad_u64_u32 v[63:64], null, s15, v10, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, s18, v6
	v_and_b32_e32 v6, 1, v0
	v_lshrrev_b32_e32 v8, 2, v2
	v_xor_b32_e32 v4, v4, v42
	v_lshrrev_b32_e32 v9, 1, v2
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[64:65], null, s15, v3, v[1:2]
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v1, 2, v84
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_dual_mov_b32 v2, 0x7632 :: v_dual_and_b32 v5, 14, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, s18, v10
	v_or_b32_e32 v101, v4, v8
	v_lshlrev_b32_e32 v4, 5, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v2, 0x3276, v2 :: v_dual_lshlrev_b32 v3, 1, v5
	v_mov_b32_e32 v32, v33
	v_lshl_or_b32 v1, v5, 8, v1
	v_dual_mov_b32 v29, v33 :: v_dual_add_nc_u32 v100, s23, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s10, s30, v17
	v_and_or_b32 v17, v43, 60, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v103, v1, v4, v3
	v_dual_cndmask_b32 v15, 0x1054, v15 :: v_dual_and_b32 v56, 63, v0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v14, s18, v7
	v_xor_b32_e32 v16, v17, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v17, 16, v103
	v_mul_u32_u24_e32 v7, 0x48, v5
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v127, 6, v89
	v_add_nc_u32_e32 v121, 0, v17
	v_mov_b32_e32 v17, 0
	v_lshl_or_b32 v104, v6, 6, v16
	v_lshl_or_b32 v7, v6, 2, v7
	v_xor_b32_e32 v18, 8, v103
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v2, 0x760076, v2
	v_xor_b32_e32 v21, 0x810, v104
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[65:66], null, s33, v127, v[56:57]
	v_or3_b32 v102, v7, v9, v77
	v_add_nc_u32_e32 v119, 0, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v18, v33 :: v_dual_add_nc_u32 v125, 0, v21
	v_lshl_or_b32 v15, v15, 4, v15
	v_mov_b32_e32 v21, v33
	v_lshl_or_b32 v2, v2, 4, v2
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s60, s6, 3
	.loc	1 906 32                        ; attention.py:906:32
	s_mul_i32 s59, s62, s31
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s61, s62, s60
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s62, s62, s6
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v95, s23, v12
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v96, s23, v13
	v_dual_mov_b32 v26, v33 :: v_dual_add_nc_u32 v97, s23, v14
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, s30, v11
	v_cmp_gt_i32_e64 s5, s30, v12
	v_cmp_gt_i32_e64 s6, s30, v13
	v_cmp_gt_i32_e64 s7, s30, v14
	v_xor_b32_e32 v11, 8, v90
	v_xor_b32_e32 v12, 16, v90
	v_xor_b32_e32 v13, 24, v90
	v_xor_b32_e32 v5, 0x240, v101
	v_xor_b32_e32 v7, 16, v102
	v_xor_b32_e32 v8, 32, v102
	v_xor_b32_e32 v9, 48, v102
	v_xor_b32_e32 v1, 64, v102
	v_xor_b32_e32 v3, 0x50, v102
	v_xor_b32_e32 v4, 0x60, v102
	v_xor_b32_e32 v10, 0x70, v102
	v_xor_b32_e32 v14, 4, v103
	v_xor_b32_e32 v19, 12, v103
	v_xor_b32_e32 v20, 20, v103
	v_xor_b32_e32 v6, 24, v103
	v_xor_b32_e32 v16, 28, v103
	v_and_b32_e32 v105, 0x5040504, v15
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v106, 0x7060706, v2
	v_lshlrev_b32_e32 v2, 1, v56
	v_lshl_add_u32 v15, v89, 2, 0
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[66:67], null, s33, 6, v[65:66]
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s12, s15, s18
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s11, s11, s13
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v56
	v_dual_mov_b32 v22, v33 :: v_dual_add_nc_u32 v107, 0, v11
	v_dual_mov_b32 v11, v33 :: v_dual_add_nc_u32 v108, 0, v12
	v_dual_mov_b32 v24, v33 :: v_dual_add_nc_u32 v109, 0, v13
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v110, 0, v5
	v_add_nc_u32_e32 v111, 0, v7
	v_add_nc_u32_e32 v112, 0, v8
	v_dual_mov_b32 v12, v33 :: v_dual_add_nc_u32 v113, 0, v9
	v_add_nc_u32_e32 v114, 0, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v115, 0, v3
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v116, 0, v4
	v_add_nc_u32_e32 v117, 0, v10
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v118, 0, v14
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v120, 0, v19
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v122, 0, v20
	v_add_nc_u32_e32 v123, 0, v6
	v_mov_b32_e32 v6, v33
	v_dual_mov_b32 v153, 0xff800000 :: v_dual_add_nc_u32 v124, 0, v16
	v_mov_b32_e32 v27, v33
	v_mov_b32_e32 v28, v33
	v_mov_b32_e32 v19, v33
	v_dual_mov_b32 v20, v33 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v126, v15, v2
	v_mov_b32_e32 v10, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
	v_mov_b32_e32 v2, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v8, v33
	.loc	1 974 51                        ; attention.py:974:51
	v_or_b32_e32 v128, 2, v127
	v_or_b32_e32 v129, 4, v127
	v_or_b32_e32 v130, 6, v127
	v_subrev_nc_u32_e32 v131, s21, v93
	v_subrev_nc_u32_e32 v132, s21, v94
	v_subrev_nc_u32_e32 v133, s21, v95
	v_subrev_nc_u32_e32 v134, s21, v96
	v_subrev_nc_u32_e32 v135, s21, v97
	v_subrev_nc_u32_e32 v136, s21, v98
	v_subrev_nc_u32_e32 v137, s21, v99
	v_subrev_nc_u32_e32 v138, s21, v100
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_add_nc_u32 v139, s22, v93
	v_dual_mov_b32 v157, 0xff800000 :: v_dual_add_nc_u32 v140, s22, v94
	v_dual_mov_b32 v150, 0xff800000 :: v_dual_add_nc_u32 v141, s22, v95
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v142, s22, v96
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v143, s22, v97
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v144, s22, v98
	v_dual_mov_b32 v154, 0xff800000 :: v_dual_add_nc_u32 v145, s22, v99
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v146, s22, v100
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v147, s33, 1, v65
	v_lshl_add_u32 v148, s33, 2, v65
	v_lshl_add_u32 v149, v83, 1, 0
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v169, 0xff800000
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v171, 0xff800000
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v173, 0xff800000
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0xff800000
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_mov_b32 v67, 0xff800000
	v_mov_b32_e32 v172, 0xff800000
	v_mov_b32_e32 v168, 0xff800000
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s14
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_add_i32 s63, s11, s12
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_add_i32 s63, s63, s3
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_mov_b32 s42, s50
	s_mov_b32 s43, s51
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	s_mov_b32 s64, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v175.h, 0xff, v45.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v45.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v174.h, 0xff, v45.h
	v_and_b16 v43.h, 0xff, v43.h
	v_and_b16 v43.l, 0xff, v43.l
	v_and_b16 v42.l, 0xff, v42.l
	v_and_b16 v42.h, 0xff, v42.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v45.h, v181.l
	v_mov_b16_e64 v181.l, v45.l
	v_mov_b16_e64 v181.h, v180.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v185, v92, v35
	v_mul_f32_e32 v184, v92, v34
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v34.l, 0xff, v44.l
	v_and_b16 v44.h, 0xff, v44.h
	v_cmp_ne_u16_e32 vcc_lo, 0, v42.h
	v_cmp_ne_u16_e64 s3, 0, v42.l
	v_cmp_ne_u16_e64 s11, 0, v43.l
	v_cmp_ne_u16_e64 s12, 0, v43.h
	v_cmp_ne_u16_e64 s14, 0, v175.h
	v_cmp_ne_u16_e64 s15, 0, v174.h
	v_cmp_ne_u16_e64 s16, 0, v34.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s13, 0, v44.h
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_and_b32 s24, s65, vcc_lo
	s_and_b32 s23, s55, s3
	s_and_b32 s18, s54, s15
	s_and_b32 s25, s25, s11
	s_and_b32 s20, s30, s12
	s_and_b32 s19, s28, s16
	s_and_b32 s22, s27, s14
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	v_mov_b16_e64 v180.l, v45.l
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v178.h, v177.l
	v_mov_b16_e64 v177.l, v45.l
	v_mov_b16_e64 v177.h, v176.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v183, v38
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v42, 0, 1, s24
	v_cndmask_b32_e64 v43, 0, 1, s23
	v_cndmask_b32_e64 v34, 0, 1, s18
	v_cndmask_b32_e64 v35, 0, 1, s25
	v_cndmask_b32_e64 v38, 0, 1, s20
	v_cndmask_b32_e64 v44, 0, 1, s22
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v39, v92, v39
	v_mul_f32_e32 v186, v92, v36
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v36, 0, 1, s19
	s_and_b32 s21, s29, s13
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v187, v92, v37
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v37, 0, 1, s21
	v_lshlrev_b16 v34.l, 8, v34.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v42.l
	v_lshlrev_b16 v35.h, 8, v36.l
	v_mov_b16_e32 v36.l, v44.l
	v_lshlrev_b16 v36.h, 8, v38.l
	v_mov_b16_e32 v38.l, v43.l
	v_or_b16 v37.h, v37.l, v34.l
	v_or_b16 v37.l, v35.l, v34.h
	v_add_nc_u32_e32 v34, 0, v101
	v_or_b16 v35.h, v36.l, v35.h
	v_or_b16 v35.l, v38.l, v36.h
	v_add_nc_u32_e32 v36, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v34, v37
	ds_store_b32 v110, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v34, v36
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v34, v111
	ds_load_u8_d16 v35, v112
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v35, v113
	ds_load_u8_d16 v36, v114
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v36, v115
	ds_load_u8_d16 v37, v116
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v37, v117
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v179.l, v45.l
	v_mov_b16_e64 v179.h, v178.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e64 v178.l, v45.l
	v_mov_b16_e64 v176.l, v45.l
	v_mov_b16_e64 v176.h, v175.l
	v_mov_b16_e64 v182.l, v45.l
	v_mov_b16_e64 v182.h, v174.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v40, v92, v40
	v_dual_mul_f32 v41, v92, v41 :: v_dual_mul_f32 v174, v187, v179
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v34.l, 1, v34.l
	v_and_b16 v34.h, 1, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v38, v92, v183 :: v_dual_mul_f32 v41, v41, v182
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e64 s16, 1, v34.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v34.l, 1, v37.l
	v_cmp_eq_u16_e64 s17, 1, v34.h
	v_and_b16 v34.h, 1, v37.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v35.h, 1, v35.h
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v43, v185, v181
	v_mul_f32_e32 v42, v184, v45
	v_mul_f32_e32 v38, v38, v178
	v_mul_f32_e32 v40, v40, v176
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v36.h, 1, v36.h
	v_cmp_eq_u16_e64 s12, 1, v36.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v34.l
	v_cmp_eq_u16_e64 s11, 1, v34.h
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v39, v39, v177 :: v_dual_mul_f32 v44, v186, v180
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s14, 1, v35.l
	v_cmp_eq_u16_e64 s15, 1, v35.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v181, 0xff800000, v42, s16
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s13, 1, v36.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v185, 0xff800000, v38, s12
	v_add_nc_u32_e32 v34, 0, v103
	v_cndmask_b32_e32 v186, 0xff800000, v40, vcc_lo
	v_add_nc_u32_e32 v38, 0, v104
	v_cndmask_b32_e64 v182, 0xff800000, v43, s17
	v_cndmask_b32_e64 v188, 0xff800000, v41, s11
	v_cndmask_b32_e64 v183, 0xff800000, v44, s14
	v_cndmask_b32_e64 v184, 0xff800000, v174, s15
	v_cndmask_b32_e64 v187, 0xff800000, v39, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v34, v181
	ds_store_b32 v118, v182
	ds_store_b32 v119, v183
	ds_store_b32 v120, v184
	ds_store_b32 v121, v185
	ds_store_b32 v122, v187
	ds_store_b32 v123, v186
	ds_store_b32 v124, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[34:35], v38 offset1:32
	ds_load_2addr_b32 v[36:37], v125 offset1:32
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s65, s39, 1
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s54, s50
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s65, s61
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v189, s65, v127
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s27, s3, s33
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s55, s51
	v_add_nc_u32_e32 v178, s27, v147
	v_add_nc_u32_e32 v177, s27, v65
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s3, s60, v189
	v_add_nc_u32_e32 v180, s27, v66
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v150, v150, v150
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s30, 0xff800000, v173
	v_cmp_neq_f32_e64 s28, 0xff800000, v171
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s3, s0, s3
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v172
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	v_cndmask_b32_e64 v178, 0x80000000, v178, s3
	v_cndmask_b32_e64 v180, 0x80000000, v180, s3
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v39, v34
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v41, v36
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v42, v36, v36 :: v_dual_mov_b32 v43, v35
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v190, v37
	v_mov_b32_dpp v39, v39 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v41, v41 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v179, s27, v148
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v40, v34, v34 :: v_dual_max_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v41, v41, v41
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v190, v190 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp7:
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v179, 0x80000000, v179, s3
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v39, v40, v39
	v_max_f32_e32 v41, v42, v41
.Ltmp9:
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v191, v177, s[48:51], 0 offen
	buffer_load_u8 v192, v178, s[48:51], 0 offen
	buffer_load_u8 v193, v179, s[48:51], 0 offen
	buffer_load_u8 v194, v180, s[48:51], 0 offen
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v177, v190, v190
.Ltmp11:
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s39, 4
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v170
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v42, v41
.Ltmp13:
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s62
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s39, s39, 16
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s33
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s39, s38
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v195, s3, v56, 1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v166
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v42, v42, v42
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v40, v39
.Ltmp18:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v195, 0x80000000, v195, s0
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v41, v41, v42
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v44, v35, v35
.Ltmp22:
	.loc	1 962 25                        ; attention.py:962:25
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v199, v186, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v155, v155, v155 :: v_dual_max_f32 v40, v40, v40
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v39, v39, v40 :: v_dual_max_f32 v40, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v43, v39 :: v_dual_mov_b32 v44, v40
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v42, v43, v43 :: v_dual_mov_b32 v43, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v44, v44, v44
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v44, v40, v44
	v_dual_max_f32 v40, v43, v43 :: v_dual_mov_b32 v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v175, v41, v40
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[40:41], v125 offset0:64 offset1:96
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v176, v175
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v42, v39, v42
.Ltmp34:
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[38:39], v38 offset0:64 offset1:96
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v176, v176 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v43, v44, v43 :: v_dual_max_f32 v44, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v179, v43
	v_mov_b32_dpp v179, v179 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v197, v41, v41
	v_max_f32_e32 v44, v44, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v174, v42 :: v_dual_mov_b32 v177, v44
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v180, v38, v38
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v190, v39, v39
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v178, v38
	v_mov_b32_dpp v177, v177 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v174, v174, v174
	v_max_f32_e32 v42, v42, v174
	v_max_f32_e32 v174, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v174, v175, v174
	v_max_f32_e32 v175, v179, v179
	v_max_f32_e32 v179, v40, v40
	v_max_f32_e32 v175, v43, v175
	v_max_f32_e32 v43, v177, v177
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v177, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v177, v177 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v177, v177, v177
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v177, v190, v177 :: v_dual_mov_b32 v176, v40
.Ltmp47:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v190, v195, s[52:55], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v195, v177
	v_mov_b32_dpp v176, v176 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v195, v195 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v176, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v176, v179, v176 :: v_dual_mov_b32 v179, v41
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v179, v179, v179
	v_dual_max_f32 v179, v197, v179 :: v_dual_max_f32 v178, v178, v178
	v_max_f32_e32 v43, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v197, v179 :: v_dual_max_f32 v178, v180, v178
	v_mov_b32_dpp v197, v197 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v180, v178
	v_mov_b32_dpp v180, v180 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v44, v180, v180
	v_max_f32_e32 v44, v178, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v178, v195, v195 :: v_dual_mov_b32 v195, v44
	v_max_f32_e32 v177, v177, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v195, v195 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v196, v176
	v_mov_b32_dpp v196, v196 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v180, v196, v196
	v_max_f32_e32 v176, v176, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v180, v197, v197 :: v_dual_mov_b32 v197, v176
	v_max_f32_e32 v178, v179, v180
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v180, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v197, v197 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v180, v180 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v196, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v196, v196 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v179, v196, v196 :: v_dual_mov_b32 v196, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v43, v43, v179
	v_max_f32_e32 v179, v195, v195
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v196, v196 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v195, v197, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v197, v43 :: v_dual_max_f32 v44, v44, v179
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v179, v180, v180
	v_max_f32_e32 v180, v196, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v177, v177, v179 :: v_dual_max_f32 v178, v178, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v179, v197, v197
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v197, v178 :: v_dual_max_f32 v176, v176, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v195, v44 :: v_dual_max_f32 v198, v43, v179
	v_mov_b32_e32 v180, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v197, v197 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v195, v195 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v180, v180 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v195, v195
	v_max3_f32 v195, v181, v182, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v200, v44, v43
	v_max_f32_e32 v43, v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v177, v177, v43
.Ltmp66:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v43, v151, v151 :: v_dual_max_f32 v152, v152, v152
	v_dual_max_f32 v151, v43, v174 :: v_dual_mov_b32 v196, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v43, v153, v153 :: v_dual_max_f32 v152, v152, v175
	v_max_f32_e32 v180, v169, v169
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v196, v196 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v153, v43, v198
	v_max_f32_e32 v43, v157, v157
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v44, v197, v197
.Ltmp70:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v179, v196, v196
	v_max3_f32 v196, v184, v185, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp72:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v37, v37, v153 :: v_dual_max_f32 v176, v176, v179
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v179, v195, v196, v199
.Ltmp74:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v195, v170, v170
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v178, v178, v44
.Ltmp76:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v196, v171, v171
	v_max_f32_e32 v155, v155, v176
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s23
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v157, v43, v178
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v44, v179, s64, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v43, v195, v174
	v_max_f32_e32 v195, v168, v168
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(4)
	v_and_b16 v45.h, v191.l, 15
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v41, v41, v157
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v179, v166, v179, v44
	v_dual_max_f32 v44, v196, v175 :: v_dual_max_f32 v175, v173, v173
	v_max_f32_e32 v154, v154, v154
	v_max_f32_e32 v150, v150, v42
	v_max_f32_e32 v174, v172, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v197, v171, v44
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v175, v175, v200
	v_dual_max_f32 v156, v156, v156 :: v_dual_sub_f32 v185, v185, v179
	v_max_f32_e32 v196, v67, v67
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v197, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_dual_sub_f32 v199, v173, v175 :: v_dual_max_f32 v156, v156, v177
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v42, v180, v42 :: v_dual_max_f32 v177, v195, v177
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v173, v181, v179 :: v_dual_max_f32 v174, v174, v198
	v_sub_f32_e32 v39, v39, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v195, v169, v42
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v152
	v_dual_sub_f32 v181, v182, v179 :: v_dual_sub_f32 v198, v172, v174
	v_sub_f32_e32 v182, v183, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v195, v195
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v39, v39
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v154, v154, v200 :: v_dual_sub_f32 v201, v168, v177
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v41, v41
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v187, v187, v179 :: v_dual_sub_f32 v38, v38, v154
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v201, v201
	v_exp_f32_e32 v198, v198
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s25
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v34, v34, v150
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s18
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v41, 0, v41, s19
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v188, v188, v179
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v199, v199
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v187, v187
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v171, 0, v198, s29
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v185, v185
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v203, 15, v194
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s24
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v180, v167, v167
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v172, 0, v199, s30
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v187, 0, v187, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v185, 0, v185, s12
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v183, v34 :: v_dual_max_f32 v176, v180, v176
.Ltmp80:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v180, v166, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v183, v183 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v180, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v34, v34, v183 :: v_dual_mov_b32 v183, v35
.Ltmp84:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v200, v167, v176
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v183, v183 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v180, 0, v180, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v169
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v183
.Ltmp88:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v183, 0, v38, s21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v166, 0, v195, s3
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v195, v36
.Ltmp90:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v178, v196, v178
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v196, v170, v43
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v170, 0, v197, s28
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v197, v173
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v173, v35
	v_mov_b32_dpp v195, v195 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v167
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v19, v19, v180
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s28, 0xff800000, v67
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v180
	v_mul_f32_e32 v17, v17, v180
	v_mul_f32_e32 v14, v14, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v16, v16, v180 :: v_dual_add_f32 v35, v35, v173
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v196, v196
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v180
	v_mul_f32_e32 v4, v4, v180
	v_dual_mul_f32 v6, v6, v180 :: v_dual_mov_b32 v173, v35
	v_mul_f32_e32 v8, v8, v180
	v_mul_f32_e32 v25, v25, v180
	v_mul_f32_e32 v27, v27, v180
	v_mul_f32_e32 v31, v31, v180
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v169, 0, v196, s27
	v_cmp_neq_f32_e64 s27, 0xff800000, v168
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v180
	v_dual_mul_f32 v21, v21, v180 :: v_dual_add_f32 v38, v35, v173
	v_mul_f32_e32 v9, v9, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v167, 0, v201, s27
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v201, 15, v192
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v192.h, v45.l
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v173, v38
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v38, v173 :: v_dual_mov_b32 v173, v41
.Ltmp99:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v188, v188
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v195 :: v_dual_mov_b32 v195, v34
.Ltmp102:
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v200, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v41, v41, v173 :: v_dual_mov_b32 v196, v36
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v195, v195 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v188, 0, v188, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v173, v41
	v_mov_b32_dpp v196, v196 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v188, v188
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v196
.Ltmp110:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v196, v182
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v41, v41, v173 :: v_dual_mov_b32 v182, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v173, v41
	v_mov_b32_dpp v182, v182 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v173, v173 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v36, v182 :: v_dual_add_f32 v41, v41, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v182, v36 :: v_dual_mov_b32 v173, v41
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v186, v186, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v35, v36, v182 :: v_dual_mov_b32 v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v186, v186
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v13, v13, v180
	v_dual_mul_f32 v30, v30, v180 :: v_dual_add_f32 v41, v41, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v32, v32, v180 :: v_dual_fmac_f32 v35, v159, v169
	v_mul_f32_e32 v22, v22, v180
	v_dual_mov_b32 v169, v42 :: v_dual_add_f32 v36, v37, v36
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v195
.Ltmp122:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v202, v67, v178
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v195, v181
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v67, 0, v200, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v181, v34 :: v_dual_and_b32 v200, 15, v191
.Ltmp124:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v202, v202
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v191.l, 4, v191.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e64 v191.h, v45.l
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e32 v186, 0, v186, vcc_lo
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v181, v181 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	v_mov_b32_e32 v159, v35
	v_mov_b32_e32 v173, v175
	v_cmp_o_f32_e64 s12, v186, v186
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v181
.Ltmp128:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v40, v155
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v168, 0, v202, s28
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v202, 15, v193
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v193.h, v45.l
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v181, v34
.Ltmp130:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v181, v181 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v34, v34, v181
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp133:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v40, s22
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v181, v183 :: v_dual_mov_b32 v182, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v181, v181 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v184, v184, v179
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v182, v182 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v183, v181
.Ltmp138:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v198, v184
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v182
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v183, v183 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v40
.Ltmp143:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v15, v15, v180 :: v_dual_fmac_f32 v34, v158, v166
	v_dual_mul_f32 v5, v5, v180 :: v_dual_mov_b32 v166, v179
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v183, v183 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v158, v34
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v40, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v183, v40
	v_mov_b32_e32 v181, v36
	v_mov_b32_dpp v183, v183 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v181, v181 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v181, v36
	v_mov_b32_dpp v181, v181 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v181
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v182, v37
	v_mov_b32_dpp v182, v182 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v37, v182
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v182, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v182, v182 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v184, v39 :: v_dual_add_f32 v37, v37, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v184, v184 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v182, v37 :: v_dual_add_f32 v39, v39, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v182, v182 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v184, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v184, v184 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v39, v39, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v184, v39
	v_mov_b32_dpp v184, v184 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v181, v39, v184
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v39, v36
.Ltmp157:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v180 :: v_dual_fmac_f32 v38, v160, v170
	v_dual_mul_f32 v7, v7, v180 :: v_dual_mov_b32 v184, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v170, v43
	v_mov_b32_e32 v160, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v184, v184 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v39, v36, v39 :: v_dual_add_f32 v36, v37, v182
	v_add_f32_e32 v37, v40, v183
.Ltmp160:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v182, s65, v129
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v181, v184
.Ltmp162:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v181, s65, v128
	v_or_b32_e32 v183, s65, v130
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v184, v189, 1, 1
	v_lshl_or_b32 v199, v182, 1, 1
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v182.l, v194.l, 15
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v189, v181, 1, 1
	v_lshl_or_b32 v183, v183, 1, 1
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v181.l, v192.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v192.l, 4, v192.l
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s31, v184
	v_cmp_gt_i32_e64 s18, s31, v189
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v181.h, v193.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v193.l, 4, v193.l
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s19, s31, v199
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v184.l, 4, v194.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v189, 0, v191, s3
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v184.h, v45.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v191, 0, v192, s18
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s3, s31, v183
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v183, -16, v200
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s18, 7, v45.h
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v192, 0, v193, s19
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v193, -16, v201
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s19, 7, v181.l
	v_cmp_lt_u16_e64 s20, 7, v181.h
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v181, 0, v184, s3
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v183, v200, v183, s18
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v182.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v182, -16, v189
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s18, 7, v189
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v194, -16, v202
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v193, v201, v193, s19
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v199, -16, v191
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s19, 7, v191
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v182, v189, v182, s18
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v184, -16, v203
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v194, v202, v194, s20
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v200, -16, v192
	v_or_b32_e32 v201, -16, v181
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s20, 7, v192
	v_cmp_lt_u32_e64 s21, 7, v181
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v189, v191, v199, s19
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v182, v182
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v184, v203, v184, s3
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v191, v192, v200, s20
	v_cndmask_b32_e64 v181, v181, v201, s21
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v192, v193
	v_cvt_f32_i32_e32 v189, v189
	v_mul_f32_e32 v183, v183, v190
	v_mul_f32_e32 v182, v182, v190
	v_cvt_f32_i32_e32 v193, v194
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v184, v184
	v_cvt_f32_i32_e32 v181, v181
	v_mul_f32_e32 v192, v192, v190
	v_mul_f32_e32 v189, v189, v190
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v194, v183, 16, 1
	v_bfe_u32 v199, v182, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v193, v193, v190
	v_mul_f32_e32 v191, v190, v191
	v_mul_f32_e32 v184, v190, v184
	v_mul_f32_e32 v190, v190, v181
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v181, v192, 16, 1
	v_add3_u32 v194, v183, v194, 0x7fff
	v_cmp_o_f32_e64 s3, v183, v183
	v_add3_u32 v183, v182, v199, 0x7fff
	v_cmp_o_f32_e64 s18, v182, v182
	v_bfe_u32 v182, v189, 16, 1
	v_add3_u32 v181, v192, v181, 0x7fff
	v_cmp_o_f32_e64 s19, v192, v192
	v_cndmask_b16 v45.h, 0x7fff, v194.h, s3
	v_cmp_o_f32_e64 s3, v189, v189
	v_add3_u32 v182, v189, v182, 0x7fff
	v_bfe_u32 v189, v191, 16, 1
	v_cndmask_b16 v181.l, 0x7fff, v183.h, s18
	v_bfe_u32 v183, v193, 16, 1
	v_cndmask_b16 v181.h, 0x7fff, v181.h, s19
	v_bfe_u32 v192, v184, 16, 1
	v_add3_u32 v189, v191, v189, 0x7fff
	v_cmp_o_f32_e64 s19, v191, v191
	v_add3_u32 v183, v193, v183, 0x7fff
	v_cmp_o_f32_e64 s18, v193, v193
	v_add3_u32 v191, v184, v192, 0x7fff
	v_cmp_o_f32_e64 s20, v184, v184
	v_cndmask_b16 v183.l, 0x7fff, v189.h, s19
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v189, 0, v195, s17
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v193, v190, 16, 1
	v_cndmask_b16 v182.l, 0x7fff, v182.h, s3
	v_cndmask_b16 v182.h, 0x7fff, v183.h, s18
	v_cndmask_b16 v183.h, 0x7fff, v191.h, s20
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v191.l, v189.h
	v_mov_b16_e64 v191.h, v45.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v184, v190, v193, 0x7fff
	v_cmp_o_f32_e64 s21, v190, v190
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v190, 0, v197, s16
	v_cndmask_b32_e64 v193, 0, v198, s15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v191, 1, v191
	v_mov_b16_e64 v192.h, v45.l
	v_cmp_o_f32_e64 s3, v189, v189
	v_mov_b16_e64 v192.l, v190.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v184.l, 0x7fff, v184.h, s21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v191, v189, v191, 0x7fff
	v_mov_b16_e64 v189.l, v193.h
	v_mov_b16_e64 v189.h, v45.l
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_b16_d16_hi v126, v45
	ds_store_b16 v126, v181 offset:128
	ds_store_b16_d16_hi v126, v181 offset:512
	ds_store_b16 v126, v182 offset:640
	ds_store_b16_d16_hi v126, v182 offset:1024
	ds_store_b16 v126, v183 offset:1152
	ds_store_b16_d16_hi v126, v183 offset:1536
	ds_store_b16 v126, v184 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v183, v149 offset:608
	ds_load_u16_d16 v182, v149 offset:352
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v192, 1, v192
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v194, 0, v196, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v189, 1, v189
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v3, v3, v180 :: v_dual_fmac_f32 v40, v164, v167
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s14, v190, v190
	v_mov_b32_e32 v167, v176
	v_add3_u32 v192, v190, v192, 0x7fff
	v_mov_b16_e64 v190.l, v194.h
	v_mov_b16_e64 v190.h, v45.l
	v_cndmask_b16 v214.h, 0x7fff, v191.h, s3
	v_add3_u32 v189, v193, v189, 0x7fff
	v_cmp_o_f32_e64 s3, v193, v193
	v_mov_b16_e64 v191.l, v187.h
	v_mov_b16_e64 v191.h, v45.l
	v_mov_b16_e64 v181.l, v188.h
	v_mov_b16_e64 v181.h, v45.l
	v_cndmask_b16 v214.l, 0x7fff, v192.h, s14
	v_mov_b16_e64 v192.l, v185.h
	v_mov_b16_e64 v192.h, v45.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v180
	v_dual_mul_f32 v28, v28, v180 :: v_dual_and_b32 v181, 1, v181
	v_dual_mul_f32 v11, v11, v180 :: v_dual_and_b32 v190, 1, v190
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v216.h, 0x7fff, v189.h, s3
	v_and_b32_e32 v189, 1, v191
	v_and_b32_e32 v191, 1, v192
	v_add3_u32 v181, v188, v181, 0x7fff
	v_add3_u32 v190, v194, v190, 0x7fff
	v_mov_b16_e64 v184.h, v45.l
	v_add3_u32 v189, v187, v189, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v197, v149
	ds_load_u16_d16 v205, v149 offset:32
	ds_load_u16_d16 v198, v149 offset:256
	ds_load_u16_d16 v189, v149 offset:64
	ds_load_u16_d16 v190, v149 offset:320
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v182, v149 offset:480
	ds_load_u16_d16 v181, v149 offset:96
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v45, v185, v191, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v191, v149 offset:576
	ds_load_u16_d16 v192, v149 offset:832
	ds_load_u16_d16 v193, v149 offset:1088
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v184.l, v186.h
	v_cmp_o_f32_e64 s3, v194, v194
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v218.h, 0x7fff, v189.h, vcc_lo
	v_permlanex16_b32 v215, v214, s64, 0xfedcba98 op_sel:[1,0]
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v36, v162, v172
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v184, 1, v184
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v216.l, 0x7fff, v190.h, s3
	v_cmp_o_f32_e64 s3, v185, v185
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v18, v18, v180 :: v_dual_fmac_f32 v39, v161, v171
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v184, v186, v184, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v217, v216, s64, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v218.l, 0x7fff, v45.h, s3
	s_waitcnt lgkmcnt(3)
	v_cndmask_b16 v45.h, 0x7fff, v181.h, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v194, v149 offset:1344
	ds_load_u16_d16 v200, v149 offset:768
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v191, v149 offset:704
	ds_load_u16_d16 v207, v149 offset:544
	ds_load_u16_d16 v195, v149 offset:1600
	ds_load_u16_d16 v196, v149 offset:1856
	ds_load_u16_d16 v199, v149 offset:512
	ds_load_u16_d16 v206, v149 offset:288
	ds_load_u16_d16_hi v197, v149 offset:128
	ds_load_u16_d16_hi v205, v149 offset:160
	ds_load_u16_d16_hi v189, v149 offset:192
	ds_load_u16_d16_hi v181, v149 offset:224
	ds_load_u16_d16 v201, v149 offset:1024
	ds_load_u16_d16 v208, v149 offset:800
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v192, v149 offset:960
	ds_load_u16_d16 v184, v149 offset:864
	ds_load_u16_d16 v202, v149 offset:1280
	ds_load_u16_d16 v209, v149 offset:1056
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v193, v149 offset:1216
	ds_load_u16_d16 v185, v149 offset:1120
	ds_load_u16_d16 v203, v149 offset:1536
	ds_load_u16_d16 v210, v149 offset:1312
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v45.l, 0x7fff, v184.h, s12
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v194, v149 offset:1472
	ds_load_u16_d16 v186, v149 offset:1376
	ds_load_u16_d16 v204, v149 offset:1792
	ds_load_u16_d16 v211, v149 offset:1568
	ds_load_u16_d16_hi v195, v149 offset:1728
	ds_load_u16_d16 v187, v149 offset:1632
	ds_load_u16_d16 v212, v149 offset:1824
	ds_load_u16_d16_hi v196, v149 offset:1984
	ds_load_u16_d16 v188, v149 offset:1888
	ds_load_u16_d16_hi v199, v149 offset:640
	ds_load_u16_d16_hi v198, v149 offset:384
	ds_load_u16_d16_hi v206, v149 offset:416
	ds_load_u16_d16_hi v190, v149 offset:448
	ds_load_u16_d16_hi v200, v149 offset:896
	ds_load_u16_d16_hi v207, v149 offset:672
	ds_load_u16_d16_hi v183, v149 offset:736
	ds_load_u16_d16_hi v201, v149 offset:1152
	ds_load_u16_d16_hi v208, v149 offset:928
	ds_load_u16_d16_hi v184, v149 offset:992
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v202, v149 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v209, v149 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v185, v149 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v203, v149 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v210, v149 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v186, v149 offset:1504
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v204, v149 offset:1920
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v211, v149 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v187, v149 offset:1760
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v212, v149 offset:1952
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v219, v218, s64, 0xfedcba98 op_sel:[1,0]
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v188, v149 offset:2016
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v220, v45, s64, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v20, v20, v180 :: v_dual_fmac_f32 v37, v163, v67
	v_dual_mul_f32 v24, v24, v180 :: v_dual_mov_b32 v161, v39
	v_mul_f32_e32 v10, v10, v180
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v213, v215, v214, v105
	v_perm_b32 v214, v215, v214, v106
	v_perm_b32 v215, v217, v216, v105
	v_perm_b32 v216, v217, v216, v106
	v_perm_b32 v217, v219, v218, v105
	v_perm_b32 v218, v219, v218, v106
	v_perm_b32 v219, v220, v45, v105
	v_perm_b32 v220, v220, v45, v106
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v41, v165, v168 :: v_dual_mov_b32 v162, v36
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v12, v12, v180 :: v_dual_mov_b32 v163, v37
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[197:204], v[213:220], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[205:212], v[213:220], v[17:24]
	v_dual_mov_b32 v164, v40 :: v_dual_mov_b32 v165, v41
	v_mov_b32_e32 v171, v44
	v_wmma_f32_16x16x16_bf16 v[9:16], v[189:196], v[213:220], v[9:16]
	v_mov_b32_e32 v172, v174
	v_dual_mov_b32 v168, v177 :: v_dual_mov_b32 v67, v178
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[181:188], v[213:220], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_27
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v34, s39, v77
	v_or_b32_e32 v35, s39, v78
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s13, s39, s59
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v36, s39, v79
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s3, s13, s57
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s31, v34
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v37, s39, v80
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v38, s3, v46
	v_add_nc_u32_e32 v39, s3, v81
	v_add_nc_u32_e32 v40, s3, v82
	v_add_nc_u32_e32 v34, s3, v47
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s31, v35
	v_cmp_gt_i32_e64 s11, s31, v36
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s26, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s12, s31, v37
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s26, s3
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v38, s39, v75
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v36, 0x80000000, v39, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s26, s11
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v39, s39, v76
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v37, 0x80000000, v40, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s26, s12
	.loc	1 924 25                        ; attention.py:924:25
	v_add_lshl_u32 v43, s13, v75, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x3
	buffer_load_u8 v35, v35, s[40:43], 0 offen
	buffer_load_u8 v36, v36, s[40:43], 0 offen
	buffer_load_u8 v37, v37, s[40:43], 0 offen
	buffer_load_u8 v34, v34, s[40:43], 0 offen
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v38
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v40, s39, v74
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v179, 20, v43
	v_add_nc_u32_e32 v180, 24, v43
	v_add_nc_u32_e32 v176, 8, v43
	v_add_nc_u32_e32 v175, 4, v43
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v41, s39, v73
	v_or_b32_e32 v42, s39, v71
	v_or_b32_e32 v44, s39, v72
	v_or_b32_e32 v45, s39, v70
	v_or_b32_e32 v174, s39, v69
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v85, v35
	s_waitcnt vmcnt(2)
	ds_store_b8 v86, v36
	s_waitcnt vmcnt(1)
	ds_store_b8 v87, v37
	s_waitcnt vmcnt(0)
	ds_store_b8 v88, v34
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v178, 16, v43
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v177, 12, v43
	v_cndmask_b32_e32 v38, 0x80000000, v43, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v39
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v43, 28, v43
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_dual_cndmask_b32 v39, 0x80000000, v175 :: v_dual_add_nc_u32 v34, 0, v90
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v40
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[182:183], v108
	ds_load_b64 v[184:185], v109
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v40, 0x80000000, v176, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v41
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v41, 0x80000000, v177, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v42
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v42, 0x80000000, v178, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v44
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v44, 0x80000000, v179, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v45
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v45, 0x80000000, v180, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s31, v174
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	s_clause 0x7
	buffer_load_u16 v181, v38, s[44:47], 0 offen
	buffer_load_u16 v180, v39, s[44:47], 0 offen
	buffer_load_u16 v179, v40, s[44:47], 0 offen
	buffer_load_u16 v178, v41, s[44:47], 0 offen
	buffer_load_u16 v177, v42, s[44:47], 0 offen
	buffer_load_u16 v176, v44, s[44:47], 0 offen
	buffer_load_u16 v175, v45, s[44:47], 0 offen
	buffer_load_u16 v174, v43, s[44:47], 0 offen
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[42:43], v34
	ds_load_b64 v[44:45], v107
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v91
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[42:43], v[48:49], v[34:41] neg_lo:[1,1,0]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v42, s39, v83
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[44:45], v[50:51], v[34:41] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s3, s31, v42
	.loc	1 913 33                        ; attention.py:913:33
	v_wmma_i32_16x16x16_iu4 v[34:41], v[182:183], v[52:53], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s65, s1, s3
	s_and_b32 s55, s4, s3
	s_and_b32 s25, s5, s3
	s_and_b32 s30, s6, s3
	.loc	1 913 33                        ; attention.py:913:33
	v_wmma_i32_16x16x16_iu4 v[34:41], v[184:185], v[54:55], v[34:41] neg_lo:[1,1,0]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s29, s7, s3
	s_and_b32 s27, s8, s3
	s_and_b32 s54, s9, s3
	s_and_b32 s28, s10, s3
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v42, v93
	v_cmp_le_i32_e64 s3, v42, v94
	v_cmp_le_i32_e64 s11, v42, v95
	v_cmp_le_i32_e64 s12, v42, v96
	v_cmp_le_i32_e64 s13, v42, v97
	v_cmp_le_i32_e64 s14, v42, v98
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s17, vcc_lo, s65
	s_and_b32 s3, s3, s55
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s15, v42, v99
	v_cmp_le_i32_e64 s16, v42, v100
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s11, s11, s25
	s_and_b32 s12, s12, s30
	s_and_not1_b32 s18, s65, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s13, s13, s29
	s_and_b32 s14, s14, s27
	s_or_b32 s65, s18, s17
	s_or_b32 s55, s19, s3
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s54
	s_and_b32 s16, s16, s28
	s_or_b32 s25, s3, s11
	s_or_b32 s30, s17, s12
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s27, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s29, s3, s11
	s_or_b32 s27, s12, s13
	s_and_not1_b32 s3, s54, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s28, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s54, s3, s11
	s_or_b32 s28, s12, s13
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s56
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v42, v131
	v_cmp_ge_i32_e64 s3, v42, v132
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v42, v139
	v_cmp_le_i32_e64 s18, v42, v140
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v42, v133
	v_cmp_ge_i32_e64 s12, v42, v134
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s19, v42, v141
	v_cmp_le_i32_e64 s20, v42, v142
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s13, v42, v135
	v_cmp_ge_i32_e64 s14, v42, v136
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s21, v42, v143
	v_cmp_le_i32_e64 s22, v42, v144
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s17, vcc_lo, s17
	s_and_b32 s3, s3, s18
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v42, v137
	v_cmp_ge_i32_e64 s16, v42, v138
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s23, v42, v145
	v_cmp_le_i32_e64 s24, v42, v146
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s17, s17, s65
	s_and_b32 s3, s3, s55
	s_and_b32 s11, s11, s19
	s_and_b32 s12, s12, s20
	s_and_b32 s11, s11, s25
	s_and_b32 s12, s12, s30
	s_and_b32 s13, s13, s21
	s_and_b32 s14, s14, s22
	s_and_not1_b32 s18, s65, exec_lo
	s_and_b32 s17, s17, exec_lo
	s_and_not1_b32 s19, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s13, s13, s29
	s_and_b32 s14, s14, s27
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_or_b32 s65, s18, s17
	s_or_b32 s55, s19, s3
	s_and_not1_b32 s3, s25, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s17, s30, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_b32 s15, s15, s54
	s_and_b32 s16, s16, s28
	s_or_b32 s25, s3, s11
	s_or_b32 s30, s17, s12
	s_and_not1_b32 s3, s29, exec_lo
	s_and_b32 s11, s13, exec_lo
	s_and_not1_b32 s12, s27, exec_lo
	s_and_b32 s13, s14, exec_lo
	s_or_b32 s29, s3, s11
	s_or_b32 s27, s12, s13
	s_and_not1_b32 s3, s54, exec_lo
	s_and_b32 s11, s15, exec_lo
	s_and_not1_b32 s12, s28, exec_lo
	s_and_b32 s13, s16, exec_lo
	s_or_b32 s54, s3, s11
	s_or_b32 s28, s12, s13
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v42.l, 0
	.loc	1 955 25 is_stmt 1              ; attention.py:955:25
	s_mul_i32 s3, s39, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s3, s63, s3
	v_mov_b16_e32 v42.h, v42.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s65
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s3, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s55
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v43, s3, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, vcc_lo, s34, v43
	v_add_co_ci_u32_e64 v44, null, s35, v44, vcc_lo
	global_load_d16_u8 v42, v[43:44], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v43.l, v43.h
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s25
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v45, 31, v44
	v_add_co_u32 v44, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v45, null, s35, v45, vcc_lo
	global_load_d16_u8 v43, v[44:45], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s30
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v45, 31, v44
	v_add_co_u32 v44, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v45, null, s35, v45, vcc_lo
	global_load_d16_hi_u8 v43, v[44:45], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	v_mov_b16_e32 v45.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v44.h, v45.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s29
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v44, s3, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v183, 31, v44
	v_add_co_u32 v182, vcc_lo, s34, v44
	v_add_co_ci_u32_e64 v183, null, s35, v183, vcc_lo
	global_load_d16_hi_u8 v44, v[182:183], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s27
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v45, s3, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v183, 31, v45
	v_add_co_u32 v182, vcc_lo, s34, v45
	v_add_co_ci_u32_e64 v183, null, s35, v183, vcc_lo
	global_load_d16_u8 v45, v[182:183], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v44.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v45.h, v44.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s54
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v182, s3, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v183, 31, v182
	v_add_co_u32 v182, vcc_lo, s34, v182
	v_add_co_ci_u32_e64 v183, null, s35, v183, vcc_lo
	global_load_d16_hi_u8 v45, v[182:183], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s11
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s11, s28
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v182, s3, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v183, 31, v182
	v_add_co_u32 v182, vcc_lo, s34, v182
	v_add_co_ci_u32_e64 v183, null, s35, v183, vcc_lo
	global_load_d16_u8 v44, v[182:183], off
	s_branch .LBB0_6
.LBB0_27:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v42, 1, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshrrev_b32_e32 v43, 3, v89
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x70, v33
	v_and_b32_e32 v42, 4, v42
	v_and_b32_e32 v0, 0x80, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v33, 0, v33, v42
	v_add_nc_u32_e32 v42, 0, v84
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s33, v71
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v42, v[34:37]
	ds_store_b128 v42, v[38:41] offset:128
	v_add3_u32 v0, v33, v0, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s33, v72
	v_cmp_gt_i32_e64 s8, s33, v70
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v0, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s9, s33, v69
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v37, null, v0, v0, v27
	s_waitcnt vmcnt(0)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v56, -v37, v47, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v55, v46
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_mul_f32_e32 v57, v40, v48
	v_mul_f32_e32 v55, v36, v46
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v44, null, v0, v0, v31
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
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_fmac_f32_e32 v56, v60, v47
	v_div_scale_f32 v52, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v54, v34
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_rcp_f32_e32 v37, v52
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v42, s4, v29, v0, v29
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
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v36, v40, 1.0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v56, v68, s33
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v54, 60, v75
	v_or_b32_e32 v55, 62, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_mul_f32_e32 v62, v42, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v75, 2
	v_add_lshl_u32 v59, v56, v74, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v58, v56, v76, 2
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
	v_cmp_gt_i32_e64 s1, s33, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s33, v76
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	v_fma_f32 v36, -v44, v53, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s33, v74
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
	v_cmp_gt_i32_e64 s5, s33, v73
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	buffer_store_b32 v8, v57, s[36:39], 0 offen
	v_add_lshl_u32 v8, v56, v73, 2
	s_clause 0x1
	buffer_store_b32 v25, v58, s[36:39], 0 offen
	buffer_store_b32 v26, v59, s[36:39], 0 offen
	v_add_lshl_u32 v25, v56, v71, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s5
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v26, v56, v72, 2
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
	v_or_b32_e32 v32, 16, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v57, v56, v70, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s7
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 18, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s8
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 20, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s33, v32
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v57, 0x80000000, v57, s3
	s_clause 0x1
	buffer_store_b32 v27, v8, s[36:39], 0 offen
	buffer_store_b32 v28, v25, s[36:39], 0 offen
	v_add_lshl_u32 v8, v56, v69, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s33, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v25, v56, v32, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v35, 22, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s33, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v29, v26, s[36:39], 0 offen
	buffer_store_b32 v30, v57, s[36:39], 0 offen
	v_add_lshl_u32 v26, v56, v33, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s10
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 24, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v56, v34, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s11
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 26, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s33, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s12
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v38, 28, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s33, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_clause 0x1
	buffer_store_b32 v31, v8, s[36:39], 0 offen
	buffer_store_b32 v17, v25, s[36:39], 0 offen
	v_add_lshl_u32 v8, v56, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s33, v37
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v36, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s13
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v39, 30, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s16, s33, v38
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v18, v26, s[36:39], 0 offen
	buffer_store_b32 v19, v27, s[36:39], 0 offen
	v_add_lshl_u32 v18, v56, v37, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s14
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v40, 32, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v38, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s15
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v41, 34, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s17, s33, v39
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s16
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v42, 36, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s18, s33, v40
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v20, v8, s[36:39], 0 offen
	buffer_store_b32 v21, v17, s[36:39], 0 offen
	v_add_lshl_u32 v8, v56, v39, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s19, s33, v41
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v17, v56, v40, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s17
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v43, 38, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s20, s33, v42
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v22, v18, s[36:39], 0 offen
	buffer_store_b32 v23, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v56, v41, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s18
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v44, 40, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v56, v42, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s19
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v45, 42, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s21, s33, v43
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s20
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v46, 44, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s22, s33, v44
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b32 v24, v8, s[36:39], 0 offen
	buffer_store_b32 v9, v17, s[36:39], 0 offen
	v_add_lshl_u32 v8, v56, v43, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s23, s33, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v9, v56, v44, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s21
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v47, 46, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s24, s33, v46
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x1
	buffer_store_b32 v10, v18, s[36:39], 0 offen
	buffer_store_b32 v11, v19, s[36:39], 0 offen
	v_add_lshl_u32 v10, v56, v45, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v48, 48, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v46, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s23
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v49, 50, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s25, s33, v47
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s24
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v50, 52, v75
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s26, s33, v48
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_clause 0x1
	buffer_store_b32 v12, v8, s[36:39], 0 offen
	buffer_store_b32 v13, v9, s[36:39], 0 offen
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
	buffer_store_b32 v14, v10, s[36:39], 0 offen
	buffer_store_b32 v15, v11, s[36:39], 0 offen
	v_add_lshl_u32 v10, v56, v49, 2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s26
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v51, 54, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v11, v56, v50, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s27
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v52, 56, v75
	v_or_b32_e32 v53, 58, v75
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
	buffer_store_b32 v16, v8, s[36:39], 0 offen
	buffer_store_b32 v1, v9, s[36:39], 0 offen
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
	buffer_store_b32 v2, v10, s[36:39], 0 offen
	buffer_store_b32 v3, v11, s[36:39], 0 offen
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
	buffer_store_b32 v4, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v2, s[36:39], 0 offen
	buffer_store_b32 v6, v3, s[36:39], 0 offen
	buffer_store_b32 v7, v8, s[36:39], 0 offen
	buffer_store_b32 v0, v9, s[36:39], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp163:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 221
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_vgpr, 221
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14996
; TotalNumSgprs: 68
; NumVgprs: 221
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 221
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
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
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_float32_d64_dv64_shaperuntime_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     221
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
