	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s33, s[0:1], 0x68
	s_load_b128 s[16:19], s[0:1], 0x4c
	s_load_b64 s[20:21], s[0:1], 0x0
	s_load_b32 s44, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v62, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v50, 63, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v9, v0, 6, 1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v66, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x90, v9
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v33, 64, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v10, 0x70, v10
	v_lshl_or_b32 v10, v66, 7, v10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s10, s3, s18
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[51:52], null, s44, v62, v[50:51]
	s_cselect_b32 s28, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s11, s33
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s11
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s33
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v13, 16, v10
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[52:53], null, s44, 6, v[51:52]
	v_lshl_add_u32 v63, s44, 1, v51
	v_lshl_add_u32 v64, s44, 2, v51
	v_lshl_add_u32 v65, s44, 3, v51
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v14, 32, v10
	v_xor_b32_e32 v15, 48, v10
	v_xor_b32_e32 v16, 64, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[53:54], null, s44, 10, v[51:52]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[54:55], null, s44, 12, v[51:52]
	v_mad_u64_u32 v[55:56], null, s44, 14, v[51:52]
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v68, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	v_xor_b32_e32 v18, 0x60, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s24, s4
	s_sub_i32 s4, 0, s11
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v10, 0x70, v10
	v_add_nc_u32_e32 v72, 0, v13
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s4, s4, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v73, 0, v14
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s4, s24, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v74, 0, v15
	.loc	1 798 32                        ; attention.py:798:32
	s_add_i32 s24, s24, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v75, 0, v16
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v76, 0, v17
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_i32 s7, s4, s11
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v77, 0, v18
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s5, s11
	s_cmp_ge_u32 s5, s11
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v78, 0, v10
	.loc	1 748 27                        ; attention.py:748:27
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s11
	s_cselect_b32 s4, s7, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s8, s16
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s3
	s_cvt_f32_u32 s5, s8
	s_sub_i32 s7, 0, s8
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s6
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s6, s4, s33
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s29, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s34, s2, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s29, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 4, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 6, v2
	v_or_b32_e32 v5, 8, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, 10, v2
	v_or_b32_e32 v7, 12, v2
	v_or_b32_e32 v8, 14, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s5
	s_mul_hi_u32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	s_mul_hi_u32 s5, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s5, s8
	s_sub_i32 s2, s9, s4
	s_add_i32 s4, s5, 1
	s_sub_i32 s6, s2, s8
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s4, s4, s5
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s25, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s9, s17
	s_xor_b32 s27, s16, s17
	s_cvt_f32_u32 s2, s9
	s_sub_i32 s4, 0, s9
	s_ashr_i32 s27, s27, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s44, v50
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, 2, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_cvt_u32_f32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s18, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s18, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s26, s7, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s18, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s26, s7, s26
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s18, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s26, s8, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s30, s26, s9
	s_add_i32 s31, s26, 1
	s_sub_i32 s30, s8, s30
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s18, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s36, s30, s9
	s_cmp_ge_u32 s30, s9
	s_cselect_b32 s26, s31, s26
	s_cselect_b32 s30, s36, s30
	s_add_i32 s31, s26, 1
	s_cmp_ge_u32 s30, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s18, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s26, s31, s26
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s30, s10, s29
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s30, s30, s44
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s18, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s30, v51, 1
	v_add_lshl_u32 v2, s30, v63, 1
	v_add_lshl_u32 v3, s30, v64, 1
	v_add_lshl_u32 v4, s30, v52, 1
	v_add_lshl_u32 v5, s30, v65, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s30, v53, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_lshlrev_b32 v34, 1, v50
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s30, v54, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s30, v55, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v9, v34
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s9
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v67, 0, v9
	s_clause 0x7
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s19, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s6, s26, s27
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s4, s2, 31
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s6, s27
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s4, s4, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s4
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s8
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s4, s6, s33
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s9, s7
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s4, s4, -1
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, 0x360, v9
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s10, s2, -16
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v69, 0, v11
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v35, s9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s9, s2, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v70, 0, v12
	v_add_nc_u32_e32 v71, 0, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s20, s9, s11
	s_xor_b32 s4, s4, s33
	s_sub_i32 s2, s2, s20
	s_ashr_i32 s4, s4, 31
	s_add_i32 s20, s9, 1
	s_sub_i32 s21, s2, s11
	s_cmp_ge_u32 s2, s11
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v67, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v67, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v69, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v69, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v70, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v70, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v71, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v71, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v68
	ds_load_b128 v[5:8], v72
	ds_load_b128 v[9:12], v73
	ds_load_b128 v[13:16], v74
	ds_load_b128 v[17:20], v75
	ds_load_b128 v[21:24], v76
	ds_load_b128 v[25:28], v77
	ds_load_b128 v[29:32], v78
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s9, s20, s9
	s_cselect_b32 s2, s21, s2
	s_add_i32 s20, s9, 1
	s_cmp_ge_u32 s2, s11
	s_cselect_b32 s2, s20, s9
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s9, v35
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s2, s34, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s23, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_cmp_eq_u32_e64 s2, 0, v33
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s4, s4, s23
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s45, s10, s4
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_load_b32 s22, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 981 24                        ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s22, v50
	v_lshlrev_b32_e32 v79, 2, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s45
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshlrev_b32_e32 v41, 2, v0
	s_mov_b32 s10, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s14, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s15, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s29
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s29
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s19, s4
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s10, s10, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 15
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s23, s23, s10
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 28
	s_add_i32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s4, s4, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s45, s45, s4
	s_load_b32 s22, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s15, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s19, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s10, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s4, s4, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s45, s45, s4
	.loc	1 981 24 is_stmt 1              ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s22, v50
	v_lshlrev_b32_e32 v79, 2, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s45
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr41
.LBB0_7:                                ; %Flow
	s_load_b64 s[20:21], s[0:1], 0x40
	v_and_b32_e32 v59, 0x70, v0
	v_lshlrev_b32_e32 v60, 1, v0
	v_lshlrev_b32_e32 v61, 5, v0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_12
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s10, s3, s16
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_ashr_i32 s10, s10, 31
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x6c
	s_load_b32 s46, s[0:1], 0x7c
	s_xor_b32 s11, s25, s10
	s_cvt_u32_f32 s9, s9
	s_sub_i32 s12, s11, s10
	s_sub_i32 s10, 0, s7
	s_mul_i32 s11, s12, s16
	s_mul_i32 s10, s10, s9
	s_sub_i32 s16, s3, s11
	s_mul_hi_u32 s10, s9, s10
	s_abs_i32 s11, s16
	s_add_i32 s9, s9, s10
	s_ashr_i32 s10, s16, 31
	s_mul_hi_u32 s9, s11, s9
	s_ashr_i32 s8, s8, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s24, s9, s7
	s_xor_b32 s25, s10, s8
	s_sub_i32 s8, s11, s24
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s8, s7
	s_cmp_ge_u32 s8, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 4, v59
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s8, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s29, v35
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s10, s9
	v_bfe_i32 v40, v0, 3, 1
	s_xor_b32 s7, s7, s25
	s_load_b128 s[8:11], s[0:1], 0x8
	s_sub_i32 s7, s7, s25
	s_load_b128 s[24:27], s[0:1], 0x28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, 8, v36
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v80, s15, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s18, v36
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v36, 0, v34
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v34, s39, v35
	v_and_b32_e32 v35, 0x60, v0
	v_dual_mov_b32 v112, 0xff800000 :: v_dual_and_b32 v39, 1, v0
	v_lshrrev_b32_e32 v43, 1, v0
	v_and_b32_e32 v40, 0x84, v40
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v81, s15, v37
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s18, v37
	v_and_b32_e32 v37, 0xbc, v60
	v_lshrrev_b32_e32 v38, 4, v35
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[56:57], null, s46, v66, v[34:35]
	v_dual_mov_b32 v111, 0xff800000 :: v_dual_lshlrev_b32 v34, 6, v39
	v_and_b32_e32 v41, 64, v79
	v_lshlrev_b32_e32 v39, 5, v39
	v_and_or_b32 v40, v43, 3, v40
	v_xor_b32_e32 v37, v37, v38
	v_and_b32_e32 v38, 14, v0
	v_lshrrev_b32_e32 v44, 5, v0
	v_lshrrev_b32_e32 v49, 3, v35
	v_or3_b32 v90, v40, v39, v41
	v_and_b32_e32 v40, 16, v0
	v_or_b32_e32 v87, v37, v34
	v_and_b32_e32 v37, 0x1a0, v61
	v_mov_b32_e32 v110, 0xff800000
	v_mad_u64_u32 v[57:58], null, s22, v62, v[50:51]
	v_cmp_eq_u32_e32 vcc_lo, 0, v40
	v_mov_b32_e32 v40, 0x7632
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s17, s12, s17
	v_xor_b32_e32 v42, 0x108, v87
	v_xor_b32_e32 v45, 4, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v40, 0x3276, v40 :: v_dual_lshlrev_b32 v33, 2, v33
	v_or3_b32 v88, v38, v37, v41
	v_mul_u32_u24_e32 v38, 0x42, v38
	v_and_b32_e32 v37, 60, v60
	s_add_i32 s50, s7, s17
	v_lshl_or_b32 v40, v40, 8, v40
	v_xor_b32_e32 v43, 4, v88
	v_add3_u32 v91, v38, v39, v41
	v_mov_b32_e32 v41, 0x5410
	v_or3_b32 v89, v44, v34, v37
	v_lshl_or_b32 v37, v35, 2, v37
	v_add_nc_u32_e32 v84, s14, v80
	v_xor_b32_e32 v44, 8, v88
	v_cndmask_b32_e32 v41, 0x1054, v41, vcc_lo
	v_xor_b32_e32 v39, 0x84, v89
	v_xor_b32_e32 v37, v37, v49
	v_xor_b32_e32 v38, 12, v88
	v_xor_b32_e32 v46, 4, v91
	v_lshl_or_b32 v41, v41, 8, v41
	v_xor_b32_e32 v47, 8, v91
	v_or_b32_e32 v34, v37, v34
	v_xor_b32_e32 v48, 12, v91
	v_xor_b32_e32 v102, 16, v91
	v_and_b32_e32 v37, 0x540054, v41
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v40, 0x760076, v40
	v_xor_b32_e32 v103, 20, v91
	v_xor_b32_e32 v49, 24, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v37, v37, 4, v37
	v_xor_b32_e32 v105, 28, v91
	v_add_nc_u32_e32 v97, 0, v39
	v_mov_b32_e32 v39, v41
	v_lshl_or_b32 v40, v40, 4, v40
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v58, 0x5040504, v37
	v_lshl_add_u32 v37, v66, 1, 0
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s47, s6, 3
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s17, s50, s19
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s49, s50, s47
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s50, s50, s6
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s29, s29, s39
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s6, s12, s37
	v_subrev_nc_u32_e32 v82, s13, v80
	v_subrev_nc_u32_e32 v83, s13, v81
	v_add_nc_u32_e32 v85, s14, v81
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v86, s39, 3, v56
	v_and_b32_e32 v92, 0x7060706, v40
	v_add_nc_u32_e32 v93, 0, v42
	v_add_nc_u32_e32 v94, 0, v43
	v_add_nc_u32_e32 v95, 0, v44
	v_add_nc_u32_e32 v96, 0, v38
	v_add_nc_u32_e32 v98, 0, v45
	v_add_nc_u32_e32 v99, 0, v46
	v_add_nc_u32_e32 v100, 0, v47
	v_add_nc_u32_e32 v101, 0, v48
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v49
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v34
	v_add_nc_u32_e32 v107, v36, v33
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, v41
	v_add_nc_u32_e32 v108, v37, v35
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v40, v41
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s48, s36, 0x3fb8aa3b
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s16, s16, s38
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s51, s6, s29
	s_and_b32 s27, s27, 0xffff
	s_xor_b32 s18, s28, -1
	s_add_i32 s51, s51, s16
	s_lshl_b32 s52, s22, 1
	s_lshl_b32 s53, s22, 2
	s_mul_i32 s54, s22, 6
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s36, s26
	s_mov_b32 s37, s27
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s55, 0x76543210
	s_mov_b32 s40, s10
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
                                        ; implicit-def: $sgpr56
                                        ; implicit-def: $sgpr57
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s6, s23, s46
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s7, s23, 31
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s6, s51, s6
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v119.l, 0
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v113, s6, v56, 1
	v_add_lshl_u32 v114, s6, v86, 1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s6, s23, 31
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s7, s7, 28
	.loc	1 974 36                        ; attention.py:974:36
	s_add_i32 s6, s23, s6
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v113, 0x80000000, v113, s57
	v_cndmask_b32_e64 v114, 0x80000000, v114, s56
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s6, s6, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s7, s23, s7
	.loc	1 974 36                        ; attention.py:974:36
	v_add_nc_u32_e32 v123, s6, v62
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_u16 v115, v113, s[36:39], 0 offen
	buffer_load_u16 v116, v114, s[36:39], 0 offen
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s6, s6, s49
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[113:114], null, s6, s22, v[57:58]
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s47, v123
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s7, s7, 4
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v114.l, v119.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s6, s7, s50
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v127, 0x80000000, v113 :: v_dual_add_nc_u32 v118, 0, v88
	v_add_nc_u32_e32 v126, s53, v113
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v117, 0, v87
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s6, s6, s22
	.loc	1 966 25                        ; attention.py:966:25
	v_add_nc_u32_e32 v120, 0, v89
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v124, s6, v50, 1
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v126, 0x80000000, v126, vcc_lo
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v112
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v135.h, v119.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v119.h, 0xff80, v115.l, s57
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v114.h, 0xff80, v116.l, s56
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_b16_d16_hi v117, v119
	ds_store_b16_d16_hi v93, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	ds_load_u16 v117, v118
	ds_load_u16 v118, v118 offset:16
	ds_load_u16 v129, v94
	ds_load_u16 v130, v94 offset:16
	ds_load_u16 v131, v95
	ds_load_u16 v132, v95 offset:16
	ds_load_u16 v133, v96
	ds_load_u16 v134, v96 offset:16
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v119
	v_cmp_neq_f32_e64 s7, 0xff800000, v114
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 988 30 is_stmt 1              ; attention.py:988:30
	v_mov_b16_e32 v119.h, v119.l
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v118, 16, v118
	v_add_nc_u32_e32 v125, s52, v113
	v_lshlrev_b32_e32 v130, 16, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v118, 0x3fb8aa3b, v118 :: v_dual_add_nc_u32 v115, s54, v113
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_add_nc_u32 v122, 0, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v130, 0x3fb8aa3b, v130
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v128, 0x80000000, v115 :: v_dual_add_nc_u32 v121, 0, v90
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 vcc_lo, s57, s6
	s_and_b32 s6, s56, s7
	v_cndmask_b32_e64 v113, 0, 1, vcc_lo
	v_cndmask_b32_e64 v115, 0, 1, s6
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v118, s48, v46
	v_fmac_f32_e32 v130, s48, v47
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_mov_b16_e32 v114.l, v115.l
	ds_store_b8 v120, v113
	ds_store_b8 v97, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v113, v121
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v113, v121 offset:8
	ds_load_u8_d16 v114, v121 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v114, v121 offset:24
	ds_load_u8_d16 v115, v98
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v115, v98 offset:8
	ds_load_u8_d16 v116, v98 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v116, v98 offset:24
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v121, 16, v131
	v_lshlrev_b32_e32 v131, 16, v132
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v121, 0x3fb8aa3b, v121
	v_dual_mul_f32 v131, 0x3fb8aa3b, v131 :: v_dual_lshlrev_b32 v120, 16, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v121, s48, v44
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v120, 0x3fb8aa3b, v120 :: v_dual_lshlrev_b32 v129, 16, v133
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v133.h, v119.l
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v44.l, 1, v114.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v120, s48, v43
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v129, 0x3fb8aa3b, v129 :: v_dual_lshlrev_b32 v132, 16, v134
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_lshlrev_b32_e32 v117, 16, v117
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v43.l, 1, v113.h
	v_and_b16 v43.h, 1, v115.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v132, 0x3fb8aa3b, v132 :: v_dual_fmac_f32 v129, s48, v45
	v_mul_f32_e32 v117, 0x3fb8aa3b, v117
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v44.h, 1, v116.l
	v_and_b16 v45.l, 1, v114.h
	v_and_b16 v45.h, 1, v116.h
	v_cmp_eq_u16_e64 s7, 1, v43.l
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v117, s48, v42
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v42.l, 1, v113.l
	v_and_b16 v42.h, 1, v115.l
	v_cmp_eq_u16_e64 s11, 1, v43.h
	v_cmp_eq_u16_e64 s9, 1, v44.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v131, s48, v48 :: v_dual_fmac_f32 v132, s48, v49
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s6, 1, v42.l
	v_cmp_eq_u16_e64 s8, 1, v42.h
	v_cmp_eq_u16_e64 s12, 1, v44.h
	v_cmp_eq_u16_e64 s10, 1, v45.l
	v_cmp_eq_u16_e64 s13, 1, v45.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v46, 0xff800000, v117, s6
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v117, 0x80000000, v124, s4
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v42, 0xff800000, v120, s8
	v_cndmask_b32_e64 v47, 0xff800000, v121, s7
	v_cndmask_b32_e64 v43, 0xff800000, v129, s11
	v_cndmask_b32_e64 v48, 0xff800000, v118, s9
	v_cndmask_b32_e64 v44, 0xff800000, v130, s12
	v_cndmask_b32_e64 v49, 0xff800000, v131, s10
	v_cndmask_b32_e64 v45, 0xff800000, v132, s13
	ds_store_b32 v122, v46
	ds_store_b32 v99, v42
	ds_store_b32 v100, v47
	ds_store_b32 v101, v43
	ds_store_b32 v102, v48
	ds_store_b32 v103, v44
	ds_store_b32 v104, v49
	ds_store_b32 v105, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v117, v117, s[24:27], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v113, v127, s[40:43], 0 offen
	buffer_load_u8 v114, v125, s[40:43], 0 offen
	buffer_load_u8 v115, v126, s[40:43], 0 offen
	buffer_load_u8 v116, v128, s[40:43], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_b32 v118, v106
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v130, v46, v42, v47
	v_max3_f32 v131, v43, v48, v44
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v127.h, v119.l
	v_mov_b16_e64 v129.h, v119.l
	v_mov_b16_e64 v128.h, v119.l
	v_mov_b16_e64 v134.h, v119.l
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v122.h, v119.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v132, v49, v45
.Ltmp6:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v124.h, v119.l
	v_mov_b16_e32 v126.h, v119.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v130, v130, v131, v132
.Ltmp8:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v131.h, v119.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v132, v130, s55, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v120, v118
.Ltmp10:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v130, v112, v130, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v120, v120 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v121, v118, v118
.Ltmp13:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v132, v112, v130
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v42, v42, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v120, v120, v120 :: v_dual_max_f32 v111, v111, v111
.Ltmp15:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v48, v48, v130
	v_sub_f32_e32 v46, v46, v130
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v132, v132
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v120, v121, v120 :: v_dual_max_f32 v121, v110, v110
.Ltmp17:
	.loc	1 974 36                        ; attention.py:974:36
	v_lshlrev_b32_e32 v123, 1, v123
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v125, v120
.Ltmp19:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v48, v48
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v138, 5, v123
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v44, v44, v130
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v112, 0, v132, s14
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v125, v125 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v49, v49, v130
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v42, 0, v42, s8
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v44, v44
.Ltmp22:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v125, v125, v125
.Ltmp23:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v33, v33, v112
	v_mul_f32_e32 v34, v34, v112
	v_mul_f32_e32 v38, v38, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v39, v39, v112 :: v_dual_max_f32 v120, v120, v125
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v139, 9, v123
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v127.l, v42.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v112
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v136, 1, v123
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v137, v120
.Ltmp25:
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v123, 13, v123
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v46, 0, v46, s6
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v36, v36, v112
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v44, 0, v44, s12
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v137, v137 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v48, 0, v48, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v128.l, v46.h
	v_mov_b16_e32 v125.h, v119.l
	v_mov_b16_e64 v134.l, v44.h
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v137, v137, v137
.Ltmp29:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v47, v47, v130
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v135.l, v48.h
	v_cmp_o_f32_e64 s6, v42, v42
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v49, v49
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v120, v120, v137
.Ltmp31:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v137, v120
.Ltmp33:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v49, 0, v49, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v137, v137 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v47, 0, v47, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s10, v48, v48
	v_mov_b16_e64 v131.l, v49.h
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v137, v137, v137
.Ltmp37:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v43, v43, v130
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v133.l, v47.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v40, v40, v112
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v47, v47
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v132, v120, v137
.Ltmp39:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v43, v43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v120, 1, v127
	v_cmp_o_f32_e64 s12, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v111, v111, v132
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v45, v45, v130
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v42, v42, v120, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v118, v118, v111
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v43, 0, v43, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v129.l, v43.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v37, v37, v112
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v43, v43
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v45, 0, v45, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v112, 0, v118, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_mov_b16_e32 v125.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s11, v45, v45
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v118, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v118, v118 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v112, v112, v118 :: v_dual_and_b32 v127, 1, v128
.Ltmp42:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v118, 1, v134
	v_and_b32_e32 v128, 1, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v134, v112 :: v_dual_and_b32 v129, 1, v133
.Ltmp44:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v46, v46, v127, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v43, v128, 0x7fff
	v_add3_u32 v47, v47, v129, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v134, v134 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v133, 1, v135
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v112, v112, v134
.Ltmp48:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v48, v48, v133, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v47, v112
.Ltmp50:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v118, v44, v118, 0x7fff
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v47, v47 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v47, v112, v47
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v112, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v112, v112 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(3)
	v_and_b16 v42.l, v113.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v44, 15, v113
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v119.l, 4, v113.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_lshlrev_b32_e32 v113, 16, v117
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v125, 1, v125
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b16 v122.l, 4, v114.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v43.l, v115.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v127, 15, v115
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v124.l, 4, v115.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v120, v45, v125, 0x7fff
	v_cndmask_b16 v125.h, 0x7fff, v42.h, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s19, v136
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v42.h, v114.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v45, 15, v114
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v125.l, 0x7fff, v46.h, s7
	v_cndmask_b16 v46.h, 0x7fff, v43.h, s8
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v114, 0, v119, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s19, v138
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v43.h, v116.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v128, 15, v116
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v126.l, 4, v116.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v119, -16, v44
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v115, 0, v122, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s19, v139
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v122, -16, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v116, 0, v124, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s19, v123
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v123, -16, v127
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v117, 0, v126, s6
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v42.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e64 v44, v44, v119, s6
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v42.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v119, -16, v114
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v42, v45, v122, s6
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v43.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v122, -16, v115
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v44, v44, v113 :: v_dual_and_b32 v131, 1, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v45, v127, v123, s6
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v43.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v123, -16, v116
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v49, v49, v131, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v42, v42, v113
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v45, v45, v113
	.loc	1 989 54 is_stmt 1              ; attention.py:989:54
	v_or_b32_e32 v124, -16, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s8, v45, v45
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v43, v128, v124, s6
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v114
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v124, -16, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v114, v114, v119, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v115
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v119, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v43, v113, v43
	v_cvt_f32_i32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v115, v115, v122, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v116
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v122, v45, 16, 1
	v_add3_u32 v42, v42, v119, 0x7fff
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v114, v114, v113
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v116, v116, v123, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v117
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v123, v43, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v115, v115, v113
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v117, v117, v124, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v45, v45, v122, 0x7fff
	v_bfe_u32 v119, v115, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v116, v113, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v43, v43, v123, 0x7fff
	v_cmp_o_f32_e64 s13, v114, v114
	v_cmp_o_f32_e64 s14, v115, v115
	v_bfe_u32 v122, v116, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v113, v113, v117
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v117, v44, 16, 1
	v_cmp_o_f32_e64 s15, v116, v116
	v_cndmask_b16 v43.l, 0x7fff, v45.h, s8
	v_add3_u32 v45, v116, v122, 0x7fff
	v_bfe_u32 v123, v113, 16, 1
	v_add3_u32 v44, v44, v117, 0x7fff
	v_bfe_u32 v117, v114, 16, 1
	v_cmp_o_f32_e64 s16, v113, v113
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s7
	v_add3_u32 v113, v113, v123, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v44.h, s6
	v_add3_u32 v44, v114, v117, 0x7fff
	v_add3_u32 v114, v115, v119, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s15
	v_cndmask_b16 v45.h, 0x7fff, v113.h, s16
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s13
	v_cndmask_b16 v44.h, 0x7fff, v114.h, s14
	ds_store_b16 v107, v42
	ds_store_b16 v107, v44 offset:128
	ds_store_b16_d16_hi v107, v42 offset:512
	ds_store_b16_d16_hi v107, v44 offset:640
	ds_store_b16 v107, v43 offset:1024
	ds_store_b16 v107, v45 offset:1152
	ds_store_b16_d16_hi v107, v43 offset:1536
	ds_store_b16_d16_hi v107, v45 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v113, v108
	ds_load_u16_d16 v114, v108 offset:256
	ds_load_u16_d16 v115, v108 offset:512
	ds_load_u16_d16 v116, v108 offset:768
	ds_load_u16_d16 v117, v108 offset:1024
	ds_load_u16_d16 v118, v108 offset:1280
	ds_load_u16_d16 v119, v108 offset:1536
	ds_load_u16_d16 v120, v108 offset:1792
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v42, v121, v132
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(2)
	v_cndmask_b16 v44.h, 0x7fff, v118.h, vcc_lo
	v_cndmask_b16 v44.l, 0x7fff, v48.h, s10
	v_permlanex16_b32 v48, v125, s55, 0xfedcba98 op_sel:[1,0]
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v110
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v43, v110, v42
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v45.h, 0x7fff, v120.h, s11
	v_cndmask_b16 v45.l, 0x7fff, v49.h, s12
	v_perm_b32 v121, v48, v125, v58
	v_perm_b32 v122, v48, v125, v92
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v43, v43
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v49, v46, s55, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v126, v44, s55, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v128, v45, s55, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v110, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v123, v49, v46, v58
	v_perm_b32 v124, v49, v46, v92
	v_perm_b32 v125, v126, v44, v58
	v_perm_b32 v126, v126, v44, v92
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v48, 0, v43, vcc_lo
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v113, v108 offset:128
	ds_load_u16_d16_hi v114, v108 offset:384
	ds_load_u16_d16_hi v115, v108 offset:640
	ds_load_u16_d16_hi v116, v108 offset:896
	ds_load_u16_d16_hi v117, v108 offset:1152
	ds_load_u16_d16_hi v118, v108 offset:1408
	ds_load_u16_d16_hi v119, v108 offset:1664
	ds_load_u16_d16_hi v120, v108 offset:1920
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v43, v47, v112
.Ltmp56:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v127, v128, v45, v58
	v_perm_b32 v128, v128, v45, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v112, v130 :: v_dual_fmac_f32 v43, v109, v48
	v_mov_b32_e32 v109, v43
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[113:120], v[121:128], v[33:40]
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_13
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v42, s23, v62
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s6, s23, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s13, s6, s44
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v47, 10, v42
	v_add_nc_u32_e32 v44, 4, v42
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s19, v42
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v49, 14, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s19, v47
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v47, s13, v53, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v48, 12, v42
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s19, v44
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v44, s13, v64, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v43, 2, v42
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s11, s19, v48
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v48, s13, v54, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v45, 6, v42
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s19, v43
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v43, s13, v63, 1
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s12, s19, v49
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v49, s13, v55, 1
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s8, s19, v45
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v45, s13, v52, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v46, 8, v42
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v42, s13, v51, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s7
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s8
	s_and_not1_b32 s8, s57, exec_lo
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s9, s19, v46
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v46, s13, v65, 1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s10
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s11
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s12
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v42, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v42, v41
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v67, v113
	s_waitcnt vmcnt(6)
	ds_store_b16 v67, v46 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v69, v43
	s_waitcnt vmcnt(4)
	ds_store_b16 v69, v47 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v70, v44
	s_waitcnt vmcnt(2)
	ds_store_b16 v70, v48 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v71, v45
	s_waitcnt vmcnt(0)
	ds_store_b16 v71, v49 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[114:117], v68
	ds_load_b128 v[118:121], v72
	ds_load_b128 v[122:125], v73
	ds_load_b128 v[126:129], v74
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v48, v41
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[130:133], v75
	ds_load_b128 v[134:137], v76
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v113, s23, v66
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[138:141], v77
	ds_load_b128 v[142:145], v78
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_le_i32_e32 vcc_lo, v113, v80
	v_cmp_le_i32_e64 s6, v113, v81
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s19, v113
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[114:121], v[1:8], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	s_or_b32 s9, s18, vcc_lo
	s_or_b32 s6, s18, s6
	s_and_b32 s9, s0, s9
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[122:129], v[9:16], v[42:49]
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 s6, s1, s6
	s_and_b32 s9, s7, s9
	s_and_b32 s10, s7, s6
	s_and_b32 s6, s9, exec_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[130:137], v[17:24], v[42:49]
	s_and_not1_b32 s7, s56, exec_lo
	s_and_b32 s11, s10, exec_lo
	.loc	1 950 17                        ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_or_b32 s57, s8, s6
	s_or_b32 s56, s7, s11
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[138:145], v[25:32], v[42:49]
	.loc	1 950 17                        ; attention.py:950:17
	s_cbranch_vccnz .LBB0_9
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v113, v82
	v_cmp_ge_i32_e64 s6, v113, v83
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v113, v84
	v_cmp_le_i32_e64 s8, v113, v85
	s_and_not1_b32 s11, s57, exec_lo
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s6, s6, s8
	s_and_b32 s7, s7, s9
	s_and_b32 s6, s6, s10
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s8, s56, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_or_b32 s57, s11, s7
	s_or_b32 s56, s8, s6
	s_branch .LBB0_9
.LBB0_12:
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, 0xff800000 :: v_dual_mov_b32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v1, v40
	s_branch .LBB0_14
.LBB0_13:                               ; %._crit_edge.loopexit
.Ltmp57:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v42, v42 :: v_dual_add_f32 v1, 0, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v41, v79 :: v_dual_max_f32 v2, 0xff800000, v2
.Ltmp58:
.LBB0_14:                               ; %._crit_edge
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v59
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v3, 3, v0
	s_mov_b32 s0, 0x76543210
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v2, 0xff800000, v2 :: v_dual_and_b32 v3, 12, v3
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s33, s33, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s22, s22, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v4, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v1, 0, v1
.Ltmp63:
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_and_b32 v5, 12, v41
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v3, 0, v3
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp67:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s34, s33
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v37, vcc_lo
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_nc_u32 v4, 0, v5
.Ltmp70:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v33 :: v_dual_cndmask_b32 v6, 0, v35
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v3, v1
.Ltmp73:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v1, v5 :: v_dual_mov_b32 v8, v6
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v4, v4
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v34, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s22
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v6, v8 :: v_dual_mov_b32 v7, v3
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v10, v6
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v40, vcc_lo
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v7
	v_dual_add_f32 v1, v5, v1 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v20, v15
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v3 :: v_dual_mov_b32 v5, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v2
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v20, v15
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v2, v7
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v11, v4 :: v_dual_add_f32 v2, v3, v8
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v6, v10
	v_dual_add_f32 v1, v1, v5 :: v_dual_mov_b32 v10, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v6, v3
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v4, v11
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v4, v1
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v8
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_cndmask_b32 v11, 0, v36
	v_add_f32_e32 v5, v3, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v4 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v16, v11
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v16 :: v_dual_mov_b32 v13, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v11, v13
	v_add_f32_e32 v11, v12, v14
	v_dual_add_f32 v14, v16, v18 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v15, v13
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_16
; %bb.15:
.Ltmp123:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v0, v10, v10 :: v_dual_max_f32 v7, v7, v7
.Ltmp124:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v8, v9
.Ltmp126:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp127:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v7, v7, v0 :: v_dual_mov_b32 v0, 0
.Ltmp128:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s20, s6
	s_addc_u32 s7, s21, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v0, v[7:8], s[6:7]
.LBB0_16:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v15, v5, v6 :: v_dual_and_b32 v0, 0xc0, v41
	v_dual_add_f32 v14, v2, v4 :: v_dual_add_f32 v13, v1, v3
.Ltmp130:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v60
	v_and_b32_e32 v2, 32, v61
	s_and_b32 vcc_lo, s2, s4
	v_add_nc_u32_e32 v0, 0, v0
	v_lshl_add_u32 v3, v59, 1, 0
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v6, v11, v12
.Ltmp132:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v2, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v50
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	v_lshl_add_u32 v1, v1, 2, 8
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp133:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 146
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7588
; TotalNumSgprs: 60
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 146
; Occupancy: 9
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp40-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
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
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bf16_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
