	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v45, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_lshlrev_b32_e32 v41, 1, v0
	v_add_nc_u32_e32 v49, 0, v5
	v_add_nc_u32_e32 v48, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v51, 0, v7
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
	v_lshl_add_u32 v46, s48, 2, v27
	v_mad_u64_u32 v[28:29], null, s48, 12, v[27:28]
	v_lshl_add_u32 v47, s48, 3, v27
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
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s26, v45
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
	v_add_nc_u32_e32 v2, s14, v46
	v_add_nc_u32_e32 v3, s14, v47
	v_add_nc_u32_e32 v4, s14, v28
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s30, v45, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s15, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v50, 0, v6
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s13, s13, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s23, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s28, s29
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v48, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v50, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v51, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v5, s[12:15], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s13, s5, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 24, v41
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s13, s13, 28
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s2, s29
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s13, s5, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v1, v45, 5, v1
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
	v_add_nc_u32_e32 v52, 0, v1
	v_xor_b32_e32 v1, 24, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s13, s15, s27
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v53, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s17, s13, s25
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v54, 0, v4
	v_add_nc_u32_e32 v55, 0, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s14, s14, s34
	s_sub_i32 s15, s15, s17
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s25
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[29:30], v52
	ds_load_b64 v[31:32], v53
	ds_load_b64 v[33:34], v54
	ds_load_b64 v[35:36], v55
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s15, s25
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v1, s2
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
	v_readfirstlane_b32 s13, v1
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
	v_and_b32_e32 v1, 0x60, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s49
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s18, v26
	v_lshrrev_b32_e32 v56, 3, v1
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v9, 3, v1
	s_mov_b32 s8, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_6:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr9
.LBB0_7:                                ; %Flow
	s_load_b64 s[16:17], s[0:1], 0x40
	v_and_b32_e32 v43, 0x70, v0
	v_and_b32_e32 v42, 64, v0
	v_lshlrev_b32_e32 v44, 5, v0
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
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s26, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s6, s6, s12
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v7.h, v2.l
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s6, s6, s12
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s50, s5, 3
	.loc	1 906 33                        ; attention.py:906:33
	s_add_i32 s52, s6, s20
	s_load_b32 s20, s[0:1], 0x7c
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 8, v4
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s39, v3
	v_mov_b16_e32 v7.l, 0
	.loc	1 906 32                        ; attention.py:906:32
	s_mul_i32 s21, s52, s23
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s51, s52, s50
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s52, s52, s5
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s5, s36, 0x3fb8aa3b
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x8
	s_load_b128 s[12:15], s[0:1], 0x20
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v5, 16, v0
	.loc	1 928 41                        ; attention.py:928:41
	v_dual_mul_f32 v61, s5, v7 :: v_dual_add_nc_u32 v60, s11, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s22, v6
	v_lshrrev_b32_e32 v6, 4, v1
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_and_b32 v9, 14, v0
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v77, v61 :: v_dual_lshlrev_b32 v10, 2, v5
	v_lshrrev_b32_e32 v11, 1, v0
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[37:38], null, s20, v45, v[2:3]
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v73, v61 :: v_dual_and_b32 v2, 0xbc, v41
	v_dual_mov_b32 v76, v61 :: v_dual_and_b32 v3, 1, v0
	v_dual_mov_b32 v79, v61 :: v_dual_and_b32 v8, 0x84, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v2, v2, v6
	v_lshlrev_b32_e32 v7, 6, v3
	v_dual_mov_b32 v75, v61 :: v_dual_and_b32 v6, 0x1a0, v44
	v_dual_mov_b32 v74, v61 :: v_dual_add_nc_u32 v59, s11, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s22, v4
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v4, 0, v1
	v_or_b32_e32 v67, v2, v7
	v_or3_b32 v68, v9, v6, v10
	v_and_b32_e32 v2, 60, v41
	v_and_or_b32 v6, v11, 3, v8
	v_mul_u32_u24_e32 v8, 0x42, v9
	v_mov_b32_e32 v9, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v5
	v_dual_mov_b32 v5, 0x7632 :: v_dual_add_nc_u32 v64, s10, v59
	v_or3_b32 v69, v40, v7, v2
	v_lshl_or_b32 v1, v1, 2, v2
	v_dual_cndmask_b32 v2, 0x1054, v9 :: v_dual_mov_b32 v9, 0
	v_lshlrev_b32_e32 v3, 5, v3
	v_cndmask_b32_e32 v5, 0x3276, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v56
	v_lshl_or_b32 v2, v2, 8, v2
	v_mov_b32_e32 v12, v9
	v_or3_b32 v70, v6, v3, v10
	v_add3_u32 v71, v8, v3, v10
	v_lshl_or_b32 v5, v5, 8, v5
	v_mov_b32_e32 v10, v9
	v_or_b32_e32 v7, v1, v7
	v_dual_mov_b32 v14, v9 :: v_dual_and_b32 v1, 0x540054, v2
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v57, 6, v42
	v_and_b32_e32 v2, 0x760076, v5
	v_xor_b32_e32 v17, 0x108, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v18, 4, v68
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[38:39], null, s18, v57, v[26:27]
	v_xor_b32_e32 v3, 8, v68
	v_dual_mov_b32 v16, v9 :: v_dual_and_b32 v39, 0x5040504, v1
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v2, v2, 4, v2
	v_xor_b32_e32 v6, 12, v68
	v_xor_b32_e32 v8, 0x84, v69
	v_xor_b32_e32 v19, 4, v70
	v_xor_b32_e32 v20, 4, v71
	v_xor_b32_e32 v21, 8, v71
	v_xor_b32_e32 v22, 12, v71
	v_xor_b32_e32 v23, 16, v71
	v_xor_b32_e32 v24, 20, v71
	v_xor_b32_e32 v91, 24, v71
	v_xor_b32_e32 v92, 28, v71
	v_dual_mov_b32 v11, v9 :: v_dual_and_b32 v72, 0x7060706, v2
	v_lshlrev_b32_e32 v2, 1, v26
	v_lshl_add_u32 v5, v42, 2, 0
	v_lshlrev_b32_e32 v95, 1, v45
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s26, s26, s39
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s8, s37
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v58, v0, 4, 1
	v_subrev_nc_u32_e32 v62, s9, v59
	v_subrev_nc_u32_e32 v63, s9, v60
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mov_b32 v78, v61 :: v_dual_add_nc_u32 v65, s10, v60
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v66, s39, 3, v37
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_add_nc_u32 v80, 0, v17
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v82, 0, v3
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v84, 0, v8
	v_add_nc_u32_e32 v81, 0, v18
	v_add_nc_u32_e32 v83, 0, v6
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v85, 0, v19
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v86, 0, v20
	v_dual_mov_b32 v96, v1 :: v_dual_add_nc_u32 v87, 0, v21
	v_add_nc_u32_e32 v88, 0, v22
	v_add_nc_u32_e32 v89, 0, v23
	v_add_nc_u32_e32 v90, 0, v24
	v_add_nc_u32_e32 v91, 0, v91
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v7
	v_add_nc_u32_e32 v94, v5, v2
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v95, v4, v95
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
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
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s19, s20
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s5, s53, s5
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v100, s5, v37, 1
	v_add_lshl_u32 v109, s5, v66, 1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s5, s19, 31
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s5, s19, s5
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v100, 0x80000000, v100, s59
	v_cndmask_b32_e64 v109, 0x80000000, v109, s58
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s5, s5, 1
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 974 36                        ; attention.py:974:36
	v_add_nc_u32_e32 v119, s5, v57
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_u16 v110, v100, s[24:27], 0 offen
	buffer_load_u16 v109, v109, s[24:27], 0 offen
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s5, s5, s51
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v100.h, v108.l
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v22, v22
	v_dual_mul_f32 v21, v76, v21 :: v_dual_add_nc_u32 v108, 0, v67
	v_dual_mul_f32 v116, v74, v19 :: v_dual_mul_f32 v117, v73, v18
	v_mul_f32_e32 v118, v61, v17
	v_mad_u64_u32 v[17:18], null, s5, s18, v[38:39]
	v_dual_mul_f32 v22, v77, v22 :: v_dual_add_nc_u32 v111, 0, v68
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s6, s19, 31
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v100.l, 0
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s6, s6, 28
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s6, s19, s6
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s50, v119
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s6, s6, 4
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v19.l, v100.l
	v_mov_b16_e32 v18.l, v100.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s5, s6, s52
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v103.h, v105.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s5, s5, s18
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v105.h, v103.l
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v115, v75, v20 :: v_dual_add_nc_u32 v114, 0, v71
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v105.l, v100.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v120, s5, v26, 1
	v_add_nc_u32_e32 v121, s55, v17
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v112, 0, v69
	v_add_nc_u32_e32 v113, 0, v70
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v103.l, v100.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v23, v78, v23 :: v_dual_mul_f32 v24, v79, v24
	.loc	1 923 37                        ; attention.py:923:37
	v_mov_b16_e32 v101.h, v107.l
	v_mov_b16_e32 v102.h, v106.l
	v_mov_b16_e32 v106.h, v102.l
	v_mov_b16_e32 v107.h, v101.l
	v_mov_b16_e32 v106.l, v100.l
	v_mov_b16_e32 v107.l, v100.l
	v_mov_b16_e32 v104.h, v104.l
	v_mov_b16_e32 v104.l, v100.l
	v_mov_b16_e32 v101.l, v100.l
	v_mov_b16_e32 v102.l, v100.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v99
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s19, s19, 16
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v19.h, 0xff80, v110.l, s59
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v18.h, 0xff80, v109.l, s58
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b16_d16_hi v108, v19
	ds_store_b16_d16_hi v80, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v108, v83
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v123, v83 offset:16
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_u16 v124, v82
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v125, v82 offset:16
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_u16 v126, v111
	ds_load_u16 v127, v81
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v128, v81 offset:16
	ds_load_u16 v111, v111 offset:16
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v19
	v_cmp_neq_f32_e64 s6, 0xff800000, v18
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_lshlrev_b32_e32 v123, 16, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v123, 0x3fb8aa3b, v123 :: v_dual_add_nc_u32 v20, s54, v17
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v111, 16, v111
	v_add_nc_u32_e32 v110, s56, v17
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v109, 0x80000000, v17 :: v_dual_cndmask_b32 v122, 0x80000000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v123, v24, v100
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v111, 0x3fb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v110, 0x80000000, v110
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 vcc_lo, s59, s5
	s_and_b32 s5, s58, s6
	v_cndmask_b32_e64 v17, 0, 1, vcc_lo
	v_cndmask_b32_e64 v20, 0, 1, s5
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v111, v21, v103 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v100.h, v100.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v18.l, v20.l
	ds_store_b8 v112, v17
	ds_store_b8 v84, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v17, v113
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v17, v113 offset:8
	ds_load_u8_d16 v18, v113 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v18, v113 offset:24
	ds_load_u8_d16 v19, v85
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v19, v85 offset:8
	ds_load_u8_d16 v20, v85 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v20, v85 offset:24
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v108, 0x3fb8aa3b, v108 :: v_dual_lshlrev_b32 v113, 16, v127
	v_dual_mul_f32 v125, 0x3fb8aa3b, v125 :: v_dual_lshlrev_b32 v112, 16, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v113, 0x3fb8aa3b, v113 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v126, 16, v128
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v112
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v108, v115, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v124, 0x3fb8aa3b, v124 :: v_dual_fmac_f32 v113, v117, v106
	v_mul_f32_e32 v126, 0x3fb8aa3b, v126
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v17.l, 1, v17.l
	v_and_b16 v17.h, 1, v17.h
	v_and_b16 v18.l, 1, v18.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v112, v118, v107 :: v_dual_fmac_f32 v125, v23, v101
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v19.l, 1, v19.l
	v_and_b16 v19.h, 1, v19.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v20.h, 1, v20.h
	v_and_b16 v18.h, 1, v18.h
	v_and_b16 v20.l, 1, v20.l
	v_cmp_eq_u16_e64 s11, 1, v17.l
	v_cmp_eq_u16_e64 s9, 1, v19.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v124, v116, v105
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s12, 1, v17.h
	v_cmp_eq_u16_e64 s8, 1, v19.h
	v_cmp_eq_u16_e64 s10, 1, v18.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v126, v22, v102
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s5, 1, v20.h
	v_cmp_eq_u16_e64 s6, 1, v18.h
	v_cmp_eq_u16_e64 s7, 1, v20.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v24, 0xff800000, v112, s11
	v_cndmask_b32_e64 v19, 0xff800000, v113, s9
	v_cndmask_b32_e64 v17, 0xff800000, v124, s12
	v_cndmask_b32_e64 v23, 0xff800000, v108, s8
	v_cndmask_b32_e64 v18, 0xff800000, v111, s10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v21, 0xff800000, v123, s5
	v_cndmask_b32_e64 v22, 0xff800000, v125, s6
	v_cndmask_b32_e64 v20, 0xff800000, v126, s7
	ds_store_b32 v114, v24
	ds_store_b32 v86, v19
	ds_store_b32 v87, v17
	ds_store_b32 v88, v23
	ds_store_b32 v89, v18
	ds_store_b32 v90, v20
	ds_store_b32 v91, v22
	ds_store_b32 v92, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v101, v109, s[40:43], 0 offen
	buffer_load_u8 v102, v122, s[40:43], 0 offen
	buffer_load_u8 v103, v121, s[40:43], 0 offen
	buffer_load_u8 v104, v110, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v105, 0x80000000, v120, s2
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v106, v93
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v116, v24, v19, v17
	v_max3_f32 v117, v23, v18, v20
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.h, v100.l
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v105, v105, s[44:47], 0 offen
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v114.h, v100.l
	v_mov_b16_e32 v115.h, v100.l
	v_mov_b16_e32 v120.h, v100.l
	v_mov_b16_e32 v121.h, v100.l
	v_mov_b16_e32 v122.h, v100.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v109.h, v100.l
	v_mov_b16_e32 v110.h, v100.l
	v_mov_b16_e32 v112.h, v100.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s49
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v107, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v107, v107 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v108, v106, v106 :: v_dual_max_f32 v107, v107, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v98, v98, v98 :: v_dual_max_f32 v107, v108, v107
	v_dual_max_f32 v108, v97, v97 :: v_dual_mov_b32 v111, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v111, v111 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v118, v22, v21 :: v_dual_max_f32 v111, v111, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v116, v116, v117, v118
.Ltmp10:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v118.h, v100.l
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v107, v107, v111
.Ltmp12:
	.loc	1 974 36                        ; attention.py:974:36
	v_lshlrev_b32_e32 v117, 1, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v119, v116, s57, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v111.h, v100.l
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v124, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v123, 1, v117
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v116, v99, v116, v119
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v125, 5, v117
	v_add_nc_u32_e32 v126, 9, v117
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v124, v124 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v117, 13, v117
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v119, v99, v116
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v24, v24, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v124, v124, v124
.Ltmp20:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v119, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v24, v24
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v99, 0, v119, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v107, v107, v124
.Ltmp22:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v18, v18, v116
	v_sub_f32_e32 v20, v20, v116
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v24, 0, v24, s11
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v4, v4, v99 :: v_dual_sub_f32 v17, v17, v116
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v124, v107
.Ltmp24:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v99
	v_mul_f32_e32 v8, v8, v99
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v22, v22, v116 :: v_dual_mul_f32 v5, v5, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v17, v17
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v21, v21, v116 :: v_dual_mul_f32 v6, v6, v99
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v99 :: v_dual_max_f32 v124, v124, v124
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v18, v18
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v99
	v_mul_f32_e32 v3, v3, v99
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v20, v20
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v119, v107, v124
.Ltmp28:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v19, v19, v116
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v17, 0, v17, s12
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v114.l, v24.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v22, v22
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v98, v98, v119 :: v_dual_sub_f32 v23, v23, v116
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v19, v19
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v120.l, v17.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v106, v106, v98
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v23, v23
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v18, 0, v18, s10
	v_cndmask_b32_e64 v20, 0, v20, s7
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v106, v106
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v19, 0, v19, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v121.l, v20.h
	v_mov_b16_e32 v122.l, v18.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s5
	v_cndmask_b32_e64 v23, 0, v23, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.l, v19.h
	v_mov_b16_e32 v118.l, v22.h
	v_cmp_o_f32_e64 s5, v19, v19
	v_mov_b16_e32 v111.l, v21.h
	v_mov_b16_e32 v115.l, v23.h
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e32 v99, 0, v106, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v107, 1, v113
	v_and_b32_e32 v113, 1, v114
	v_and_b32_e32 v111, 1, v111
	v_and_b32_e32 v114, 1, v115
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v106, v99 :: v_dual_and_b32 v115, 1, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v24, v24, v113, 0x7fff
	v_cmp_o_f32_e64 s10, v21, v21
	v_add3_u32 v21, v21, v111, 0x7fff
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v17, v17
	v_cndmask_b16 v111.l, 0x7fff, v24.h, s6
	v_add3_u32 v17, v17, v115, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v99, v99, v106 :: v_dual_and_b32 v106, 1, v121
.Ltmp34:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v120, 1, v122
	v_add3_u32 v23, v23, v114, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v121, v99
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v106, v20, v106, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v17.h, s8
	v_cmp_o_f32_e64 s9, v18, v18
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s7
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v121, v121 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v118, 1, v118
	v_cmp_o_f32_e64 s11, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v99, v99, v121
.Ltmp40:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v22, v22, v118, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v24, v99
.Ltmp42:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v19, v19, v107, 0x7fff
	v_add3_u32 v107, v18, v120, 0x7fff
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp44:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v111.h, 0x7fff, v19.h, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v123
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v100.l, 4, v101.l
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v109.l, 4, v102.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v17.l, v101.l, 15
	v_and_b16 v17.h, v102.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v19, 15, v101
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v100, 0, v100, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v125
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v110.l, 4, v103.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.l, v103.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v101, 16, v105
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v20, 15, v102
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v102, 0, v109, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v126
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v113, 15, v103
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v112.l, 4, v104.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.h, v104.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v114, 15, v104
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v103, 0, v110, s5
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s5, s23, v117
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v105, -16, v19
	v_or_b32_e32 v110, -16, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v104, 0, v112, s5
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v17.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v19, v19, v105, s5
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v17.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v105, -16, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v19, v19, v101
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v109, -16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v17, v20, v109, s5
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v18.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v109, -16, v102
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v20, v113, v110, s5
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v18.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v110, -16, v103
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v17, v17, v101
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v112, -16, v114
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v17, v17
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b32_e64 v18, v114, v112, s5
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v100
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v112, -16, v104
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v20, v20, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v100, v100, v105, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v102
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v105, v17, 16, 1
	v_cmp_o_f32_e64 s7, v20, v20
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v18, v101, v18
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v102, v102, v109, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v103
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v109, v20, 16, 1
	v_add3_u32 v17, v17, v105, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v100, v100, v101
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v103, v103, v110, s5
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s5, 7, v104
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v110, v18, 16, 1
	v_cmp_o_f32_e64 s8, v18, v18
	v_add3_u32 v20, v20, v109, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v104, v104, v112, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v102, v102, v101
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v18, v18, v110, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v103, v101, v103
	v_cvt_f32_i32_e32 v104, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v105, v102, 16, 1
	v_cmp_o_f32_e64 s12, v100, v100
	v_cmp_o_f32_e64 s13, v102, v102
	v_bfe_u32 v109, v103, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v101, v101, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v104, v19, 16, 1
	v_cmp_o_f32_e64 s14, v103, v103
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s7
	v_add3_u32 v20, v103, v109, 0x7fff
	v_bfe_u32 v110, v101, 16, 1
	v_add3_u32 v19, v19, v104, 0x7fff
	v_bfe_u32 v104, v100, 16, 1
	v_cmp_o_f32_e64 s15, v101, v101
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v101, v101, v110, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v19.h, s5
	v_add3_u32 v19, v100, v104, 0x7fff
	v_add3_u32 v100, v102, v105, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s14
	v_cndmask_b16 v20.h, 0x7fff, v101.h, s15
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s12
	v_cndmask_b16 v19.h, 0x7fff, v100.h, s13
	ds_store_b16 v94, v17
	ds_store_b16 v94, v19 offset:128
	ds_store_b16_d16_hi v94, v17 offset:512
	ds_store_b16_d16_hi v94, v19 offset:640
	ds_store_b16 v94, v18 offset:1024
	ds_store_b16 v94, v20 offset:1152
	ds_store_b16_d16_hi v94, v18 offset:1536
	ds_store_b16_d16_hi v94, v20 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v100, v95
	ds_load_u16_d16 v101, v95 offset:256
	ds_load_u16_d16 v102, v95 offset:512
	ds_load_u16_d16 v103, v95 offset:768
	ds_load_u16_d16 v104, v95 offset:1024
	ds_load_u16_d16 v105, v95 offset:1280
	ds_load_u16_d16 v106, v95 offset:1536
	ds_load_u16_d16 v107, v95 offset:1792
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v17, v108, v119
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s10
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v21, v99, v24
.Ltmp46:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(1)
	v_cndmask_b16 v19.h, 0x7fff, v106.h, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v19.l, 0x7fff, v107.h, s9
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v18, v97, v17
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v100, v95 offset:128
	ds_load_u16_d16_hi v101, v95 offset:384
	ds_load_u16_d16_hi v102, v95 offset:640
	ds_load_u16_d16_hi v103, v95 offset:896
	ds_load_u16_d16_hi v104, v95 offset:1152
	ds_load_u16_d16_hi v105, v95 offset:1408
	ds_load_u16_d16_hi v106, v95 offset:1664
	ds_load_u16_d16_hi v107, v95 offset:1920
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v18, v18
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v99, v21
.Ltmp48:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s11
	v_permlanex16_b32 v22, v111, s57, 0xfedcba98 op_sel:[1,0]
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v24, v23, s57, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v113, v19, s57, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v115, v20, s57, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v108, v22, v111, v39
	v_perm_b32 v109, v22, v111, v72
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v22, 0, v18, vcc_lo
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v18, v21, v99
.Ltmp52:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v110, v24, v23, v39
	v_perm_b32 v111, v24, v23, v72
	v_perm_b32 v112, v113, v19, v39
	v_perm_b32 v113, v113, v19, v72
	v_perm_b32 v114, v115, v20, v39
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v18, v96, v22
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v115, v115, v20, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v99, v116 :: v_dual_mov_b32 v96, v18
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[100:107], v[108:115], v[1:8]
	v_mov_b32_e32 v97, v17
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_13
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v17, s19, v40
	.loc	1 907 32                        ; attention.py:907:32
	s_add_i32 s8, s19, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s8, s48
	v_add_nc_u32_e32 v22, s5, v46
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 907 32                        ; attention.py:907:32
	v_add_nc_u32_e32 v23, s5, v47
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
	v_add_nc_u32_e32 v21, s19, v58
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 924 25                        ; attention.py:924:25
	v_add_lshl_u32 v22, s8, v58, 1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e32 v20, 0x80000000, v23, vcc_lo
	.loc	1 910 30                        ; attention.py:910:30
	s_and_b32 vcc_lo, s4, s7
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v102, 10, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 908 32                        ; attention.py:908:32
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v106, 8, v22
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v105, 4, v22
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
	v_add_nc_u32_e32 v103, 12, v21
	v_add_nc_u32_e32 v104, 14, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v108, 16, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v24, 4, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v109, 20, v22
	v_add_nc_u32_e32 v107, 12, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v101, 8, v21
	.loc	1 923 37                        ; attention.py:923:37
	v_add_nc_u32_e32 v110, 24, v22
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v100, 6, v21
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
	ds_store_b8 v48, v18
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v19
	s_waitcnt vmcnt(1)
	ds_store_b8 v50, v20
	s_waitcnt vmcnt(0)
	ds_store_b8 v51, v17
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v23, 0x80000000, v105, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v24
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v24, 0x80000000, v106, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v100
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v100, 0x80000000, v107, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v101
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v105, 0x80000000, v108, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v102
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v106, 0x80000000, v109, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v103
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v107, 0x80000000, v110, vcc_lo
	.loc	1 925 30                        ; attention.py:925:30
	v_cmp_gt_i32_e32 vcc_lo, s23, v104
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[109:110], v52
	ds_load_b64 v[111:112], v53
	ds_load_b64 v[113:114], v54
	ds_load_b64 v[115:116], v55
	.loc	1 923 37                        ; attention.py:923:37
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	s_clause 0x7
	buffer_load_u16 v101, v21, s[36:39], 0 offen
	buffer_load_u16 v102, v23, s[36:39], 0 offen
	buffer_load_u16 v103, v24, s[36:39], 0 offen
	buffer_load_u16 v104, v100, s[36:39], 0 offen
	buffer_load_u16 v105, v105, s[36:39], 0 offen
	buffer_load_u16 v106, v106, s[36:39], 0 offen
	buffer_load_u16 v107, v107, s[36:39], 0 offen
	buffer_load_u16 v108, v22, s[36:39], 0 offen
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v100, s19, v45
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e32 vcc_lo, v100, v59
	v_cmp_le_i32_e64 s5, v100, v60
	.loc	1 910 73                        ; attention.py:910:73
	v_cmp_gt_i32_e64 s6, s23, v100
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s7, s22, vcc_lo
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[109:110], v[29:30], v[9:16] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s5, s22, s5
	s_and_b32 s7, s0, s7
	s_and_b32 s5, s1, s5
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[31:32], v[17:24] neg_lo:[1,1,0]
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s8, s6, s7
	s_and_b32 s9, s6, s5
	s_and_not1_b32 s5, s59, exec_lo
	s_and_b32 s6, s8, exec_lo
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s10, s9, exec_lo
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_or_b32 s59, s5, s6
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_or_b32 s58, s7, s10
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v100, v62
	v_cmp_ge_i32_e64 s5, v100, v63
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s6, v100, v64
	v_cmp_le_i32_e64 s7, v100, v65
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
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v10, v8
	s_branch .LBB0_14
.LBB0_13:                               ; %._crit_edge.loopexit
.Ltmp53:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v17, v17 :: v_dual_add_f32 v10, 0, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, 0xff800000, v9
	v_mov_b32_e32 v9, v56
.Ltmp54:
.LBB0_14:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v43
	s_mov_b32 s0, 0x76543210
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp56:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v11, 0xff800000, v11 :: v_dual_lshlrev_b32 v0, 2, v0
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s18, s18, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v10, 0, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v12, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp59:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v13, 12, v0
.Ltmp64:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v10, v14 :: v_dual_max_f32 v11, v11, v12
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v13
.Ltmp67:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s18
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v16, 0, v4, vcc_lo
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v9, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v12
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp70:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v1 :: v_dual_mov_b32 v12, v2
.Ltmp71:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v9 :: v_dual_add_f32 v2, v2, v12
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v14, v11
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v3
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_f32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v12, v10 :: v_dual_mov_b32 v9, v1
.Ltmp80:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
.Ltmp81:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v9
.Ltmp85:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v9, v10, v12 :: v_dual_max_f32 v10, v11, v14
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp87:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v2 :: v_dual_add_f32 v8, v8, v20
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v21, v8
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v15 :: v_dual_add_f32 v2, v2, v14
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v14, v16
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v13
.Ltmp96:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
	v_cndmask_b32_e32 v17, 0, v5, vcc_lo
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v5, v3, v15 :: v_dual_add_f32 v14, v16, v14
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v6, v5
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v16, v14
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v17
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v16, v14
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v13, v14, v16
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v7 :: v_dual_mov_b32 v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v18, v7, v19 :: v_dual_mov_b32 v19, v17
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v18, v20 :: v_dual_mov_b32 v7, v15
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v7, v15, v7
	v_add_f32_e32 v15, v17, v19
	v_add_f32_e32 v17, v8, v21
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v16
.Ltmp119:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v40, v25
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v18, v15
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_16
; %bb.15:
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp127:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_16:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp128:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v15, v18 :: v_dual_and_b32 v0, 0xc0, v0
.Ltmp129:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v13, v14
	v_dual_add_f32 v14, v5, v6 :: v_dual_add_f32 v13, v2, v4
	v_dual_add_f32 v12, v1, v3 :: v_dual_and_b32 v1, 28, v41
.Ltmp131:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v2, 32, v44
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_lshl_add_u32 v3, v43, 1, 0
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v17, v20 :: v_dual_add_f32 v10, v16, v19
	v_add_f32_e32 v8, v7, v8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp133:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v0, v0, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v26
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_store_b128 v3, v[12:15]
	ds_store_b128 v3, v[8:11] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	v_lshl_add_u32 v1, v1, 2, 8
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp134:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 129
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 129
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7352
; TotalNumSgprs: 62
; NumVgprs: 129
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 129
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     129
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
