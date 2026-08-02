	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[16:19], s[0:1], 0x80
	s_load_b32 s70, s[0:1], 0x68
	s_load_b128 s[56:59], s[0:1], 0x4c
	s_load_b64 s[20:21], s[0:1], 0x0
	s_load_b32 s85, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v87, 6, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v73, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v72, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 0x90, v9
	v_lshlrev_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s31, 0, v35
	v_lshlrev_b32_e32 v36, 7, v72
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s16
	s_bitcmp1_b32 s16, 8
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s13, s3, s58
	s_cselect_b32 s84, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[74:75], null, s85, v87, v[73:74]
	s_cselect_b32 s4, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s14, s70
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s5, s14
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s7, s2, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s7, s7, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[75:76], null, s85, 6, v[74:75]
	v_lshl_add_u32 v89, s85, 1, v74
	v_lshl_add_u32 v90, s85, 2, v74
	v_lshl_add_u32 v91, s85, 3, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[76:77], null, s85, 10, v[74:75]
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s5, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[77:78], null, s85, 12, v[74:75]
	v_mad_u64_u32 v[78:79], null, s85, 14, v[74:75]
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s24, s5
	s_sub_i32 s5, 0, s14
	s_mul_i32 s5, s5, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s24, s5
	s_add_i32 s24, s24, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s5, s6, s24
	s_mul_i32 s8, s5, s14
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s6, s14
	s_cmp_ge_u32 s6, s14
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s6, s14
	s_cselect_b32 s5, s8, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s11, s56
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s3
	s_cvt_f32_u32 s6, s11
	s_sub_i32 s8, 0, s11
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s5, s5, s7
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s5, s70
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s15, s5, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s30, s2, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, s15, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, 2, v37
	v_or_b32_e32 v39, 4, v37
	v_or_b32_e32 v40, 6, v37
	v_or_b32_e32 v41, 8, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v42, 10, v37
	v_or_b32_e32 v43, 12, v37
	v_or_b32_e32 v44, 14, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s8, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	s_mul_hi_u32 s6, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s6, s11
	s_sub_i32 s2, s9, s5
	s_add_i32 s5, s6, 1
	s_sub_i32 s7, s2, s11
	s_cmp_ge_u32 s2, s11
	s_cselect_b32 s5, s5, s6
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s11
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s58, v38
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s12, s57
	s_xor_b32 s26, s56, s57
	s_cvt_f32_u32 s6, s12
	s_sub_i32 s8, 0, s12
	s_ashr_i32 s26, s26, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s85, v73
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s10, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s58, v37
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s9, s8, s10
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s58, v39
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s25, s10, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s58, v40
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s25, s10, s25
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s58, v41
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s25, s11, s25
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s27, s25, s12
	s_add_i32 s28, s25, 1
	s_sub_i32 s27, s11, s27
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s58, v42
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s29, s27, s12
	s_cmp_ge_u32 s27, s12
	s_cselect_b32 s25, s28, s25
	s_cselect_b32 s27, s29, s27
	s_add_i32 s28, s25, 1
	s_cmp_ge_u32 s27, s12
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s58, v43
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s25, s28, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s27, s13, s15
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s27, s27, s85
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s58, v44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s27, v74, 1
	v_add_lshl_u32 v2, s27, v89, 1
	v_add_lshl_u32 v3, s27, v90, 1
	v_add_lshl_u32 v4, s27, v75, 1
	v_add_lshl_u32 v5, s27, v91, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s27, v76, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s27, v77, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s9
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s27, v78, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s11
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 1, v73
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s12
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s13
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v9, v9, v10
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
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
	s_add_i32 s20, s59, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_or_b32_e32 v10, v36, v34
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s21, s20, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s21, s21, 26
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s20, s20, s21
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s21, s25, s26
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s22, s20, 6
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v13, 16, v10
	v_xor_b32_e32 v14, 32, v10
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s26, s21, s26
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s21, s22, s70
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v15, 48, v10
	v_xor_b32_e32 v16, 64, v10
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s21, s21, -1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v93, 0, v9
	v_xor_b32_e32 v9, 0x360, v9
	v_add_nc_u32_e32 v94, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	v_add_nc_u32_e32 v98, 0, v13
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s23, s21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v95, 0, v11
	v_add_nc_u32_e32 v99, 0, v14
	v_add_nc_u32_e32 v100, 0, v15
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s24, s23, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v96, 0, v12
	v_add_nc_u32_e32 v101, 0, v16
	v_add_nc_u32_e32 v97, 0, v9
	v_add_nc_u32_e32 v102, 0, v17
	v_add_nc_u32_e32 v103, 0, v18
	v_add_nc_u32_e32 v104, 0, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s27, s24, s14
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s25, s26
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s21, s21, s70
	s_sub_i32 s23, s23, s27
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s22, s25
	.loc	1 795 14                        ; attention.py:795:14
	s_and_not1_b32 s20, s20, 63
	.loc	1 798 32                        ; attention.py:798:32
	s_ashr_i32 s21, s21, 31
	s_add_i32 s27, s24, 1
	s_sub_i32 s28, s23, s14
	s_cmp_ge_u32 s23, s14
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v45, s22
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s22, s27, s24
	s_cselect_b32 s23, s28, s23
	s_add_i32 s24, s22, 1
	s_cmp_ge_u32 s23, s14
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v93, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v93, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v95, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v95, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v96, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v96, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v97, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v94
	ds_load_b128 v[5:8], v98
	ds_load_b128 v[9:12], v99
	ds_load_b128 v[13:16], v100
	ds_load_b128 v[17:20], v101
	ds_load_b128 v[21:24], v102
	ds_load_b128 v[25:28], v103
	ds_load_b128 v[29:32], v104
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s14, s24, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s14, s21
	s_sub_i32 s21, s14, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s14, v45
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s22, s30, s21
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s21, s21, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s87, s22, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s21, s87, s21
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s88, s20, s21
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s16, s16, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s16, s18, s19
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s20, s19, s17
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s16, s16, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s20, s20, s15
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s16, s16, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s20, s20, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s16, s59, s16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s20, s20, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s16, s16, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s87, s87, s20
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s21, s16, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s21, s21, 26
	s_add_i32 s16, s16, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s16, s16, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s88, s88, s16
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s86, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v106, 0, 1, s4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s19, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s59, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s16, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s16, s16, 26
	s_add_i32 s4, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s88, s88, s4
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[68:69], s[0:1], 0x40
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_lshrrev_b32_e32 v105, 4, v35
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s86, v73
	v_lshlrev_b32_e32 v121, 1, v0
	v_lshlrev_b32_e32 v63, 2, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s87, s88
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s16, s3, s56
	v_and_b32_e32 v122, 16, v0
	s_ashr_i32 s16, s16, 31
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v109, s19, v39
	s_xor_b32 s2, s2, s16
	v_and_b32_e32 v39, 0xbc, v121
	s_sub_i32 s2, s2, s16
	v_cmp_eq_u32_e32 vcc_lo, 0, v122
	s_mul_i32 s20, s2, s56
	v_mov_b32_e32 v122, 0x7632
	s_sub_i32 s28, s3, s20
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b32 s89, s[0:1], 0x7c
	v_dual_cndmask_b32 v122, 0x3276, v122 :: v_dual_and_b32 v57, 60, v121
	v_and_b32_e32 v121, 0x70, v121
	v_lshrrev_b32_e32 v126, 2, v35
	v_dual_mov_b32 v218, 0xff800000 :: v_dual_lshlrev_b32 v123, 7, v73
	v_lshrrev_b32_e32 v35, 3, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v121, v34, v121
	v_dual_mov_b32 v124, 0x5410 :: v_dual_add_nc_u32 v107, s19, v37
	v_add_nc_u32_e32 v108, s19, v38
	v_and_b32_e32 v38, 0x60, v0
	v_or3_b32 v121, v123, v35, v121
	v_bfe_i32 v123, v0, 3, 1
	v_add_nc_u32_e32 v111, s19, v41
	v_cndmask_b32_e32 v35, 0x1054, v124, vcc_lo
	v_lshrrev_b32_e32 v41, 4, v38
	v_lshl_or_b32 v34, v38, 6, v34
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v37, s23, v87
	v_lshrrev_b32_e32 v58, 5, v0
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_and_b32 v88, 32, v0
	v_cndmask_b32_e64 v92, 0x104, 0, s31
	v_lshl_or_b32 v122, v122, 8, v122
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v120, 2, v88
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[79:80], null, s89, v73, v[37:38]
	v_and_or_b32 v38, 0x410, v123, v38
	v_lshl_add_u32 v88, v88, 1, 0
	v_and_b32_e32 v122, 0x760076, v122
	s_cvt_u32_f32 s14, s14
	s_sub_i32 s16, 0, s25
	v_xor_b32_e32 v34, v38, v34
	v_xor_b32_e32 v38, 32, v121
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_add_nc_u32 v125, v88, v126
	v_lshl_or_b32 v123, v122, 4, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v124, v33, 7, v34
	v_xor_b32_e32 v33, 48, v121
	v_add_nc_u32_e32 v186, 0, v38
	v_xor_b32_e32 v34, 64, v121
	s_mul_i32 s16, s16, s14
	s_abs_i32 s24, s28
	v_add_nc_u32_e32 v187, 0, v33
	v_xor_b32_e32 v33, 0x60, v121
	v_dual_mov_b32 v227, 0xff800000 :: v_dual_mov_b32 v220, 0xff800000
	v_add_nc_u32_e32 v188, 0, v34
	v_xor_b32_e32 v34, 0x70, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v190, 0, v33
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v110, s19, v40
	v_lshlrev_b32_e32 v40, 6, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v112, s19, v42
	v_and_b32_e32 v37, 0x7c, v63
	v_and_b32_e32 v63, 64, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v219, 0xff800000 :: v_dual_and_b32 v42, 64, v40
	v_and_b32_e32 v40, 0x380, v40
	v_dual_mov_b32 v221, 0xff800000 :: v_dual_mov_b32 v38, v33
	v_xor_b32_e32 v39, v39, v41
	v_or3_b32 v117, v58, v42, v57
	v_lshlrev_b32_e32 v58, 1, v72
	v_xor_b32_e32 v57, v92, v57
	v_add_nc_u32_e32 v191, 0, v34
	v_or_b32_e32 v115, v39, v42
	v_xor_b32_e32 v34, 64, v124
	v_or3_b32 v118, v40, v63, v58
	v_xor_b32_e32 v40, 0x210, v117
	v_add_nc_u32_e32 v113, s19, v43
	v_xor_b32_e32 v41, 0x210, v115
	v_add_nc_u32_e32 v195, 0, v34
	v_xor_b32_e32 v80, 24, v118
	v_xor_b32_e32 v81, 28, v118
	v_add_nc_u32_e32 v152, 0, v40
	v_mov_b32_e32 v40, v33
	v_lshl_or_b32 v119, v72, 8, v37
	v_add_nc_u32_e32 v161, 0, v80
	v_add_nc_u32_e32 v162, 0, v81
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[80:81], null, s23, 6, v[79:80]
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v82, 4, v119
	v_xor_b32_e32 v83, 8, v119
	v_xor_b32_e32 v84, 12, v119
	v_xor_b32_e32 v85, 16, v119
	v_add_nc_u32_e32 v128, 0, v41
	v_add_nc_u32_e32 v163, 0, v82
	v_mad_u64_u32 v[81:82], null, s23, 10, v[79:80]
	v_add_nc_u32_e32 v164, 0, v83
	v_mad_u64_u32 v[82:83], null, s23, 12, v[79:80]
	v_add_nc_u32_e32 v165, 0, v84
	v_mad_u64_u32 v[83:84], null, s23, 14, v[79:80]
	v_add_nc_u32_e32 v166, 0, v85
	v_mad_u64_u32 v[84:85], null, s86, v105, v[73:74]
	v_mov_b32_e32 v85, 0xff800000
	v_or3_b32 v120, v57, v120, v42
	v_add_nc_u32_e32 v42, 0, v42
	v_subrev_nc_u32_e32 v41, s17, v107
	v_or_b32_e32 v116, v36, v37
	v_xor_b32_e32 v36, 0x420, v115
	v_xor_b32_e32 v37, 16, v118
	v_add_nc_u32_e32 v126, v42, v126
	v_lshl_or_b32 v35, v35, 8, v35
	scratch_store_b32 off, v41, off         ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v108
	v_add_nc_u32_e32 v130, 0, v36
	v_add_nc_u32_e32 v159, 0, v37
	v_and_b32_e32 v35, 0x540054, v35
	v_xor_b32_e32 v36, 0x50, v121
	scratch_store_b32 off, v41, off offset:4 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v109
	v_xor_b32_e32 v37, 48, v124
	v_lshl_or_b32 v35, v35, 4, v35
	v_add_nc_u32_e32 v189, 0, v36
	v_xor_b32_e32 v36, 32, v124
	scratch_store_b32 off, v41, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v194, 0, v37
	v_and_b32_e32 v122, 0x5040504, v35
	v_xor_b32_e32 v35, 16, v121
	v_xor_b32_e32 v37, 0x70, v124
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v193, 0, v36
	v_xor_b32_e32 v36, 0x60, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v185, 0, v35
	v_xor_b32_e32 v35, 16, v124
	v_add_nc_u32_e32 v198, 0, v37
	v_mov_b32_e32 v37, v33
	s_mul_hi_u32 s16, s14, s16
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v114, s19, v44
	v_add_nc_u32_e32 v192, 0, v35
	v_xor_b32_e32 v35, 0x50, v124
	v_xor_b32_e32 v39, 0x108, v115
	v_add_nc_u32_e32 v197, 0, v36
	v_mov_b32_e32 v36, v33
	s_add_i32 s14, s14, s16
	v_add_nc_u32_e32 v196, 0, v35
	v_mov_b32_e32 v35, v33
	v_subrev_nc_u32_e32 v41, s17, v110
	s_mul_hi_u32 s14, s24, s14
	v_dual_mov_b32 v224, 0xff800000 :: v_dual_add_nc_u32 v127, 0, v39
	v_mov_b32_e32 v39, v33
	scratch_store_b32 off, v41, off offset:12 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v111
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s27, s14, s25
	s_ashr_i32 s16, s28, 31
	s_ashr_i32 s26, s26, 31
	s_sub_i32 s24, s24, s27
	scratch_store_b32 off, v41, off offset:16 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v112
	s_xor_b32 s16, s16, s26
	s_add_i32 s26, s14, 1
	s_sub_i32 s27, s24, s25
	s_cmp_ge_u32 s24, s25
	scratch_store_b32 off, v41, off offset:20 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v113
	s_cselect_b32 s14, s26, s14
	s_cselect_b32 s24, s27, s24
	s_add_i32 s26, s14, 1
	s_cmp_ge_u32 s24, s25
	scratch_store_b32 off, v41, off offset:24 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v41, s17, v114
	s_cselect_b32 s14, s26, s14
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[72:73], s[0:1], 0x30
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_xor_b32_e32 v43, 0x318, v115
	v_writelane_b32 v255, s30, 0
	scratch_store_b32 off, v41, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v107
	v_xor_b32_e32 v44, 0x528, v115
	v_xor_b32_e32 v45, 0x630, v115
	v_xor_b32_e32 v46, 0x738, v115
	v_xor_b32_e32 v47, 4, v116
	scratch_store_b32 off, v41, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v108
	v_xor_b32_e32 v48, 8, v116
	v_xor_b32_e32 v49, 12, v116
	v_xor_b32_e32 v50, 16, v116
	v_xor_b32_e32 v51, 20, v116
	scratch_store_b32 off, v41, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v109
	v_xor_b32_e32 v52, 24, v116
	v_xor_b32_e32 v53, 28, v116
	v_xor_b32_e32 v54, 32, v116
	v_xor_b32_e32 v55, 36, v116
	scratch_store_b32 off, v41, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v110
	v_xor_b32_e32 v56, 40, v116
	v_xor_b32_e32 v59, 44, v116
	v_xor_b32_e32 v60, 48, v116
	v_xor_b32_e32 v61, 52, v116
	v_xor_b32_e32 v62, 56, v116
	v_xor_b32_e32 v64, 60, v116
	v_xor_b32_e32 v65, 0x84, v117
	v_xor_b32_e32 v66, 0x108, v117
	v_xor_b32_e32 v67, 0x18c, v117
	v_xor_b32_e32 v58, 0x294, v117
	v_xor_b32_e32 v63, 0x318, v117
	v_xor_b32_e32 v68, 0x39c, v117
	v_xor_b32_e32 v69, 4, v118
	v_xor_b32_e32 v70, 8, v118
	v_xor_b32_e32 v71, 12, v118
	v_xor_b32_e32 v72, 20, v118
	v_xor_b32_e32 v86, 20, v119
	v_xor_b32_e32 v168, 24, v119
	v_xor_b32_e32 v169, 28, v119
	v_xor_b32_e32 v170, 32, v119
	v_xor_b32_e32 v92, 36, v119
	v_xor_b32_e32 v172, 40, v119
	v_xor_b32_e32 v173, 44, v119
	v_xor_b32_e32 v174, 48, v119
	v_xor_b32_e32 v57, 52, v119
	v_xor_b32_e32 v176, 56, v119
	v_xor_b32_e32 v177, 60, v119
	v_xor_b32_e32 v178, 0x208, v120
	v_xor_b32_e32 v179, 0x410, v120
	v_xor_b32_e32 v180, 0x618, v120
	v_xor_b32_e32 v181, 0x820, v120
	v_xor_b32_e32 v182, 0xa28, v120
	v_xor_b32_e32 v183, 0xc30, v120
	v_xor_b32_e32 v184, 0xe38, v120
	scratch_store_b32 off, v41, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v111
	s_xor_b32 s14, s14, s16
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s29, s2, s57
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s14, s14, s16
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s15, s15, s23
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s2, s21
	v_writelane_b32 v255, s31, 1
	v_and_b32_e32 v123, 0x7060706, v123
	v_dual_mov_b32 v226, 0xff800000 :: v_dual_add_nc_u32 v129, 0, v43
	v_add_nc_u32_e32 v131, 0, v44
	v_add_nc_u32_e32 v132, 0, v45
	v_add_nc_u32_e32 v133, 0, v46
	v_add_nc_u32_e32 v134, 0, v47
	v_add_nc_u32_e32 v135, 0, v48
	v_add_nc_u32_e32 v136, 0, v49
	v_add_nc_u32_e32 v137, 0, v50
	v_add_nc_u32_e32 v138, 0, v51
	v_add_nc_u32_e32 v139, 0, v52
	v_add_nc_u32_e32 v140, 0, v53
	v_add_nc_u32_e32 v141, 0, v54
	v_add_nc_u32_e32 v142, 0, v55
	v_add_nc_u32_e32 v143, 0, v56
	v_add_nc_u32_e32 v144, 0, v59
	v_add_nc_u32_e32 v145, 0, v60
	v_add_nc_u32_e32 v146, 0, v61
	v_add_nc_u32_e32 v147, 0, v62
	v_add_nc_u32_e32 v148, 0, v64
	v_add_nc_u32_e32 v149, 0, v65
	v_add_nc_u32_e32 v150, 0, v66
	v_add_nc_u32_e32 v151, 0, v67
	v_add_nc_u32_e32 v153, 0, v58
	v_add_nc_u32_e32 v154, 0, v63
	v_add_nc_u32_e32 v155, 0, v68
	v_add_nc_u32_e32 v156, 0, v69
	v_add_nc_u32_e32 v157, 0, v70
	v_add_nc_u32_e32 v158, 0, v71
	v_add_nc_u32_e32 v160, 0, v72
	v_add_nc_u32_e32 v167, 0, v86
	v_add_nc_u32_e32 v168, 0, v168
	v_add_nc_u32_e32 v169, 0, v169
	v_add_nc_u32_e32 v170, 0, v170
	v_add_nc_u32_e32 v171, 0, v92
	v_add_nc_u32_e32 v172, 0, v172
	v_add_nc_u32_e32 v173, 0, v173
	v_add_nc_u32_e32 v174, 0, v174
	v_add_nc_u32_e32 v175, 0, v57
	v_add_nc_u32_e32 v176, 0, v176
	v_add_nc_u32_e32 v177, 0, v177
	v_add_nc_u32_e32 v178, 0, v178
	v_add_nc_u32_e32 v179, 0, v179
	v_add_nc_u32_e32 v180, 0, v180
	v_add_nc_u32_e32 v181, 0, v181
	v_add_nc_u32_e32 v182, 0, v182
	v_add_nc_u32_e32 v183, 0, v183
	v_add_nc_u32_e32 v184, 0, v184
	scratch_store_b32 off, v41, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v41, s18, v112
	v_add_nc_u32_e32 v213, s18, v113
	v_add_nc_u32_e32 v214, s18, v114
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v215, s23, 1, v79
	v_lshl_add_u32 v216, s23, 2, v79
	v_lshl_add_u32 v217, s23, 3, v79
	v_mov_b32_e32 v225, v33
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s91, s14, s29
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s90, s20, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s28, s28, s22
	s_add_i32 s94, s0, s15
	s_mov_b32 s60, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s91, s91, s59
	s_lshl_b32 s92, s85, 4
	s_lshl_b32 s93, s85, 5
	s_waitcnt lgkmcnt(0)
	s_and_b32 s77, s25, 0xffff
	s_mov_b32 s76, s24
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	s_add_i32 s94, s94, s28
	s_and_b32 s73, s73, 0xffff
	s_lshl_b32 s95, s86, 1
	s_lshl_b32 s96, s86, 3
	s_lshl_b32 s97, s86, 4
	s_lshl_b32 s98, s86, 5
	s_mul_i32 s99, s86, 48
	s_mul_i32 s100, s86, 49
	s_mul_i32 s101, s86, 50
	s_mul_i32 s102, s86, 51
	s_mul_i32 s103, s86, 56
	s_mul_i32 s104, s86, 57
	s_mul_i32 vcc_hi, s86, 58
	s_mul_i32 s71, s86, 59
	s_and_b32 s81, s27, 0xffff
	s_mov_b32 s80, s26
	s_mov_b32 s61, s60
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	s_mov_b32 s65, s60
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	s_mov_b32 s2, 0x76543210
	scratch_store_b32 off, v41, off offset:52 ; 4-byte Folded Spill
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s0, s87, s89
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s74, s78
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s0, s94, s0
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s75, s79
	v_add_lshl_u32 v86, s0, v79, 1
	v_add_lshl_u32 v88, s0, v215, 1
	v_add_lshl_u32 v92, s0, v216, 1
	v_add_lshl_u32 v199, s0, v80, 1
	v_add_lshl_u32 v200, s0, v217, 1
	v_cndmask_b32_e64 v86, 0x80000000, v86, s35
	v_cndmask_b32_e64 v88, 0x80000000, v88, s34
	v_add_lshl_u32 v201, s0, v81, 1
	v_add_lshl_u32 v202, s0, v82, 1
	v_add_lshl_u32 v203, s0, v83, 1
	s_clause 0x1
	buffer_load_u16 v86, v86, s[72:75], 0 offen
	buffer_load_u16 v88, v88, s[72:75], 0 offen
	v_cndmask_b32_e64 v92, 0x80000000, v92, s31
	v_cndmask_b32_e64 v199, 0x80000000, v199, s28
	v_cndmask_b32_e64 v200, 0x80000000, v200, s33
	v_cndmask_b32_e64 v201, 0x80000000, v201, s29
	v_cndmask_b32_e64 v202, 0x80000000, v202, s30
	v_cndmask_b32_e64 v203, 0x80000000, v203, s27
	s_clause 0x5
	buffer_load_u16 v92, v92, s[72:75], 0 offen
	buffer_load_u16 v199, v199, s[72:75], 0 offen
	buffer_load_u16 v200, v200, s[72:75], 0 offen
	buffer_load_u16 v201, v201, s[72:75], 0 offen
	buffer_load_u16 v202, v202, s[72:75], 0 offen
	buffer_load_u16 v203, v203, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v228.l, 0
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s82, s78
	s_mov_b32 s83, s79
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v233.l, v228.l
	v_mov_b16_e64 v231.l, v228.l
	v_mov_b16_e64 v232.l, v228.l
	v_mov_b16_e64 v230.l, v228.l
	v_mov_b16_e64 v235.l, v228.l
	v_mov_b16_e64 v234.l, v228.l
	v_mov_b16_e64 v204.l, v228.l
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v92.h, 0xff80, v86.l, s35
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v86, 0, v115
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v88.h, 0xff80, v88.l, s34
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v199.h, 0xff80, v92.l, s31
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v200.h, 0xff80, v199.l, s28
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v201.h, 0xff80, v200.l, s33
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b16_d16_hi v86, v92
	v_add_nc_u32_e32 v86, 0, v116
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v202.h, 0xff80, v201.l, s29
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v203.h, 0xff80, v202.l, s30
	v_cndmask_b16 v204.h, 0xff80, v203.l, s27
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b16_d16_hi v127, v88
	ds_store_b16_d16_hi v128, v199
	ds_store_b16_d16_hi v129, v200
	ds_store_b16_d16_hi v130, v201
	ds_store_b16_d16_hi v131, v202
	ds_store_b16_d16_hi v132, v203
	ds_store_b16_d16_hi v133, v204
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v205, v86
	ds_load_b32 v206, v134
	ds_load_b32 v236, v135
	ds_load_b32 v237, v136
	ds_load_b32 v238, v137
	ds_load_b32 v239, v138
	ds_load_b32 v240, v139
	ds_load_b32 v241, v140
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v86.l, v228.l
	v_mov_b16_e64 v92.l, v228.l
	v_mov_b16_e64 v88.l, v228.l
	v_mov_b16_e64 v199.l, v228.l
	v_mov_b16_e64 v200.l, v228.l
	v_mov_b16_e64 v201.l, v228.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v92
	v_cmp_neq_f32_e64 s0, 0xff800000, v88
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v202.l, v228.l
	v_mov_b16_e64 v203.l, v228.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v201
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s44, s35, vcc_lo
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v228.h, v205.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v86.h, v206.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v230.h, v236.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v231.h, v237.l
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v232.h, v238.l
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v233.h, v239.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v229, 0x3fb8aa3b, v86
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v235.h, v241.l
	v_mov_b16_e64 v234.h, v240.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v232, 0x3fb8aa3b, v232
	v_dual_mul_f32 v242, 0x3fb8aa3b, v228 :: v_dual_fmac_f32 v229, s90, v66
	ds_load_b32 v66, v141
	ds_load_b32 v243, v142
	ds_load_b32 v244, v143
	ds_load_b32 v245, v144
	ds_load_b32 v246, v145
	ds_load_b32 v247, v146
	ds_load_b32 v248, v147
	ds_load_b32 v249, v148
	v_dual_mul_f32 v230, 0x3fb8aa3b, v230 :: v_dual_mul_f32 v235, 0x3fb8aa3b, v235
	v_mul_f32_e32 v231, 0x3fb8aa3b, v231
	v_dual_mul_f32 v233, 0x3fb8aa3b, v233 :: v_dual_mul_f32 v234, 0x3fb8aa3b, v234
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v242, s90, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v230, s90, v67 :: v_dual_fmac_f32 v235, s90, v72
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v65.l, v228.l
	v_mov_b16_e64 v72.l, v228.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v231, s90, v68
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v67.l, v228.l
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e32 v65.h, v66.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v234, s90, v71
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v67.h, v243.l
	v_mov_b16_e64 v68.l, v228.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v68.h, v244.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v65
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v72.h, v248.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v232, s90, v69 :: v_dual_mul_f32 v67, 0x3fb8aa3b, v67
	v_fmac_f32_e32 v233, s90, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v69.l, v228.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v72, 0x3fb8aa3b, v72 :: v_dual_fmac_f32 v65, s90, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v69.h, v245.l
	v_mov_b16_e64 v70.l, v228.l
	v_mov_b16_e64 v70.h, v246.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v86.h, v249.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v68, 0x3fb8aa3b, v68 :: v_dual_mul_f32 v69, 0x3fb8aa3b, v69
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v72, s90, v63 :: v_dual_and_b32 v57, 0xffff0000, v205
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v71.l, v228.l
	v_mov_b16_e64 v71.h, v247.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v70
	v_dual_mul_f32 v86, 0x3fb8aa3b, v86 :: v_dual_fmac_f32 v69, s90, v60
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v67, s90, v58 :: v_dual_fmac_f32 v68, s90, v59
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v59, 0xffff0000, v236
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v205, 0x3fb8aa3b, v57
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v58, 0xffff0000, v206
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v71, 0x3fb8aa3b, v71 :: v_dual_fmac_f32 v70, s90, v61
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v86, s90, v64 :: v_dual_and_b32 v61, 0xffff0000, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v205, s90, v49
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v71, s90, v62 :: v_dual_and_b32 v60, 0xffff0000, v237
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v59
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v199
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v57, s90, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v60
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v62, 0xffff0000, v239
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v60, 0x3fb8aa3b, v61
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v63, 0xffff0000, v240
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v59, s90, v52 :: v_dual_and_b32 v50, 0xffff0000, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v61, 0x3fb8aa3b, v62 :: v_dual_fmac_f32 v60, s90, v53
	v_mul_f32_e32 v62, 0x3fb8aa3b, v63
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v58, s90, v51
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v52, 0xffff0000, v245
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v62, s90, v55 :: v_dual_and_b32 v51, 0xffff0000, v244
	v_dual_fmac_f32 v61, s90, v54 :: v_dual_and_b32 v64, 0xffff0000, v241
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, s90, v42 :: v_dual_mul_f32 v51, 0x3fb8aa3b, v51
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v52, s90, v44 :: v_dual_and_b32 v49, 0xffff0000, v66
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s47, s34, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, s90, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v63, s90, v56 :: v_dual_and_b32 v56, 0xffff0000, v249
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v200
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_add_nc_u32_e32 v43, 0, v117
	v_cndmask_b32_e64 v42, 0, 1, s47
	s_and_b32 s51, s31, vcc_lo
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v56, 0x3fb8aa3b, v56
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v53, 0xffff0000, v246
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v202
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s50, s28, s0
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_dual_fmac_f32 v56, s90, v48 :: v_dual_mul_f32 v53, 0x3fb8aa3b, v53
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v54, 0xffff0000, v247
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v203
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s49, s33, s1
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v53, s90, v45
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v49, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v54
	.loc	1 881 34 is_stmt 1              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v204
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s48, s29, s14
	s_and_b32 s46, s30, s15
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v49, s90, v41
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s44
	s_and_b32 s45, s27, s16
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, s90, v46 :: v_dual_and_b32 v55, 0xffff0000, v248
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v203, s87, v105
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v43, v41
	v_cndmask_b32_e64 v41, 0, 1, s51
	ds_store_b8 v149, v42
	v_cndmask_b32_e64 v42, 0, 1, s50
	v_add_nc_u32_e32 v43, 0, v118
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v55
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v150, v41
	v_cndmask_b32_e64 v41, 0, 1, s49
	ds_store_b8 v151, v42
	v_cndmask_b32_e64 v42, 0, 1, s48
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v55, s90, v47
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s87, s87, 64
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v152, v41
	v_cndmask_b32_e64 v41, 0, 1, s46
	ds_store_b8 v153, v42
	v_cndmask_b32_e64 v42, 0, 1, s45
	ds_store_b8 v154, v41
	ds_store_b8 v155, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v41, v43
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v41, v158 offset:32
	ds_load_u16_d16 v42, v157 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v42, v156 offset:32
	ds_load_u16_d16 v43, v43 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v43.h, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v41.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s42, 1, v43.h
	ds_load_u16_d16_hi v43, v157
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v241, 0xff800000, v242, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s25, 1, v41.l
	ds_load_u16_d16 v41, v156
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v205, s25
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v44.l, 1, v43.h
	v_lshrrev_b16 v43.h, 8, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s40, 1, v44.l
	ds_load_u16_d16 v44, v158
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v246, 0xff800000, v230, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v43.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v230, 0xff800000, v58, s23
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v44.h, 1, v44.l
	v_lshrrev_b16 v43.h, 8, v44.l
	v_cmp_eq_u16_e64 s41, 1, v44.h
	ds_load_u16_d16_hi v44, v159
	ds_load_u16_d16 v45, v162 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v45, v161 offset:32
	ds_load_u16_d16 v46, v160 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v46, v159 offset:32
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v247, 0xff800000, v231, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v231, 0xff800000, v59, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v47.l, 1, v44.h
	v_lshrrev_b16 v43.h, 8, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s38, 1, v47.l
	ds_load_u16_d16 v47, v160
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v244, 0xff800000, v232, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v43.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v47.h, 1, v47.l
	v_lshrrev_b16 v43.h, 8, v47.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s39, 1, v47.h
	ds_load_u16_d16_hi v47, v161
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v245, 0xff800000, v233, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v43.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v47.h
	v_lshrrev_b16 v43.h, 8, v47.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s36, 1, v48.l
	ds_load_u16_d16 v48, v162
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v242, 0xff800000, v234, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v43.h
	v_and_b16 v48.h, 1, v48.l
	v_lshrrev_b16 v43.h, 8, v48.l
	v_cmp_eq_u16_e64 s37, 1, v48.h
	v_and_b16 v48.h, 1, v43.l
	v_lshrrev_b16 v43.l, 8, v43.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v43.h, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v243, 0xff800000, v235, s37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v48.h
	v_and_b16 v48.h, 1, v42.h
	v_lshrrev_b16 v42.h, 8, v42.h
	v_and_b16 v43.l, 1, v43.l
	v_cmp_eq_u16_e64 s20, 1, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v239, 0xff800000, v65, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v48.h
	v_and_b16 v48.h, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v42.l
	v_and_b16 v42.h, 1, v42.h
	v_cmp_eq_u16_e64 s17, 1, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v240, 0xff800000, v67, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v48.h
	v_and_b16 v48.h, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v41.h
	v_and_b16 v42.l, 1, v42.l
	v_cmp_eq_u16_e64 s18, 1, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v237, 0xff800000, v68, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s33, 1, v48.h
	v_and_b16 v41.h, 1, v41.h
	v_and_b16 v48.h, 1, v46.h
	v_cmp_eq_u16_e64 s15, 1, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v42, 0, v119
	v_cndmask_b32_e64 v238, 0xff800000, v69, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v46.h
	v_cmp_eq_u16_e64 s29, 1, v48.h
	v_and_b16 v48.h, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_2addr_b32 v42, v241, v66 offset1:32
	v_cndmask_b32_e64 v68, 0xff800000, v49, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v235, 0xff800000, v70, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s30, 1, v48.h
	v_and_b16 v48.h, 1, v45.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v62, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s1, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v236, 0xff800000, v71, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v48.h
	v_and_b16 v48.h, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v63, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v50, s18
	v_cndmask_b32_e64 v233, 0xff800000, v72, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v48.h
	v_lshrrev_b16 v48.h, 8, v41.l
	v_cmp_eq_u16_e64 s14, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v45.h
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v60, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v48.h, 1, v48.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v234, 0xff800000, v86, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.h, 1, v41.h
	v_cmp_eq_u16_e64 s43, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v51, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s26, 1, v48.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v52, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v41.h
	v_lshrrev_b16 v41.h, 8, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v248, 0xff800000, v229, s43
	v_cndmask_b32_e64 v232, 0xff800000, v57, s26
	v_cndmask_b32_e64 v229, 0xff800000, v61, s22
	v_cndmask_b32_e64 v63, 0xff800000, v53, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.h, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v54, s14
	v_cndmask_b32_e32 v61, 0xff800000, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s0, 1, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v120
	v_cndmask_b32_e64 v62, 0xff800000, v56, s0
	ds_store_2addr_b32 v163, v248, v232 offset1:32
	ds_store_2addr_b32 v164, v246, v230 offset1:32
	ds_store_2addr_b32 v165, v247, v231 offset1:32
	ds_store_2addr_b32 v166, v244, v72 offset1:32
	ds_store_2addr_b32 v167, v245, v229 offset1:32
	ds_store_2addr_b32 v168, v242, v70 offset1:32
	ds_store_2addr_b32 v169, v243, v71 offset1:32
	ds_store_2addr_b32 v170, v239, v68 offset1:32
	ds_store_2addr_b32 v171, v240, v69 offset1:32
	ds_store_2addr_b32 v172, v237, v65 offset1:32
	ds_store_2addr_b32 v173, v238, v67 offset1:32
	ds_store_2addr_b32 v174, v235, v63 offset1:32
	ds_store_2addr_b32 v175, v236, v64 offset1:32
	ds_store_2addr_b32 v176, v233, v61 offset1:32
	ds_store_2addr_b32 v177, v234, v62 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v41
	ds_load_b32 v48, v178
	ds_load_b32 v47, v179
	ds_load_b32 v46, v180
	ds_load_b32 v42, v181
	ds_load_b32 v43, v182
	ds_load_b32 v44, v183
	ds_load_b32 v45, v184
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v49, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v50, v41, v41 :: v_dual_max_f32 v51, v48, v48
	v_dual_max_f32 v53, v46, v46 :: v_dual_max_f32 v52, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v49, v49, v49
	v_dual_max_f32 v55, v43, v43 :: v_dual_max_f32 v54, v42, v42
	v_max_f32_e32 v49, v50, v49
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v50, v51, v50
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v51, v52, v51
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v52, v53, v52
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	v_max_f32_e32 v53, v54, v53
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v54, v54
	v_max_f32_e32 v54, v55, v54
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v49, v49, v55
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v50, v50, v55
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v51, v51, v55
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v52, v52, v55
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v53, v53, v55
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v54, v54, v55
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v49, v49, v55
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v50, v50, v55
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v51, v51, v55
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v52, v52, v55
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v53, v53, v55
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v54, v54, v55
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v49, v49, v55
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v50, v50, v55
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v51, v51, v55
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v52, v52, v55
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v53, v53, v55
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v54, v54, v55
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v55, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v49, v49, v55
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v55, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s57, v49, 31
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v49, v54, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v55
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v55, v51, -1, -1 op_sel:[1,0]
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s56, v50, 31
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v49, v54, v49
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v55
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v55, v52, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s58, v49, 31
	v_mov_b32_e32 v49, s57
	v_readlane_b32 s52, v51, 31
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_dual_max_f32 v51, v44, v44 :: v_dual_mov_b32 v54, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v52, v52, v55
	v_max_f32_e32 v50, v51, v50
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v55, v53, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s54, v52, 31
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v45, v45 :: v_dual_max_f32 v51, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v51, v52, v51
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v53, v53, v55 :: v_dual_max_f32 v52, v52, v52
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s55, v53, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v52
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v53, s55 :: v_dual_max_f32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v51, v52
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v51, v52
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v52, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v50, v50, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v52, v51, -1, -1 op_sel:[1,0]
	v_readlane_b32 s57, v50, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v50, s56 :: v_dual_mov_b32 v55, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v51, v51, v52 :: v_dual_mov_b32 v52, s54
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s56, v51, 31
	v_mov_b32_e32 v51, s52
.Ltmp88:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v203
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v56, s56
	ds_store_b128 v125, v[49:52]
	ds_store_b128 v125, v[53:56] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v126 offset:32
.Ltmp90:
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s4, s52
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v53, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v222, v222, v49, v53
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v222
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v223, v223, v50, v49
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v223
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v224, v224, v51, v49
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v52
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp103:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v224
.Ltmp104:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp106:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v85, v85, v52, v49
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	ds_load_b128 v[49:52], v126
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
.Ltmp110:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v85
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_barrier
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp113:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s46
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_mad_u64_u32 v[57:58], null, s53, s86, v[84:85]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_mul_i32 s53, s86, 24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp115:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s45
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v53, v50
.Ltmp117:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v199, v57, s86, 1
	v_add_lshl_u32 v58, v57, s99, 1
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v254, v57, s100, 1
	v_add_lshl_u32 v59, v57, s101, 1
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v218, v218, v50, v53
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v51
.Ltmp124:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v92, v57, s102, 1
	v_add_lshl_u32 v60, v57, s103, 1
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v218
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v88, v57, s104, 1
	v_add_lshl_u32 v204, v57, vcc_hi, 1
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp130:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v219, v219, v51, v50
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v52
.Ltmp132:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v86, v57, s71, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v219
.Ltmp133:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp134:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s47
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v221, v221, v52, v50
.Ltmp135:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v50, v49
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v49
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp138:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp140:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v249, v49, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v48, -1, -1 op_sel:[1,0]
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v48, v48, v49
.Ltmp147:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v49, v220, v220
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s47, v48, 31
.Ltmp150:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v220, v49, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v220
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s44
.Ltmp151:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v41, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v49
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v47, -1, -1 op_sel:[1,0]
	v_readlane_b32 s44, v41, 31
.Ltmp155:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v46, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v47, v49
.Ltmp157:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s50
.Ltmp158:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s50, v47, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v41, -1, -1 op_sel:[1,0]
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v46
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v42, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s45, v41, 31
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v46
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v43, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v41, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s46, v42, 31
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v46
.Ltmp166:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v44, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v42, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s48, v43, 31
.Ltmp167:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v44, v46
.Ltmp168:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v46, v45, -1, -1 op_sel:[1,0]
	v_mov_b32_e32 v43, s50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s49, v44, 31
.Ltmp169:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v46 :: v_dual_mov_b32 v44, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp170:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v46, s48 :: v_dual_mov_b32 v47, s49
	v_readlane_b32 s51, v45, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v45, s46 :: v_dual_mov_b32 v48, s51
	ds_store_b128 v125, v[41:44]
	ds_store_b128 v125, v[45:48] offset:32
.Ltmp171:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 1, v203
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s95, 1
.Ltmp172:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp173:
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 2, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s44
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s59, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 3, v203
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v199, 0x80000000, v199, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s48, s4, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s59, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 8, v203
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s4, s46
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 9, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s59, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 10, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s4, s45
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 11, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 16, v203
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v57
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s52
	s_clause 0x1
	buffer_load_u16 v53, v41, s[80:83], 0 offen
	buffer_load_u16 v54, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 17, v203
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 18, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v41, v57, s96, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s49
	s_mul_i32 s49, s86, 10
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v42, v57, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	s_clause 0x1
	buffer_load_u16 v45, v41, s[80:83], 0 offen
	buffer_load_u16 v46, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 24, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 26, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v41, v57, s97, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s51
	s_mul_i32 s51, s86, 18
	v_add_lshl_u32 v42, v57, s51, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s52
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s51
	s_clause 0x1
	buffer_load_u16 v47, v41, s[80:83], 0 offen
	buffer_load_u16 v48, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 32, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 34, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s51
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v41, v57, s53, 1
	s_mul_i32 s53, s86, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s49
	s_mul_i32 s49, s86, 26
	v_add_lshl_u32 v42, v57, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	s_clause 0x1
	buffer_load_u16 v49, v41, s[80:83], 0 offen
	buffer_load_u16 v50, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 40, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 42, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v41
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v41, v57, s98, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s51
	s_mul_i32 s51, s86, 34
	v_add_lshl_u32 v42, v57, s51, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s52
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s51
	s_clause 0x1
	buffer_load_u16 v51, v41, s[80:83], 0 offen
	buffer_load_u16 v52, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 48, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 50, v203
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v41, v57, s53, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s49
	s_mul_i32 s49, s86, 42
	v_add_lshl_u32 v42, v57, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	s_mul_i32 s49, s86, 3
	s_clause 0x1
	buffer_load_u16 v55, v41, s[80:83], 0 offen
	buffer_load_u16 v56, v42, s[80:83], 0 offen
	v_add_lshl_u32 v201, v57, s49, 1
	s_mul_i32 s49, s86, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v200, v57, s49, 1
	s_mul_i32 s49, s86, 11
	v_cndmask_b32_e64 v201, 0x80000000, v201, s46
	v_add_lshl_u32 v202, v57, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s46, s4, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v200, 0x80000000, v200, s45
	s_mul_i32 s49, s86, 17
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v202, 0x80000000, v202, s46
	s_clause 0x3
	buffer_load_u16 v207, v202, s[80:83], 0 offen
	buffer_load_u16 v208, v200, s[80:83], 0 offen
	buffer_load_u16 v200, v201, s[80:83], 0 offen
	buffer_load_u16 v199, v199, s[80:83], 0 offen
	v_add_lshl_u32 v41, v57, s49, 1
	s_mul_i32 s49, s86, 19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v42, v57, s49, 1
	s_mul_i32 s49, s86, 25
	v_cndmask_b32_e64 v41, 0x80000000, v41, s44
	v_add_lshl_u32 v43, v57, s49, 1
	s_mul_i32 s49, s86, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v44, v57, s49, 1
	s_mul_i32 s49, s86, 33
	v_add_lshl_u32 v250, v57, s49, 1
	s_mul_i32 s49, s86, 35
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v251, v57, s49, 1
	s_mul_i32 s49, s86, 41
	v_add_lshl_u32 v252, v57, s49, 1
	s_mul_i32 s49, s86, 43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v253, v57, s49, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v57, 56, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s51
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s59, v57
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v57, 58, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s59, v57
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v58, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v58, 0x80000000, v59, s49
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v59, 19, v203
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v57, v57, s[80:83], 0 offen
	buffer_load_u16 v58, v58, s[80:83], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v59
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v59, 25, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v59
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v59, 0x80000000, v60, s51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s44
	v_cndmask_b32_e64 v60, 0x80000000, v204, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 27, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s50
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v59, v59, s[80:83], 0 offen
	buffer_load_u16 v60, v60, s[80:83], 0 offen
	v_cndmask_b32_e64 v43, 0x80000000, v43, s44
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v204
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 33, v203
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v204
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v204, 35, v203
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s52
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s59, v204
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v204, 41, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s59, v204
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 43, v203
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s59, v204
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 49, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s59, v204
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 51, v203
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s59, v204
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 57, v203
	v_add_nc_u32_e32 v203, 59, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s59, v204
	v_cmp_gt_i32_e64 s47, s59, v203
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v46.h, v207.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v45.h, v208.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v54.h, v200.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v53.h, v199.l
	v_cndmask_b32_e64 v199, 0x80000000, v250, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v200, 0x80000000, v251, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v201, 0x80000000, v252, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v202, 0x80000000, v253, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v203, 0x80000000, v254, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s57
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v92, 0x80000000, v92, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s58
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v88, 0x80000000, v88, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s47
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s87, s88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v86, 0x80000000, v86, s44
	s_clause 0xb
	buffer_load_u16 v250, v44, s[80:83], 0 offen
	buffer_load_u16 v251, v43, s[80:83], 0 offen
	buffer_load_u16 v252, v42, s[80:83], 0 offen
	buffer_load_u16 v253, v41, s[80:83], 0 offen
	buffer_load_u16 v254, v202, s[80:83], 0 offen
	buffer_load_u16 v209, v201, s[80:83], 0 offen
	buffer_load_u16 v210, v200, s[80:83], 0 offen
	buffer_load_u16 v211, v199, s[80:83], 0 offen
	buffer_load_u16 v86, v86, s[80:83], 0 offen
	buffer_load_u16 v88, v88, s[80:83], 0 offen
	buffer_load_u16 v92, v92, s[80:83], 0 offen
	buffer_load_u16 v212, v203, s[80:83], 0 offen
.Ltmp174:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[41:44], v126
.Ltmp175:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v42, 0, v121
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp176:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v235, v236, v233
	v_max3_f32 v44, v234, v66, v232
.Ltmp177:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v42, v[53:54]
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v240, v237, v238
	v_max3_f32 v53, v68, v69, v65
.Ltmp179:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v185, v[45:46]
.Ltmp180:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v230, v231, v72
	v_max3_f32 v44, v229, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v44, v53
	v_max_f32_e32 v44, v241, v248
	v_max3_f32 v53, v247, v244, v245
	v_max3_f32 v44, v44, v246, v53
	v_max3_f32 v53, v242, v243, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v44, v53, v42
	v_dual_max_f32 v44, v67, v63 :: v_dual_max_f32 v53, v61, v62
	v_max3_f32 v44, v44, v64, v53
.Ltmp181:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v53.h, v228.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp182:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
.Ltmp183:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v42, v227, v42, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v248, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s43, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v241, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v53.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v44, v44
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v53, 0x7fff
	v_mov_b16_e64 v53.h, v228.l
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v44, v43, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v199, v44, v43, v122
	v_perm_b32 v200, v44, v43, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v247, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s41, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v246, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v53.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v44, v44
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v53, 0x7fff
	v_mov_b16_e64 v53.h, v228.l
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v44, v43, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v201, v44, v43, v122
	v_perm_b32 v202, v44, v43, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v245, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s39, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v244, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v53.l, v43.h
	v_cmp_o_f32_e64 s38, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v43, v53, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v43.l, 0x7fff, v53.h, s38
	v_mov_b16_e64 v53.h, v228.l
	v_permlanex16_b32 v44, v43, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v203, v44, v43, v122
	v_perm_b32 v204, v44, v43, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v243, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s37
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v50.h, v250.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v48.h, v252.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v47.h, v253.l
	v_mov_b16_e64 v49.h, v251.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s37, v43, v43
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v52.h, v210.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v51.h, v211.l
	v_mov_b16_e64 v56.h, v254.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v55.h, v209.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v58.h, v92.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v57.h, v212.l
	v_mov_b16_e32 v60.h, v86.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v242, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v59.h, v88.l
	ds_store_b64 v186, v[47:48]
	ds_store_b64 v187, v[49:50]
	ds_store_b64 v188, v[51:52]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v189, v[55:56]
	ds_store_b64 v190, v[57:58]
	ds_store_b64 v191, v[59:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v51.h, v228.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v53.l, v43.h
	v_cmp_o_f32_e64 s36, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v43, v53, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v43.l, 0x7fff, v53.h, s36
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s36, 0xff800000, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v44, v43, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v205, v44, v43, v122
	v_perm_b32 v206, v44, v43, v123
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v43, v227, v42
	v_mov_b32_e32 v227, v42
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v43, 0, v43, s36
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v43
	v_mul_f32_e32 v34, v34, v43
	v_mul_f32_e32 v35, v35, v43
	v_mul_f32_e32 v36, v36, v43
	v_mul_f32_e32 v37, v37, v43
	v_mul_f32_e32 v38, v38, v43
	v_mul_f32_e32 v39, v39, v43
	v_dual_mul_f32 v40, v40, v43 :: v_dual_add_nc_u32 v43, 0, v124
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[43:46], v43
	ds_load_b128 v[47:50], v192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[43:50], v[199:206], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v240, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	v_mov_b16_e64 v45.h, v228.l
	v_mov_b16_e64 v46.h, v228.l
	v_mov_b16_e64 v47.h, v228.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v48.h, v228.l
	v_mov_b16_e64 v49.h, v228.l
	v_mov_b16_e64 v50.h, v228.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v239, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v43.h
	v_cmp_o_f32_e64 s34, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v43, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s34
	v_permlanex16_b32 v45, v44, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v122
	v_perm_b32 v44, v45, v44, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v238, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s33, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v237, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v45.h
	v_cmp_o_f32_e64 s31, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s31
	v_permlanex16_b32 v47, v46, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v122
	v_perm_b32 v46, v47, v46, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v236, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s30, v47, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v235, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v47.h
	v_cmp_o_f32_e64 s29, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v49, v47, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s29
	v_permlanex16_b32 v49, v48, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v122
	v_perm_b32 v48, v49, v48, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v234, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s28, v49, v49
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v233, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v51.l, v49.h
	v_cmp_o_f32_e64 s27, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v49, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s27
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v49, v51, v50, v122
	v_perm_b32 v50, v51, v50, v123
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v193
	ds_load_b128 v[55:58], v194
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[51:58], v[43:50], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v232, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	v_mov_b16_e64 v45.h, v228.l
	v_mov_b16_e64 v46.h, v228.l
	v_mov_b16_e64 v47.h, v228.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v48.h, v228.l
	v_mov_b16_e64 v49.h, v228.l
	v_mov_b16_e64 v50.h, v228.l
	v_mov_b16_e64 v51.h, v228.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s26, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v66, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v43.h
	v_cmp_o_f32_e64 s25, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v43, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s25
	v_permlanex16_b32 v45, v44, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v122
	v_perm_b32 v44, v45, v44, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v231, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s24, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v230, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v45.h
	v_cmp_o_f32_e64 s23, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s23
	v_permlanex16_b32 v47, v46, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v122
	v_perm_b32 v46, v47, v46, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v229, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v47, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v72, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v47.h
	v_cmp_o_f32_e64 s21, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v49, v47, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s21
	v_permlanex16_b32 v49, v48, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v122
	v_perm_b32 v48, v49, v48, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v71, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v49, v49
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v70, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v51.l, v49.h
	v_cmp_o_f32_e64 s19, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v49, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s19
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v49, v51, v50, v122
	v_perm_b32 v50, v51, v50, v123
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v195
	ds_load_b128 v[55:58], v196
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[51:58], v[43:50], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v69, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v228.l
	v_mov_b16_e64 v45.h, v228.l
	v_mov_b16_e64 v46.h, v228.l
	v_mov_b16_e64 v47.h, v228.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v48.h, v228.l
	v_mov_b16_e64 v49.h, v228.l
	v_mov_b16_e64 v50.h, v228.l
	v_mov_b16_e64 v51.h, v228.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s18, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v68, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v43.h
	v_cmp_o_f32_e64 s17, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v43, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s17
	v_permlanex16_b32 v45, v44, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v122
	v_perm_b32 v44, v45, v44, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v67, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s16
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v65, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v45.h
	v_cmp_o_f32_e64 s15, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v45, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s15
	v_permlanex16_b32 v47, v46, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v122
	v_perm_b32 v46, v47, v46, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v64, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v48.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s14, v47, v47
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v63, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v49, v47, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s1
	v_permlanex16_b32 v49, v48, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v122
	v_perm_b32 v48, v49, v48, v123
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v62, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v50.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v49, v49
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v61, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v51.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v49, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v226
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v51, v50, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v49, v51, v50, v122
	v_perm_b32 v50, v51, v50, v123
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v197
	ds_load_b128 v[55:58], v198
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[51:58], v[43:50], v[33:40]
.Ltmp186:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v43
.Ltmp188:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v226, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v249
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v44, v226, v43
	v_mov_b32_e32 v226, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v44, v44
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v41, v225, v44
	v_mov_b32_e32 v225, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s87, v87
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v251, s67 :: v_dual_mov_b32 v246, s62
	v_mov_b32_e32 v250, s66
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s53, s87, s91
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 2, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s43, s59, v41
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s44, s53, s85
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v244, s60
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, s44, v89, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s38, s59, v42
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v249, s65 :: v_dual_add_nc_u32 v42, 4, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v44, s44, v90, 1
	v_add_lshl_u32 v45, s44, v75, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v247, s63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s41, s59, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 6, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s5, s38
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v46, s44, v91, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v245, s61
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s38
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s42, s59, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 8, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s5, s41
	s_and_b32 s43, s5, s43
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v44, 0x80000000, v44, s38
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s5, s42
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s40, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 10, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v47, s44, v76, 1
	v_add_lshl_u32 v48, s44, v77, 1
	v_add_lshl_u32 v49, s44, v78, 1
	v_cndmask_b32_e64 v45, 0x80000000, v45, s38
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s39, s59, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 12, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s5, s40
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v86, s87, v73
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v46, 0x80000000, v46, s38
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s38, s5, s39
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s37, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 14, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s38
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v248, s64
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s37, s5, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 16, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v48, 0x80000000, v48, s37
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s36, s5, s36
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 18, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v49, 0x80000000, v49, s36
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s35, s5, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 20, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s34, s5, s34
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 22, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s33, s5, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 24, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s31, s5, s31
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 26, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s30, s5, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 28, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s29, s5, s29
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 30, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 32, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, s5, s27
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 34, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s26, s5, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 36, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s25, s5, s25
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 38, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s5, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 40, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s23, s5, s23
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 42, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s22, s5, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 44, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s21, s5, s21
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 46, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s20, s5, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 48, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 50, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s5, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 52, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s16, s5, s16
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 54, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, s5, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s0, s59, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 56, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s59, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 58, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s59, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 60, v41
	v_add_nc_u32_e32 v41, 62, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s59, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s1, s59, v41
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v41, s44, v74
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v58, v41, s93, 1
	v_add_lshl_u32 v50, v41, s92, 1
	v_lshlrev_b32_e32 v42, 1, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v58, 0x80000000, v58, s26
	s_mul_i32 s26, s85, 34
	v_cndmask_b32_e64 v50, 0x80000000, v50, s35
	v_add_lshl_u32 v59, v41, s26, 1
	s_mul_i32 s35, s85, 18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s43
	v_add_lshl_u32 v51, v41, s35, 1
	s_clause 0x7
	buffer_load_u16 v42, v42, s[76:79], 0 offen
	buffer_load_u16 v43, v43, s[76:79], 0 offen
	buffer_load_u16 v44, v44, s[76:79], 0 offen
	buffer_load_u16 v45, v45, s[76:79], 0 offen
	buffer_load_u16 v46, v46, s[76:79], 0 offen
	buffer_load_u16 v47, v47, s[76:79], 0 offen
	buffer_load_u16 v48, v48, s[76:79], 0 offen
	buffer_load_u16 v49, v49, s[76:79], 0 offen
	v_cndmask_b32_e64 v59, 0x80000000, v59, s25
	s_mul_i32 s25, s85, 36
	v_cndmask_b32_e64 v51, 0x80000000, v51, s34
	v_add_lshl_u32 v60, v41, s25, 1
	s_mul_i32 s34, s85, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v52, v41, s34, 1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s24
	s_mul_i32 s24, s85, 38
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v61, v41, s24, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s33
	s_mul_i32 s33, s85, 22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v53, v41, s33, 1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s23
	s_mul_i32 s23, s85, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v62, v41, s23, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s31
	s_mul_i32 s31, s85, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v54, v41, s31, 1
	v_cndmask_b32_e64 v62, 0x80000000, v62, s22
	s_mul_i32 s22, s85, 42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v63, v41, s22, 1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s30
	s_mul_i32 s30, s85, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v55, v41, s30, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s21
	s_mul_i32 s21, s85, 44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v64, v41, s21, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s29
	s_mul_i32 s29, s85, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v56, v41, s29, 1
	v_cndmask_b32_e64 v64, 0x80000000, v64, s20
	s_mul_i32 s20, s85, 48
	s_clause 0x5
	buffer_load_u16 v58, v58, s[76:79], 0 offen
	buffer_load_u16 v59, v59, s[76:79], 0 offen
	buffer_load_u16 v60, v60, s[76:79], 0 offen
	buffer_load_u16 v62, v62, s[76:79], 0 offen
	buffer_load_u16 v63, v63, s[76:79], 0 offen
	buffer_load_u16 v64, v64, s[76:79], 0 offen
	v_add_lshl_u32 v65, v41, s20, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s28
	s_mul_i32 s28, s85, 30
	s_clause 0x5
	buffer_load_u16 v50, v50, s[76:79], 0 offen
	buffer_load_u16 v51, v51, s[76:79], 0 offen
	buffer_load_u16 v52, v52, s[76:79], 0 offen
	buffer_load_u16 v54, v54, s[76:79], 0 offen
	buffer_load_u16 v55, v55, s[76:79], 0 offen
	buffer_load_u16 v56, v56, s[76:79], 0 offen
	v_add_lshl_u32 v57, v41, s28, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s18
	s_mul_i32 s18, s85, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v66, v41, s18, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s5, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v57, 0x80000000, v57, s27
	v_cndmask_b32_e64 v66, 0x80000000, v66, s18
	s_mul_i32 s18, s85, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v67, v41, s18, 1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s16
	s_mul_i32 s16, s85, 58
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_lshl_u32 v68, v41, s16, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s16, s5, s17
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s16
	s_mul_i32 s16, s85, 52
	s_clause 0x3
	buffer_load_u16 v65, v65, s[76:79], 0 offen
	buffer_load_u16 v66, v66, s[76:79], 0 offen
	buffer_load_u16 v67, v67, s[76:79], 0 offen
	buffer_load_u16 v68, v68, s[76:79], 0 offen
	v_add_lshl_u32 v69, v41, s16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v69, 0x80000000, v69, s14
	s_mul_i32 s14, s85, 60
	v_add_lshl_u32 v70, v41, s14, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, s5, s15
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s14
	s_mul_i32 s14, s85, 46
	s_clause 0x1
	buffer_load_u16 v69, v69, s[76:79], 0 offen
	buffer_load_u16 v70, v70, s[76:79], 0 offen
	v_add_lshl_u32 v71, v41, s14, 1
	s_mul_i32 s14, s85, 54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v72, v41, s14, 1
	s_mul_i32 s14, s85, 62
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	v_add_lshl_u32 v41, v41, s14, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s0
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s0, s59, v86
	.loc	1 854 32 is_stmt 1              ; attention.py:854:32
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s1
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x5
	buffer_load_u16 v57, v57, s[76:79], 0 offen
	buffer_load_u16 v53, v53, s[76:79], 0 offen
	buffer_load_u16 v71, v71, s[76:79], 0 offen
	buffer_load_u16 v61, v61, s[76:79], 0 offen
	buffer_load_u16 v41, v41, s[76:79], 0 offen
	buffer_load_u16 v72, v72, s[76:79], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v106
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s35, s6, s0
	s_and_b32 s34, s7, s0
	s_and_b32 s31, s8, s0
	s_and_b32 s28, s9, s0
	s_and_b32 s33, s10, s0
	s_and_b32 s29, s11, s0
	s_and_b32 s30, s12, s0
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s27, s13, s0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v93, v42
	s_waitcnt vmcnt(27)
	ds_store_b16 v93, v46 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v93, v50 offset:2048
	s_waitcnt vmcnt(14)
	ds_store_b16 v93, v54 offset:3072
	ds_store_b16 v93, v58 offset:4096
	ds_store_b16 v93, v62 offset:5120
	s_waitcnt vmcnt(11)
	ds_store_b16 v93, v65 offset:6144
	s_waitcnt vmcnt(10)
	ds_store_b16 v93, v66 offset:7168
	ds_store_b16 v95, v43
	ds_store_b16 v95, v47 offset:1024
	ds_store_b16 v95, v51 offset:2048
	ds_store_b16 v95, v55 offset:3072
	ds_store_b16 v95, v59 offset:4096
	ds_store_b16 v95, v63 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b16 v95, v67 offset:6144
	s_waitcnt vmcnt(8)
	ds_store_b16 v95, v68 offset:7168
	ds_store_b16 v96, v44
	ds_store_b16 v96, v48 offset:1024
	ds_store_b16 v96, v52 offset:2048
	ds_store_b16 v96, v56 offset:3072
	ds_store_b16 v96, v60 offset:4096
	ds_store_b16 v96, v64 offset:5120
	s_waitcnt vmcnt(7)
	ds_store_b16 v96, v69 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b16 v96, v70 offset:7168
	ds_store_b16 v97, v45
	ds_store_b16 v97, v49 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v53 offset:2048
	ds_store_b16 v97, v57 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v61 offset:4096
	ds_store_b16 v97, v71 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v72 offset:6144
	ds_store_b16 v97, v41 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v98
	ds_load_b128 v[41:44], v94
	ds_load_b128 v[49:52], v94 offset:2048
	ds_load_b128 v[53:56], v98 offset:2048
	ds_load_b128 v[232:235], v98 offset:4096
	ds_load_b128 v[228:231], v94 offset:4096
	ds_load_b128 v[236:239], v94 offset:6144
	ds_load_b128 v[240:243], v98 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[1:8], v[244:251]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[1:8], v[244:251]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[228:235], v[1:8], v[244:251]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[236:243], v[1:8], v[244:251]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v100
	ds_load_b128 v[228:231], v99
	ds_load_b128 v[236:239], v99 offset:2048
	ds_load_b128 v[240:243], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[9:16], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[236:243], v[9:16], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v100 offset:4096
	ds_load_b128 v[228:231], v99 offset:4096
	ds_load_b128 v[236:239], v99 offset:6144
	ds_load_b128 v[240:243], v100 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[228:235], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[236:243], v[9:16], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v102
	ds_load_b128 v[228:231], v101
	ds_load_b128 v[236:239], v101 offset:2048
	ds_load_b128 v[240:243], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[17:24], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[236:243], v[17:24], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v102 offset:4096
	ds_load_b128 v[228:231], v101 offset:4096
	ds_load_b128 v[236:239], v101 offset:6144
	ds_load_b128 v[240:243], v102 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[228:235], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[236:243], v[17:24], v[41:48]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v104
	ds_load_b128 v[228:231], v103
	ds_load_b128 v[236:239], v103 offset:2048
	ds_load_b128 v[240:243], v104 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[228:235], v[25:32], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[236:243], v[25:32], v[57:64]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[232:235], v104 offset:4096
	ds_load_b128 v[228:231], v103 offset:4096
	ds_load_b128 v[236:239], v103 offset:6144
	ds_load_b128 v[240:243], v104 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[228:235], v[25:32], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[236:243], v[25:32], v[41:48]
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v86, v107
	v_cmp_le_i32_e64 s0, v86, v108
	v_cmp_le_i32_e64 s1, v86, v109
	v_cmp_le_i32_e64 s14, v86, v110
	v_cmp_le_i32_e64 s15, v86, v111
	v_cmp_le_i32_e64 s16, v86, v112
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s19, vcc_lo, s35
	s_and_b32 s0, s0, s34
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v86, v113
	v_cmp_le_i32_e64 s18, v86, v114
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s31
	s_and_b32 s14, s14, s28
	s_and_not1_b32 s20, s35, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s34, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s15, s15, s33
	s_and_b32 s16, s16, s29
	s_or_b32 s35, s20, s19
	s_or_b32 s34, s21, s0
	s_and_not1_b32 s0, s31, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s19, s28, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s30
	s_and_b32 s18, s18, s27
	s_or_b32 s31, s0, s1
	s_or_b32 s28, s19, s14
	s_and_not1_b32 s0, s33, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s14, s29, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s33, s0, s1
	s_or_b32 s29, s14, s15
	s_and_not1_b32 s0, s30, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s14, s27, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s30, s0, s1
	s_or_b32 s27, s14, s15
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s84
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	scratch_load_b32 v88, off, off          ; 4-byte Folded Reload
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v86, v213
	v_cmp_le_i32_e64 s26, v86, v214
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e32 vcc_lo, v86, v88
	scratch_load_b32 v88, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s0, v86, v88
	scratch_load_b32 v88, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s1, v86, v88
	scratch_load_b32 v88, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s14, v86, v88
	scratch_load_b32 v88, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s15, v86, v88
	scratch_load_b32 v88, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v86, v88
	scratch_load_b32 v88, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s17, v86, v88
	scratch_load_b32 v88, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s17, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_and_b32 s17, s17, s30
	.loc	1 866 30                        ; attention.py:866:30
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s18, v86, v88
	.loc	1 867 30                        ; attention.py:867:30
	scratch_load_b32 v88, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s26
	s_and_b32 s18, s18, s27
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s19, v86, v88
	scratch_load_b32 v88, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, s19, s35
	s_and_b32 s19, s19, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s20, v86, v88
	scratch_load_b32 v88, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s0, s0, s20
	s_and_not1_b32 s20, s35, exec_lo
	s_and_b32 s0, s0, s34
	s_or_b32 s35, s20, s19
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s19, s28, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s21, v86, v88
	scratch_load_b32 v88, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s21
	s_and_not1_b32 s21, s34, exec_lo
	s_and_b32 s1, s1, s31
	s_or_b32 s34, s21, s0
	s_and_not1_b32 s0, s31, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s31, s0, s1
	s_and_not1_b32 s0, s33, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s22, v86, v88
	scratch_load_b32 v88, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s14, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s14, s28
	s_and_b32 s14, s14, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s28, s19, s14
	s_and_not1_b32 s14, s29, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s23, v86, v88
	scratch_load_b32 v88, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s15, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s15, s15, s33
	s_and_b32 s1, s15, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s33, s0, s1
	s_and_not1_b32 s0, s30, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_or_b32 s30, s0, s1
	.loc	1 867 30                        ; attention.py:867:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s24, v86, v88
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s16, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s16, s29
	s_and_b32 s15, s16, exec_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_or_b32 s29, s14, s15
	s_and_not1_b32 s14, s27, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s27, s14, s15
	s_branch .LBB0_6
.LBB0_11:
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
	v_mov_b32_e32 v3, v40
	s_branch .LBB0_13
.LBB0_12:                               ; %._crit_edge.loopexit
.Ltmp189:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v43, v43 :: v_dual_and_b32 v72, 15, v0
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, 0, v41
	v_readlane_b32 s30, v255, 0
	v_readlane_b32 s31, v255, 1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, 0xff800000, v1 :: v_dual_lshlrev_b32 v121, 1, v0
	v_lshlrev_b32_e32 v63, 2, v0
.Ltmp192:
.LBB0_13:                               ; %._crit_edge
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v72
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v1, 1, v0
	v_add_nc_u32_e32 v4, 0, v105
.Ltmp194:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e64 v2, 0xff800000, v2, s31
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e64 v3, 0, v3, s31
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v6, 0, v33 :: v_dual_cndmask_b32 v7, 0, v34
	v_cndmask_b32_e32 v8, 0, v35, vcc_lo
.Ltmp195:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v5, v1, 2, 0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v6 :: v_dual_mov_b32 v10, v7
	v_mov_b32_e32 v11, v8
.Ltmp197:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_barrier
	ds_store_b32 v4, v2
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp199:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v5
.Ltmp200:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v4, v3
.Ltmp201:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v6, v9
.Ltmp203:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp204:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_add_f32 v6, v8, v11 :: v_dual_mov_b32 v7, v3
.Ltmp205:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	ds_load_b32 v5, v5
.Ltmp206:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v13, 0, v37 :: v_dual_cndmask_b32 v14, 0, v38
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v9, v6
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp208:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp210:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v7, v6, v9
.Ltmp211:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp212:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v2
.Ltmp213:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s70, s70, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp214:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v8, v4 :: v_dual_mov_b32 v9, v7
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp215:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v11, v5 :: v_dual_cndmask_b32 v12, 0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp217:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v6
.Ltmp218:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v39 :: v_dual_cndmask_b32 v16, 0, v40
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v4, v8 :: v_dual_add_f32 v7, v7, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v4, v3
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v21, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v8, v6
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp224:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	v_add_f32_e32 v14, v14, v19
.Ltmp225:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp226:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v21
.Ltmp227:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v21, v16
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp228:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp231:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v15, v20
	v_dual_add_f32 v16, v16, v21 :: v_dual_mov_b32 v15, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp234:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp235:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v12, v14
	v_add_f32_e32 v12, v13, v15
	v_add_f32_e32 v15, v17, v19
	v_dual_add_f32 v17, v18, v20 :: v_dual_add_f32 v18, v16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp236:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v14 :: v_dual_mov_b32 v13, v12
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v21, v18
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp237:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s86, s86, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s30, s70
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s86
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp238:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v0, v10, v10 :: v_dual_add_f32 v11, v5, v11
	v_max_f32_e32 v2, v2, v2
.Ltmp239:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_lshl_b64 s[6:7], s[0:1], 2
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v2, v0
.Ltmp241:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v0, 0
	s_add_u32 s6, s68, s6
	s_addc_u32 s7, s69, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v0, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp242:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v9 :: v_dual_and_b32 v0, 0xc0, v63
	v_add_f32_e32 v8, v6, v8
	v_dual_add_f32 v7, v3, v4 :: v_dual_and_b32 v2, 0xe0, v121
.Ltmp243:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 28, v121
	v_lshlrev_b32_e32 v1, 5, v1
	s_and_b32 vcc_lo, s31, s4
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v0, 0, v0
	v_add_f32_e32 v10, v14, v16
	v_dual_add_f32 v21, v18, v21 :: v_dual_add_nc_u32 v2, 0, v2
	v_add_f32_e32 v20, v17, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp245:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v0, v0, v1, v3
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v12, v13
.Ltmp247:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[7:10]
	ds_store_b128 v2, v[18:21] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v73
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[68:71], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp248:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 60
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 60
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18124
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 60
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.byte	4                               ; Abbrev [4] 0x90:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x9d:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp190                        ; DW_AT_low_pc
	.long	.Ltmp191-.Ltmp190               ; DW_AT_high_pc
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
	.byte	6                               ; Abbrev [6] 0xc0:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
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
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
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
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 60
    .sgpr_count:     107
    .sgpr_spill_count: 2
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 14
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
