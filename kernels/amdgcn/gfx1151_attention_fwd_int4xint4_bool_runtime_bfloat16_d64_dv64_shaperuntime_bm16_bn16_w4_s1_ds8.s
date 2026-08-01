	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x68
	s_load_b128 s[20:23], s[0:1], 0x4c
	s_load_b32 s44, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v26, 31, v0
	v_lshrrev_b32_e32 v42, 5, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v6, 0x110, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_xor_b32_e32 v5, 0x88, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v49, 0, v0
	v_lshlrev_b32_e32 v43, 1, v0
	v_add_nc_u32_e32 v51, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v52, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[28:29], null, s44, v42, v[26:27]
	s_cselect_b32 s7, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s26, s34
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s26
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v47, s44, 2, v28
	v_mad_u64_u32 v[29:30], null, s44, 12, v[28:29]
	v_lshl_add_u32 v48, s44, 3, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s27, s4
	s_sub_i32 s4, 0, s26
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s27
	s_mul_hi_u32 s4, s27, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s27, s27, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s26
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s26
	s_cmp_ge_u32 s5, s26
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s26
	s_cselect_b32 s4, s12, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s20
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s14, s3
	s_cvt_f32_u32 s12, s5
	s_sub_i32 s13, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s6
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s6, s4, s34
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s24, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s33, s2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s13, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s12, s13
	s_mul_hi_u32 s12, s14, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s12, s5
	s_sub_i32 s2, s14, s4
	s_add_i32 s4, s12, 1
	s_sub_i32 s6, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s14, s3, s22
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x18
	s_cselect_b32 s25, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s21
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s44, v26
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s24, v42
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 12, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s15, s15, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s15, s2, s15
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s15, s5, s2
	s_xor_b32 s2, s20, s21
	s_mul_i32 s28, s15, s6
	s_ashr_i32 s29, s2, 31
	s_sub_i32 s5, s5, s28
	s_add_i32 s28, s15, 1
	s_sub_i32 s30, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s22, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s15, s28, s15
	s_cselect_b32 s5, s30, s5
	s_add_i32 s28, s15, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s22, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s28, s28, s15
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s14, s24
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s30, s44
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s22, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v28
	v_add_nc_u32_e32 v2, s14, v47
	v_add_nc_u32_e32 v3, s14, v48
	v_add_nc_u32_e32 v4, s14, v29
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s30, v46, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v50, 0, v5
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s24, v46
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s14, s18
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s15, s19
	s_and_b32 s13, s13, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s23, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s28, s29
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v49, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v50, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v51, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v52, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v5, s[12:15], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s13, s5, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 24, v43
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s13, s13, 28
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s2, s29
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s13, s5, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v1, v46, 5, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s13, 4
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s16, s13, -16
	.loc	1 798 33 is_stmt 1              ; attention.py:798:33
	s_add_i32 s14, s5, s34
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s6
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s14, s14, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, 8, v1
	v_xor_b32_e32 v4, 16, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s15, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v53, 0, v1
	v_xor_b32_e32 v1, 24, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s13, s15, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v54, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s17, s13, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v55, 0, v4
	v_add_nc_u32_e32 v56, 0, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s14, s14, s34
	s_sub_i32 s15, s15, s17
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s26
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[30:31], v53
	ds_load_b64 v[32:33], v54
	ds_load_b64 v[34:35], v55
	ds_load_b64 v[36:37], v56
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s15, s26
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v1, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s13, 1
	s_cmp_ge_u32 s15, s26
	s_cselect_b32 s2, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s14
	s_sub_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s33, s2
	s_lshl_b32 s46, s13, 4
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s13, v1
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s46
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s47, s16, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s24
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s24
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s23, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s46, s46, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 28
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s47, s47, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s45, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s23, s2
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
	.loc	1 761 22 is_stmt 1              ; attention.py:761:22
	v_and_b32_e32 v27, 63, v0
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s46, s47
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s45, v27
	v_lshrrev_b32_e32 v57, 3, v1
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v1
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr10
.LBB0_7:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x40
	v_and_b32_e32 v45, 0x70, v0
	v_and_b32_e32 v44, 64, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_16
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s8, s3, s20
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_load_b128 s[28:31], s[0:1], 0x6c
	s_xor_b32 s14, s25, s8
	s_cvt_u32_f32 s13, s13
	s_sub_i32 s8, s14, s8
	s_sub_i32 s14, 0, s6
	s_mul_i32 s15, s8, s20
	s_mul_i32 s14, s14, s13
	s_sub_i32 s25, s3, s15
	s_mul_hi_u32 s14, s13, s14
	s_abs_i32 s15, s25
	s_add_i32 s13, s13, s14
	s_ashr_i32 s14, s25, 31
	s_mul_hi_u32 s13, s15, s13
	s_ashr_i32 s12, s12, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s18, s13, s6
	s_xor_b32 s20, s14, s12
	s_sub_i32 s12, s15, s18
	s_add_i32 s14, s13, 1
	s_sub_i32 s15, s12, s6
	s_cmp_ge_u32 s12, s6
	v_mov_b16_e32 v3.l, 0
	s_cselect_b32 s13, s14, s13
	s_cselect_b32 s12, s15, s12
	s_add_i32 s14, s13, 1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 4, v45
	v_bfe_i32 v7, v0, 3, 1
	.loc	1 758 19                        ; attention.py:758:19
	s_cmp_ge_u32 s12, s6
	s_load_b64 s[18:19], s[0:1], 0x30
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s26, s28, 0x3fb8aa3b
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s6, s14, s13
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s24, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s6, s6, s20
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v58, s26, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 8, v4
	v_and_b32_e32 v6, 16, v0
	v_and_b32_e32 v8, 1, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_and_b32_e32 v7, 0x84, v7
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s6, s6, s20
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s20, s8, s21
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s24, v3
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s50, s6, s20
	s_load_b32 s20, s[0:1], 0x7c
	v_lshlrev_b32_e32 v12, 6, v8
	v_lshlrev_b32_e32 v8, 5, v8
	v_lshlrev_b32_e32 v13, 2, v6
	v_and_or_b32 v7, v10, 3, v7
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x8
	s_load_b128 s[12:15], s[0:1], 0x20
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v62, s11, v5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s22, v5
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v5, 0, v1
	v_or3_b32 v68, v7, v8, v13
	v_mov_b32_e32 v7, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v9, 60, v43
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v61, s11, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s22, v2
	v_cndmask_b32_e32 v7, 0x1054, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x3276, v6, vcc_lo
	v_lshl_or_b32 v1, v1, 2, v9
	v_or3_b32 v67, v42, v12, v9
	v_mov_b32_e32 v9, 0
	v_and_b32_e32 v11, 14, v0
	v_lshl_or_b32 v7, v7, 8, v7
	v_xor_b32_e32 v1, v1, v57
	v_lshl_or_b32 v6, v6, 8, v6
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s20, v46
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v59, 6, v44
	v_mov_b32_e32 v14, v9
	v_or_b32_e32 v22, v1, v12
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v1, 0x540054, v7
	v_dual_mov_b32 v15, v9 :: v_dual_and_b32 v6, 0x760076, v6
	v_mov_b32_e32 v12, v9
	v_mul_u32_u24_e32 v10, 0x42, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 4, v1
	v_lshl_or_b32 v6, v6, 4, v6
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[38:39], null, s31, v3, v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v69, v10, v8, v13
	v_mad_u64_u32 v[39:40], null, s31, v4, v[2:3]
	v_mad_u64_u32 v[40:41], null, s45, v59, v[27:28]
	v_add_nc_u32_e32 v66, s10, v62
	v_xor_b32_e32 v2, 0x84, v67
	v_xor_b32_e32 v3, 4, v68
	v_xor_b32_e32 v4, 4, v69
	v_xor_b32_e32 v8, 8, v69
	v_xor_b32_e32 v17, 12, v69
	v_xor_b32_e32 v18, 16, v69
	v_xor_b32_e32 v19, 20, v69
	v_xor_b32_e32 v20, 24, v69
	v_xor_b32_e32 v21, 28, v69
	v_and_b32_e32 v41, 0x5040504, v1
	v_lshl_add_u32 v7, v44, 2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v70, 0x7060706, v6
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_lshlrev_b32 v6, 1, v27
	v_lshlrev_b32_e32 v23, 1, v46
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s48, s5, 3
	.loc	1 906 32                        ; attention.py:906:32
	s_mul_i32 s21, s50, s23
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s49, s50, s48
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s50, s50, s5
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s24, s24, s31
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s8, s29
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v60, v0, 4, 1
	v_subrev_nc_u32_e32 v63, s9, v61
	v_subrev_nc_u32_e32 v64, s9, v62
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_add_nc_u32 v65, s10, v61
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v13, v9
	v_add_nc_u32_e32 v71, 0, v2
	v_add_nc_u32_e32 v72, 0, v3
	v_add_nc_u32_e32 v73, 0, v4
	v_add_nc_u32_e32 v74, 0, v8
	v_dual_mov_b32 v84, 0xff800000 :: v_dual_add_nc_u32 v75, 0, v17
	v_dual_mov_b32 v83, v1 :: v_dual_add_nc_u32 v76, 0, v18
	v_add_nc_u32_e32 v77, 0, v19
	v_add_nc_u32_e32 v78, 0, v20
	v_add_nc_u32_e32 v79, 0, v21
	v_add_nc_u32_e32 v80, 0, v22
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v81, v7, v6
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_add_nc_u32_e32 v82, v5, v23
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s25, s25, s30
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_add_i32 s51, s5, s24
	s_and_b32 s39, s39, 0xffff
	s_xor_b32 s22, s7, -1
	s_add_i32 s51, s51, s25
	s_lshl_b32 s52, s45, 1
	s_lshl_b32 s53, s45, 2
	s_mul_i32 s54, s45, 6
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s24, s36
	s_mov_b32 s25, s37
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s55, 0x76543210
	s_mov_b32 s36, s38
	s_mov_b32 s37, s39
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s14
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v25.h, 0xff, v25.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v88.h, v87.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v87, v17
	.loc	1 962 34                        ; attention.py:962:34
	v_and_b16 v17.l, 0xff, v25.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v95.l, 0
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s13, s46, 31
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v25.h
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s13, s46, s13
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s5, 0, v17.l
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v94.h, v92.l
	v_mov_b16_e32 v92.l, v95.l
	v_mov_b16_e32 v92.h, v91.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s13, s13, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v97, v58, v20
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 vcc_lo, s9, vcc_lo
	s_and_b32 s5, s8, s5
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v93.h, v93.l
	v_mov_b16_e32 v93.l, v95.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v22, v22
	v_dual_mul_f32 v25, v58, v87 :: v_dual_add_nc_u32 v20, 0, v68
	v_dual_mul_f32 v87, v58, v18 :: v_dual_mul_f32 v92, v97, v92
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v17, 0, 1, vcc_lo
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v96, v58, v19
	v_dual_mul_f32 v22, v58, v22 :: v_dual_add_nc_u32 v19, 0, v67
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v18, 0, 1, s5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v19, v17
	ds_store_b8 v71, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v17, v20
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v72
	ds_load_u8_d16 v18, v20 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v72 offset:8
	ds_load_u8_d16 v19, v20 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v72 offset:16
	ds_load_u8_d16 v20, v20 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v20, v72 offset:24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v95.h, v94.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v89.h, v88.l
	v_mov_b16_e32 v88.l, v95.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v25, v25, v95 :: v_dual_mul_f32 v24, v58, v24
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s14, s13, s49
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v91.l, v95.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	v_and_b16 v18.h, 1, v18.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v91.h, v90.l
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s5, 1, v17.l
	v_cmp_eq_u16_e64 s7, 1, v17.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v17, 0, v69
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s6, 1, v18.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v25, 0xff800000, v25, s5
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s10, 1, v18.h
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v90.l, v95.l
	v_mov_b16_e32 v90.h, v89.l
	v_mov_b16_e32 v89.l, v95.l
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v17, v25
	v_mad_u64_u32 v[17:18], null, s14, s45, v[40:41]
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v21, v58, v21 :: v_dual_mul_f32 v24, v24, v88
	v_mul_f32_e32 v23, v58, v23
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v19.h, 1, v19.h
	v_and_b16 v20.l, 1, v20.l
	v_cmp_eq_u16_e64 s12, 1, v20.h
	.loc	1 974 36                        ; attention.py:974:36
	v_add_nc_u32_e32 v18, s13, v59
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v94.l, v95.l
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v19.l, 1, v19.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v21, v21, v91 :: v_dual_mul_f32 v22, v22, v90
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s11, 1, v19.h
	v_cmp_eq_u16_e64 s9, 1, v20.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v20, 0xff800000, v24, s12
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s14, s46, 31
	v_add_nc_u32_e32 v24, s53, v17
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v23, v23, v89
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s13, s48, v18
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s14, s14, 28
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v87, v87, v93
	v_dual_mul_f32 v93, v96, v94 :: v_dual_add_nc_u32 v90, s54, v17
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s8, 1, v19.l
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s14, s46, s14
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v19, 0xff800000, v22, s11
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v96, v84, v84
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v22, 0xff800000, v23, s9
	v_add_nc_u32_e32 v23, s52, v17
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s14, s14, 4
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s13, s2, s13
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s14, s50
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s7
	v_cndmask_b32_e64 v88, 0xff800000, v93, s6
	v_cndmask_b32_e64 v89, 0xff800000, v92, s10
	v_cndmask_b32_e64 v21, 0xff800000, v21, s8
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s13
	v_cndmask_b32_e64 v23, 0x80000000, v23, s13
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s14, s14, s45
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v24, 0x80000000, v24, s13
	v_cndmask_b32_e64 v90, 0x80000000, v90, s13
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v91, s14, v27, 1
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v73, v87
	ds_store_b32 v74, v88
	ds_store_b32 v75, v89
	ds_store_b32 v76, v21
	ds_store_b32 v77, v19
	ds_store_b32 v78, v22
	ds_store_b32 v79, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v92, v17, s[36:39], 0 offen
	buffer_load_u8 v23, v23, s[36:39], 0 offen
	buffer_load_u8 v24, v24, s[36:39], 0 offen
	buffer_load_u8 v90, v90, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v17, 0x80000000, v91, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v103, v25, v87, v88
	v_max3_f32 v104, v89, v21, v19
	v_dual_max_f32 v105, v22, v20 :: v_dual_lshlrev_b32 v18, 1, v18
.Ltmp4:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v91, v17, s[40:43], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v17, v80
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v107.h, v95.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v103, v103, v104, v105
.Ltmp6:
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v112, 9, v18
	v_or_b32_e32 v109, 1, v18
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v86
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v95.l
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v105, v103, s55, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v102.h, v95.l
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v111, 5, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v108.h, v95.l
	v_mov_b16_e32 v104.h, v95.l
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v103, v86, v103, v105
	v_max_f32_e32 v85, v85, v85
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v105, 13, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v95.l
	v_mov_b16_e32 v106.h, v95.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v88, v88, v103
	v_sub_f32_e32 v19, v19, v103
	s_waitcnt lgkmcnt(0)
	v_dual_sub_f32 v22, v22, v103 :: v_dual_mov_b32 v93, v17
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v94, v17, v17
.Ltmp10:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v18, v86, v103
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v19, v19
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v20, v20, v103
.Ltmp11:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v93, v93 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v22
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v18, v18
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v20, v20
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v93, v93, v93
.Ltmp14:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v95.h, v95.l
	v_mov_b16_e32 v97.h, v95.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v19, 0, v19, s11
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v99.h, v95.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v93, v94, v93
.Ltmp16:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v22, 0, v22, s9
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v18, 0, v18, s13
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v107.l, v19.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v21, v21, v103
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v98, v93
.Ltmp18:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v20, 0, v20, s12
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v18
	v_mul_f32_e32 v5, v5, v18
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v104.l, v22.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v18
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v88, 0, v88, s6
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v98, v98, v98
.Ltmp22:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v94.h, v95.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s8
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v93, v93, v98
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v98.h, v95.l
	v_mov_b16_e32 v98.l, v20.h
	v_mov_b16_e32 v106.l, v88.h
	v_mov_b16_e32 v108.l, v21.h
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v110, v93
.Ltmp26:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v98, 1, v98
	v_cmp_o_f32_e64 s8, v88, v88
	v_and_b32_e32 v104, 1, v104
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v25, v25, v103
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v21, v21
	v_cmp_o_f32_e64 s11, v22, v22
	v_add3_u32 v22, v22, v104, 0x7fff
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v110, v110, v110
.Ltmp30:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v25, v25
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s46, s46, 16
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s46, s47
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v93, v93, v110
.Ltmp32:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v87, v87, v103
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v110, v93
.Ltmp34:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v25, 0, v25, s5
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v110, v110 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v89, v89, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.l, v25.h
	v_cmp_o_f32_e64 s6, v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v110, v110, v110
.Ltmp38:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v86, 0, v87, s7
.Ltmp39:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v110, v93, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.l, v86.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v85, v85, v110
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v87, 0, v89, s10
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v89, 1, v100
	v_cmp_o_f32_e64 s10, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v102.l, v87.h
	v_add3_u32 v86, v86, v89, 0x7fff
	v_cmp_o_f32_e64 s7, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v100, 1, v102
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v17, v17, v85 :: v_dual_and_b32 v102, 1, v108
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v86.h, 0x7fff, v86.h, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v87, v87, v100, 0x7fff
	v_add3_u32 v21, v21, v102, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v6, v6, v18 :: v_dual_cndmask_b32 v17, 0, v17
	v_mul_f32_e32 v3, v3, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v19, v19
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp43:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v93, 1, v101
	v_and_b32_e32 v101, 1, v106
	v_and_b32_e32 v18, 1, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v25, v93, 0x7fff
	v_add3_u32 v93, v20, v98, 0x7fff
	v_add3_u32 v88, v88, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v19, v18, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v25.h, s6
	v_cndmask_b16 v25.h, 0x7fff, v87.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v25.l, 0x7fff, v88.h, s8
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v94.l, 4, v92.l
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v20, 15, v23
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v106, v17
.Ltmp45:
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(2)
	v_and_b16 v18.l, v24.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v95.l, 4, v23.l
	v_lshrrev_b16 v97.l, 4, v24.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v18.h, v90.l, 15
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v99.l, 4, v90.l
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v17, v106
.Ltmp49:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v17.h, v23.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v23, 16, v91
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v87, 15, v24
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v24, 0, v94, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v111
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v88, 15, v90
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v17.l, v92.l, 15
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v100, v98 :: v_dual_and_b32 v19, 15, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v90, 0, v95, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v112
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v95, -16, v20
	v_or_b32_e32 v94, -16, v19
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v91, 0, v97, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v105
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v97, -16, v87
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v92, 0, v99, s5
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v17.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v99, -16, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v19, v19, v94, s5
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v17.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v94, -16, v91
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v17, v20, v95, s5
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v18.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v95, -16, v92
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v19, v19, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v20, v87, v97, s5
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v18.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v87, -16, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v17, v17, v23
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v18, v88, v99, s5
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v24
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v88, -16, v90
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v17, v17
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v20, v20, v23
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v24, v24, v87, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v20, v20
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v18, v23, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v87, v90, v88, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s8, v18, v18
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v24, v24, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v88, v91, v94, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v92
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v91, v17, 16, 1
	v_bfe_u32 v94, v18, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v87, v87, v23
	v_cvt_f32_i32_e32 v88, v88
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v90, v92, v95, s5
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v92, v20, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v17, v17, v91, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v88, v23, v88
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v91, v87, 16, 1
	v_add3_u32 v20, v20, v92, 0x7fff
	v_add3_u32 v18, v18, v94, 0x7fff
	v_bfe_u32 v92, v88, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v23, v23, v90
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v90, v19, 16, 1
	v_cmp_o_f32_e64 s12, v24, v24
	v_cmp_o_f32_e64 s13, v87, v87
	v_cmp_o_f32_e64 s14, v88, v88
	v_bfe_u32 v94, v23, 16, 1
	v_add3_u32 v19, v19, v90, 0x7fff
	v_bfe_u32 v90, v24, 16, 1
	v_cmp_o_f32_e64 s15, v23, v23
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s7
	v_add3_u32 v20, v88, v92, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s5
	v_add3_u32 v19, v24, v90, 0x7fff
	v_add3_u32 v24, v87, v91, 0x7fff
	v_add3_u32 v23, v23, v94, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s8
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s13
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s14
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s15
	ds_store_b16 v81, v17
	ds_store_b16 v81, v19 offset:128
	ds_store_b16_d16_hi v81, v17 offset:512
	ds_store_b16_d16_hi v81, v19 offset:640
	ds_store_b16 v81, v18 offset:1024
	ds_store_b16 v81, v20 offset:1152
	ds_store_b16_d16_hi v81, v18 offset:1536
	ds_store_b16_d16_hi v81, v20 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v87, v82
	ds_load_u16_d16 v88, v82 offset:256
	ds_load_u16_d16 v89, v82 offset:512
	ds_load_u16_d16 v90, v82 offset:768
	ds_load_u16_d16 v91, v82 offset:1024
	ds_load_u16_d16 v92, v82 offset:1280
	ds_load_u16_d16 v93, v82 offset:1536
	ds_load_u16_d16 v94, v82 offset:1792
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v17, v96, v110
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v19.h, 0x7fff, v89.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s9
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s11
	v_permlanex16_b32 v22, v86, s55, 0xfedcba98 op_sel:[1,0]
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v18, v84, v17
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v84
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	s_waitcnt lgkmcnt(1)
	v_cndmask_b16 v20.h, 0x7fff, v93.h, s10
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v87, v82 offset:128
	ds_load_u16_d16_hi v88, v82 offset:384
	ds_load_u16_d16_hi v89, v82 offset:640
	ds_load_u16_d16_hi v90, v82 offset:896
	ds_load_u16_d16_hi v91, v82 offset:1152
	ds_load_u16_d16_hi v92, v82 offset:1408
	ds_load_u16_d16_hi v93, v82 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v82 offset:1920
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v18, v18
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v21, v98, v100
.Ltmp55:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v95, v22, v86, v41
	v_perm_b32 v96, v22, v86, v70
	v_permlanex16_b32 v23, v25, s55, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v100, v19, s55, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v102, v20, s55, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v84, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_perm_b32 v97, v23, v25, v41
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v22, 0, v18, vcc_lo
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v24, v21
.Ltmp57:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v98, v23, v25, v70
	v_perm_b32 v99, v100, v19, v41
	v_perm_b32 v100, v100, v19, v70
	v_perm_b32 v101, v102, v20, v41
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v102, v102, v20, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v21, v24
.Ltmp61:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[87:94], v[95:102], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v83, v22
	v_dual_mov_b32 v86, v103 :: v_dual_mov_b32 v83, v18
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_17
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v17, s46, v42
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s8, s46, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s8, s44
	v_add_nc_u32_e32 v22, s5, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v23, s5, v48
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s23, v17
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v21, s5, v28
	v_add_nc_u32_e32 v17, s5, v29
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s5, s23, v18
	v_cmp_gt_i32_e64 s6, s23, v19
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s7, s23, v20
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_cndmask_b32_e32 v18, 0x80000000, v21, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s5
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v21, s46, v60
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 924 25                        ; attention.py:924:25
	v_add_lshl_u32 v22, s8, v60, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v87, 8, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 908 32                        ; attention.py:908:32
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v92, 8, v22
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v91, 4, v22
	.loc	1 908 32                        ; attention.py:908:32
	s_clause 0x3
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v23, 2, v21
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v21
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v24, 4, v21
	v_add_nc_u32_e32 v89, 12, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v93, 12, v22
	v_add_nc_u32_e32 v94, 16, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v88, 10, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v95, 20, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v25, 6, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v96, 24, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v90, 14, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v21, 0x80000000, v22, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v23
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v22, 28, v22
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b8 v49, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v50, v19
	s_waitcnt vmcnt(1)
	ds_store_b8 v51, v20
	s_waitcnt vmcnt(0)
	ds_store_b8 v52, v17
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v23, 0x80000000, v91, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v24
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v24, 0x80000000, v92, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v25
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v25, 0x80000000, v93, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v87
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v87, 0x80000000, v94, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v88
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v88, 0x80000000, v95, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v89
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v95, 0x80000000, v96, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v90
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v94, v21, s[28:31], 0 offen
	buffer_load_u16 v93, v23, s[28:31], 0 offen
	buffer_load_u16 v92, v24, s[28:31], 0 offen
	buffer_load_u16 v91, v25, s[28:31], 0 offen
	buffer_load_u16 v90, v87, s[28:31], 0 offen
	buffer_load_u16 v89, v88, s[28:31], 0 offen
	buffer_load_u16 v88, v95, s[28:31], 0 offen
	buffer_load_u16 v87, v22, s[28:31], 0 offen
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[95:96], v53
	ds_load_b64 v[97:98], v54
	ds_load_b64 v[99:100], v55
	ds_load_b64 v[101:102], v56
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v25, s46, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e32 vcc_lo, v25, v61
	v_cmp_le_i32_e64 s6, v25, v62
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s5, s23, v25
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s7, s22, vcc_lo
	s_or_b32 s6, s22, s6
	s_and_b32 s7, s0, s7
	s_and_b32 s6, s1, s6
	s_and_b32 s9, s5, s7
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[30:31], v[9:16] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s8, s5, s6
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[32:33], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[34:35], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[36:37], v[17:24] neg_lo:[1,1,0]
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v25, v63
	v_cmp_ge_i32_e64 s5, v25, v64
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v25, v65
	v_cmp_le_i32_e64 s7, v25, v66
	s_and_not1_b32 s10, s9, exec_lo
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, s5, s7
	s_and_b32 s6, s6, s9
	s_and_b32 s5, s5, s8
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s7, s8, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s9, s10, s6
	s_or_b32 s8, s7, s5
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v25.l, 0
	.loc	1 955 25 is_stmt 1              ; attention.py:955:25
	s_mul_i32 s5, s46, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s5, s51, s5
	v_mov_b16_e32 v25.h, v25.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s9
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v95, s5, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v96, 31, v95
	v_add_co_u32 v95, vcc_lo, s18, v95
	v_add_co_ci_u32_e64 v96, null, s19, v96, vcc_lo
	global_load_d16_hi_u8 v25, v[95:96], off
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s8
	s_cbranch_execz .LBB0_9
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v95, s5, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v96, 31, v95
	v_add_co_u32 v95, vcc_lo, s18, v95
	v_add_co_ci_u32_e64 v96, null, s19, v96, vcc_lo
	global_load_d16_u8 v25, v[95:96], off
	s_branch .LBB0_9
.LBB0_16:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
	s_branch .LBB0_18
.LBB0_17:                               ; %._crit_edge.loopexit
.Ltmp62:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v17, v17
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, 0, v18 :: v_dual_mov_b32 v10, v57
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, 0xff800000, v9
.Ltmp65:
.LBB0_18:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	s_mov_b32 s0, 0x76543210
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp67:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v12, 0xff800000, v9 :: v_dual_lshlrev_b32 v9, 2, v0
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s45, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v13, v12, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp70:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v15, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v14, 12, v9
.Ltmp75:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
	v_dual_cndmask_b32 v17, 0, v4 :: v_dual_cndmask_b32 v18, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v11, v15 :: v_dual_max_f32 v12, v12, v13
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v13, 0, v14
.Ltmp78:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s45
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v12, v13
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
.Ltmp81:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v2 :: v_dual_mov_b32 v14, v3
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v21, v8 :: v_dual_add_f32 v2, v2, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v10, v1
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v15, v12
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
.Ltmp92:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v11
.Ltmp93:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_add_f32 v2, v2, v14
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_add_f32 v3, v3, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v11, v13 :: v_dual_max_f32 v11, v12, v15
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v6, vcc_lo
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp109:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v16
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v15, v17 :: v_dual_mov_b32 v16, v18
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v5 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v7
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v18, v16 :: v_dual_mov_b32 v21, v8
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v7, v20 :: v_dual_mov_b32 v18, v16
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v7
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v18
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v22, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v19, v7, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v18
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v16, v7
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v20
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v14 :: v_dual_add_f32 v18, v8, v22
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v7 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v42, v26
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_20
; %bb.19:
.Ltmp139:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp142:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[4:5]
.LBB0_20:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp145:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v5, v6
	v_dual_add_f32 v13, v1, v3 :: v_dual_lshlrev_b32 v0, 5, v0
.Ltmp146:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v9
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v2, v4 :: v_dual_and_b32 v1, 28, v43
.Ltmp148:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshl_add_u32 v3, v45, 1, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_add_nc_u32 v2, 0, v5
.Ltmp150:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_f32 v11, v17, v20
.Ltmp152:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v2, v0, v1
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v27
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_load_b32 v0, v0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp153:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 56
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 113
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7016
; TotalNumSgprs: 58
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 113
; Occupancy: 12
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
