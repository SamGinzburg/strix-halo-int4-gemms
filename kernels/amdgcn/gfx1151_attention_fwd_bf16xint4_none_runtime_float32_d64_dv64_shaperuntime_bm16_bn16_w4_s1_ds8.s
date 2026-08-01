	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s27, s[0:1], 0x68
	s_load_b128 s[20:23], s[0:1], 0x4c
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v57, 63, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v9, v0, 6, 1
	v_and_b32_e32 v69, 15, v0
	v_and_b32_e32 v34, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 0x90, v9
	v_and_b32_e32 v10, 0x70, v10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s10, s3, s22
	s_cselect_b32 s33, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[58:59], null, s34, v65, v[57:58]
	s_cselect_b32 s11, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s24, s27
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s24
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s27
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v10, v69, 7, v10
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[59:60], null, s34, 6, v[58:59]
	v_lshl_add_u32 v66, s34, 1, v58
	v_lshl_add_u32 v67, s34, 2, v58
	v_lshl_add_u32 v68, s34, 3, v58
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v13, 16, v10
	v_xor_b32_e32 v14, 32, v10
	v_xor_b32_e32 v15, 48, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[60:61], null, s34, 10, v[58:59]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[61:62], null, s34, 12, v[58:59]
	v_mad_u64_u32 v[62:63], null, s34, 14, v[58:59]
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v16, 64, v10
	v_add_nc_u32_e32 v71, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s25, s4
	s_sub_i32 s4, 0, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s4, s4, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v75, 0, v13
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s4, s25, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v76, 0, v14
	.loc	1 798 32                        ; attention.py:798:32
	s_add_i32 s25, s25, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v77, 0, v15
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v78, 0, v16
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_i32 s7, s4, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v79, 0, v17
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s5, s24
	s_cmp_ge_u32 s5, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v80, 0, v18
	.loc	1 748 27                        ; attention.py:748:27
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v81, 0, v10
	.loc	1 748 27                        ; attention.py:748:27
	s_cselect_b32 s4, s7, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s8, s20
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
	s_mul_i32 s6, s4, s27
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s30, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s26, s2, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s30, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 4, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v2
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
	s_cselect_b32 s28, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s9, s21
	s_xor_b32 s31, s20, s21
	s_cvt_f32_u32 s2, s9
	s_sub_i32 s4, 0, s9
	s_ashr_i32 s31, s31, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s34, v57
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
	v_cmp_gt_i32_e64 s2, s22, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s22, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s29, s7, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s22, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s29, s7, s29
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s22, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s29, s8, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s35, s29, s9
	s_add_i32 s36, s29, 1
	s_sub_i32 s35, s8, s35
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s22, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s37, s35, s9
	s_cmp_ge_u32 s35, s9
	s_cselect_b32 s29, s36, s29
	s_cselect_b32 s35, s37, s35
	s_add_i32 s36, s29, 1
	s_cmp_ge_u32 s35, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s22, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s29, s36, s29
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s35, s10, s30
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s35, s35, s34
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s22, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s35, v58, 1
	v_add_lshl_u32 v2, s35, v66, 1
	v_add_lshl_u32 v3, s35, v67, 1
	v_add_lshl_u32 v4, s35, v59, 1
	v_add_lshl_u32 v5, s35, v68, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s35, v60, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s35, v61, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s35, v62, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_lshlrev_b32 v33, 1, v57
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s9
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s23, 15
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s4, s2, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x7
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v2, v2, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s4, s4, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v9, v33
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s6, s29, s31
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s2, s2, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s8, s6, s31
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s6, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s7, s8
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s4, s6, s27
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s9, s7
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s4, s4, -1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v70, 0, v9
	v_xor_b32_e32 v9, 0x360, v9
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s10, s2, -16
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v72, 0, v11
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v35, s9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s9, s2, s25
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v73, 0, v12
	v_add_nc_u32_e32 v74, 0, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s16, s9, s24
	s_xor_b32 s4, s4, s27
	s_sub_i32 s2, s2, s16
	s_ashr_i32 s4, s4, 31
	s_add_i32 s16, s9, 1
	s_sub_i32 s17, s2, s24
	s_cmp_ge_u32 s2, s24
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v70, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v70, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v72, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v72, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v73, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v73, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v74, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v74, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v71
	ds_load_b128 v[5:8], v75
	ds_load_b128 v[9:12], v76
	ds_load_b128 v[13:16], v77
	ds_load_b128 v[17:20], v78
	ds_load_b128 v[21:24], v79
	ds_load_b128 v[25:28], v80
	ds_load_b128 v[29:32], v81
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s9, s16, s9
	s_cselect_b32 s2, s17, s2
	s_add_i32 s16, s9, 1
	s_cmp_ge_u32 s2, s24
	s_cselect_b32 s2, s16, s9
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s9, v35
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s2, s26, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s44, s2, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_cmp_eq_u32_e64 s2, 0, v34
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl4_add_u32 s4, s4, s44
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s45, s10, s4
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc1 .LBB0_9
; %bb.1:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_load_b32 s35, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v82, 0, 1, s11
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_cbranch_vccz .LBB0_10
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_load_b64 s[24:25], s[0:1], 0x40
	.loc	1 981 24 is_stmt 1              ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s35, v57
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s44, s45
	s_cbranch_scc1 .LBB0_11
.LBB0_3:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s10, s3, s20
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_ashr_i32 s10, s10, 31
	s_ashr_i32 s8, s8, 31
	s_xor_b32 s11, s28, s10
	s_cvt_u32_f32 s9, s9
	s_sub_i32 s12, s11, s10
	s_sub_i32 s10, 0, s7
	s_mul_i32 s11, s12, s20
	s_mul_i32 s10, s10, s9
	s_sub_i32 s11, s3, s11
	s_mul_hi_u32 s10, s9, s10
	s_abs_i32 s16, s11
	s_add_i32 s9, s9, s10
	s_ashr_i32 s10, s11, 31
	s_mul_hi_u32 s9, s16, s9
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s18, s10, s8
	s_mul_i32 s11, s9, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s30, v69
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s8, s16, s11
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s8, s7
	s_cmp_ge_u32 s8, s7
	v_dual_mov_b32 v37, 0x5410 :: v_dual_add_nc_u32 v84, s15, v36
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s8, s11, s8
	v_and_b32_e32 v35, 16, v0
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s8, s7
	s_load_b32 s17, s[0:1], 0x6c
	s_cselect_b32 s7, s10, s9
	v_cmp_eq_u32_e32 vcc_lo, 0, v35
	v_dual_mov_b32 v35, 0x7632 :: v_dual_add_nc_u32 v86, s14, v84
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[28:29], s[0:1], 0x28
	s_xor_b32 s0, s7, s18
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s12, s12, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s18
	v_dual_cndmask_b32 v35, 0x3276, v35 :: v_dual_lshlrev_b32 v34, 2, v34
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s48, s0, s12
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s22, v36
	v_cndmask_b32_e32 v36, 0x1054, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v35, v35, 8, v35
	v_mov_b32_e32 v41, 0
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[63:64], null, s35, v65, v[57:58]
	v_lshl_or_b32 v36, v36, 8, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v44, v41 :: v_dual_and_b32 v35, 0x760076, v35
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v33, 0, v33
	v_and_b32_e32 v36, 0x540054, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v35, v35, 4, v35
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v83, v0, 4, 1
	v_subrev_nc_u32_e32 v85, s13, v84
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_add_nc_u32 v88, v33, v34
	v_lshl_or_b32 v36, v36, 4, v36
	v_dual_mov_b32 v46, v41 :: v_dual_and_b32 v87, 0x7060706, v35
	v_dual_mov_b32 v48, v41 :: v_dual_and_b32 v35, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v43, v41 :: v_dual_and_b32 v64, 0x5040504, v36
	v_lshl_add_u32 v36, v69, 1, 0
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v47, v41
	v_mov_b32_e32 v33, v41
	v_dual_mov_b32 v34, v41 :: v_dual_add_nc_u32 v89, v36, v35
	v_mov_b32_e32 v35, v41
	v_mov_b32_e32 v36, v41
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_mov_b32_e32 v90, v41
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s20, s17, 0x3fb8aa3b
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s21, s6, 3
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s46, s48, s23
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s47, s48, s21
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s48, s48, s6
	s_lshl_b32 s22, s35, 1
	s_lshl_b32 s49, s35, 2
	s_mul_i32 s50, s35, 6
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s40, s10
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_branch .LBB0_5
.LBB0_4:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s1, s44, 31
	s_ashr_i32 s6, s44, 31
	s_add_i32 s1, s44, s1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s6, s6, 28
	.loc	1 974 36                        ; attention.py:974:36
	s_ashr_i32 s1, s1, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_add_i32 s6, s44, s6
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v51, s20, v51 :: v_dual_add_nc_u32 v94, s1, v65
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s1, s1, s47
	.loc	1 1001 53                       ; attention.py:1001:53
	s_ashr_i32 s6, s6, 4
	v_mad_u64_u32 v[92:93], null, s1, s35, v[63:64]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s21, v94
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s1, s6, s48
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v52, s20, v52 :: v_dual_mul_f32 v55, s20, v55
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s1, s1, s35
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v93, s1, v57, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v95, 0x80000000, v92 :: v_dual_lshlrev_b32 v94, 1, v94
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v49, s20, v49 :: v_dual_add_nc_u32 v96, s22, v92
	v_dual_mul_f32 v50, s20, v50 :: v_dual_add_nc_u32 v97, s49, v92
	v_dual_mul_f32 v53, s20, v53 :: v_dual_add_nc_u32 v92, s50, v92
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v93, 0x80000000, v93, s4
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_u8 v95, v95, s[40:43], 0 offen
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_add_nc_u32 v109, 5, v94
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v93, v93, s[28:31], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x2
	buffer_load_u8 v96, v96, s[40:43], 0 offen
	buffer_load_u8 v97, v97, s[40:43], 0 offen
	buffer_load_u8 v92, v92, s[40:43], 0 offen
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v56, s20, v56
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s59
	v_cndmask_b32_e64 v98, 0xff800000, v49, s54
	v_cndmask_b32_e64 v50, 0xff800000, v50, s53
	v_cndmask_b32_e64 v51, 0xff800000, v51, s57
	v_cndmask_b32_e64 v56, 0xff800000, v56, s58
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v54, s20, v54
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v52, 0xff800000, v52, s52
	v_cndmask_b32_e64 v53, 0xff800000, v53, s56
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v49, v98, v50, v51
	v_max_f32_e32 v101, v55, v56
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s55
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v91
	.loc	1 985 31                        ; attention.py:985:31
	v_or_b32_e32 v108, 1, v94
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v99.h, 0
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v100, v52, v53, v54
.Ltmp4:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s44, s44, 16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v104.h, v99.h
	v_mov_b16_e32 v106.h, v99.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v49, v49, v100, v101
.Ltmp6:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v99.h
	v_mov_b16_e32 v107.h, v99.h
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v102.h, v99.h
	v_mov_b16_e32 v103.h, v99.h
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v105, v49, s51, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v100.h, v99.h
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s44, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v49, v91, v49, v105
	.loc	1 985 31                        ; attention.py:985:31
	v_add_nc_u32_e32 v105, 9, v94
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v51, v51, v49 :: v_dual_add_nc_u32 v94, 13, v94
	v_sub_f32_e32 v98, v98, v49
	v_sub_f32_e32 v50, v50, v49
	v_sub_f32_e32 v52, v52, v49
	v_sub_f32_e32 v53, v53, v49
	v_sub_f32_e32 v55, v55, v49
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v51, v51
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v111, 0, v50, s53
	v_cndmask_b32_e64 v50, 0, v98, s54
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v110, v91, v49
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v112, 0, v52, s52
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v52, 0, v53, s56
	v_cndmask_b32_e64 v53, 0, v55, s59
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v55, v50, v111
.Ltmp10:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v110, v110
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v51, 0, v51, s57
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v56, v56, v49
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v101.l, v50.h
	v_cmp_o_f32_e64 s6, v50, v50
	v_mov_b16_e32 v106.l, v52.h
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v91, v51, v112
.Ltmp12:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v56, v56
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v104.l, v51.h
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v110, 0, v110 :: v_dual_and_b32 v101, 1, v101
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v54, v54, v49
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v107.l, v53.h
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v55, v55, v91
.Ltmp14:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v91, 1, v104
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v39, v39, v110
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v56, 0, v56, s58
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v38, v38, v110
	v_mul_f32_e32 v36, v36, v110
	v_mul_f32_e32 v40, v40, v110
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v50, v50, v101, 0x7fff
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v113, v53, v56
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v51, v51
	v_and_b32_e32 v104, 1, v106
	v_add3_u32 v51, v51, v91, 0x7fff
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v54, 0, v54, s55
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v101.l, 0x7fff, v50.h, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s23, v108
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v52, v52
	v_cmp_o_f32_e64 s11, v53, v53
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v52, v54
.Ltmp18:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v52, v52, v104, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v51.h, s8
	v_cmp_o_f32_e64 s1, v111, v111
	v_cmp_o_f32_e64 s7, v112, v112
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v98, v98, v113
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v106, 1, v107
	v_cmp_o_f32_e64 s9, v54, v54
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v33, v33, v110
	v_mul_f32_e32 v34, v34, v110
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v91, v53, v106, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v52.h, s10
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v35, v35, v110
	v_mul_f32_e32 v37, v37, v110
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v99.l, 4, v95.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v50.l, v95.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v53, 16, v93
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v93, 15, v96
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v55, v55, v98
.Ltmp22:
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v51.h, v92.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v98, 15, v92
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v102.l, 4, v96.l
	v_lshrrev_b16 v100.l, 4, v92.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v92, 0, v99, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s23, v109
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v52, 15, v95
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v51.l, v97.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v95, 15, v97
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v103.l, 4, v97.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v97, 0, v102, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s23, v105
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v50.h, v96.l, 15
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v96, -16, v52
	v_or_b32_e32 v105, -16, v98
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v99.l, v111.h
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v102, 0, v103, s6
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e64 s6, s23, v94
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v103, -16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e64 v94, 0, v100, s6
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v50.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v100, -16, v93
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v52, v52, v96, s6
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v50.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v96, -16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v50, v93, v100, s6
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v51.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v100, -16, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v52, v52, v53 :: v_dual_and_b32 v107, 1, v99
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v99.l, v112.h
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v93, v95, v103, s6
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s6, 7, v51.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v95, -16, v97
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v93, v93
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e64 v51, v98, v105, s6
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v92
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v98, -16, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v93, v93, v53
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v92, v92, v96, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v97
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cmp_o_f32_e64 s12, v93, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v51, v53, v51
	v_cvt_f32_i32_e32 v92, v92
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v95, v97, v95, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v102
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v103, 1, v99
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v97, v50, v53
	v_mul_f32_e32 v92, v92, v53
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e64 v96, v102, v98, s6
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e64 s6, 7, v94
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_bfe_u32 v50, v52, 16, 1
	v_bfe_u32 v98, v93, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v95, v95, v53
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e64 v94, v94, v100, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v52, v52
	v_add3_u32 v50, v52, v50, 0x7fff
	v_bfe_u32 v52, v92, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v96, v53, v96
	v_cvt_f32_i32_e32 v94, v94
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v100, v51, 16, 1
	v_cmp_o_f32_e64 s8, v92, v92
	v_add3_u32 v52, v92, v52, 0x7fff
	v_cmp_o_f32_e64 s10, v97, v97
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v53, v53, v94
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v94, v97, 16, 1
	v_add3_u32 v93, v93, v98, 0x7fff
	v_add3_u32 v98, v51, v100, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s6
	v_bfe_u32 v100, v53, 16, 1
	v_add3_u32 v92, v97, v94, 0x7fff
	v_bfe_u32 v94, v95, 16, 1
	v_bfe_u32 v97, v96, 16, 1
	v_cmp_o_f32_e64 s6, v95, v95
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s8
	v_cmp_o_f32_e64 s13, v51, v51
	v_add3_u32 v52, v95, v94, 0x7fff
	v_cmp_o_f32_e64 s14, v96, v96
	v_cmp_o_f32_e64 s15, v53, v53
	v_cndmask_b16 v51.l, 0x7fff, v92.h, s10
	v_add3_u32 v92, v96, v97, 0x7fff
	v_add3_u32 v53, v53, v100, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s6
	v_cndmask_b16 v51.h, 0x7fff, v93.h, s12
	v_cndmask_b16 v52.l, 0x7fff, v98.h, s13
	v_cndmask_b16 v53.l, 0x7fff, v92.h, s14
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s15
	ds_store_b16 v88, v50
	ds_store_b16_d16_hi v88, v50 offset:128
	ds_store_b16 v88, v51 offset:512
	ds_store_b16_d16_hi v88, v52 offset:640
	ds_store_b16_d16_hi v88, v51 offset:1024
	ds_store_b16 v88, v53 offset:1152
	ds_store_b16 v88, v52 offset:1536
	ds_store_b16_d16_hi v88, v53 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v91, v89
	ds_load_u16_d16 v92, v89 offset:256
	ds_load_u16_d16 v93, v89 offset:512
	ds_load_u16_d16 v94, v89 offset:768
	ds_load_u16_d16 v95, v89 offset:1024
	ds_load_u16_d16 v96, v89 offset:1280
	ds_load_u16_d16 v97, v89 offset:1536
	ds_load_u16_d16 v98, v89 offset:1792
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v99.l, v54.h
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v50, v55, s51, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v52, v111, v107, 0x7fff
	v_add3_u32 v53, v112, v103, 0x7fff
	s_waitcnt lgkmcnt(7)
	v_cndmask_b16 v52.l, 0x7fff, v91.h, s11
	v_and_b32_e32 v51, 1, v99
	v_mov_b16_e32 v99.l, v56.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v55, v50
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v101.h, 0x7fff, v52.h, s1
	v_cndmask_b16 v104.h, 0x7fff, v53.h, s7
	v_add3_u32 v51, v54, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v50, v90, v110 :: v_dual_and_b32 v99, 1, v99
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v91, v89 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v92, v89 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v89 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v89 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v89 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v89 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v97, v89 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v98, v89 offset:1920
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v53, v56, v99, 0x7fff
	v_permlanex16_b32 v54, v101, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v106.h, 0x7fff, v51.h, s9
	v_permlanex16_b32 v51, v104, s51, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v90, v50
	v_cndmask_b16 v52.h, 0x7fff, v53.h, vcc_lo
	v_perm_b32 v99, v54, v101, v64
	v_permlanex16_b32 v53, v106, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v100, v54, v101, v87
	v_perm_b32 v101, v51, v104, v64
	v_permlanex16_b32 v54, v52, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v102, v51, v104, v87
	v_perm_b32 v103, v53, v106, v64
	v_perm_b32 v104, v53, v106, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v105, v54, v52, v64
	v_perm_b32 v106, v54, v52, v87
	.loc	1 1019 23 is_stmt 0             ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[91:98], v[99:106], v[33:40]
	v_mov_b32_e32 v91, v49
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v49, s44, v65
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s1, s44, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s12, s1, s34
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v51, 4, v49
	v_add_nc_u32_e32 v54, 10, v49
	v_add_nc_u32_e32 v55, 12, v49
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s23, v49
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v56, 14, v49
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s23, v51
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v51, s12, v67, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v50, 2, v49
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s9, s23, v54
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v54, s12, v60, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v53, 8, v49
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s23, v55
	v_cmp_gt_i32_e64 s1, s23, v50
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v55, s12, v61, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v52, 6, v49
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v49, s12, v58, 1
	v_add_lshl_u32 v50, s12, v66, 1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s8, s23, v53
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v53, s12, v68, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s11, s23, v56
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v56, s12, v62, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s8
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s9
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s10
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s23, v52
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v52, s12, v59, 1
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v82
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s1, s5, s7
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s1, s5, s11
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	s_clause 0x7
	buffer_load_u16 v49, v49, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v50, v50, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v56, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b16 v70, v49
	s_waitcnt vmcnt(6)
	ds_store_b16 v70, v53 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v72, v50
	s_waitcnt vmcnt(4)
	ds_store_b16 v72, v54 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v73, v51
	s_waitcnt vmcnt(2)
	ds_store_b16 v73, v55 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v74, v52
	s_waitcnt vmcnt(0)
	ds_store_b16 v74, v56 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[92:95], v71
	ds_load_b128 v[96:99], v75
	ds_load_b128 v[100:103], v76
	ds_load_b128 v[104:107], v77
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[92:99], v[1:8], v[41:48]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[92:95], v78
	ds_load_b128 v[96:99], v79
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[100:107], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[92:99], v[17:24], v[49:56]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[93:96], v80
	ds_load_b128 v[97:100], v81
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v92, s44, v83
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s1, s23, v92
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s54, s0, s1
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[93:100], v[25:32], v[49:56]
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v93, 2, v92
	v_add_nc_u32_e32 v94, 4, v92
	v_add_nc_u32_e32 v95, 6, v92
	v_add_nc_u32_e32 v96, 8, v92
	v_add_nc_u32_e32 v97, 10, v92
	v_add_nc_u32_e32 v98, 12, v92
	v_add_nc_u32_e32 v99, 14, v92
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s23, v93
	v_cmp_gt_i32_e64 s7, s23, v95
	v_cmp_gt_i32_e64 s8, s23, v94
	v_cmp_gt_i32_e64 s9, s23, v97
	v_cmp_gt_i32_e64 s10, s23, v96
	v_cmp_gt_i32_e64 s11, s23, v99
	v_cmp_gt_i32_e64 s12, s23, v98
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s53, s0, s6
	s_and_b32 s57, s0, s8
	s_and_b32 s52, s0, s7
	s_and_b32 s56, s0, s10
	s_and_b32 s55, s0, s9
	s_and_b32 s59, s0, s12
	s_and_b32 s58, s0, s11
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v92, v84
	v_cmp_le_i32_e64 s1, v93, v84
	v_cmp_le_i32_e64 s6, v94, v84
	v_cmp_le_i32_e64 s7, v95, v84
	v_cmp_le_i32_e64 s8, v96, v84
	v_cmp_le_i32_e64 s9, v97, v84
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s12, vcc_lo, s54
	s_and_b32 s1, s1, s53
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s10, v98, v84
	v_cmp_le_i32_e64 s11, v99, v84
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s6, s6, s57
	s_and_b32 s7, s7, s52
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s53, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s56
	s_and_b32 s9, s9, s55
	s_or_b32 s54, s13, s12
	s_or_b32 s53, s14, s1
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s12, s52, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s59
	s_and_b32 s11, s11, s58
	s_or_b32 s57, s1, s6
	s_or_b32 s52, s12, s7
	s_and_not1_b32 s1, s56, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s55, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s56, s1, s6
	s_or_b32 s55, s7, s8
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s59, s1, s6
	s_or_b32 s58, s7, s8
.LBB0_7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s33
	s_cbranch_vccnz .LBB0_4
; %bb.8:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v92, v85
	v_cmp_ge_i32_e64 s1, v93, v85
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v92, v86
	v_cmp_le_i32_e64 s13, v93, v86
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s6, v94, v85
	v_cmp_ge_i32_e64 s7, v95, v85
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s14, v94, v86
	v_cmp_le_i32_e64 s15, v95, v86
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s8, v96, v85
	v_cmp_ge_i32_e64 s9, v97, v85
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v96, v86
	v_cmp_le_i32_e64 s17, v97, v86
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s13
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v98, v85
	v_cmp_ge_i32_e64 s11, v99, v85
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s18, v98, v86
	v_cmp_le_i32_e64 s19, v99, v86
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s12, s12, s54
	s_and_b32 s1, s1, s53
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s6, s6, s57
	s_and_b32 s7, s7, s52
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_not1_b32 s13, s54, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s14, s53, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s56
	s_and_b32 s9, s9, s55
	s_and_b32 s10, s10, s18
	s_and_b32 s11, s11, s19
	s_or_b32 s54, s13, s12
	s_or_b32 s53, s14, s1
	s_and_not1_b32 s1, s57, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s12, s52, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_b32 s10, s10, s59
	s_and_b32 s11, s11, s58
	s_or_b32 s57, s1, s6
	s_or_b32 s52, s12, s7
	s_and_not1_b32 s1, s56, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s55, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s56, s1, s6
	s_or_b32 s55, s7, s8
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s59, s1, s6
	s_or_b32 s58, s7, s8
	s_branch .LBB0_4
.LBB0_9:
	.loc	1 805 17 is_stmt 1              ; attention.py:805:17
	s_add_i32 s4, s14, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s15, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s30
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s30
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s23, s4
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s10, s10, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 15
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s44, s44, s10
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s12, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 28
	s_add_i32 s4, s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_b32 s4, s4, -16
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s45, s45, s4
	s_load_b32 s35, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v82, 0, 1, s11
	s_and_not1_b32 vcc_lo, exec_lo, s11
	s_cbranch_vccnz .LBB0_2
.LBB0_10:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s15, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s23, s4
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
	s_load_b64 s[24:25], s[0:1], 0x40
	.loc	1 981 24 is_stmt 1              ; attention.py:981:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s35, v57
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_ge_i32 s44, s45
	s_cbranch_scc0 .LBB0_3
.LBB0_11:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v49, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v50, v40
.LBB0_12:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s27, s27, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s35, s35, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s26, s27
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v49 :: v_dual_cndmask_b32 v6, 0, v35
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v4, 0, v33 :: v_dual_cndmask_b32 v5, 0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v50, vcc_lo
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v14, 0, v39
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp31:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v40
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp35:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s35
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp38:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp60:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp69:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp70:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp72:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v14, v12
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v16
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v11, v13
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v18
	v_add_f32_e32 v16, v17, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v13 :: v_dual_mov_b32 v18, v14
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_14
; %bb.13:
.Ltmp99:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp100:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp102:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp104:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s6, s24, s6
	s_addc_u32 s7, s25, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[6:7]
.LBB0_14:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 1038 13 is_stmt 1             ; attention.py:1038:13
	v_lshlrev_b32_e32 v10, 2, v0
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v14, v3, v5 :: v_dual_lshlrev_b32 v17, 1, v0
	v_dual_add_f32 v15, v4, v6 :: v_dual_lshlrev_b32 v0, 5, v0
	v_add_f32_e32 v13, v1, v2
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp106:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v4, 0xe0, v17
	v_and_b32_e32 v1, 28, v17
	s_and_b32 vcc_lo, s2, s4
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v2, 0, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v57
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s25, s25, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp107:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 114
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
		.amdhsa_inst_pref_size 51
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 114
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6512
; TotalNumSgprs: 62
; NumVgprs: 114
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 114
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
