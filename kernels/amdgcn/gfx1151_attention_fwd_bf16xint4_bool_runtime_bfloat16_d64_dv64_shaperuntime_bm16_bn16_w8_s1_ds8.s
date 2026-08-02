	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s34, s[0:1], 0x68
	s_load_b128 s[12:15], s[0:1], 0x4c
	s_load_b32 s25, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v51, 63, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v54, 0xc0, v0
	v_and_b32_e32 v57, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v55, 1, v0
	v_and_b32_e32 v58, 7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v6, 4, v58
	v_lshl_or_b32 v6, v57, 7, v6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s27, s25, 12
	s_cselect_b32 s40, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s21, s34
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s21
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s34
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v7, 16, v6
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s7, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v8, 32, v6
	v_xor_b32_e32 v9, 48, v6
	v_xor_b32_e32 v10, 64, v6
	v_add_nc_u32_e32 v61, 0, v6
	v_xor_b32_e32 v11, 0x50, v6
	v_xor_b32_e32 v12, 0x60, v6
	v_xor_b32_e32 v6, 0x70, v6
	v_add_nc_u32_e32 v63, 0, v7
	v_add_nc_u32_e32 v64, 0, v8
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v65, 0, v9
	v_add_nc_u32_e32 v66, 0, v10
	v_add_nc_u32_e32 v67, 0, v11
	v_add_nc_u32_e32 v68, 0, v12
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s22, s4
	s_sub_i32 s4, 0, s21
	s_mul_i32 s4, s4, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s22, s4
	s_add_i32 s22, s22, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s22
	s_mul_i32 s16, s4, s21
	s_add_i32 s6, s4, 1
	s_sub_i32 s5, s5, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s16, s5, s21
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s16, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s21
	s_load_b64 s[16:17], s[0:1], 0x0
	s_cselect_b32 s4, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s12
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s24, s4, s7
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s18, 0, s5
	s_abs_i32 s19, s3
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s23, s3, s14
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s4, s6, s18
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s18, s24, s7
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s6, s6, s4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s4, s18, s34
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s19, s6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s26, s18, 4
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s18, s6, s5
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s33, s2, s4
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s19, s18
	s_add_i32 s4, s6, 1
	s_sub_i32 s18, s2, s5
	s_cmp_ge_u32 s2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s26, v59
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s4, s6
	s_cselect_b32 s2, s18, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 8, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s20, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s13
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s4, s25, v51
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s28, 0, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s14, v3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 12, v3
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s2
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s2, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[1:2], null, s25, v59, v[51:52]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s2, s2
	s_mul_i32 s28, s28, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s28, s2, s28
	s_add_i32 s2, s2, s28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s28, s5, s2
	s_xor_b32 s2, s12, s13
	s_mul_i32 s29, s28, s6
	s_ashr_i32 s30, s2, 31
	s_sub_i32 s5, s5, s29
	s_add_i32 s29, s28, 1
	s_sub_i32 s31, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s14, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s28, s29, s28
	s_cselect_b32 s5, s31, s5
	s_add_i32 s29, s28, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s14, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s28, s29, s28
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s23, s23, s26
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s23, s23, s25
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s14, v5
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl2_add_u32 s29, s25, s23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s23, v1, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl3_add_u32 s31, s25, s23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s29, v1, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s27, s23, s27
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, s31, v1, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s27, v1, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_lshrrev_b32_e32 v5, 2, v54
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s15, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v5, v55, v5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s2, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s6, s28, s30
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 28
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s18, s6, s30
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v60, 0, v5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v5, 0x240, v5
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s16, s5, s34
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s18
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s16, s16, -1
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s2, s2, -16
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s19, s16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v62, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s22, s19, s22
	s_xor_b32 s16, s16, s34
	s_mul_i32 s23, s22, s21
	s_ashr_i32 s16, s16, 31
	s_sub_i32 s19, s19, s23
	s_add_i32 s23, s22, 1
	s_sub_i32 s27, s19, s21
	s_cmp_ge_u32 s19, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s17, s6
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s22, s23, s22
	s_cselect_b32 s19, s27, s19
	s_add_i32 s23, s22, 1
	s_cmp_ge_u32 s19, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v33, s17
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s17, s23, s22
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b16 v60, v2
	s_waitcnt vmcnt(2)
	ds_store_b16 v60, v4 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v62, v3
	s_waitcnt vmcnt(0)
	ds_store_b16 v62, v1 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v61
	ds_load_b128 v[5:8], v63
	ds_load_b128 v[9:12], v64
	ds_load_b128 v[13:16], v65
	ds_load_b128 v[17:20], v66
	ds_load_b128 v[21:24], v67
	ds_load_b128 v[25:28], v68
	ds_load_b128 v[29:32], v69
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s17, s17, s16
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s19, v33
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s16, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s17, s33, s16
	s_lshl_b32 s42, s17, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s16, s16, s42
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s43, s2, s16
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
	s_min_i32 s2, s15, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 15
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s42, s42, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s16, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 28
	s_add_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s43, s43, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s41, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s40
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s15, s2
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
	s_min_i32 s43, s43, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v70, 4, v0
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s41, v51
	v_lshlrev_b32_e32 v56, 2, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s42, s43
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s12
	s_mul_f32 s19, s19, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	v_bfe_i32 v35, v0, 3, 1
	s_xor_b32 s20, s20, s8
	s_cvt_u32_f32 s19, s19
	s_sub_i32 s8, s20, s8
	s_sub_i32 s20, 0, s6
	s_mul_i32 s12, s8, s12
	s_mul_i32 s20, s20, s19
	s_sub_i32 s12, s3, s12
	s_mul_hi_u32 s20, s19, s20
	s_abs_i32 s27, s12
	s_add_i32 s19, s19, s20
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v33, s26, v70
	v_dual_mov_b32 v96, 0xff800000 :: v_dual_and_b32 v37, 1, v0
	v_lshrrev_b32_e32 v38, 1, v0
	v_and_b32_e32 v35, 0x84, v35
	v_and_b32_e32 v39, 14, v0
	s_mul_hi_u32 s19, s27, s19
	s_ashr_i32 s28, s12, 31
	s_ashr_i32 s18, s18, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s29, s19, s6
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x28
	s_load_b128 s[36:39], s[0:1], 0x6c
	s_xor_b32 s18, s28, s18
	s_sub_i32 s27, s27, s29
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x8
	s_load_b32 s1, s[0:1], 0x7c
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v71, s11, v33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s14, v33
	v_bfe_i32 v33, v0, 7, 1
	v_and_b32_e32 v34, 60, v55
	v_lshrrev_b32_e32 v36, 5, v0
	v_lshlrev_b32_e32 v40, 5, v37
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v41, 64, v56
	v_and_or_b32 v35, v38, 3, v35
	v_mul_u32_u24_e32 v38, 0x42, v39
	v_and_b32_e32 v33, 0x84, v33
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s44, s19, 1
	s_sub_i32 s45, s27, s6
	v_or3_b32 v74, v35, v40, v41
	v_add3_u32 v75, v38, v40, v41
	v_mov_b32_e32 v41, 0x5410
	v_and_or_b32 v36, v36, 3, v34
	s_cmp_ge_u32 s27, s6
	v_and_b32_e32 v43, 0xe0, v0
	s_cselect_b32 s19, s44, s19
	s_cselect_b32 s27, s45, s27
	v_xor_b32_e32 v33, v36, v33
	v_and_b32_e32 v36, 16, v0
	s_add_i32 s44, s19, 1
	s_cmp_ge_u32 s27, s6
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s13, s8, s13
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s6, s44, s19
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	s_xor_b32 s6, s6, s18
	v_mov_b32_e32 v36, 0x7632
	s_sub_i32 s6, s6, s18
	v_lshrrev_b32_e32 v46, 3, v43
	v_cndmask_b32_e32 v41, 0x1054, v41, vcc_lo
	v_lshl_or_b32 v34, v43, 2, v34
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s45, s6, s13
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[52:53], null, s41, v59, v[51:52]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v41, v41, 8, v41
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s6, s45, s15
	v_xor_b32_e32 v34, v34, v46
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v46, s42, s6, v59
	v_cndmask_b32_e32 v36, 0x3276, v36, vcc_lo
	v_and_b32_e32 v41, 0x540054, v41
	v_lshl_add_u32 v35, v37, 6, 0
	v_lshl_or_b32 v49, s24, 4, v70
	v_add_nc_u32_e32 v77, 4, v46
	s_lshl_b32 s6, s7, 4
	v_lshl_or_b32 v41, v41, 4, v41
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_add_nc_u32 v82, v35, v33
	v_mov_b32_e32 v33, 0
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v53, 0x5040504, v41
	v_add_nc_u32_e32 v41, 12, v46
	v_lshl_or_b32 v36, v36, 8, v36
	v_xor_b32_e32 v37, 4, v74
	v_subrev_nc_u32_e32 v49, s6, v49
	v_mul_lo_u32 v79, s25, v77
	v_mul_lo_u32 v41, s25, v41
	v_and_b32_e32 v36, 0x760076, v36
	v_lshl_add_u32 v93, v57, 1, 0
	v_mov_b32_e32 v97, 0xff800000
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v49, s39, v49
	v_add_nc_u32_e32 v83, 0, v37
	v_lshl_or_b32 v36, v36, 4, v36
	v_add_nc_u32_e32 v93, v93, v39
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s13, s5, 3
	v_xor_b32_e32 v38, 4, v75
	v_xor_b32_e32 v40, 8, v75
	v_and_b32_e32 v76, 0x7060706, v36
	v_lshlrev_b32_e32 v36, 1, v51
	v_xor_b32_e32 v42, 12, v75
	v_xor_b32_e32 v44, 16, v75
	v_xor_b32_e32 v45, 20, v75
	v_xor_b32_e32 v43, 24, v75
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v77, v41, 1, v36
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v50, 8, v46
	v_add_nc_u32_e32 v78, s42, v57
	v_mul_lo_u32 v46, s25, v46
	v_xor_b32_e32 v47, 28, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v37, v41
	v_mul_lo_u32 v50, s25, v50
	v_mov_b32_e32 v39, v41
	v_mul_lo_u32 v81, s1, v78
	v_lshl_add_u32 v48, v54, 2, 0
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s44, s45, s13
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s45, s45, s5
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s8, s37
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s12, s12, s38
	v_subrev_nc_u32_e32 v72, s9, v71
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s5, s5, s12
	v_add_nc_u32_e32 v73, s10, v71
	v_lshl_add_u32 v78, v50, 1, v36
	v_lshl_add_u32 v79, v79, 1, v36
	v_lshl_add_u32 v80, v46, 1, v36
	v_add3_u32 v81, s5, v49, v81
	v_add_nc_u32_e32 v84, 0, v38
	v_add_nc_u32_e32 v85, 0, v40
	v_add_nc_u32_e32 v86, 0, v42
	v_add_nc_u32_e32 v87, 0, v44
	v_add_nc_u32_e32 v88, 0, v45
	v_add_nc_u32_e32 v89, 0, v43
	v_add_nc_u32_e32 v90, 0, v47
	v_add_nc_u32_e32 v91, v35, v34
	v_add_nc_u32_e32 v92, v48, v36
	v_mov_b32_e32 v34, v41
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v40, v41
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s36, s36, 0x3fb8aa3b
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s31, s31, 0xffff
	s_mov_b64 s[18:19], s[22:23]
	s_mov_b32 s14, 0
	s_lshl_b32 s37, s41, 2
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s38, s25, 5
	s_lshl_b32 s39, s1, 4
	s_mov_b32 s24, s28
	s_mov_b32 s25, s29
	s_mov_b32 s46, 0x76543210
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v50.l, 0xff, v50.l
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v104, s36, v44 :: v_dual_add_nc_u32 v101, 0, v74
	.loc	1 962 25                        ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 962 34 is_stmt 0              ; attention.py:962:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v50.l
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v102, s36, v42 :: v_dual_mul_f32 v103, s36, v43
	v_dual_mul_f32 v105, s36, v45 :: v_dual_mul_f32 v46, s36, v46
	.loc	1 962 25                        ; attention.py:962:25
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s12, s42, 31
	.loc	1 962 25                        ; attention.py:962:25
	v_cndmask_b32_e64 v98, 0, 1, vcc_lo
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v47, s36, v47 :: v_dual_mul_f32 v48, s36, v48
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s12, s42, s12
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v49, s36, v49
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 962 25                        ; attention.py:962:25
	v_mov_b16_e32 v50.l, v98.l
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s12, s12, 1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v111.h, v50.h
	v_mov_b16_e32 v112.h, v50.h
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v109.h, v50.h
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b8 v82, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v50, v101
	ds_load_u8_d16 v98, v83
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v98, v101 offset:8
	ds_load_u8_d16 v99, v83 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v99, v101 offset:16
	ds_load_u8_d16 v100, v83 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v100, v101 offset:24
	ds_load_u8_d16 v101, v83 offset:24
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s14, s14, s38
	v_add_nc_u32_e32 v81, s39, v81
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v42.l, 1, v50.l
	v_and_b16 v42.h, 1, v98.l
	v_and_b16 v43.l, 1, v98.h
	v_and_b16 v43.h, 1, v99.l
	v_and_b16 v44.l, 1, v99.h
	v_and_b16 v44.h, 1, v100.l
	v_and_b16 v45.l, 1, v100.h
	v_cmp_eq_u16_e64 s1, 1, v42.l
	v_cmp_eq_u16_e64 s6, 1, v42.h
	v_cmp_eq_u16_e64 s5, 1, v43.l
	v_cmp_eq_u16_e64 s10, 1, v44.h
	v_cmp_eq_u16_e64 s8, 1, v45.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v98, 0xff800000, v102, s1
	v_add_nc_u32_e32 v42, 0, v75
	v_cndmask_b32_e64 v99, 0xff800000, v103, s6
	v_cndmask_b32_e64 v100, 0xff800000, v104, s5
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s7, 1, v44.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v44, 0xff800000, v47, s10
	v_cndmask_b32_e64 v47, 0xff800000, v48, s8
	.loc	1 974 36                        ; attention.py:974:36
	v_add_nc_u32_e32 v48, s12, v59
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s12, s12, s44
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s9, 1, v43.h
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v42, v98
	ds_store_b32 v84, v99
	ds_store_b32 v85, v100
	v_mad_u64_u32 v[42:43], null, s12, s41, v[52:53]
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s12, s42, 31
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v45.h, 1, v101.l
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s47, s12, 28
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s12, s13, v48
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s47, s42, s47
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v101, 0xff800000, v105, s9
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s47, s47, 4
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s11, 1, v45.h
	v_add_nc_u32_e32 v43, s37, v42
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s47, s47, s45
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s12, s2, s12
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s47, s47, s41
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v46, 0xff800000, v46, s7
	v_cndmask_b32_e64 v45, 0xff800000, v49, s11
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s12
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v49, s47, v51, 1
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s12
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v86, v101
	ds_store_b32 v87, v46
	ds_store_b32 v88, v44
	ds_store_b32 v89, v47
	ds_store_b32 v90, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x1
	buffer_load_u8 v102, v42, s[28:31], 0 offen
	buffer_load_u8 v103, v43, s[28:31], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v42, 0x80000000, v49, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v106, v47, v45
	v_max3_f32 v105, v101, v46, v44
.Ltmp2:
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s42, s42, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v49, v42, s[20:23], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v42, v91
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s42, s43
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v104, v42, v42 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v104, v43
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v104, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v104, v104 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v104, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v104
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v104, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v104, v104 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v104, v104, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v104
	v_max3_f32 v104, v98, v99, v100
	v_max3_f32 v104, v104, v105, v106
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v106.h, v50.h
	v_mov_b16_e32 v105.h, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v110, v104, s46, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v114, v97, v104, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v98, v98, v114 :: v_dual_mov_b32 v107, v43
	v_sub_f32_e32 v47, v47, v114
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v104, v97, v114
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v99, v99, v114
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v98, v98
.Ltmp12:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v96, v96, v96
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v104, v104
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v47, v47
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v107, v107, v107 :: v_dual_lshlrev_b32 v48, 1, v48
.Ltmp15:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v101, v101, v114
	v_sub_f32_e32 v45, v45, v114
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v98, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v43, v43, v107
.Ltmp17:
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v113, 1, v48
	v_add_nc_u32_e32 v48, 9, v48
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v107, 0, v99, s6
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v101, v101
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v96, v96, v43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v105.l, v98.h
	v_cmp_o_f32_e64 s1, v98, v98
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v42, v42, v96
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v110, 0, v101, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v45, v45
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e32 v42, 0, v42, vcc_lo
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v97
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v108, v95, v95 :: v_dual_cndmask_b32 v97, 0, v104
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v46, v46, v114
	v_sub_f32_e32 v44, v44, v114
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v39, v39, v97 :: v_dual_sub_f32 v100, v100, v114
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v99, v42
.Ltmp19:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v97
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v46, v46
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v37, v37, v97
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v44, v44
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v99, v99 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v33, v33, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v100, 0, v100, s5
	v_cndmask_b32_e64 v115, 0, v44, s10
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v44, 0, v46, s7
	v_cndmask_b32_e64 v46, 0, v47, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s5, v110, v110
	v_mov_b16_e32 v106.l, v100.h
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v42, v42, v99
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v111.l, v44.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v38, v38, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v112.l, v46.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v36, v36, v97 :: v_dual_and_b32 v99, 1, v106
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v47, v42
.Ltmp25:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v101, 1, v111
	v_cmp_o_f32_e64 s6, v100, v100
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s10, v46, v46
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v40, v40, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v99, v100, v99, 0x7fff
	v_cmp_o_f32_e64 s7, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v47, v42, v47
.Ltmp29:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v34, v34, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v111.l, 0x7fff, v99.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v97, v47
	v_mov_b32_dpp v97, v97 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v47, v47, v97 :: v_dual_and_b32 v104, 1, v112
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v106, v47
.Ltmp33:
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v50.l, 4, v102.l
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v109.l, 4, v103.l
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v42, 1, v105
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp35:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v98, v98, v42, 0x7fff
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v42, v108, v43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v43, v44, v101, 0x7fff
	v_add3_u32 v44, v46, v104, 0x7fff
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v43.l, v102.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v46.l, 0x7fff, v98.h, s1
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s15, v113
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v112.l, 0x7fff, v43.h, s8
	v_cndmask_b16 v116.l, 0x7fff, v44.h, s10
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v44, 15, v102
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v43.h, v103.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e64 v99, 0, v50, s1
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e64 s1, s15, v48
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v98, 15, v103
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v100, -16, v44
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v50.l, v107.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v48, 0, v109, s1
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v43.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v101, -16, v98
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v108, 1, v50
	v_mov_b16_e32 v50.l, v110.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v102, -16, v48
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v44, v44, v100, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v43.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v100, -16, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v43, v98, v101, s1
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v44, v44, v49
	v_cvt_f32_i32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v98, v99, v100, s1
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s1, 7, v48
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v43, v49, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v98, v98
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v48, v48, v102, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v99, v43, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v98, v49, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v99, v43, v99, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v100, v98, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v48, v49, v48
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v49, v44, 16, 1
	v_cmp_o_f32_e64 s8, v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v98, v100, 0x7fff
	v_cmp_o_f32_e64 s10, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v44, v49, 0x7fff
	v_bfe_u32 v49, v48, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v99.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s8
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v48, v48, v49, 0x7fff
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v49, 1, v50
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v97, v95, v42
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v50.l, v115.h
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v95
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s10
	ds_store_b16 v92, v43
	ds_store_b16_d16_hi v92, v43 offset:128
	ds_store_b16 v92, v44 offset:1024
	ds_store_b16_d16_hi v92, v44 offset:1152
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v98, v93
	ds_load_u16_d16 v99, v93 offset:256
	ds_load_u16_d16 v100, v93 offset:512
	ds_load_u16_d16 v101, v93 offset:768
	ds_load_u16_d16 v102, v93 offset:1024
	ds_load_u16_d16 v103, v93 offset:1280
	ds_load_u16_d16 v104, v93 offset:1536
	ds_load_u16_d16 v105, v93 offset:1792
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v97, v97
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v44, 1, v50
	v_mov_b16_e32 v50.l, v45.h
	v_add3_u32 v49, v110, v49, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v93 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v99, v93 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v100, v93 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v93 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v93 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v93 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v93 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v93 offset:1920
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v95, 0, v97, s1
	v_dual_mov_b32 v97, v114 :: v_dual_and_b32 v50, 1, v50
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v48, v107, v108, 0x7fff
	v_add3_u32 v44, v115, v44, 0x7fff
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v47, v106
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v45, v45, v50, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v49.h, s5
	v_cndmask_b16 v46.h, 0x7fff, v48.h, vcc_lo
	v_cndmask_b16 v112.h, 0x7fff, v44.h, s7
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v43, v94, v95
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v116.h, 0x7fff, v45.h, s9
	v_permlanex16_b32 v44, v111, s46, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v46, s46, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v112, s46, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v94, v43 :: v_dual_mov_b32 v95, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v108, v44, v111, v53
	v_perm_b32 v106, v47, v46, v53
	v_perm_b32 v107, v47, v46, v76
	v_permlanex16_b32 v46, v116, s46, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v109, v44, v111, v76
	v_perm_b32 v110, v45, v112, v53
	v_perm_b32 v111, v45, v112, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v112, v46, v116, v53
	v_perm_b32 v113, v46, v116, v76
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[98:105], v[106:113], v[33:40]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v42, s42, v59
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v43, s14, v80
	v_add_nc_u32_e32 v45, s14, v78
	v_add_nc_u32_e32 v44, s14, v79
	.loc	1 948 17                        ; attention.py:948:17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v42
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v47, 4, v42
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_add_nc_u32 v46, 8, v42
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s5, s15, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s1, s15, v46
	.loc	1 941 30 is_stmt 0              ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_add_nc_u32 v48, 12, v42
	v_add_nc_u32_e32 v42, s14, v77
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s15, v48
	.loc	1 941 30 is_stmt 0              ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s6
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s5
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	s_clause 0x3
	buffer_load_u16 v46, v43, s[24:27], 0 offen
	buffer_load_u16 v47, v45, s[24:27], 0 offen
	buffer_load_u16 v48, v42, s[24:27], 0 offen
	buffer_load_u16 v49, v44, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(3)
	ds_store_b16 v60, v46
	s_waitcnt vmcnt(2)
	ds_store_b16 v60, v47 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v62, v49
	ds_store_b16 v62, v48 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[98:101], v61
	ds_load_b128 v[102:105], v63
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v46, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v48, v41
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v50, s42, v57
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[106:109], v64
	ds_load_b128 v[110:113], v65
	ds_load_b128 v[114:117], v66
	ds_load_b128 v[118:121], v67
	ds_load_b128 v[122:125], v68
	ds_load_b128 v[126:129], v69
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v49, v48
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v50
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e64 s1, v50, v71
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s5, s0, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v45, v44
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s1, s1, s5
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 948 17                        ; attention.py:948:17
	v_cndmask_b32_e64 v131, 0, 1, s1
	v_cndmask_b32_e64 v130, 0, 1, s5
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[98:105], v[1:8], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	v_mov_b16_e64 v98.l, v131.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[106:113], v[9:16], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	v_cndmask_b16 v98.l, v130.l, v98.l, s40
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[114:121], v[17:24], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	v_and_b16 v98.l, 1, v98.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[122:129], v[25:32], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_eq_u16_e64 s5, 1, v98.l
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v50, v72
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s1, v50, v73
	.loc	1 951 21                        ; attention.py:951:21
	s_and_b32 s6, vcc_lo, s5
	s_and_not1_b32 s5, s5, exec_lo
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s1, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s5, s5, s1
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	v_mov_b16_e32 v50.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v50.l, v50.h
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s1, s5
	s_cbranch_execz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	v_ashrrev_i32_e32 v99, 31, v81
	v_add_co_u32 v98, vcc_lo, s18, v81
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v99, null, s19, v99, vcc_lo
	global_load_d16_u8 v50, v[98:99], off
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v42, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v43, v40
.LBB0_12:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	s_mov_b32 s0, 0x76543210
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v2, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp39:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v42 :: v_dual_cndmask_b32 v4, 0, v43
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v57
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s41, s41, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v3, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v2, 28, v2
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp45:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s41
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp47:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v4, v4, v5 :: v_dual_max_f32 v1, v1, v3
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v3, v58, 2, 0
.Ltmp50:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v5, 0, v33, vcc_lo
	v_cndmask_b32_e32 v12, 0, v37, vcc_lo
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp53:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v4, 0, v35 :: v_dual_cndmask_b32 v13, 0, v38
	v_cndmask_b32_e32 v3, 0, v34, vcc_lo
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_cndmask_b32 v15, 0, v40
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v1
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v5, v5, v6
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, v2
.Ltmp61:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v4 :: v_dual_add_f32 v3, v3, v7
	v_dual_mov_b32 v8, v5 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v9
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v2, v2, v6
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v10 :: v_dual_max_f32 v1, v1, v7
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v3
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v8
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v4
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v14, v14, v19
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_add_f32 v4, v4, v16
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v6, v4
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp88:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v2, v7 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp89:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp92:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v12, v17
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v13, v11
	v_mov_b32_e32 v19, v17
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v11, v13
	v_add_f32_e32 v11, v12, v14
	v_add_f32_e32 v14, v16, v18
	v_dual_add_f32 v16, v17, v19 :: v_dual_add_f32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v15, v13
	v_dual_mov_b32 v12, v11 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_14
; %bb.13:
.Ltmp106:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp107:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp109:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp111:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_14:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp112:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
.Ltmp113:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v56
	v_cmp_eq_u32_e32 vcc_lo, 0, v54
	v_and_b32_e32 v4, 0xe0, v55
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v1, 28, v55
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp115:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v2, 0, v3
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v51
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s17, s17, 0xffff
	ds_load_b32 v0, v0
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
.Ltmp116:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 132
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_vgpr, 132
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6172
; TotalNumSgprs: 50
; NumVgprs: 132
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 132
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
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     132
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
