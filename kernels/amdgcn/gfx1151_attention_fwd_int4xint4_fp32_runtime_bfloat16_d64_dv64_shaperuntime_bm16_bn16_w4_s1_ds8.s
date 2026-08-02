	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
	s_load_b32 s48, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v25, 31, v0
	v_lshrrev_b32_e32 v40, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 0x88, v0
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v47, 0, v0
	v_lshlrev_b32_e32 v41, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v44, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v49, 0, v6
	v_add_nc_u32_e32 v50, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[27:28], null, s48, v40, v[25:26]
	s_cselect_b32 s7, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s25, s34
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s25
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v45, s48, 2, v27
	v_mad_u64_u32 v[28:29], null, s48, 12, v[27:28]
	v_lshl_add_u32 v46, s48, 3, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s27, s4
	s_sub_i32 s4, 0, s25
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s27
	s_mul_hi_u32 s4, s27, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s27, s27, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s25
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s25
	s_cmp_ge_u32 s5, s25
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s25
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
	s_lshl_b32 s26, s4, 4
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
	s_cselect_b32 s24, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s21
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s48, v25
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s26, v40
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
	s_add_i32 s30, s14, s26
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s30, s48
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s22, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v27
	v_add_nc_u32_e32 v2, s14, v45
	v_add_nc_u32_e32 v3, s14, v46
	v_add_nc_u32_e32 v4, s14, v28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s30, v44, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v48, 0, v5
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s26, v44
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s15, s19
	s_and_b32 s13, s13, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s23, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s28, s29
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v47, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v48, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v49, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v50, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v5, s[12:15], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s13, s5, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v41
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s13, s13, 28
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s2, s29
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s13, s5, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v44, 5, v2
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
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s15, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v51, 0, v2
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s13, s15, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v52, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s17, s13, s25
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v53, 0, v4
	v_add_nc_u32_e32 v54, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s14, s14, s34
	s_sub_i32 s15, s15, s17
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s25
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[29:30], v51
	ds_load_b64 v[31:32], v52
	ds_load_b64 v[33:34], v53
	ds_load_b64 v[35:36], v54
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s15, s25
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v2, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s13, 1
	s_cmp_ge_u32 s15, s25
	s_cselect_b32 s2, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s14
	s_sub_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s33, s2
	s_lshl_b32 s19, s13, 4
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s13, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s49, s16, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s26
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s26
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
	s_max_i32 s19, s19, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 28
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s49, s49, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s18, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s26
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
	s_min_i32 s49, s49, s2
.LBB0_4:
	.loc	1 761 22 is_stmt 1              ; attention.py:761:22
	v_and_b32_e32 v26, 63, v0
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s49
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s18, v26
	v_lshrrev_b32_e32 v55, 3, v2
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v2
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr10
.LBB0_7:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x40
	v_and_b32_e32 v43, 0x70, v0
	v_and_b32_e32 v42, 64, v0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_12
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s8, s3, s20
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_ashr_i32 s12, s12, 31
	s_xor_b32 s14, s24, s8
	s_cvt_u32_f32 s13, s13
	s_sub_i32 s8, s14, s8
	s_sub_i32 s14, 0, s6
	s_mul_i32 s15, s8, s20
	s_mul_i32 s14, s14, s13
	s_sub_i32 s27, s3, s15
	s_mul_hi_u32 s14, s13, s14
	s_abs_i32 s15, s27
	s_add_i32 s13, s13, s14
	s_ashr_i32 s14, s27, 31
	s_mul_hi_u32 s13, s15, s13
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s12, s14, s12
	s_mul_i32 s20, s13, s6
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[36:39], s[0:1], 0x6c
	s_sub_i32 s14, s15, s20
	s_add_i32 s15, s13, 1
	s_sub_i32 s20, s14, s6
	s_cmp_ge_u32 s14, s6
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 4, v43
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s13, s15, s13
	s_cselect_b32 s14, s20, s14
	s_add_i32 s15, s13, 1
	s_cmp_ge_u32 s14, s6
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s20, s8, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s6, s15, s13
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s50, s5, 3
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s6, s6, s12
	v_mov_b16_e32 v7.l, 0
	s_sub_i32 s6, s6, s12
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v7.h, v1.l
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s52, s6, s20
	s_load_b32 s20, s[0:1], 0x7c
	.loc	1 906 32 is_stmt 0              ; attention.py:906:32
	s_mul_i32 s21, s52, s23
	.loc	1 976 30 is_stmt 1              ; attention.py:976:30
	s_mul_i32 s51, s52, s50
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s52, s52, s5
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s36, 0x3fb8aa3b
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s26, v3
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_and_b32_e32 v5, 16, v0
	v_mul_lo_u32 v1, s39, v3
	.loc	1 928 41 is_stmt 1              ; attention.py:928:41
	v_dual_mul_f32 v60, s5, v7 :: v_dual_and_b32 v3, 60, v41
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x8
	s_load_b128 s[12:15], s[0:1], 0x20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 8, v4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v58, s11, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s22, v4
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v73, v60 :: v_dual_lshlrev_b32 v8, 2, v5
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v5, 0x7632 :: v_dual_add_nc_u32 v4, 0, v2
	v_mov_b32_e32 v72, v60
	v_lshl_or_b32 v2, v2, 2, v3
	v_dual_mov_b32 v10, 0x5410 :: v_dual_add_nc_u32 v59, s11, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s22, v6
	v_and_b32_e32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[37:38], null, s20, v44, v[1:2]
	v_and_b32_e32 v1, 14, v0
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v71, v60
	v_lshlrev_b32_e32 v7, 6, v6
	v_lshlrev_b32_e32 v6, 5, v6
	v_lshrrev_b32_e32 v9, 1, v0
	v_mul_u32_u24_e32 v1, 0x42, v1
	v_xor_b32_e32 v2, v2, v55
	v_add_nc_u32_e32 v64, s10, v59
	v_cndmask_b32_e32 v5, 0x3276, v5, vcc_lo
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v56, 6, v42
	v_add3_u32 v66, v1, v6, v8
	v_bfe_i32 v1, v0, 3, 1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s26, s26, s39
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s8, s37
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[38:39], null, s18, v56, v[26:27]
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v1, 0x84, v1
	v_xor_b32_e32 v17, 4, v66
	v_xor_b32_e32 v18, 8, v66
	v_xor_b32_e32 v19, 12, v66
	v_xor_b32_e32 v20, 16, v66
	v_and_or_b32 v1, v9, 3, v1
	v_cndmask_b32_e32 v9, 0x1054, v10, vcc_lo
	v_xor_b32_e32 v21, 20, v66
	v_xor_b32_e32 v22, 24, v66
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v57, v0, 4, 1
	v_or3_b32 v69, v1, v6, v8
	v_lshl_or_b32 v1, v9, 8, v9
	v_mov_b32_e32 v9, 0
	v_lshl_add_u32 v8, v42, 2, 0
	v_subrev_nc_u32_e32 v61, s9, v58
	v_subrev_nc_u32_e32 v62, s9, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v1, 0x540054, v1
	v_or_b32_e32 v65, v2, v7
	v_or3_b32 v68, v40, v7, v3
	v_lshl_or_b32 v3, v5, 8, v5
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v5, 28, v66
	v_xor_b32_e32 v2, 0x210, v65
	v_xor_b32_e32 v6, 0x84, v68
	v_xor_b32_e32 v7, 4, v69
	v_and_b32_e32 v39, 0x5040504, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v74, 0, v2
	v_and_b32_e32 v3, 0x760076, v3
	v_lshlrev_b32_e32 v23, 1, v44
	v_dual_mov_b32 v10, v9 :: v_dual_add_nc_u32 v63, s10, v58
	v_mov_b32_e32 v2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 4, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v67, s39, 3, v37
	v_dual_mov_b32 v89, 0xff800000 :: v_dual_add_nc_u32 v76, 0, v18
	v_dual_mov_b32 v11, v9 :: v_dual_and_b32 v70, 0x7060706, v3
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v26
	v_mov_b32_e32 v12, v9
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v78, 0, v20
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v80, 0, v22
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v75, 0, v17
	v_dual_mov_b32 v90, 0xff800000 :: v_dual_add_nc_u32 v77, 0, v19
	v_add_nc_u32_e32 v79, 0, v21
	v_add_nc_u32_e32 v81, 0, v5
	v_add_nc_u32_e32 v82, 0, v6
	v_add_nc_u32_e32 v83, 0, v7
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v84, v8, v3
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v85, v4, v23
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v87, v1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s27, s27, s38
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_add_i32 s53, s5, s26
	s_and_b32 s43, s43, 0xffff
	s_xor_b32 s22, s7, -1
	s_add_i32 s53, s53, s27
	s_and_b32 s25, s25, 0xffff
	s_lshl_b32 s54, s18, 1
	s_lshl_b32 s55, s18, 2
	s_mul_i32 s56, s18, 6
	s_and_b32 s45, s15, 0xffff
	s_mov_b32 s28, s40
	s_mov_b32 s29, s41
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s57, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_mov_b32 s40, s42
	s_mov_b32 s41, s43
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s14
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
                                        ; implicit-def: $sgpr58
                                        ; implicit-def: $sgpr59
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 932 25 is_stmt 1              ; attention.py:932:25
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s19, s20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v100, v60, v17 :: v_dual_mul_f32 v99, v71, v18
	v_cvt_f32_i32_e32 v17, v21
	v_cvt_f32_i32_e32 v18, v22
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s5, s53, s5
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v96.h, v95.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v20, v73, v20 :: v_dual_mul_f32 v95, v72, v19
	v_cvt_f32_i32_e32 v19, v23
	v_cvt_f32_i32_e32 v21, v24
	v_dual_mul_f32 v23, v71, v18 :: v_dual_mul_f32 v24, v60, v17
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v17, s5, v37, 2
	v_add_lshl_u32 v18, s5, v67, 2
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v88.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v88.h, v98.l
	v_mov_b16_e32 v98.h, v97.l
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v17, 0x80000000, v17, s59
	v_cndmask_b32_e64 v18, 0x80000000, v18, s58
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v98.l, v88.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v92.h, v91.l
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v91, 0, v65
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_b32 v17, v17, s[24:27], 0 offen
	buffer_load_b32 v18, v18, s[24:27], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v21, v73, v21 :: v_dual_add_nc_u32 v102, 0, v66
	v_mul_f32_e32 v22, v72, v19
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v97.l, v88.l
	v_mov_b16_e32 v97.h, v96.l
	v_mov_b16_e32 v96.l, v88.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v101.h, v94.l
	v_mov_b16_e32 v94.l, v88.l
	v_mov_b16_e32 v94.h, v93.l
	v_mov_b16_e32 v93.h, v92.l
	v_mov_b16_e32 v92.l, v88.l
	v_mov_b16_e32 v101.l, v88.l
	v_mov_b16_e32 v93.l, v88.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v89
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v86, v86, v86
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v17, 0xff800000, v17, s59
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v18, 0xff800000, v18, s58
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b32 v91, v17
	ds_store_b32 v74, v18
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v17
	v_cmp_neq_f32_e64 s5, 0xff800000, v18
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v103, v102
	ds_load_b32 v104, v75
	ds_load_b32 v105, v76
	ds_load_b32 v106, v77
	ds_load_b32 v107, v78
	ds_load_b32 v108, v79
	ds_load_b32 v109, v80
	ds_load_b32 v110, v81
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s12, s59, vcc_lo
	s_and_b32 s5, s58, s5
	v_cndmask_b32_e64 v17, 0, 1, s12
	v_cndmask_b32_e64 v18, 0, 1, s5
	v_add_nc_u32_e32 v19, 0, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v19, v17
	v_mov_b16_e32 v17.l, v18.l
	v_add_nc_u32_e32 v19, 0, v69
	ds_store_b8 v82, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v17, v19
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v19 offset:8
	ds_load_u8_d16 v18, v19 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v19 offset:24
	v_and_b16 v17.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s10, 1, v17.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.l, 1, v18.l
	v_cmp_eq_u16_e64 s6, 1, v17.l
	ds_load_u8_d16 v17, v83
	ds_load_u8_d16 v18, v83 offset:8
	ds_load_u8_d16 v19, v83 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v83 offset:24
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v17.l, 1, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s11, 1, v17.l
	v_and_b16 v17.l, 1, v19.l
	v_cmp_eq_u16_e64 s7, 1, v17.l
	v_and_b16 v17.l, 1, v17.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s8, 1, v17.l
	v_and_b16 v17.l, 1, v18.l
	v_cmp_eq_u16_e64 s9, 1, v17.l
	v_and_b16 v17.l, 1, v18.h
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v17.l
	v_and_b16 v17.l, 1, v19.h
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v18, v95, v98 :: v_dual_mul_f32 v19, 0x3fb8aa3b, v104
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v98, 0x3fb8aa3b, v107
	v_mul_f32_e32 v103, 0x3fb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_cmp_eq_u16_e64 s5, 1, v17.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v106
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v95, 0xff800000, v18, s8
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v109
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v98, v24, v92
	v_fmac_f32_e32 v103, v100, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v17, v20, v88 :: v_dual_fmac_f32 v18, v22, v94
	v_fmac_f32_e32 v19, v99, v97
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v97, 0xff800000, v103, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0xff800000, v17, s9
	v_cndmask_b32_e64 v24, 0xff800000, v98, s6
	v_cndmask_b32_e32 v22, 0xff800000, v18, vcc_lo
	v_cndmask_b32_e64 v96, 0xff800000, v19, s11
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v17, 0x3fb8aa3b, v110
	v_mul_f32_e32 v19, 0x3fb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v17, v21, v101
	v_fmac_f32_e32 v19, v23, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v21, 0xff800000, v17, s5
	v_cndmask_b32_e64 v23, 0xff800000, v19, s7
	ds_store_b32 v102, v97
	ds_store_b32 v75, v96
	ds_store_b32 v76, v95
	ds_store_b32 v77, v20
	ds_store_b32 v78, v24
	ds_store_b32 v79, v23
	ds_store_b32 v80, v22
	ds_store_b32 v81, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v91, v91
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v19, v20, v24, v23
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v92, v22, v21 :: v_dual_mov_b32 v17, v91
	v_max_f32_e32 v18, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v18, v17
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v18
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v18
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v18
	v_max3_f32 v18, v97, v96, v95
	v_max3_f32 v18, v18, v19, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v19, v18, s57, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v18, v89, v18, v19
	v_max_f32_e32 v19, v90, v90
	v_max_f32_e32 v86, v86, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v20, v20, v18 :: v_dual_max_f32 v17, v19, v17
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v19, v89, v18
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v89, v91, v86
	v_sub_f32_e32 v91, v96, v18
	v_sub_f32_e32 v24, v24, v18
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v92, v90, v17
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v19, v19
	.loc	1 971 49 is_stmt 1              ; attention.py:971:49
	v_exp_f32_e32 v96, v89
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v94, v23, v18
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v23, v24
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v92, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v24, v94
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v93, 0, v19, s13
	v_cmp_neq_f32_e64 s13, 0xff800000, v90
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v90, v97, v18
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v23, 0, v23, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v19, 0, v92, s13
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v100, v90
	v_exp_f32_e32 v90, v20
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v20, 0, v96, s12
	.loc	1 974 36 is_stmt 1              ; attention.py:974:36
	s_lshr_b32 s12, s19, 31
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v92, v95, v18
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s12, s19, s12
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v24, 0, v24, s7
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s12, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v93 :: v_dual_add_nc_u32 v94, s12, v56
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v101, v91
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v91, v20
.Ltmp15:
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s12, s12, s51
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v89, v92
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v90, 0, v90, s9
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v24, v24
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v91, v91 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v93
	v_mul_f32_e32 v3, v3, v93
	v_mul_f32_e32 v5, v5, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v7, v7, v93 :: v_dual_add_f32 v20, v20, v91
	v_mul_f32_e32 v4, v4, v93
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v89, 0, v89, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v90, v90
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v93
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v91, v20
.Ltmp19:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v93.h, v88.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v91, v91 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v20, v20, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v22, v22, v18 :: v_dual_mov_b32 v91, v20
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v20, v20, v91
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v91, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v95, v21, v18
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v21, v22
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v20, v20, v91
	v_mad_u64_u32 v[91:92], null, s12, s18, v[38:39]
.Ltmp28:
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s12, s50, v94
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v20, v87, v19 :: v_dual_cndmask_b32 v21, 0, v21
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s12, s2, s12
	v_add_nc_u32_e32 v92, s54, v91
	v_add_nc_u32_e32 v95, s55, v91
	v_add_nc_u32_e32 v96, s56, v91
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v91, 0x80000000, v91, s12
	v_mov_b32_e32 v87, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v22, 0, v22, s5
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u8 v97, v91, s[40:43], 0 offen
	v_cndmask_b32_e64 v91, 0x80000000, v92, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u8 v98, v91, s[40:43], 0 offen
	v_cndmask_b32_e64 v91, 0x80000000, v95, s12
	buffer_load_u8 v95, v91, s[40:43], 0 offen
	v_cndmask_b32_e64 v91, 0x80000000, v96, s12
	buffer_load_u8 v96, v91, s[40:43], 0 offen
	.loc	1 974 36                        ; attention.py:974:36
	v_lshlrev_b32_e32 v91, 1, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v92, 1, v91
	v_add_nc_u32_e32 v94, 5, v91
	v_add_nc_u32_e32 v99, 9, v91
	v_add_nc_u32_e32 v91, 13, v91
	.loc	1 985 30 is_stmt 0              ; attention.py:985:30
	v_cmp_gt_i32_e64 s12, s23, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s13, s23, v94
	v_cmp_gt_i32_e64 s14, s23, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s15, s23, v91
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	s_waitcnt vmcnt(3)
	v_and_b16 v88.h, v97.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v94, 15, v97
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v97.l, 4, v97.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v97.h, v88.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	s_waitcnt vmcnt(2)
	v_and_b16 v91.l, v98.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v99, 15, v98
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v98.l, 4, v98.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v98.h, v88.l
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v97, 0, v97, s12
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s12, 7, v88.h
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v91.h, v95.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v102, 15, v95
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v95.l, 4, v95.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v95.h, v88.l
	.loc	1 986 32 is_stmt 1              ; attention.py:986:32
	v_cndmask_b32_e64 v98, 0, v98, s13
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s13, 7, v91.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v104, -16, v102
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v92.l, v96.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e64 v95, 0, v95, s14
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s14, 7, v91.h
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v91, -16, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v91, v94, v91, s12
	v_cndmask_b32_e64 v94, v102, v104, s14
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_lt_u32_e64 s12, 7, v97
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v102, -16, v97
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s14, 7, v95
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v104, -16, v95
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v97, v97, v102, s12
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s12, s19, 31
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v95, v95, v104, s14
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s12, s12, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s19, s12
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s12, s12, 4
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s12, s12, s52
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s19, s19, 16
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s12, s12, s18
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s49
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v102, s12, v26, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	buffer_load_u16 v102, v102, s[44:47], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v103, 15, v96
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v96.l, 4, v96.l
	.loc	1 988 30 is_stmt 0              ; attention.py:988:30
	v_mov_b16_e32 v96.h, v88.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v91, v91, v102
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v105, -16, v103
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v97, v97, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v96, 0, v96, s15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s15, 7, v92.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v92, -16, v99
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v94, v94, v102
	v_mul_f32_e32 v95, v102, v95
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v91, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v92, v99, v92, s13
	v_cndmask_b32_e64 v99, v103, v105, s15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s13, 7, v98
	v_cmp_lt_u32_e64 s15, 7, v96
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v103, -16, v98
	v_or_b32_e32 v105, -16, v96
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v98, v98, v103, s13
	v_cndmask_b32_e64 v96, v96, v105, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v92, v92, v102 :: v_dual_mul_f32 v99, v102, v99
	v_cvt_f32_i32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v96, v96
	v_mul_f32_e32 v98, v98, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v102, v102, v96
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v96, v91, 16, 1
	v_add3_u32 v96, v91, v96, 0x7fff
	v_bfe_u32 v91, v97, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v96.l, 0x7fff, v96.h, s12
	v_add3_u32 v91, v97, v91, 0x7fff
	v_cmp_o_f32_e64 s12, v97, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v96.h, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v92, 16, 1
	v_cmp_o_f32_e64 s12, v92, v92
	v_add3_u32 v91, v92, v91, 0x7fff
	.loc	1 971 33 is_stmt 1              ; attention.py:971:33
	v_cndmask_b32_e64 v92, 0, v100, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v97.l, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v98, 16, 1
	v_cmp_o_f32_e64 s12, v98, v98
	v_add3_u32 v91, v98, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v97.h, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v94, 16, 1
	v_cmp_o_f32_e64 s12, v94, v94
	v_add3_u32 v91, v94, v91, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v94.l, v92.h
	v_mov_b16_e32 v94.h, v88.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v98.l, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v95, 16, 1
	v_cmp_o_f32_e64 s12, v95, v95
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v91, v95, v91, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v94, v92, v94, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v98.h, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v99, 16, 1
	v_cmp_o_f32_e64 s12, v99, v99
	v_add3_u32 v91, v99, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v99.l, 0x7fff, v91.h, s12
	v_bfe_u32 v91, v102, 16, 1
	v_cmp_o_f32_e64 s12, v102, v102
	v_add3_u32 v91, v102, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v99.h, 0x7fff, v91.h, s12
	ds_store_b16 v84, v96
	ds_store_b16_d16_hi v84, v96 offset:128
	ds_store_b16 v84, v97 offset:512
	ds_store_b16_d16_hi v84, v97 offset:640
	ds_store_b16 v84, v98 offset:1024
	ds_store_b16_d16_hi v84, v98 offset:1152
	ds_store_b16 v84, v99 offset:1536
	ds_store_b16_d16_hi v84, v99 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v96, v85
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v96, v85 offset:128
	ds_load_u16_d16 v97, v85 offset:256
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v97, v85 offset:384
	ds_load_u16_d16 v98, v85 offset:512
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v98, v85 offset:640
	ds_load_u16_d16 v99, v85 offset:768
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v99, v85 offset:896
	ds_load_u16_d16 v100, v85 offset:1024
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v91, 0, v101, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v100, v85 offset:1152
	ds_load_u16_d16 v101, v85 offset:1280
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v93.l, v91.h
	v_cmp_o_f32_e64 s10, v91, v91
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v101, v85 offset:1408
	ds_load_u16_d16 v102, v85 offset:1536
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v93, 1, v93
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v102, v85 offset:1664
	ds_load_u16_d16 v103, v85 offset:1792
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v93, v91, v93, 0x7fff
	v_mov_b16_e32 v93.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v91.h, 0x7fff, v93.h, s10
	v_cmp_o_f32_e64 s10, v92, v92
	v_mov_b16_e32 v92.l, v90.h
	v_mov_b16_e32 v92.h, v88.l
	v_mov_b16_e32 v93.h, v88.l
	v_cndmask_b16 v91.l, 0x7fff, v94.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v92, 1, v92
	v_and_b32_e32 v93, 1, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v92, v90, v92, 0x7fff
	v_add3_u32 v93, v89, v93, 0x7fff
	v_mov_b16_e32 v90.l, v23.h
	v_mov_b16_e32 v90.h, v88.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v103, v85 offset:1920
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v92.h, 0x7fff, v92.h, s8
	v_cmp_o_f32_e64 s8, v89, v89
	v_mov_b16_e32 v89.l, v24.h
	v_mov_b16_e32 v89.h, v88.l
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v92.l, 0x7fff, v93.h, s8
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v90, v23, v90, 0x7fff
	v_add3_u32 v89, v24, v89, 0x7fff
	v_mov_b16_e32 v89.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v24.h, 0x7fff, v89.h, s6
	v_cmp_o_f32_e64 s6, v23, v23
	v_mov_b16_e32 v23.l, v22.h
	v_mov_b16_e32 v23.h, v88.l
	v_mov_b16_e32 v89.h, v88.l
	v_cndmask_b16 v24.l, 0x7fff, v90.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v23, 1, v23
	v_and_b32_e32 v88, 1, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v93, v24, s57, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v23, v22, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v88, v21, v88, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_permlanex16_b32 v21, v91, s57, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v92, s57, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v22.l, 0x7fff, v88.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v88, v21, v91, v39
	v_perm_b32 v89, v21, v91, v70
	v_perm_b32 v90, v23, v92, v39
	v_perm_b32 v91, v23, v92, v70
	v_permlanex16_b32 v95, v22, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v92, v93, v24, v39
	v_perm_b32 v93, v93, v24, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v94, v95, v22, v39
	v_perm_b32 v95, v95, v22, v70
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[96:103], v[88:95], v[1:8]
	v_dual_mov_b32 v89, v18 :: v_dual_mov_b32 v90, v17
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_13
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v17, s19, v40
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s8, s19, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s8, s48
	v_add_nc_u32_e32 v22, s5, v45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v23, s5, v46
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s23, v17
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v21, s5, v27
	v_add_nc_u32_e32 v17, s5, v28
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
	v_add_nc_u32_e32 v21, s19, v57
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 924 25                        ; attention.py:924:25
	v_add_lshl_u32 v22, s8, v57, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v93, 12, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 908 32                        ; attention.py:908:32
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v96, 8, v22
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v95, 4, v22
	.loc	1 908 32                        ; attention.py:908:32
	s_clause 0x3
	buffer_load_u8 v18, v18, s[28:31], 0 offen
	buffer_load_u8 v19, v19, s[28:31], 0 offen
	buffer_load_u8 v20, v20, s[28:31], 0 offen
	buffer_load_u8 v17, v17, s[28:31], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v23, 2, v21
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v21
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v24, 4, v21
	v_add_nc_u32_e32 v94, 14, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v97, 12, v22
	v_add_nc_u32_e32 v98, 16, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v88, 6, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v99, 20, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v91, 8, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v100, 24, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v92, 10, v21
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
	ds_store_b8 v47, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v48, v19
	s_waitcnt vmcnt(1)
	ds_store_b8 v49, v20
	s_waitcnt vmcnt(0)
	ds_store_b8 v50, v17
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v23, 0x80000000, v95, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v24
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v24, 0x80000000, v96, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v88
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v88, 0x80000000, v97, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v91
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v91, 0x80000000, v98, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v92
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v92, 0x80000000, v99, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v93
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v93, 0x80000000, v100, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v94
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[99:100], v51
	ds_load_b64 v[101:102], v52
	ds_load_b64 v[103:104], v53
	ds_load_b64 v[105:106], v54
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v95, v21, s[36:39], 0 offen
	buffer_load_u16 v96, v23, s[36:39], 0 offen
	buffer_load_u16 v97, v24, s[36:39], 0 offen
	buffer_load_u16 v98, v88, s[36:39], 0 offen
	buffer_load_u16 v91, v91, s[36:39], 0 offen
	buffer_load_u16 v92, v92, s[36:39], 0 offen
	buffer_load_u16 v93, v93, s[36:39], 0 offen
	buffer_load_u16 v94, v22, s[36:39], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v88, s19, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e32 vcc_lo, v88, v58
	v_cmp_le_i32_e64 s5, v88, v59
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s6, s23, v88
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s7, s22, vcc_lo
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[29:30], v[9:16] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s5, s22, s5
	s_and_b32 s7, s0, s7
	s_and_b32 s5, s1, s5
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[31:32], v[17:24] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s8, s6, s7
	s_and_b32 s9, s6, s5
	s_and_not1_b32 s5, s59, exec_lo
	s_and_b32 s6, s8, exec_lo
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[103:104], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s10, s9, exec_lo
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_or_b32 s59, s5, s6
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[105:106], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_or_b32 s58, s7, s10
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v88, v61
	v_cmp_ge_i32_e64 s5, v88, v62
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v88, v63
	v_cmp_le_i32_e64 s7, v88, v64
	s_and_not1_b32 s10, s59, exec_lo
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s5, s5, s7
	s_and_b32 s6, s6, s8
	s_and_b32 s5, s5, s9
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s5, s5, exec_lo
	s_or_b32 s59, s10, s6
	s_or_b32 s58, s7, s5
	s_branch .LBB0_9
.LBB0_12:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
	s_branch .LBB0_14
.LBB0_13:                               ; %._crit_edge.loopexit
.Ltmp29:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v17, v17 :: v_dual_mov_b32 v10, v55
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, 0, v20
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, 0xff800000, v9
.Ltmp32:
.LBB0_14:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	s_mov_b32 s0, 0x76543210
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp34:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v12, 0xff800000, v9 :: v_dual_lshlrev_b32 v9, 2, v0
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s18, s18, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v13, v12, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp37:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v15, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v13, v13, v13
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v14, 12, v9
.Ltmp42:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
	v_dual_cndmask_b32 v17, 0, v4 :: v_dual_cndmask_b32 v18, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v11, v15 :: v_dual_max_f32 v12, v12, v13
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v13, 0, v14
.Ltmp45:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s18
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v12, v13
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
.Ltmp48:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v2 :: v_dual_mov_b32 v14, v3
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v21, v8 :: v_dual_add_f32 v2, v2, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v10, v1
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v15, v12
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v11
.Ltmp60:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v15, v15, v15 :: v_dual_add_f32 v2, v2, v14
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_add_f32 v3, v3, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v11, v13 :: v_dual_max_f32 v11, v12, v15
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v13, v11
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v6, vcc_lo
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp76:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v16
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v15, v17 :: v_dual_mov_b32 v16, v18
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v5 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v7
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v18, v16 :: v_dual_mov_b32 v21, v8
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v7, v20 :: v_dual_mov_b32 v18, v16
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v7
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v21
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v18
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v22, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v14, v19 :: v_dual_mov_b32 v17, v15
	v_add_f32_e32 v19, v7, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v18
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v15, v17
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v16, v7
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v20
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v14 :: v_dual_add_f32 v18, v8, v22
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v7 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v21, v18 :: v_dual_mov_b32 v20, v17
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v40, v25
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_16
; %bb.15:
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v22, v11, v11
.Ltmp107:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v11, v10, v12 :: v_dual_mov_b32 v12, 0
.Ltmp109:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v22, v13
.Ltmp111:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[4:5]
.LBB0_16:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp112:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v19
	v_dual_add_f32 v16, v14, v15 :: v_dual_add_f32 v15, v5, v6
	v_dual_add_f32 v13, v1, v3 :: v_dual_lshlrev_b32 v0, 5, v0
.Ltmp113:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xc0, v9
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v2, v4 :: v_dual_and_b32 v1, 28, v41
.Ltmp115:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshl_add_u32 v3, v43, 1, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v8 :: v_dual_add_nc_u32 v2, 0, v5
.Ltmp117:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v18, v21 :: v_dual_add_f32 v11, v17, v20
.Ltmp119:
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
	v_add_nc_u32_e32 v1, s0, v26
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
.Ltmp120:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 111
		.amdhsa_next_free_sgpr 60
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 111
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7368
; TotalNumSgprs: 62
; NumVgprs: 111
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 111
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
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x22 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp3                          ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp3                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x70:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7d:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8a:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     111
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
