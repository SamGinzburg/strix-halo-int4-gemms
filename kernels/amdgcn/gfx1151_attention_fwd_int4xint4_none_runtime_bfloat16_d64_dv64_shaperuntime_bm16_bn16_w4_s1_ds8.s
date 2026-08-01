	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x68
	s_load_b128 s[16:19], s[0:1], 0x4c
	s_load_b32 s44, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v25, 31, v0
	v_lshrrev_b32_e32 v39, 5, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v45, 0, v0
	v_lshlrev_b32_e32 v40, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v44, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v47, 0, v6
	v_add_nc_u32_e32 v48, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[27:28], null, s44, v39, v[25:26]
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
	v_lshl_add_u32 v42, s44, 2, v27
	v_mad_u64_u32 v[28:29], null, s44, 12, v[27:28]
	v_lshl_add_u32 v43, s44, 3, v27
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
	s_abs_i32 s5, s16
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
	s_lshl_b32 s25, s4, 4
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
	s_mul_i32 s14, s3, s18
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x18
	s_cselect_b32 s24, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s17
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s44, v25
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s25, v39
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
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
	s_xor_b32 s2, s16, s17
	s_mul_i32 s28, s15, s6
	s_ashr_i32 s29, s2, 31
	s_sub_i32 s5, s5, s28
	s_add_i32 s28, s15, 1
	s_sub_i32 s30, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s15, s28, s15
	s_cselect_b32 s5, s30, s5
	s_add_i32 s28, s15, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s18, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s28, s28, s15
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s30, s14, s25
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s30, s44
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s18, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v27
	v_add_nc_u32_e32 v2, s14, v42
	v_add_nc_u32_e32 v3, s14, v43
	v_add_nc_u32_e32 v4, s14, v28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s14, s22
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
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s15, s23
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v5, v1, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s13, s13, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s19, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s28, s29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v46, 0, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s25, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v45, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v46, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v47, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v48, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s18, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 24, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v6, 0x80000000, v8, s5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v3, v44, 5, v3
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v6, s[12:15], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s14, s6, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s13, s2, s29
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s14, s14, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v3
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s14, s6, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 16, v3
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s14, 4
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v49, 0, v3
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s15, s6, s34
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, 24, v3
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s15, s15, -1
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s20, s14, -16
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s18, s15
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v50, 0, v4
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s14, s18, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v51, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s21, s14, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v52, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s15, s15, s34
	s_sub_i32 s18, s18, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s12, s13
	.loc	1 798 32                        ; attention.py:798:32
	s_ashr_i32 s15, s15, 31
	s_add_i32 s21, s14, 1
	s_sub_i32 s22, s18, s26
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[29:30], v49
	ds_load_b64 v[31:32], v50
	ds_load_b64 v[33:34], v51
	ds_load_b64 v[35:36], v52
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s18, s26
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s12
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s14, s21, s14
	s_cselect_b32 s18, s22, s18
	s_add_i32 s21, s14, 1
	s_cmp_ge_u32 s18, s26
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s21, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s15
	s_sub_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s14, s33, s2
	s_lshl_b32 s23, s14, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s14, v3
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s2, s2, s23
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s45, s20, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s25
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s25
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s19, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s23, s23, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s15, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s15, s15, 28
	s_add_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s45, s45, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s22, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v53, 0, 1, s7
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s19, s2
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
	s_min_i32 s45, s45, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[20:21], s[0:1], 0x40
	.loc	1 761 22 is_stmt 1              ; attention.py:761:22
	v_and_b32_e32 v26, 63, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v41, 64, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s23, s45
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s22, v26
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s3, s16
	s_mul_f32 s8, s14, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_load_b32 s18, s[0:1], 0x6c
	s_xor_b32 s14, s24, s7
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s7, s14, s7
	s_sub_i32 s14, 0, s12
	s_mul_i32 s15, s7, s16
	s_mul_i32 s14, s14, s8
	s_sub_i32 s15, s3, s15
	s_mul_hi_u32 s14, s8, s14
	s_abs_i32 s16, s15
	s_add_i32 s8, s8, s14
	s_ashr_i32 s13, s13, 31
	s_mul_hi_u32 s8, s16, s8
	s_ashr_i32 s14, s15, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s15, s8, s12
	s_xor_b32 s13, s14, s13
	s_sub_i32 s14, s16, s15
	s_add_i32 s15, s8, 1
	s_sub_i32 s16, s14, s12
	s_cmp_ge_u32 s14, s12
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b128 s[28:31], s[0:1], 0x20
	s_cselect_b32 s8, s15, s8
	s_cselect_b32 s14, s16, s14
	s_add_i32 s15, s8, 1
	s_cmp_ge_u32 s14, s12
	.loc	1 906 33                        ; attention.py:906:33
	s_mul_i32 s7, s7, s17
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s8, s15, s8
	v_mov_b16_e32 v4.l, 0
	s_xor_b32 s0, s8, s13
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v2.l
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s13
	v_and_b32_e32 v2, 16, v0
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s49, s0, s7
	.loc	1 929 25                        ; attention.py:929:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s18, 0x3fb8aa3b
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v56, s11, v1
	v_mov_b32_e32 v1, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v57, s0, v4
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v54, 6, v41
	v_mov_b32_e32 v2, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v1, 0x1054, v1 :: v_dual_mov_b32 v62, v57
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[37:38], null, s22, v54, v[26:27]
	v_dual_cndmask_b32 v2, 0x3276, v2 :: v_dual_lshlrev_b32 v5, 1, v44
	v_lshl_add_u32 v4, v41, 2, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v55, v0, 4, 1
	v_subrev_nc_u32_e32 v58, s9, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s46, s6, 3
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v61, v57 :: v_dual_and_b32 v2, 0x760076, v2
	.loc	1 906 32                        ; attention.py:906:32
	s_mul_i32 s47, s49, s19
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s48, s49, s46
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s49, s49, s6
	s_and_b32 s25, s25, 0xffff
	v_lshl_or_b32 v2, v2, 4, v2
	s_and_b32 s29, s29, 0xffff
	s_lshl_b32 s50, s22, 1
	s_lshl_b32 s51, s22, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v60, 0x7060706, v2
	v_lshlrev_b32_e32 v2, 1, v26
	v_lshl_or_b32 v1, v1, 8, v1
	v_dual_mov_b32 v10, v9 :: v_dual_add_nc_u32 v59, s10, v56
	v_dual_mov_b32 v12, v9 :: v_dual_mov_b32 v67, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v1, 0x540054, v1
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v64, v4, v2
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v15, v9
	v_lshl_or_b32 v1, v1, 4, v1
	.loc	1 932 25                        ; attention.py:932:25
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v16, v9
	s_mul_i32 s52, s22, 6
	s_and_b32 s37, s27, 0xffff
	v_and_b32_e32 v38, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v65, v3, v5
	s_mov_b32 s36, s26
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v66, v1
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_mov_b32 s53, 0x76543210
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s0, s23, 31
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s0, s23, s0
	s_ashr_i32 s1, s23, 31
	s_ashr_i32 s0, s0, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s1, s1, 28
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v19, v62, v19 :: v_dual_add_nc_u32 v78, s0, v54
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s0, s0, s48
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s1, s23, s1
	v_mad_u64_u32 v[76:77], null, s0, s22, v[37:38]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s46, v78
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s0, s1, 4
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s0, s0, s49
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s0, s0, s22
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v77, 0x80000000, v76 :: v_dual_mul_f32 v18, v61, v18
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v81, s0, v26, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v22, v22
	v_add_nc_u32_e32 v79, s50, v76
	v_dual_mul_f32 v17, v57, v17 :: v_dual_add_nc_u32 v80, s51, v76
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u8 v77, v77, s[36:39], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v23, v23
	v_add_nc_u32_e32 v76, s52, v76
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v21
	v_dual_mul_f32 v22, v61, v22 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v23, v62, v23 :: v_dual_cndmask_b32 v76, 0x80000000, v76
	v_mul_f32_e32 v21, v57, v21
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v81, v81, s[40:43], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x2
	buffer_load_u8 v79, v79, s[36:39], 0 offen
	buffer_load_u8 v80, v80, s[36:39], 0 offen
	buffer_load_u8 v76, v76, s[36:39], 0 offen
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v82.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v68.h, v74.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v69.h, v72.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v73.h, v69.l
	v_mov_b16_e32 v74.h, v68.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v68.l, v82.l
	v_mov_b16_e32 v69.l, v82.l
	v_mov_b16_e32 v82.h, v75.l
	v_mov_b16_e32 v70.h, v70.l
	v_mov_b16_e32 v71.h, v73.l
	v_mov_b16_e32 v72.h, v71.l
	v_mov_b16_e32 v70.l, v82.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v20, v63, v20
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v71.l, v82.l
	v_mov_b16_e32 v72.l, v82.l
	v_mov_b16_e32 v73.l, v82.l
	v_mov_b16_e32 v74.l, v82.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v24, v63, v24
	v_dual_mul_f32 v18, v18, v69 :: v_dual_mul_f32 v19, v19, v68
	v_mul_f32_e32 v17, v17, v70
	v_dual_mul_f32 v20, v20, v82 :: v_dual_mul_f32 v23, v23, v72
	v_mul_f32_e32 v21, v21, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v19, 0xff800000, v19, s55
	.loc	1 974 36                        ; attention.py:974:36
	v_lshlrev_b32_e32 v78, 1, v78
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v22, v22, v73
	v_mul_f32_e32 v24, v24, v71
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v20, 0xff800000, v20, s58
	v_cndmask_b32_e64 v18, 0xff800000, v18, s54
	v_cndmask_b32_e64 v68, 0xff800000, v17, s56
	v_cndmask_b32_e64 v21, 0xff800000, v21, s61
	v_cndmask_b32_e64 v24, 0xff800000, v24, s59
	v_cndmask_b32_e64 v23, 0xff800000, v23, s60
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v89, 5, v78
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v22, 0xff800000, v22, s57
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v17, v68, v18, v19
.Ltmp2:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v67
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v72, v23, v24
.Ltmp4:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v75.h, v82.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v71, v20, v21, v22
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v83.h, v82.l
	v_mov_b16_e32 v84.h, v82.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v69.h, v82.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v74.h, v82.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v17, v17, v71, v72
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v72.h, v82.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v70.h, v82.l
	v_mov_b16_e32 v73.h, v82.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v82.h, v82.l
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v85, v17, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v71.h, v82.l
	v_mov_b16_e32 v86.h, v82.l
	v_mov_b16_e32 v87.h, v82.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v17, v67, v17, v85
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s23, s45
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v19, v19, v17
	v_sub_f32_e32 v20, v20, v17
	v_sub_f32_e32 v68, v68, v17
	v_sub_f32_e32 v18, v18, v17
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v88, 1, v78
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v18, v18
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v85, 9, v78
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v23, v23, v17 :: v_dual_add_nc_u32 v78, 13, v78
	v_sub_f32_e32 v21, v21, v17
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s11, s19, v88
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v19, 0, v19, s55
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v20, 0, v20, s58
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v24, v24, v17
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v18, 0, v18, s54
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v21, v21
.Ltmp11:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v19, v20
.Ltmp12:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v90, v67, v17
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v67, 0, v68, s56
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v24, v24
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v83.l, v20.h
	v_mov_b16_e32 v74.l, v18.h
	v_mov_b16_e32 v71.l, v19.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v68, v67, v18
.Ltmp14:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v23, 0, v23, s60
	v_cndmask_b32_e64 v21, 0, v21, s61
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v82.l, v67.h
	v_cmp_o_f32_e64 s1, v20, v20
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v68, v91
.Ltmp16:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v90, v90
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v24, 0, v24, s59
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v84.l, v21.h
	v_and_b32_e32 v68, 1, v83
	v_cmp_o_f32_e64 s8, v21, v21
	v_and_b32_e32 v71, 1, v71
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v93, v23, v24
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v68, v20, v68, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v90, 0, v90, vcc_lo
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v22, v22, v17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v71, v19, v71, 0x7fff
	v_mov_b16_e32 v86.l, v24.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v90
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v22
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v90
	v_mul_f32_e32 v2, v2, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v87.l, v23.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v6, v6, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v24, v24
	v_cmp_o_f32_e64 s10, v23, v23
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v87, 1, v87
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v90
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v22, 0, v22, s57
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v5, v5, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v72.l, v22.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v90
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v92, v21, v22
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v83, 1, v72
	v_and_b32_e32 v72, 1, v84
	v_add3_u32 v72, v21, v72, 0x7fff
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v75.l, 4, v77.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v75, 0, v75, s11
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s11, s19, v89
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v21, 16, v81
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v69.l, 4, v79.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v74, 1, v74
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v70.l, 4, v80.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v82, 1, v82
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v81, 15, v80
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v69, 0, v69, s11
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s11, s19, v85
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v84, v92, v93
.Ltmp22:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v74, v18, v74, 0x7fff
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.l, v77.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v20, 15, v77
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b16 v73.l, 4, v76.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v70, 0, v70, s11
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s11, s19, v78
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v67, v67, v82, 0x7fff
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.h, v79.l, 15
	v_and_b16 v19.h, v76.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v77, 15, v79
	v_and_b32_e32 v82, 15, v76
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v76, -16, v20
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v73, 0, v73, s11
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v18.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v19.l, v80.l, 15
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v78, -16, v77
	v_or_b32_e32 v79, -16, v81
	v_or_b32_e32 v80, -16, v82
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v20, v20, v76, s11
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v18.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v76, -16, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v18, v77, v78, s11
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v19.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v78, -16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v20, v20, v21
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v77, v81, v79, s11
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s11, 7, v19.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v79, -16, v70
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v19, v82, v80, s11
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s11, 7, v75
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v80, -16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v75, v75, v76, s11
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s11, 7, v69
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v76, v77
	v_mul_f32_e32 v77, v18, v21
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v18, v20, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v69, v69, v78, s11
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s11, 7, v70
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_dual_mul_f32 v76, v76, v21 :: v_dual_mul_f32 v19, v21, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v75, v21
	v_cvt_f32_i32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v70, v70, v79, s11
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s11, 7, v73
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_add3_u32 v18, v20, v18, 0x7fff
	v_bfe_u32 v78, v76, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v69, v69, v21
	v_cvt_f32_i32_e32 v70, v70
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v73, v73, v80, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s11, v20, v20
	v_bfe_u32 v20, v75, 16, 1
	v_bfe_u32 v79, v19, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v70, v21, v70
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v86, 1, v86
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v75, v75
	v_add3_u32 v20, v75, v20, 0x7fff
	v_bfe_u32 v75, v69, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v21, v21, v73
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s13, v77, v77
	v_cmp_o_f32_e64 s14, v76, v76
	v_add3_u32 v76, v76, v78, 0x7fff
	v_add3_u32 v78, v19, v79, 0x7fff
	v_add3_u32 v73, v77, v73, 0x7fff
	v_bfe_u32 v77, v70, 16, 1
	v_bfe_u32 v79, v21, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s11
	v_cmp_o_f32_e64 s11, v69, v69
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s12
	v_add3_u32 v20, v69, v75, 0x7fff
	v_cmp_o_f32_e64 s15, v19, v19
	v_cmp_o_f32_e64 s16, v70, v70
	v_cmp_o_f32_e64 s17, v21, v21
	v_add3_u32 v69, v70, v77, 0x7fff
	v_add3_u32 v21, v21, v79, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v73.h, s13
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s11
	v_cndmask_b16 v19.h, 0x7fff, v76.h, s14
	v_cndmask_b16 v20.l, 0x7fff, v78.h, s15
	v_cndmask_b16 v21.l, 0x7fff, v69.h, s16
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s17
	ds_store_b16 v64, v18
	ds_store_b16_d16_hi v64, v18 offset:128
	ds_store_b16 v64, v19 offset:512
	ds_store_b16_d16_hi v64, v20 offset:640
	ds_store_b16_d16_hi v64, v19 offset:1024
	ds_store_b16 v64, v21 offset:1152
	ds_store_b16 v64, v20 offset:1536
	ds_store_b16_d16_hi v64, v21 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v67, v65
	ds_load_u16_d16 v68, v65 offset:256
	ds_load_u16_d16 v69, v65 offset:512
	ds_load_u16_d16 v70, v65 offset:768
	ds_load_u16_d16 v71, v65 offset:1024
	ds_load_u16_d16 v72, v65 offset:1280
	ds_load_u16_d16 v73, v65 offset:1536
	ds_load_u16_d16 v74, v65 offset:1792
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_add3_u32 v18, v22, v83, 0x7fff
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v19, v91, v84
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v20, v23, v87, 0x7fff
	v_add3_u32 v21, v24, v86, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v22.h, 0x7fff, v74.h, vcc_lo
	v_cndmask_b16 v22.l, 0x7fff, v67.h, s0
	v_cndmask_b16 v23.h, 0x7fff, v68.h, s1
	v_cndmask_b16 v23.l, 0x7fff, v71.h, s6
	v_cndmask_b16 v24.l, 0x7fff, v72.h, s8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v67, v65 offset:128
	ds_load_u16_d16_hi v68, v65 offset:384
	ds_load_u16_d16_hi v69, v65 offset:640
	ds_load_u16_d16_hi v70, v65 offset:896
	ds_load_u16_d16_hi v71, v65 offset:1152
	ds_load_u16_d16_hi v72, v65 offset:1408
	ds_load_u16_d16_hi v73, v65 offset:1664
	ds_load_u16_d16_hi v74, v65 offset:1920
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v24.h, 0x7fff, v18.h, s7
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v18, v19, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s9
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s10
	v_permlanex16_b32 v20, v22, s53, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v24, s53, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v19, v18
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v19, v23, s53, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v21, s53, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v20, v22, v38
	v_perm_b32 v76, v20, v22, v60
	v_perm_b32 v79, v80, v24, v38
	v_perm_b32 v77, v19, v23, v38
	v_perm_b32 v78, v19, v23, v60
	v_perm_b32 v80, v80, v24, v60
	v_perm_b32 v81, v82, v21, v38
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v66, v90
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v82, v82, v21, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v66, v18
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[67:74], v[75:82], v[1:8]
	v_mov_b32_e32 v67, v17
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v17, s23, v39
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s7, s23, s47
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v76, s23, v55
	.loc	1 907 32                        ; attention.py:907:32
	s_mul_i32 s0, s7, s44
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v22, s0, v42
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v23, s0, v43
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s19, v17
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v21, s0, v27
	v_add_nc_u32_e32 v17, s0, v28
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s0, s19, v18
	v_cmp_gt_i32_e64 s1, s19, v19
	.loc	1 910 30 is_stmt 0              ; attention.py:910:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s6, s19, v20
	.loc	1 908 32 is_stmt 1              ; attention.py:908:32
	v_dual_cndmask_b32 v18, 0x80000000, v21 :: v_dual_add_nc_u32 v77, 2, v76
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s0
	.loc	1 924 25                        ; attention.py:924:25
	v_add_lshl_u32 v21, s7, v55, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v78, 4, v76
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v79, 6, v76
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v81, 10, v76
	v_add_nc_u32_e32 v82, 12, v76
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e32 vcc_lo, s19, v76
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v80, 8, v76
	v_add_nc_u32_e32 v83, 14, v76
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v22, 4, v21
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s0, s19, v77
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v23, 8, v21
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s1, s19, v78
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v24, 12, v21
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s6, s19, v79
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v68, 16, v21
	v_add_nc_u32_e32 v69, 20, v21
	v_add_nc_u32_e32 v70, 24, v21
	v_add_nc_u32_e32 v71, 28, v21
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s7, s19, v80
	v_cmp_gt_i32_e64 s8, s19, v81
	v_cmp_gt_i32_e64 s9, s19, v82
	v_cmp_gt_i32_e64 s10, s19, v83
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s6
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_cndmask_b32_e64 v69, 0x80000000, v69, s8
	v_cndmask_b32_e64 v73, 0x80000000, v70, s9
	v_cndmask_b32_e64 v84, 0x80000000, v71, s10
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s56, s5, vcc_lo
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v53
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s54, s5, s0
	s_and_b32 s55, s5, s1
	s_and_b32 s58, s5, s6
	s_and_b32 s61, s5, s7
	s_and_b32 s57, s5, s8
	s_and_b32 s60, s5, s9
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s59, s5, s10
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(3)
	ds_store_b8 v45, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v46, v19
	s_waitcnt vmcnt(1)
	ds_store_b8 v47, v20
	s_waitcnt vmcnt(0)
	ds_store_b8 v48, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x7
	buffer_load_u16 v70, v21, s[28:31], 0 offen
	buffer_load_u16 v72, v22, s[28:31], 0 offen
	buffer_load_u16 v74, v23, s[28:31], 0 offen
	buffer_load_u16 v75, v24, s[28:31], 0 offen
	buffer_load_u16 v68, v68, s[28:31], 0 offen
	buffer_load_u16 v69, v69, s[28:31], 0 offen
	buffer_load_u16 v71, v73, s[28:31], 0 offen
	buffer_load_u16 v73, v84, s[28:31], 0 offen
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[84:85], v49
	ds_load_b64 v[86:87], v50
	ds_load_b64 v[88:89], v51
	ds_load_b64 v[90:91], v52
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[31:32], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[35:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v76, v56
	v_cmp_le_i32_e64 s0, v77, v56
	v_cmp_le_i32_e64 s1, v78, v56
	v_cmp_le_i32_e64 s6, v79, v56
	v_cmp_le_i32_e64 s7, v80, v56
	v_cmp_le_i32_e64 s8, v81, v56
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s11, vcc_lo, s56
	s_and_b32 s0, s0, s54
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s9, v82, v56
	v_cmp_le_i32_e64 s10, v83, v56
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s1, s1, s55
	s_and_b32 s6, s6, s58
	s_and_not1_b32 s12, s56, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s7, s7, s61
	s_and_b32 s8, s8, s57
	s_or_b32 s56, s12, s11
	s_or_b32 s54, s13, s0
	s_and_not1_b32 s0, s55, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s11, s58, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s60
	s_and_b32 s10, s10, s59
	s_or_b32 s55, s0, s1
	s_or_b32 s58, s11, s6
	s_and_not1_b32 s0, s61, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s61, s0, s1
	s_or_b32 s57, s6, s7
	s_and_not1_b32 s0, s60, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s59, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s60, s0, s1
	s_or_b32 s59, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v76, v58
	v_cmp_ge_i32_e64 s0, v77, v58
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s11, v76, v59
	v_cmp_le_i32_e64 s12, v77, v59
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v78, v58
	v_cmp_ge_i32_e64 s6, v79, v58
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v78, v59
	v_cmp_le_i32_e64 s14, v79, v59
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v80, v58
	v_cmp_ge_i32_e64 s8, v81, v58
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s15, v80, v59
	v_cmp_le_i32_e64 s16, v81, v59
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s0, s0, s12
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v82, v58
	v_cmp_ge_i32_e64 s10, v83, v58
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v82, v59
	v_cmp_le_i32_e64 s18, v83, v59
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s6, s6, s14
	s_and_b32 s1, s1, s13
	s_and_b32 s11, s11, s56
	s_and_b32 s0, s0, s54
	s_and_b32 s1, s1, s55
	s_and_b32 s6, s6, s58
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s56, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s10, s10, s18
	s_and_b32 s9, s9, s17
	s_and_b32 s7, s7, s61
	s_and_b32 s8, s8, s57
	s_or_b32 s56, s12, s11
	s_or_b32 s54, s13, s0
	s_and_not1_b32 s0, s55, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s11, s58, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s60
	s_and_b32 s10, s10, s59
	s_or_b32 s55, s0, s1
	s_or_b32 s58, s11, s6
	s_and_not1_b32 s0, s61, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s57, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s61, s0, s1
	s_or_b32 s57, s6, s7
	s_and_not1_b32 s0, s60, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s59, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s60, s0, s1
	s_or_b32 s59, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v18, v8
.LBB0_12:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s22, s22, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v17 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v18
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp31:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s22
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp68:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp72:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_mov_b32 v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp86:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v39, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_14
; %bb.13:
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp90:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp92:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp94:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_14:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
.Ltmp96:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	v_and_b32_e32 v4, 0xe0, v40
	v_and_b32_e32 v1, 28, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v3
	s_waitcnt lgkmcnt(0)
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v3, 0, v4
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v26
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s21, s21, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp97:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 94
		.amdhsa_next_free_sgpr 62
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 94
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6324
; TotalNumSgprs: 64
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 94
; Occupancy: 16
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
.Ldebug_ranges1:
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
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
