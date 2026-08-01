	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
	s_load_b32 s24, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v50, 63, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v58, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v57, 15, v0
	v_and_b32_e32 v53, 0xc0, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v54, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b32_e32 v6, 4, v58
	v_lshl_or_b32 v6, v57, 7, v6
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s8
	s_bitcmp1_b32 s8, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v7, 16, v6
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s27, s24, 12
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
	v_xor_b32_e32 v8, 32, v6
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s7, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, 48, v6
	v_xor_b32_e32 v10, 64, v6
	v_xor_b32_e32 v11, 0x50, v6
	v_xor_b32_e32 v12, 0x60, v6
	v_add_nc_u32_e32 v63, 0, v7
	v_add_nc_u32_e32 v64, 0, v8
	v_add_nc_u32_e32 v65, 0, v9
	v_add_nc_u32_e32 v66, 0, v10
	v_add_nc_u32_e32 v67, 0, v11
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v68, 0, v12
	v_add_nc_u32_e32 v61, 0, v6
	v_xor_b32_e32 v6, 0x70, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v6
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s22, s4
	s_sub_i32 s4, 0, s21
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s22
	s_mul_hi_u32 s4, s22, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s22, s22, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s4, s21
	s_add_i32 s6, s4, 1
	s_sub_i32 s5, s5, s16
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
	s_xor_b32 s25, s4, s7
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
	s_sub_i32 s18, s25, s7
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
	v_cmp_gt_i32_e64 s4, s24, v50
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
	v_mad_u64_u32 v[1:2], null, s24, v59, v[50:51]
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
	s_mul_i32 s23, s23, s24
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s14, v5
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl2_add_u32 s29, s24, s23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s23, v1, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl3_add_u32 s31, s24, s23
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s29, v1, 1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s27, s23, s27
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, s31, v1, 1
	v_add_lshl_u32 v1, s27, v1, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_lshrrev_b32_e32 v5, 2, v53
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s15, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x3
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s2, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v5, v54, v5
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 28
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s6, s28, s30
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s23, s6, s30
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v60, 0, v5
	v_xor_b32_e32 v5, 0x240, v5
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s16, s5, s34
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s23
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s16, s16, -1
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s2, s2, -16
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s18, s16
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v62, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s19, s18, s22
	s_xor_b32 s16, s16, s34
	s_mul_i32 s22, s19, s21
	s_ashr_i32 s16, s16, 31
	s_sub_i32 s18, s18, s22
	s_add_i32 s22, s19, 1
	s_sub_i32 s27, s18, s21
	s_cmp_ge_u32 s18, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s17, s6
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s19, s22, s19
	s_cselect_b32 s18, s27, s18
	s_add_i32 s22, s19, 1
	s_cmp_ge_u32 s18, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v33, s17
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s17, s22, s19
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
	v_readfirstlane_b32 s21, v33
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s16, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s17, s33, s16
	s_lshl_b32 s19, s17, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s16, s16, s19
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s41, s2, s16
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
	s_max_i32 s19, s19, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s16, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 28
	s_add_i32 s2, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s2, s2, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s41, s41, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s18, s[0:1], 0x64
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
	s_min_i32 s41, s41, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v70, 4, v0
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s18, v50
	v_lshlrev_b32_e32 v55, 5, v0
	v_lshlrev_b32_e32 v56, 2, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s19, s41
	s_cbranch_scc1 .LBB0_9
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s8, s3, s12
	s_mul_f32 s21, s21, 0x4f7ffffe
	s_ashr_i32 s8, s8, 31
	s_ashr_i32 s23, s23, 31
	s_xor_b32 s20, s20, s8
	s_cvt_u32_f32 s21, s21
	s_sub_i32 s8, s20, s8
	s_sub_i32 s20, 0, s6
	s_mul_i32 s12, s8, s12
	s_mul_i32 s20, s20, s21
	s_sub_i32 s12, s3, s12
	s_mul_hi_u32 s20, s21, s20
	s_abs_i32 s22, s12
	s_add_i32 s21, s21, s20
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v33, s26, v70
	s_mul_hi_u32 s20, s22, s21
	s_ashr_i32 s21, s12, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s27, s20, s6
	s_xor_b32 s21, s21, s23
	s_sub_i32 s22, s22, s27
	s_add_i32 s23, s20, 1
	s_sub_i32 s27, s22, s6
	s_cmp_ge_u32 s22, s6
	v_and_b32_e32 v35, 0x1a0, v55
	s_cselect_b32 s20, s23, s20
	s_cselect_b32 s22, s27, s22
	s_add_i32 s23, s20, 1
	s_cmp_ge_u32 s22, s6
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v36, 14, v0
	v_and_b32_e32 v37, 64, v56
	s_cselect_b32 s6, s23, s20
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x6c
	s_load_b32 s47, s[0:1], 0x7c
	s_xor_b32 s6, s6, s21
	s_load_b128 s[36:39], s[0:1], 0x8
	s_sub_i32 s6, s6, s21
	s_load_b128 s[20:23], s[0:1], 0x28
	v_dual_mov_b32 v102, 0xff800000 :: v_dual_add_nc_u32 v71, s11, v33
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s14, v33
	v_and_b32_e32 v33, 0xe0, v0
	v_or3_b32 v74, v36, v35, v37
	v_bfe_i32 v35, v0, 3, 1
	v_and_b32_e32 v34, 0x1bc, v54
	v_dual_mov_b32 v100, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_lshrrev_b32_e32 v38, 4, v33
	v_lshrrev_b32_e32 v41, 1, v0
	v_and_b32_e32 v35, 0x84, v35
	v_and_b32_e32 v42, 60, v54
	v_lshrrev_b32_e32 v43, 5, v0
	v_bfe_i32 v44, v0, 7, 1
	v_xor_b32_e32 v34, v34, v38
	v_lshl_add_u32 v38, v39, 6, 0
	v_lshlrev_b32_e32 v39, 5, v39
	v_and_or_b32 v35, v41, 3, v35
	v_mul_u32_u24_e32 v36, 0x42, v36
	v_and_b32_e32 v41, 0x84, v44
	v_and_or_b32 v43, v43, 3, v42
	v_xor_b32_e32 v40, 4, v74
	v_or3_b32 v75, v35, v39, v37
	v_add3_u32 v76, v36, v39, v37
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s13, s8, s13
	v_xor_b32_e32 v37, v43, v41
	v_and_b32_e32 v41, 16, v0
	v_add_nc_u32_e32 v84, 0, v40
	s_add_i32 s44, s6, s13
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v79, s25, 4, v70
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s1, s44, s15
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	v_mov_b32_e32 v41, 0x7632
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v78, s19, s1, v59
	s_lshl_b32 s1, s7, 4
	v_add_nc_u32_e32 v81, s19, v57
	v_cndmask_b32_e32 v47, 0x1054, v47, vcc_lo
	v_cndmask_b32_e32 v41, 0x3276, v41, vcc_lo
	v_mul_lo_u32 v82, s24, v78
	.loc	1 956 27                        ; attention.py:956:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s8, s29
	.loc	1 903 13                        ; attention.py:903:13
	v_mul_lo_u32 v83, s47, v81
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s12, s12, s30
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshlrev_b32_e32 v97, 1, v50
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v80, 4, v78
	v_lshl_or_b32 v47, v47, 8, v47
	v_xor_b32_e32 v45, 8, v74
	v_and_b32_e32 v41, 0x760076, v41
	v_lshl_add_u32 v81, v82, 1, v97
	v_mul_lo_u32 v80, s24, v80
	v_and_b32_e32 v47, 0x540054, v47
	v_xor_b32_e32 v35, 12, v74
	v_lshl_or_b32 v41, v41, 4, v41
	v_and_b32_e32 v36, 0x60, v0
	v_xor_b32_e32 v39, 4, v75
	v_lshl_or_b32 v47, v47, 4, v47
	v_xor_b32_e32 v43, 4, v76
	v_and_b32_e32 v77, 0x7060706, v41
	v_subrev_nc_u32_e32 v41, s1, v79
	v_add_nc_u32_e32 v79, 8, v78
	v_xor_b32_e32 v44, 8, v76
	v_xor_b32_e32 v46, 12, v76
	v_xor_b32_e32 v48, 16, v76
	v_mul_lo_u32 v41, s31, v41
	v_mul_lo_u32 v79, s24, v79
	v_xor_b32_e32 v49, 20, v76
	v_xor_b32_e32 v95, 28, v76
	v_lshl_add_u32 v98, v53, 2, 0
	v_lshl_add_u32 v99, v57, 1, 0
	v_subrev_nc_u32_e32 v72, s9, v71
	v_lshl_add_u32 v80, v80, 1, v97
	v_add3_u32 v41, s8, s12, v41
	v_lshl_add_u32 v79, v79, 1, v97
	v_add_nc_u32_e32 v85, 0, v45
	v_dual_mov_b32 v101, 0xff800000 :: v_dual_add_nc_u32 v86, 0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v82, v41, v83, 1
	v_mov_b32_e32 v41, 0
	v_add_nc_u32_e32 v83, v38, v34
	v_add_nc_u32_e32 v73, s10, v71
	v_add_nc_u32_e32 v87, v38, v37
	v_dual_mov_b32 v37, v41 :: v_dual_add_nc_u32 v88, 0, v39
	v_mov_b32_e32 v34, v41
	v_lshrrev_b32_e32 v51, 3, v33
	v_lshl_or_b32 v33, v33, 2, v42
	v_xor_b32_e32 v42, 24, v76
	v_add_nc_u32_e32 v89, 0, v43
	v_dual_mov_b32 v39, v41 :: v_dual_add_nc_u32 v90, 0, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v33, v33, v51
	v_mad_u64_u32 v[51:52], null, s18, v59, v[50:51]
	v_dual_mov_b32 v35, v41 :: v_dual_and_b32 v52, 0x5040504, v47
	v_add_nc_u32_e32 v47, 12, v78
	v_add_nc_u32_e32 v91, 0, v46
	v_add_nc_u32_e32 v92, 0, v48
	v_add_nc_u32_e32 v93, 0, v49
	v_add_nc_u32_e32 v94, 0, v42
	v_mul_lo_u32 v47, s24, v47
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, v38, v33
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, v41
	v_mov_b32_e32 v40, v41
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s13, s5, 3
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s42, s28, 0x3fb8aa3b
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v78, v47, 1, v97
	v_add_nc_u32_e32 v97, v98, v97
	v_add_nc_u32_e32 v98, v99, v36
	v_dual_mov_b32 v36, v41 :: v_dual_mov_b32 v99, 0
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s39, s39, 0xffff
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s43, s44, s13
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s44, s44, s5
	s_mov_b32 s14, 0
	s_lshl_b32 s45, s18, 2
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s46, s24, 5
	s_lshl_b32 s47, s47, 5
	s_mov_b32 s24, s36
	s_mov_b32 s25, s37
	s_mov_b32 s28, s22
	s_mov_b32 s29, s23
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s36, s38
	s_mov_b32 s37, s39
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
                                        ; implicit-def: $sgpr49
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v103, 0x80000000, v82, s49
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v106, 0, v74
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s19, 31
	s_ashr_i32 s5, s19, 31
	s_add_i32 s1, s19, s1
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_u16 v105, v103, s[28:31], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s5, s5, 28
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s1, s1, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s5, s19, s5
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v107.l, 0
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s5, s5, 4
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v102
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v82, s47, v82
	s_add_i32 s19, s19, 16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v122.h, v107.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s14, s14, s46
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v101, v101, v101
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v107.h, 0xff80, v105.l, s49
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b16_d16_hi v83, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v114, v106
	ds_load_u16 v115, v106 offset:16
	ds_load_u16 v116, v84
	ds_load_u16 v117, v84 offset:16
	ds_load_u16 v118, v85
	ds_load_u16 v119, v85 offset:16
	ds_load_u16 v120, v86
	ds_load_u16 v121, v86 offset:16
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v108, 0, v75
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v119, 16, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v115, 0x3fb8aa3b, v115
	.loc	1 974 36                        ; attention.py:974:36
	v_add_nc_u32_e32 v110, s1, v59
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s1, s1, s43
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v117, 0x3fb8aa3b, v117
	v_mad_u64_u32 v[103:104], null, s1, s18, v[51:52]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s1, s5, s44
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v115, s42, v46
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s1, s1, s18
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s13, v110
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v104, s1, v50, 1
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v107
	v_add_nc_u32_e32 v105, s45, v103
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v119, 0x3fb8aa3b, v119
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s5, s2, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v112, 0x80000000, v104, s2
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 vcc_lo, s49, s1
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v111, 0x80000000, v103, s5
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v103, 0, 1, vcc_lo
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v113, 0x80000000, v105, s5
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v117, s42, v47
	v_fmac_f32_e32 v119, s42, v48
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v107.h, v107.l
	.loc	1 966 25                        ; attention.py:966:25
	ds_store_b8 v87, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v103, v108
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v103, v108 offset:8
	ds_load_u8_d16 v104, v108 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v104, v108 offset:24
	ds_load_u8_d16 v105, v88
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v105, v88 offset:8
	ds_load_u8_d16 v106, v88 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v106, v88 offset:24
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v108, 16, v114
	v_lshlrev_b32_e32 v114, 16, v116
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v109, 0, v76
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v116, 16, v118
	v_lshlrev_b32_e32 v118, 16, v120
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v108, 0x3fb8aa3b, v108
	v_mul_f32_e32 v114, 0x3fb8aa3b, v114
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v120, 16, v121
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v116, 0x3fb8aa3b, v116
	v_mul_f32_e32 v118, 0x3fb8aa3b, v118
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v108, s42, v42
	v_fmac_f32_e32 v114, s42, v43
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	v_and_b16 v42.l, 1, v103.l
	v_and_b16 v43.l, 1, v103.h
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v116, s42, v44
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v44.l, 1, v104.l
	v_and_b16 v42.h, 1, v105.l
	v_and_b16 v43.h, 1, v105.h
	v_cmp_eq_u16_e64 s6, 1, v43.l
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v120, 0x3fb8aa3b, v120
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v44.h, 1, v106.l
	v_cmp_eq_u16_e64 s1, 1, v42.l
	v_cmp_eq_u16_e64 s7, 1, v43.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v47, 0xff800000, v116, s6
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v118, s42, v45
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v45.l, 1, v104.h
	v_and_b16 v45.h, 1, v106.h
	v_cmp_eq_u16_e64 s5, 1, v42.h
	v_cmp_eq_u16_e64 s8, 1, v44.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v46, 0xff800000, v108, s1
	v_cndmask_b32_e64 v43, 0xff800000, v118, s7
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v120, s42, v49
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s9, 1, v44.h
	v_cmp_eq_u16_e64 s10, 1, v45.l
	v_cmp_eq_u16_e64 s11, 1, v45.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v42, 0xff800000, v114, s5
	v_cndmask_b32_e64 v48, 0xff800000, v115, s8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v44, 0xff800000, v117, s9
	v_cndmask_b32_e64 v49, 0xff800000, v119, s10
	v_cndmask_b32_e64 v45, 0xff800000, v120, s11
	ds_store_b32 v109, v46
	ds_store_b32 v89, v42
	ds_store_b32 v90, v47
	ds_store_b32 v91, v43
	ds_store_b32 v92, v48
	ds_store_b32 v93, v44
	ds_store_b32 v94, v49
	ds_store_b32 v95, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x1
	buffer_load_u8 v103, v111, s[36:39], 0 offen
	buffer_load_u8 v104, v113, s[36:39], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v105, v112, s[20:23], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v106, v96
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v114, v46, v42, v47
	v_max3_f32 v115, v43, v48, v44
	v_max_f32_e32 v116, v49, v45
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v118.h, v107.l
	v_mov_b16_e32 v120.h, v107.l
	v_mov_b16_e32 v112.h, v107.l
	v_mov_b16_e32 v119.h, v107.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v114, v114, v115, v116
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.h, v107.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v109.h, v107.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v115.h, v107.l
	v_mov_b16_e32 v116.h, v107.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v111, v100, v100
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s19, s41
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v108, v106
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v117, v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v108, v108 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v108, v108, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v108, v117, v108
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v117, v114, s48, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v124, v102, v114, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v45, v45, v124 :: v_dual_lshlrev_b32 v110, 1, v110
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v114, v102, v124
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v43, v124
	v_sub_f32_e32 v47, v47, v124
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v123, 1, v110
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v114, v114
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v47, v47
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v44, v44, v124
	v_sub_f32_e32 v49, v49, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v44, v44
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s11
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v102, 0, v114, s12
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s7
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v42, v42, v124
	v_sub_f32_e32 v46, v46, v124
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v120.l, v45.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v102
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v121, v108
.Ltmp12:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v118.l, v43.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v39, v39, v102
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v37, v37, v102
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v121, v121 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v46, v46
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v47, s6
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v33, v33, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v34, v102 :: v_dual_max_f32 v117, v121, v121
	v_mul_f32_e32 v40, v40, v102
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v119.l, v47.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v42, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v47, v47
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v108, v108, v117
.Ltmp16:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v46, 0, v46, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s6, v43, v43
	v_mov_b16_e32 v112.l, v42.h
	v_cmp_o_f32_e64 s1, v42, v42
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v117, v108
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v113.l, v46.h
	v_cmp_o_f32_e64 s5, v46, v46
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v49, v49
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v44, 0, v44, s9
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v117, v117 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v115.l, v44.h
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v117, v117, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v49, 0, v49, s10
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v108, v108, v117 :: v_dual_and_b32 v115, 1, v115
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v117, 1, v120
	v_cmp_o_f32_e64 s10, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v122.l, v49.h
	v_cmp_o_f32_e64 s11, v49, v49
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v114, v108
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v45, v45, v117, 0x7fff
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v114, v114 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s10
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v114, v114, v114
.Ltmp30:
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v107.l, 4, v103.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v36, v36, v102
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v109.l, 4, v104.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v38, v38, v102
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v102, v108, v114
.Ltmp32:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v108, 1, v112
	v_and_b32_e32 v114, 1, v119
	v_and_b32_e32 v112, 1, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v48, v48, v124 :: v_dual_max_f32 v101, v101, v102
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v42, v42, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v47, v114, 0x7fff
	v_add3_u32 v46, v46, v112, 0x7fff
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v42.l, v103.l, 15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v113, 1, v118
	v_cndmask_b16 v112.h, 0x7fff, v42.h, s1
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s7
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v42.h, v104.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v47, 15, v103
	v_and_b32_e32 v103, 15, v104
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v104, 16, v105
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v106, v106, v101
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v43, v43, v113, 0x7fff
	v_cndmask_b16 v112.l, 0x7fff, v46.h, s5
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v106, v106
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v46.h, 0x7fff, v43.h, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v48, 0, v48, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v44, v44
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e32 v106, 0, v106, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s15, v123
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v44, v44, v115, 0x7fff
	v_mov_b16_e32 v116.l, v48.h
	v_cmp_o_f32_e64 s9, v48, v48
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v108, v106 :: v_dual_cndmask_b32 v105, 0, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s8
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v108, v108 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v43, v106, v108 :: v_dual_add_nc_u32 v110, 9, v110
.Ltmp37:
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s15, v110
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v106, -16, v47
	v_or_b32_e32 v108, -16, v103
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v107, 0, v109, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v109, -16, v107
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v47, v47, v106, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v106, -16, v105
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v42, v103, v108, vcc_lo
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v47, v47, v104
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v103, v105, v106, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v107
.Ltmp38:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v106, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v42, v104, v42
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v105, v107, v109, vcc_lo
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e32 vcc_lo, v47, v47
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v107, v42, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v103, v104, v103
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v42, v42
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v113, v43, v106
.Ltmp43:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v107, v42, v107, 0x7fff
	v_bfe_u32 v108, v103, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v104, v104, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v105, v47, 16, 1
	v_cmp_o_f32_e64 s5, v103, v103
	v_cndmask_b16 v43.l, 0x7fff, v107.h, s1
	v_add3_u32 v42, v103, v108, 0x7fff
	v_cmp_o_f32_e64 s6, v104, v104
	v_add3_u32 v47, v47, v105, 0x7fff
	v_bfe_u32 v105, v104, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s5
	v_cndmask_b16 v42.l, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v103, v104, v105, 0x7fff
.Ltmp44:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v47, v113
.Ltmp45:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v100
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v43.h, 0x7fff, v103.h, s6
	ds_store_b16 v97, v42
	ds_store_b16_d16_hi v97, v42 offset:128
	ds_store_b16 v97, v43 offset:1024
	ds_store_b16_d16_hi v97, v43 offset:1152
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v103, v98
	ds_load_u16_d16 v104, v98 offset:256
	ds_load_u16_d16 v105, v98 offset:512
	ds_load_u16_d16 v106, v98 offset:768
	ds_load_u16_d16 v107, v98 offset:1024
	ds_load_u16_d16 v108, v98 offset:1280
	ds_load_u16_d16 v109, v98 offset:1536
	ds_load_u16_d16 v110, v98 offset:1792
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v42, v111, v102
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v116, 1, v116
	v_and_b32_e32 v118, 1, v122
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v98 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v104, v98 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v105, v98 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v98 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v98 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v98 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v98 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v98 offset:1920
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v43, v100, v42
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v47, v113, v47
.Ltmp49:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v48, v48, v116, 0x7fff
	v_add3_u32 v49, v49, v118, 0x7fff
	v_mov_b32_e32 v100, v42
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v43, v43
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v102, v47
.Ltmp51:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v44.l, 0x7fff, v48.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v49.h, s11
	v_permlanex16_b32 v48, v112, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v46, s48, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v116, v44, s48, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v118, v45, s48, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v111, v48, v112, v52
	v_perm_b32 v112, v48, v112, v77
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v48, 0, v43 :: v_dual_add_f32 v43, v47, v102
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v113, v49, v46, v52
	v_perm_b32 v114, v49, v46, v77
	v_perm_b32 v115, v116, v44, v52
	v_perm_b32 v116, v116, v44, v77
	v_perm_b32 v117, v118, v45, v52
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v43, v99, v48
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v118, v118, v45, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v102, v124 :: v_dual_mov_b32 v99, v43
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[103:110], v[111:118], v[33:40]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_10
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v42, s19, v59
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v43, s14, v81
	v_add_nc_u32_e32 v45, s14, v79
	v_add_nc_u32_e32 v44, s14, v80
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v103, s19, v57
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v42
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v47, 4, v42
	.loc	1 948 17                        ; attention.py:948:17
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v43, 0x80000000, v43 :: v_dual_add_nc_u32 v46, 8, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s5, s15, v47
	v_cmp_gt_i32_e64 s1, s15, v46
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v46, v41
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_add_nc_u32 v48, 12, v42
	v_add_nc_u32_e32 v42, s14, v78
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e64 s1, v103, v71
	s_delay_alu instid0(VALU_DEP_3)
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
	buffer_load_u16 v47, v43, s[24:27], 0 offen
	buffer_load_u16 v48, v45, s[24:27], 0 offen
	buffer_load_u16 v49, v42, s[24:27], 0 offen
	buffer_load_u16 v104, v44, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s15, v103
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s5, s0, vcc_lo
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s1, s1, s5
	v_cndmask_b32_e64 v136, 0, 1, s5
	v_cndmask_b32_e64 v137, 0, 1, s1
	s_and_not1_b32 s5, s49, exec_lo
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(3)
	ds_store_b16 v60, v47
	s_waitcnt vmcnt(2)
	ds_store_b16 v60, v48 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b16 v62, v104
	ds_store_b16 v62, v49 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[104:107], v61
	ds_load_b128 v[108:111], v63
	ds_load_b128 v[112:115], v64
	ds_load_b128 v[116:119], v65
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[120:123], v66
	ds_load_b128 v[124:127], v67
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v47, v41
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[128:131], v68
	ds_load_b128 v[132:135], v69
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v49, v48
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[104:111], v[1:8], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	v_cndmask_b16 v104.l, v136.l, v137.l, s40
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[112:119], v[9:16], v[42:49]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 948 17                        ; attention.py:948:17
	v_and_b16 v104.l, 1, v104.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[120:127], v[17:24], v[42:49]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_eq_u16_e64 s1, 1, v104.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[128:135], v[25:32], v[42:49]
	s_and_b32 s6, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s49, s5, s6
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_6
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v103, v72
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v103, v73
	.loc	1 951 21                        ; attention.py:951:21
	s_and_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s5, s1
	s_and_not1_b32 s5, s49, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_or_b32 s49, s5, s1
	s_branch .LBB0_6
.LBB0_9:
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
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
.LBB0_10:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	s_mov_b32 s0, 0x76543210
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v2, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp55:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v42 :: v_dual_cndmask_b32 v4, 0, v43
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v57
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s34, s34, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s18, s18, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v3, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v2, 28, v2
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s33, s34
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp61:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s18
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp63:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v4, v4, v5 :: v_dual_max_f32 v1, v1, v3
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v3, v58, 2, 0
.Ltmp66:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v5, 0, v33, vcc_lo
	v_cndmask_b32_e32 v12, 0, v37, vcc_lo
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v3
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v3
.Ltmp69:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v4, 0, v35 :: v_dual_cndmask_b32 v13, 0, v38
	v_cndmask_b32_e32 v3, 0, v34, vcc_lo
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_mov_b32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_cndmask_b32 v15, 0, v40
	v_mov_b32_e32 v7, v3
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v1
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v5, v5, v6
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, v2
.Ltmp77:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v4 :: v_dual_add_f32 v3, v3, v7
	v_dual_mov_b32 v8, v5 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v9
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v2, v2, v6
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v10 :: v_dual_max_f32 v1, v1, v7
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v3
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v8
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v4
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v1
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v14, v14, v19
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_add_f32 v4, v4, v16
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v10, v3 :: v_dual_mov_b32 v7, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v6, v4
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp104:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v2, v7 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_add_f32 v11, v11, v16
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp106:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp107:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
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
.Ltmp113:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, v12, v17
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v16
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
.Ltmp118:
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
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v11, v13
	v_add_f32_e32 v11, v12, v14
	v_add_f32_e32 v14, v16, v18
	v_dual_add_f32 v16, v17, v19 :: v_dual_add_f32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp120:
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
.Ltmp121:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_12
; %bb.11:
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v0, v10, v10
	v_max_f32_e32 v10, v8, v8
.Ltmp123:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp125:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp126:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v7, v10, v0 :: v_dual_mov_b32 v0, 0
.Ltmp127:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v0, v[7:8], s[4:5]
.LBB0_12:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1038 13 is_stmt 1             ; attention.py:1038:13
	v_and_b32_e32 v0, 0xc0, v56
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xe0, v54
	v_add_f32_e32 v13, v1, v2
.Ltmp129:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v54
	v_add_nc_u32_e32 v0, 0, v0
	s_and_b32 vcc_lo, vcc_lo, s2
	v_and_b32_e32 v2, 32, v55
	v_add_nc_u32_e32 v3, 0, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v0, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v50
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
.Ltmp130:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
		.amdhsa_next_free_vgpr 138
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_vgpr, 138
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6344
; TotalNumSgprs: 52
; NumVgprs: 138
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 138
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w8_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
