	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s30, s[0:1], 0x68
	s_mov_b32 s29, s3
	s_clause 0x2
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b32 s40, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v82, 6, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v73, 63, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v86, 15, v0
	v_and_b32_e32 v35, 64, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x90, v9
	v_lshlrev_b32_e32 v34, 4, v33
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s12
	s_bitcmp1_b32 s12, 8
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s10, s29, s66
	s_cselect_b32 s39, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[74:75], null, s40, v82, v[73:74]
	s_cselect_b32 s3, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s11, s30
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s11
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s30
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s93, s40, v73
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[75:76], null, s40, 6, v[74:75]
	v_lshl_add_u32 v83, s40, 1, v74
	v_lshl_add_u32 v84, s40, 2, v74
	v_lshl_add_u32 v85, s40, 3, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[76:77], null, s40, 10, v[74:75]
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[77:78], null, s40, 12, v[74:75]
	v_mad_u64_u32 v[78:79], null, s40, 14, v[74:75]
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s21, s4
	s_sub_i32 s4, 0, s11
	s_mul_i32 s4, s4, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s21, s4
	s_add_i32 s21, s21, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s21
	s_mul_i32 s7, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s5, s11
	s_cmp_ge_u32 s5, s11
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s11
	s_cselect_b32 s4, s7, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s8, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s29
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
	s_mul_i32 s6, s4, s30
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s28, s2, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s20, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 4, v2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v2
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
	s_cselect_b32 s22, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s9, s65
	s_xor_b32 s24, s64, s65
	s_cvt_f32_u32 s2, s9
	s_sub_i32 s4, 0, s9
	s_ashr_i32 s24, s24, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, 2, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cvt_u32_f32 s7, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, s66, v1
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s6, s4, s7
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s66, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s23, s7, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s66, v4
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s23, s7, s23
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s66, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s23, s8, s23
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s25, s23, s9
	s_add_i32 s26, s23, 1
	s_sub_i32 s25, s8, s25
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s66, v6
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s27, s25, s9
	s_cmp_ge_u32 s25, s9
	s_cselect_b32 s23, s26, s23
	s_cselect_b32 s25, s27, s25
	s_add_i32 s26, s23, 1
	s_cmp_ge_u32 s25, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s66, v7
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s26, s23
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s25, s10, s20
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s25, s25, s40
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s66, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, s25, v74, 1
	v_add_lshl_u32 v2, s25, v83, 1
	v_add_lshl_u32 v3, s25, v84, 1
	v_add_lshl_u32 v4, s25, v75, 1
	v_add_lshl_u32 v5, s25, v85, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v6, s25, v76, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s25, v77, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s6
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v8, s25, v78, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 1, v73
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s9
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s2, s67, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s93, s10
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
	v_xor_b32_e32 v9, v9, v10
	v_lshl_or_b32 v10, v86, 7, v34
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s4, s4, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s4, s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s7, s4, 6
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v13, 16, v10
	v_xor_b32_e32 v14, 32, v10
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s7, s7, s30
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v15, 48, v10
	v_xor_b32_e32 v12, 0x240, v9
	v_xor_b32_e32 v16, 64, v10
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s7, s7, -1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v87, 0, v9
	v_xor_b32_e32 v9, 0x360, v9
	v_add_nc_u32_e32 v88, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	v_add_nc_u32_e32 v92, 0, v13
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s9, s7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v89, 0, v11
	v_add_nc_u32_e32 v93, 0, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v94, 0, v15
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s10, s9, s21
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v90, 0, v12
	v_add_nc_u32_e32 v95, 0, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s24
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v91, 0, v9
	v_add_nc_u32_e32 v96, 0, v17
	v_add_nc_u32_e32 v97, 0, v18
	v_add_nc_u32_e32 v98, 0, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s16, s10, s11
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s6
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s7, s7, s30
	s_sub_i32 s9, s9, s16
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s8, s2
	.loc	1 795 14                        ; attention.py:795:14
	s_and_not1_b32 s4, s4, 63
	.loc	1 798 32                        ; attention.py:798:32
	s_ashr_i32 s7, s7, 31
	s_add_i32 s16, s10, 1
	s_sub_i32 s17, s9, s11
	s_cmp_ge_u32 s9, s11
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v36, s8
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s8, s16, s10
	s_cselect_b32 s9, s17, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s11
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v87, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v87, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v89, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v89, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v90, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v90, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v91, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v91, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v88
	ds_load_b128 v[5:8], v92
	ds_load_b128 v[9:12], v93
	ds_load_b128 v[13:16], v94
	ds_load_b128 v[17:20], v95
	ds_load_b128 v[21:24], v96
	ds_load_b128 v[25:28], v97
	ds_load_b128 v[29:32], v98
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s8, s10, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_cmp_eq_u32_e64 s10, 0, v35
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s7
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v36
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s9, s28, s8
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s8, s8, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s62, s9, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s8, s62, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s95, s4, s8
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s14, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s15, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s20
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s67, s4
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s62, s62, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s9, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s4, s4, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s95, s95, s4
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s77, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v99, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s3, s15, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, 16
	s_min_i32 s3, s67, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 26
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s3, s3, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s95, s95, s3
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[8:9], s[0:1], 0x40
	.loc	1 892 65 is_stmt 1              ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s77, v73
	v_lshlrev_b32_e32 v81, 1, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s62, s95
	s_cbranch_scc1 .LBB0_12
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr166 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s3, s29, s64
	v_writelane_b32 v166, s8, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	s_ashr_i32 s6, s6, 31
	s_load_b32 s12, s[0:1], 0x6c
	v_writelane_b32 v166, s9, 1
	s_cvt_u32_f32 s7, s7
                                        ; implicit-def: $vgpr165 : SGPR spill to VGPR lane
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v36, s20, v86
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v37, 4, v0
	v_and_b32_e32 v38, 0x70, v81
	v_writelane_b32 v166, s10, 2
	v_and_b32_e32 v40, 0x60, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v103, s15, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s97, s66, v36
	v_and_b32_e32 v36, 16, v0
	v_writelane_b32 v166, s11, 3
	s_xor_b32 s8, s22, s3
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v101, 62, v37
	s_sub_i32 s3, s8, s3
	s_sub_i32 s8, 0, s2
	s_mul_i32 s9, s3, s64
	s_mul_i32 s8, s8, s7
	s_sub_i32 s9, s29, s9
	s_mul_hi_u32 s8, s7, s8
	v_writelane_b32 v166, s10, 4
	s_abs_i32 s10, s9
	s_add_i32 s7, s7, s8
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_ashr_i32 s8, s9, 31
	s_mul_hi_u32 s7, s10, s7
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_xor_b32 s6, s8, s6
	s_mul_i32 s9, s7, s2
	v_writelane_b32 v166, s30, 5
	s_sub_i32 s8, s10, s9
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s2
	s_cmp_ge_u32 s8, s2
	v_writelane_b32 v166, s28, 6
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s16, s7, 1
	s_cmp_ge_u32 s8, s2
	s_load_b128 s[8:11], s[0:1], 0x8
	s_cselect_b32 s0, s16, s7
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s3, s3, s65
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s0, s0, s6
	v_writelane_b32 v166, s29, 7
	s_sub_i32 s0, s0, s6
	s_mul_i32 s1, s77, 33
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s0, s0, s3
	v_mov_b32_e32 v37, 0x5410
	.loc	1 852 32 is_stmt 0              ; attention.py:852:32
	s_mul_i32 s0, s0, s67
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_writelane_b32 v166, s0, 8
	s_mul_i32 s0, s40, 20
	v_mov_b32_e32 v36, 0x7632
	v_bfe_i32 v41, v0, 3, 1
	v_lshlrev_b32_e32 v39, 7, v73
	v_writelane_b32 v166, s0, 9
	s_mul_i32 s0, s40, 26
	v_cndmask_b32_e32 v36, 0x3276, v36, vcc_lo
	v_xor_b32_e32 v38, v34, v38
	v_lshl_or_b32 v34, v40, 6, v34
	v_writelane_b32 v166, s0, 10
	s_mul_i32 s0, s40, 28
	v_lshl_or_b32 v36, v36, 8, v36
	v_and_or_b32 v40, 0x410, v41, v40
	v_lshrrev_b32_e32 v102, 4, v35
	v_writelane_b32 v166, s0, 11
	s_mul_i32 s0, s40, 30
	v_and_b32_e32 v36, 0x760076, v36
	v_lshrrev_b32_e32 v35, 3, v35
	v_xor_b32_e32 v34, v40, v34
	v_writelane_b32 v166, s0, 12
	s_lshl_b32 s0, s40, 5
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s52, s8
	s_mov_b32 s8, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s41, s12, 0x3fb8aa3b
	v_writelane_b32 v166, s0, 13
	s_mul_i32 s0, s40, 34
	s_and_b32 s53, s9, 0xffff
	v_subrev_nc_u32_e32 v104, s13, v103
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v105, s14, v103
	v_writelane_b32 v166, s0, 14
	s_mul_i32 s0, s40, 36
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[79:80], null, s77, v102, v[73:74]
	s_and_b32 s81, s11, 0xffff
	v_writelane_b32 v166, s0, 15
	s_mul_i32 s0, s40, 38
	s_mov_b32 s80, s10
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	v_writelane_b32 v166, s0, 16
	s_mul_i32 s0, s40, 40
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	v_writelane_b32 v166, s0, 17
	s_mul_i32 s0, s40, 42
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_or3_b32 v80, v39, v35, v38
	v_writelane_b32 v166, s0, 18
	s_mul_i32 s0, s40, 44
	v_lshl_or_b32 v108, v33, 7, v34
	v_mov_b32_e32 v33, 0
	v_lshl_or_b32 v36, v36, 4, v36
	v_writelane_b32 v166, s0, 19
	s_mul_i32 s0, s40, 46
	v_xor_b32_e32 v34, 64, v80
	v_xor_b32_e32 v35, 16, v80
	v_and_b32_e32 v107, 0x7060706, v36
	v_writelane_b32 v166, s0, 20
	s_mul_i32 s0, s40, 48
	v_xor_b32_e32 v36, 32, v80
	v_dual_cndmask_b32 v37, 0x1054, v37 :: v_dual_add_nc_u32 v112, 0, v34
	v_mov_b32_e32 v123, v33
	v_writelane_b32 v166, s0, 21
	s_mul_i32 s0, s40, 50
	v_add_nc_u32_e32 v110, 0, v36
	v_lshl_or_b32 v37, v37, 8, v37
	v_mov_b32_e32 v34, v33
	v_writelane_b32 v166, s0, 22
	s_mul_i32 s0, s40, 52
	v_xor_b32_e32 v38, 0x50, v80
	v_and_b32_e32 v37, 0x540054, v37
	v_xor_b32_e32 v39, 0x60, v80
	v_writelane_b32 v166, s0, 23
	s_mul_i32 s0, s40, 54
	v_xor_b32_e32 v40, 0x70, v80
	v_lshl_or_b32 v37, v37, 4, v37
	v_xor_b32_e32 v41, 16, v108
	v_writelane_b32 v166, s0, 24
	s_mul_i32 s0, s40, 56
	v_xor_b32_e32 v42, 32, v108
	v_and_b32_e32 v106, 0x5040504, v37
	v_xor_b32_e32 v37, 48, v80
	v_writelane_b32 v166, s0, 25
	s_mul_i32 s0, s40, 58
	v_xor_b32_e32 v43, 48, v108
	v_xor_b32_e32 v44, 64, v108
	v_xor_b32_e32 v45, 0x50, v108
	v_writelane_b32 v166, s0, 26
	s_mul_i32 s0, s40, 60
	v_xor_b32_e32 v46, 0x60, v108
	v_xor_b32_e32 v47, 0x70, v108
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v100, v0, 4, 1
	v_writelane_b32 v166, s0, 27
	s_mul_i32 s0, s40, 62
	v_add_nc_u32_e32 v109, 0, v35
	v_add_nc_u32_e32 v111, 0, v37
	v_add_nc_u32_e32 v113, 0, v38
	v_writelane_b32 v166, s0, 28
	s_lshl_b32 s0, s77, 1
	v_add_nc_u32_e32 v114, 0, v39
	v_add_nc_u32_e32 v115, 0, v40
	v_add_nc_u32_e32 v116, 0, v41
	v_writelane_b32 v166, s0, 29
	s_mul_i32 s0, s77, 3
	v_add_nc_u32_e32 v117, 0, v42
	v_add_nc_u32_e32 v118, 0, v43
	v_add_nc_u32_e32 v119, 0, v44
	v_writelane_b32 v166, s0, 30
	s_lshl_b32 s0, s77, 3
	v_add_nc_u32_e32 v120, 0, v45
	v_add_nc_u32_e32 v121, 0, v46
	v_add_nc_u32_e32 v122, 0, v47
	v_writelane_b32 v166, s0, 31
	s_mul_i32 s0, s77, 9
	v_mov_b32_e32 v35, v33
	v_writelane_b32 v165, s0, 0
	s_mul_i32 s0, s77, 10
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_writelane_b32 v165, s0, 1
	s_mul_i32 s0, s77, 11
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v40, v33
	v_mov_b16_e64 v160.h, 0
	v_writelane_b32 v165, s0, 2
	s_lshl_b32 s44, s40, 4
	s_mul_i32 s100, s40, 18
	s_mul_i32 s103, s40, 22
	s_mul_i32 vcc_hi, s40, 24
	v_writelane_b32 v165, s1, 3
	s_mul_i32 s1, s77, 34
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_lshl_b32 s76, s77, 4
	v_writelane_b32 v165, s1, 4
	s_mul_i32 s1, s77, 35
	s_mul_i32 s0, s77, 17
	s_mul_i32 s2, s77, 18
	s_mul_i32 s5, s77, 19
	v_writelane_b32 v165, s1, 5
	s_mul_i32 s1, s77, 40
	s_mul_i32 s42, s77, 24
	s_mul_i32 s43, s77, 25
	s_mul_i32 s45, s77, 26
	v_writelane_b32 v165, s1, 6
	s_mul_i32 s1, s77, 41
	s_mul_i32 s46, s77, 27
	s_lshl_b32 s47, s77, 5
	s_mul_i32 s101, s77, 42
	v_writelane_b32 v165, s1, 7
	s_mul_i32 s1, s77, 43
	s_mul_i32 s56, s77, 51
	s_mul_i32 s57, s77, 56
	s_mul_i32 s60, s77, 57
	v_writelane_b32 v165, s1, 8
	s_mul_i32 s1, s77, 48
	s_mul_i32 s63, s77, 58
	s_mov_b32 s75, 0x76543210
                                        ; implicit-def: $vgpr164 : SGPR spill to VGPR lane
	v_writelane_b32 v165, s1, 9
	s_mul_i32 s1, s77, 49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_writelane_b32 v165, s1, 10
	s_mul_i32 s1, s77, 50
	v_writelane_b32 v165, s1, 11
	s_mul_i32 s1, s77, 59
	s_delay_alu instid0(SALU_CYCLE_1)
	v_writelane_b32 v165, s1, 12
	v_writelane_b32 v165, s8, 13
	v_writelane_b32 v165, s9, 14
	v_writelane_b32 v165, s10, 15
	v_writelane_b32 v165, s11, 16
	v_writelane_b32 v165, s12, 17
	v_writelane_b32 v165, s13, 18
	v_writelane_b32 v165, s14, 19
	v_writelane_b32 v165, s15, 20
	s_branch .LBB0_8
.LBB0_6:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	v_writelane_b32 v164, s73, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s3, v134, v104
	v_writelane_b32 v165, s21, 24
	v_cmp_ge_i32_e64 s10, v147, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v147, v105
	v_writelane_b32 v164, s88, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v155, v104
	v_writelane_b32 v165, s89, 25
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v155, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v148, v104
	v_writelane_b32 v164, s96, 2
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v148, v105
	v_writelane_b32 v165, s69, 26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v153, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v153, v105
	v_writelane_b32 v164, s79, 3
	v_cmp_le_i32_e64 s34, v142, v105
	v_writelane_b32 v165, s23, 27
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s11
	s_and_b32 s11, s12, s13
	v_writelane_b32 v164, s102, 4
	s_and_b32 s12, s14, s15
	v_writelane_b32 v165, s71, 28
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s71, v142, v104
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s20, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v164, s3, 5
	v_cmp_ge_i32_e64 s3, v131, v104
	v_cmp_ge_i32_e64 s16, v156, v104
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s71, s34
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v156, v105
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v143, v104
	v_writelane_b32 v164, s3, 6
	v_cmp_ge_i32_e64 s3, v130, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v143, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v140, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v140, v105
	v_writelane_b32 v165, s66, 29
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v164, s3, 7
	v_cmp_ge_i32_e64 s3, v128, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v128, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v150, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v150, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s86, v139, v104
	v_writelane_b32 v164, s3, 8
	v_cmp_ge_i32_e64 s3, v129, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v139, v105
	v_cmp_le_i32_e64 s94, v129, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s13, s16, s17
	s_and_b32 s16, s22, s23
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_writelane_b32 v164, s3, 9
	v_cmp_ge_i32_e64 s3, v126, v104
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s35, s36
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s87, v146, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v146, v105
	s_mov_b32 s37, s4
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v164, s3, 10
	v_cmp_ge_i32_e64 s3, v127, v104
	s_mov_b32 s4, s62
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v131, v105
	v_cmp_le_i32_e64 s90, v126, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s24, s25
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_writelane_b32 v164, s3, 11
	v_cmp_ge_i32_e64 s3, v125, v104
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s24, s86, s33
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v152, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v152, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s87, s87, s1
	.loc	1 867 30                        ; attention.py:867:30
	v_writelane_b32 v164, s3, 12
	v_cmp_le_i32_e64 s3, v130, v105
	v_cmp_le_i32_e64 s1, v127, v105
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v154, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v154, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	v_readlane_b32 s34, v164, 7
	v_readlane_b32 s33, v164, 6
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s74, v141, v104
	v_writelane_b32 v165, s38, 30
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v141, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s34, s34, s3
	v_readlane_b32 s3, v164, 8
	s_and_b32 s33, s33, s62
	s_mov_b32 s62, s4
	s_mov_b32 s4, s37
	s_and_b32 s7, s6, s7
	s_and_b32 s35, s3, s66
	v_readlane_b32 s3, v164, 9
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v149, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v149, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v151, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v151, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s36, s3, s94
	v_readlane_b32 s3, v164, 10
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s102, v135, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s78, v135, v105
	v_cmp_le_i32_e64 s6, v125, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s8, s8, s9
	s_and_b32 s37, s3, s90
	v_readlane_b32 s3, v164, 11
	s_and_b32 s7, s7, s82
	s_and_b32 s9, s87, s85
	s_and_b32 s8, s8, s99
	s_and_b32 s23, s74, s38
	s_and_b32 s1, s3, s1
	v_readlane_b32 s3, v164, 12
	s_and_not1_b32 s38, s82, exec_lo
	s_and_b32 s7, s7, exec_lo
	v_writelane_b32 v165, s98, 31
	s_and_b32 s10, s10, s72
	s_and_b32 s11, s11, s84
	s_and_b32 s14, s18, s19
	s_and_b32 s19, s28, s29
	s_and_b32 s29, s102, s78
	s_and_b32 s6, s3, s6
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_or_b32 s78, s38, s7
	s_and_not1_b32 s7, s99, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v144, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v144, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s12, s12, s58
	s_and_b32 s13, s13, s65
	s_or_b32 s85, s3, s9
	s_and_not1_b32 s9, s72, exec_lo
	s_and_b32 s10, s10, exec_lo
	s_or_b32 s99, s7, s8
	s_and_not1_b32 s7, s84, exec_lo
	s_and_b32 s8, s11, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v145, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v145, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s89, v138, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s75, v138, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s64
	s_and_b32 s15, s15, s59
	s_or_b32 s72, s9, s10
	s_and_not1_b32 s9, s58, exec_lo
	s_and_b32 s10, s12, exec_lo
	s_or_b32 s84, s7, s8
	s_and_not1_b32 s7, s65, exec_lo
	s_and_b32 s8, s13, exec_lo
	v_readlane_b32 s96, v165, 21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s69, v137, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s73, v137, v105
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s92, v136, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s88, v136, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s16, s16, s51
	s_and_b32 s18, s26, s27
	s_and_b32 s17, s17, s50
	s_or_b32 s58, s9, s10
	s_and_not1_b32 s9, s64, exec_lo
	s_and_b32 s10, s14, exec_lo
	s_or_b32 s65, s7, s8
	s_and_not1_b32 s7, s59, exec_lo
	s_and_b32 s8, s15, exec_lo
	v_readlane_b32 s87, v165, 22
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s98, v132, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s70, v132, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s49
	s_and_b32 s20, s30, s31
	s_and_b32 s19, s19, s48
	s_or_b32 s64, s9, s10
	s_and_not1_b32 s9, s51, exec_lo
	s_and_b32 s10, s16, exec_lo
	s_or_b32 s59, s7, s8
	s_and_not1_b32 s7, s50, exec_lo
	s_and_b32 s8, s17, exec_lo
	v_readlane_b32 s71, v165, 23
	s_and_b32 s25, s89, s75
	v_readlane_b32 s89, v165, 26
	s_and_b32 s20, s20, s96
	s_and_b32 s21, s21, s91
	s_or_b32 s51, s9, s10
	s_and_not1_b32 s9, s49, exec_lo
	s_and_b32 s10, s18, exec_lo
	s_or_b32 s50, s7, s8
	s_and_not1_b32 s7, s48, exec_lo
	s_and_b32 s8, s19, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s79, v133, v104
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v133, v105
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s26, s69, s73
	v_readlane_b32 s69, v165, 27
	s_and_b32 s27, s92, s88
	v_readlane_b32 s88, v165, 25
	s_and_b32 s22, s22, s87
	s_and_b32 s23, s23, s68
	s_or_b32 s49, s9, s10
	s_and_not1_b32 s9, s96, exec_lo
	s_and_b32 s10, s20, exec_lo
	s_or_b32 s48, s7, s8
	s_and_not1_b32 s7, s91, exec_lo
	s_and_b32 s8, s21, exec_lo
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s61, v134, v105
	v_readlane_b32 s73, v165, 24
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s98, s70
	v_readlane_b32 s98, v165, 30
	v_readlane_b32 s31, v164, 5
	s_and_b32 s24, s24, s71
	s_and_b32 s25, s25, s89
	s_or_b32 s90, s9, s10
	s_and_not1_b32 s9, s87, exec_lo
	s_and_b32 s10, s22, exec_lo
	s_or_b32 s91, s7, s8
	s_and_not1_b32 s7, s68, exec_lo
	s_and_b32 s8, s23, exec_lo
	v_readlane_b32 s102, v164, 0
	s_and_b32 s26, s26, s69
	s_and_b32 s28, s79, vcc_lo
	s_and_b32 s27, s27, s88
	s_or_b32 s87, s9, s10
	s_and_not1_b32 s9, s71, exec_lo
	s_and_b32 s10, s24, exec_lo
	s_or_b32 s68, s7, s8
	s_and_not1_b32 s7, s89, exec_lo
	s_and_b32 s8, s25, exec_lo
	v_readlane_b32 s74, v164, 4
	v_readlane_b32 s70, v164, 1
	s_and_b32 s28, s28, s73
	s_and_b32 s29, s29, s98
	s_and_b32 s31, s31, s61
	s_or_b32 s24, s9, s10
	s_and_not1_b32 s9, s69, exec_lo
	s_and_b32 s10, s26, exec_lo
	s_or_b32 s69, s7, s8
	s_and_not1_b32 s7, s88, exec_lo
	s_and_b32 s8, s27, exec_lo
	v_readlane_b32 s79, v165, 31
	v_readlane_b32 vcc_lo, v164, 2
	s_and_b32 s30, s30, s104
	s_and_b32 s31, s31, s102
	s_or_b32 s23, s9, s10
	s_and_not1_b32 s9, s73, exec_lo
	s_and_b32 s10, s28, exec_lo
	s_or_b32 s89, s7, s8
	s_and_not1_b32 s7, s98, exec_lo
	s_and_b32 s8, s29, exec_lo
	v_readlane_b32 s94, v164, 3
	v_readlane_b32 s92, v165, 29
	v_readlane_b32 s66, v165, 28
	s_and_b32 s33, s33, s74
	s_and_b32 s34, s34, s70
	s_or_b32 s21, s9, s10
	s_and_not1_b32 s9, s104, exec_lo
	s_and_b32 s10, s30, exec_lo
	s_or_b32 s38, s7, s8
	s_and_not1_b32 s7, s102, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s35, s35, s79
	s_and_b32 s36, s36, vcc_lo
	s_or_b32 s104, s9, s10
	s_and_not1_b32 s9, s74, exec_lo
	s_and_b32 s10, s33, exec_lo
	s_or_b32 s73, s7, s8
	s_and_not1_b32 s7, s70, exec_lo
	s_and_b32 s8, s34, exec_lo
	s_and_b32 s37, s37, s94
	s_and_b32 s1, s1, s92
	s_and_b32 s6, s6, s66
	s_or_b32 s102, s9, s10
	s_and_not1_b32 s9, s79, exec_lo
	s_and_b32 s10, s35, exec_lo
	s_or_b32 s88, s7, s8
	s_and_not1_b32 s7, vcc_lo, exec_lo
	s_and_b32 s8, s36, exec_lo
	s_or_b32 s98, s9, s10
	s_and_not1_b32 s9, s94, exec_lo
	s_and_b32 s10, s37, exec_lo
	s_or_b32 s96, s7, s8
	s_and_not1_b32 s7, s92, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s8, s66, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_mov_b32 s75, 0x76543210
	s_or_b32 s79, s9, s10
	s_or_b32 s66, s7, s1
	s_or_b32 s71, s8, s6
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v137, s41, v50 :: v_dual_mul_f32 v140, s41, v53
	v_dual_mul_f32 v141, s41, v54 :: v_dual_mul_f32 v144, s41, v57
	v_mad_u64_u32 v[53:54], null, s83, s77, v[79:80]
	v_dual_mul_f32 v145, s41, v58 :: v_dual_mul_f32 v136, s41, v61
	v_dual_mul_f32 v67, s41, v67 :: v_dual_mul_f32 v58, s41, v68
	v_dual_mul_f32 v61, s41, v72 :: v_dual_add_nc_u32 v68, s62, v102
	v_dual_mul_f32 v129, s41, v41 :: v_dual_mul_f32 v130, s41, v42
	v_dual_mul_f32 v143, s41, v56 :: v_dual_mul_f32 v134, s41, v59
	v_mul_f32_e32 v59, s41, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, v53, s0, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 1, v68
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v135, s41, v60 :: v_dual_mul_f32 v62, s41, v62
	v_mul_f32_e32 v60, s41, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v71, v53, s43, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 2, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v155, v53, s56, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v125, s41, v43 :: v_dual_mul_f32 v132, s41, v45
	v_dual_mul_f32 v131, s41, v44 :: v_dual_mul_f32 v126, s41, v47
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 3, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v125, s99
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s3, v166, 29
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v126, s65
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v68
	v_cmp_gt_i32_e64 s8, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 8, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v137, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, v53, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s18, s4, s18
	s_and_b32 s11, s4, s11
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 9, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s11
	s_mov_b32 s82, s54
	s_mov_b32 s83, s55
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v127, s41, v48 :: v_dual_mul_f32 v138, s41, v51
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 10, v68
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v139, s41, v52 :: v_dual_mul_f32 v142, s41, v55
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s3, v166, 31
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 33, v68
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 11, v68
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s4, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v139, s49
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v44, v53, s2, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v141, s90
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 16, v68
	v_add_nc_u32_e32 v45, 35, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v143, s87
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v133, s41, v46 :: v_dual_mul_f32 v128, s41, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 17, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v46, v53, s45, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v145, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v47, 41, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v135, s23
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 18, v68
	v_add_nc_u32_e32 v49, 48, v68
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s41, v65 :: v_dual_mul_f32 v66, s41, v66
	v_mul_f32_e32 v57, s41, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 19, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v50, v53, s101, 1
	v_add_lshl_u32 v150, v53, s77, 1
	v_add_lshl_u32 v70, v53, s5, 1
	v_add_lshl_u32 v72, v53, s46, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 24, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v56, v53, s57, 1
	v_add_lshl_u32 v156, v53, s60, 1
	v_add_lshl_u32 v158, v53, s63, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v66, s102
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 25, v68
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s4, s8
	s_and_b32 s7, s4, s7
	s_and_b32 s6, s4, s6
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v41
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v41, 26, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v150, 0x80000000, v150, s6
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v138, s50
	v_cndmask_b32_e64 v140, 0xff800000, v140, s48
	v_cndmask_b32_e64 v142, 0xff800000, v142, s91
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v41, 1, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v144, s68
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v63, s41, v63 :: v_dual_mul_f32 v64, s41, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s18
	s_clause 0x1
	buffer_load_u16 v51, v41, s[80:83], 0 offen
	buffer_load_u16 v52, v42, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 27, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v136, s89
	v_cndmask_b32_e64 v67, 0xff800000, v67, s88
	v_cndmask_b32_e64 v127, 0xff800000, v127, s64
	v_cndmask_b32_e64 v128, 0xff800000, v128, s59
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v41
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, 32, v68
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s62, s62, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v41, v53, s3, 1
	v_readlane_b32 s3, v165, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v42, v53, s3, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s4, s13
	s_and_b32 s13, s4, s14
	s_and_b32 s14, s4, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s3, v165, 4
	v_cndmask_b32_e64 v42, 0x80000000, v42, s12
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 34, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	buffer_load_u16 v42, v42, s[80:83], 0 offen
	v_add_lshl_u32 v48, v53, s3, 1
	v_readlane_b32 s3, v165, 6
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v53, s76, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v43, 0x80000000, v43, s13
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s13, s4, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s13
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v45
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v45, 40, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v43, v43, s[80:83], 0 offen
	buffer_load_u16 v44, v44, s[80:83], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v45, v53, s42, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s4, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s14
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s4, s17
	s_and_b32 s17, s4, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v46, s14
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v47
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v47, 42, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v45, v45, s[80:83], 0 offen
	buffer_load_u16 v46, v46, s[80:83], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v47, v53, s47, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v47, 0x80000000, v47, s17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s4, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v48, 0x80000000, v48, s17
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v49
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v49, 50, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v47, v47, s[80:83], 0 offen
	buffer_load_u16 v48, v48, s[80:83], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v49
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v49, v53, s3, 1
	v_readlane_b32 s3, v166, 30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v49, 0x80000000, v49, s15
	v_add_lshl_u32 v153, v53, s3, 1
	v_readlane_b32 s3, v165, 0
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s4, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v50, s15
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s4, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v152, v53, s3, 1
	v_readlane_b32 s3, v165, 2
	s_clause 0x1
	buffer_load_u16 v49, v49, s[80:83], 0 offen
	buffer_load_u16 v50, v50, s[80:83], 0 offen
	v_cndmask_b32_e64 v152, 0x80000000, v152, s7
	v_add_lshl_u32 v154, v53, s3, 1
	v_readlane_b32 s3, v165, 3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v146, v53, s3, 1
	v_readlane_b32 s3, v165, 5
	v_add_lshl_u32 v147, v53, s3, 1
	v_readlane_b32 s3, v165, 7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v148, v53, s3, 1
	v_readlane_b32 s3, v165, 8
	v_add_lshl_u32 v149, v53, s3, 1
	v_readlane_b32 s3, v165, 9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v54, v53, s3, 1
	v_readlane_b32 s3, v165, 10
	v_add_lshl_u32 v151, v53, s3, 1
	v_readlane_b32 s3, v165, 11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v55, v53, s3, 1
	v_readlane_b32 s3, v165, 12
	v_add_lshl_u32 v157, v53, s3, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v53, 56, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v53
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v53, 58, v68
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s4, s19
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v53
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v53, 0x80000000, v54, s15
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s4, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v54, 0x80000000, v55, s15
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v55, 43, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v53, v53, s[80:83], 0 offen
	buffer_load_u16 v54, v54, s[80:83], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v55
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v55, 49, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v55
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v56, s17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s4, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v56, 0x80000000, v158, s17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v158, 51, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v55, v55, s[80:83], 0 offen
	buffer_load_u16 v56, v56, s[80:83], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v57, s79
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v158
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v158, 57, v68
	v_add_nc_u32_e32 v68, 59, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v153, s8
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s8, s4, s9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v153, 0x80000000, v154, s8
	s_clause 0x3
	buffer_load_u16 v153, v153, s[80:83], 0 offen
	buffer_load_u16 v152, v152, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	buffer_load_u16 v150, v150, s[80:83], 0 offen
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v42.h, v153.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v41.h, v152.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v52.h, v68.l
	v_cndmask_b32_e32 v68, 0x80000000, v69, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v51.h, v150.l
	v_cndmask_b32_e32 v69, 0x80000000, v70, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v158
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v70, 0x80000000, v71, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v65, s73
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v71, 0x80000000, v72, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v132, s84
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v72, 0x80000000, v146, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v60, s66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v146, 0x80000000, v147, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v147, 0x80000000, v148, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v148, 0x80000000, v149, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v149, 0x80000000, v151, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v150, 0x80000000, v155, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v155, 0, v80
	v_cndmask_b32_e32 v151, 0x80000000, v156, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v63, s38
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v154, 0x80000000, v157, vcc_lo
	s_clause 0xb
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	buffer_load_u16 v148, v148, s[80:83], 0 offen
	buffer_load_u16 v147, v147, s[80:83], 0 offen
	buffer_load_u16 v146, v146, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	buffer_load_u16 v154, v154, s[80:83], 0 offen
	buffer_load_u16 v151, v151, s[80:83], 0 offen
	buffer_load_u16 v150, v150, s[80:83], 0 offen
	buffer_load_u16 v149, v149, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v155, v[51:52]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v137, v138, v139
	v_max3_f32 v52, v140, v141, v142
	v_max3_f32 v155, v143, v144, v145
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v64, s104
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v63, v158, v66, v67
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v131, s72
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v109, v[41:42]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v51, v52, v155
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v62, s21
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v134, v135, v136
.Ltmp8:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s62, s95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v62, v155, v156, v157
	v_max3_f32 v52, v52, v62, v63
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v129, s85
	v_cndmask_b32_e64 v63, 0xff800000, v130, s78
	v_cndmask_b32_e64 v129, 0xff800000, v133, s58
	v_cndmask_b32_e64 v133, 0xff800000, v61, s71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v130, v62, v63
	v_max3_f32 v131, v64, v65, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v130, v130, v125, v131
	v_max3_f32 v131, v126, v127, v128
	v_max3_f32 v51, v130, v131, v51
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v58, s98
	v_cndmask_b32_e64 v131, 0xff800000, v59, s96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v58, v132, v133 :: v_dual_max_f32 v57, v130, v131
	v_max3_f32 v57, v57, v159, v58
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v58.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v51, v52, v57
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v52, v51, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v51, v124, v51, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v62, v51
	v_sub_f32_e32 v57, v63, v51
	v_sub_f32_e32 v61, v64, v51
	v_sub_f32_e32 v63, v129, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v41, v124, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v63, v63
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s85
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v57, 0, v57, s78
	v_cndmask_b32_e64 v161, 0, v61, s72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v162, 0, v63, s58
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v58.l, v52.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v160.l, v57.h
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_cmp_o_f32_e64 s1, v52, v52
	v_and_b32_e32 v58, 1, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v59, 1, v160
	v_mov_b16_e64 v160.l, v161.h
	v_add3_u32 v58, v52, v58, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v59, v57, v59, 0x7fff
	v_and_b32_e32 v61, 1, v160
	v_mov_b16_e64 v160.l, v162.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v59.l, 0x7fff, v58.h, s1
	v_cndmask_b16 v59.h, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v61, v161, v61, 0x7fff
	v_and_b32_e32 v63, 1, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v60, v59, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v61.h, 0x7fff, v61.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v63, v162, v63, 0x7fff
	v_perm_b32 v58, v60, v59, v106
	v_perm_b32 v59, v60, v59, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v125, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v63.h, 0x7fff, v63.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v60, s99
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v60.h, v160.h
	v_mov_b16_e32 v60.l, v125.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v125, v125
	v_and_b32_e32 v60, 1, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v60, v125, v60, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v60.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v62, v61, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v60, v62, v61, v106
	v_perm_b32 v61, v62, v61, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v65, v51
	v_sub_f32_e32 v65, v127, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v62, s84
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v62.h, v160.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v65, s64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v62.l, v129.h
	v_cmp_o_f32_e64 s1, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v160.l, v127.h
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v62, 1, v62
	v_and_b32_e32 v65, 1, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v62, v129, v62, 0x7fff
	v_add3_u32 v65, v127, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v62.h, s1
	v_cndmask_b16 v65.h, 0x7fff, v65.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v64, v63, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v62, v64, v63, v106
	v_perm_b32 v63, v64, v63, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v126, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v64, s65
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v64.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v64.l, v126.h
	v_cmp_o_f32_e64 s1, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v64, v126, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s1
	v_permlanex16_b32 v163, v65, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v64, v163, v65, v106
	v_perm_b32 v65, v163, v65, v107
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v46.h, v71.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v45.h, v70.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v44.h, v69.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v43.h, v68.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v50.h, v148.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v49.h, v147.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v48.h, v146.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v47.h, v72.l
	ds_store_b64 v110, v[43:44]
	ds_store_b64 v111, v[45:46]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v54.h, v150.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v53.h, v149.l
	ds_store_b64 v112, v[47:48]
	ds_store_b64 v113, v[49:50]
	v_mov_b16_e64 v56.h, v154.l
	v_mov_b16_e64 v55.h, v151.l
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v41, 0, v108
	ds_store_b64 v114, v[53:54]
	ds_store_b64 v115, v[55:56]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v116
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v33, v33, v49
	v_mul_f32_e32 v34, v34, v49
	v_mul_f32_e32 v35, v35, v49
	v_mul_f32_e32 v36, v36, v49
	v_mul_f32_e32 v37, v37, v49
	v_mul_f32_e32 v38, v38, v49
	v_mul_f32_e32 v39, v39, v49
	v_mul_f32_e32 v40, v40, v49
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[58:65], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v128, v51
	v_sub_f32_e32 v42, v137, v51
	v_sub_f32_e32 v44, v139, v51
	v_sub_f32_e32 v46, v141, v51
	v_sub_f32_e32 v48, v143, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v41, s59
	v_cndmask_b32_e64 v53, 0, v42, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v41.h, v160.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v44, s49
	v_cndmask_b32_e64 v68, 0, v46, s90
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v50.h
	v_mov_b16_e64 v160.l, v53.h
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_cmp_o_f32_e64 s1, v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v48, s87
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v42, 1, v160
	v_mov_b16_e64 v160.l, v55.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v50, v41, 0x7fff
	v_add3_u32 v42, v53, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v160
	v_mov_b16_e64 v160.l, v68.h
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v44, v55, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v46, 1, v160
	v_mov_b16_e64 v160.l, v70.h
	v_permlanex16_b32 v43, v42, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v68, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_perm_b32 v41, v43, v42, v106
	v_perm_b32 v42, v43, v42, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v43, v138, v51 :: v_dual_and_b32 v48, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v70, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v43, s50
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v54.h
	v_cmp_o_f32_e64 s1, v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v54, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s1
	v_permlanex16_b32 v45, v44, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v106
	v_perm_b32 v44, v45, v44, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v140, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v45, s48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v160.h
	v_mov_b16_e32 v45.l, v56.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v56, v56
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v56, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v106
	v_perm_b32 v46, v47, v46, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v142, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v47, s91
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v47.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v69.h
	v_cmp_o_f32_e64 s1, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v69, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_permlanex16_b32 v58, v48, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v58, v48, v106
	v_perm_b32 v48, v58, v48, v107
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[58:61], v117
	ds_load_b128 v[62:65], v118
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[58:65], v[41:48], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v144, v51
	v_sub_f32_e32 v42, v145, v51
	v_sub_f32_e32 v44, v135, v51
	v_sub_f32_e32 v46, v155, v51
	v_sub_f32_e32 v48, v157, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v41, s68
	v_cndmask_b32_e64 v72, 0, v42, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v41.h, v160.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v44, s23
	v_cndmask_b32_e64 v135, 0, v46, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v71.h
	v_mov_b16_e64 v160.l, v72.h
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_cmp_o_f32_e64 s1, v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v48, s104
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v42, 1, v160
	v_mov_b16_e64 v160.l, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v71, v41, 0x7fff
	v_add3_u32 v42, v72, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v160
	v_mov_b16_e64 v160.l, v135.h
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v44, v128, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_and_b32_e32 v46, 1, v160
	v_mov_b16_e64 v160.l, v137.h
	v_permlanex16_b32 v43, v42, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v135, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	v_perm_b32 v41, v43, v42, v106
	v_perm_b32 v42, v43, v42, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v43, v134, v51 :: v_dual_and_b32 v48, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v137, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v43, s69
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v124.h
	v_cmp_o_f32_e64 s1, v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v124, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s1
	v_permlanex16_b32 v45, v44, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v106
	v_perm_b32 v44, v45, v44, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v136, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v45, s89
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v160.h
	v_mov_b16_e64 v45.l, v134.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v134, v134
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v134, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v106
	v_perm_b32 v46, v47, v46, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v156, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v47, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v47.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v47.l, v136.h
	v_cmp_o_f32_e64 s1, v136, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v136, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_permlanex16_b32 v58, v48, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v58, v48, v106
	v_perm_b32 v48, v58, v48, v107
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[58:61], v119
	ds_load_b128 v[62:65], v120
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[58:65], v[41:48], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v158, v51
	v_sub_f32_e32 v42, v66, v51
	v_sub_f32_e32 v44, v130, v51
	v_sub_f32_e32 v46, v159, v51
	v_sub_f32_e32 v48, v133, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v41, s73
	v_cndmask_b32_e64 v138, 0, v42, s102
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v41.h, v160.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v44, s98
	v_cndmask_b32_e64 v139, 0, v46, s79
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v66.h
	v_mov_b16_e64 v160.l, v138.h
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_cmp_o_f32_e64 s1, v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v48, s71
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v42, 1, v160
	v_mov_b16_e64 v160.l, v130.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v66, v41, 0x7fff
	v_add3_u32 v42, v138, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v160
	v_mov_b16_e64 v160.l, v139.h
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v44, v130, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_and_b32_e32 v46, 1, v160
	v_mov_b16_e64 v160.l, v133.h
	v_permlanex16_b32 v43, v42, s75, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v139, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_perm_b32 v41, v43, v42, v106
	v_perm_b32 v42, v43, v42, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v43, v67, v51 :: v_dual_and_b32 v48, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v133, v48, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v43, s88
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v43.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v67.h
	v_cmp_o_f32_e64 s1, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v67, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s1
	v_permlanex16_b32 v45, v44, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v106
	v_perm_b32 v44, v45, v44, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v131, v51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v45, s96
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v160.h
	v_mov_b16_e64 v45.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v131, v131
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v131, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s75, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v106
	v_perm_b32 v46, v47, v46, v107
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v132, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v47, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v47.h, v160.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v47.l, v132.h
	v_cmp_o_f32_e64 s1, v132, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v132, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s1
	v_permlanex16_b32 v58, v48, s75, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v58, v48, v106
	v_perm_b32 v48, v58, v48, v107
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[58:61], v121
	ds_load_b128 v[62:65], v122
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[58:65], v[41:48], v[33:40]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v52, v57
	v_add_f32_e32 v42, v125, v161
	v_dual_add_f32 v43, v129, v162 :: v_dual_add_f32 v44, v126, v127
	v_add_f32_e32 v45, v50, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v46, v54, v55 :: v_dual_add_f32 v41, v41, v42
	v_add_f32_e32 v47, v124, v128
	v_add_f32_e32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v44, v56, v68 :: v_dual_add_f32 v43, v45, v46
	v_dual_add_f32 v45, v69, v70 :: v_dual_add_f32 v46, v71, v72
	v_add_f32_e32 v48, v134, v135
	v_add_f32_e32 v50, v136, v137
	v_add_f32_e32 v52, v66, v138
	v_add_f32_e32 v53, v67, v130
	v_dual_add_f32 v54, v131, v139 :: v_dual_add_f32 v55, v132, v133
	v_dual_add_f32 v44, v44, v45 :: v_dual_add_f32 v45, v46, v47
	v_add_f32_e32 v46, v48, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v47, v52, v53 :: v_dual_add_f32 v48, v54, v55
	v_dual_add_f32 v41, v41, v42 :: v_dual_add_f32 v42, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v43, v45, v46 :: v_dual_mov_b32 v124, v51
	v_dual_add_f32 v44, v47, v48 :: v_dual_add_f32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v42, v43, v44
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v42, v41, s75, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v41, v123, v49
	v_mov_b32_e32 v123, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_13
.LBB0_8:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s62, v82
	.loc	1 853 32                        ; attention.py:853:32
	v_readlane_b32 s3, v166, 8
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v146, s62, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v42, 2, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s67, v41
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s83, s62, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v154, 4, v146
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s83, s40
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 4, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, s3, v83, 1
	v_add_lshl_u32 v44, s3, v84, 1
	v_add_lshl_u32 v45, s3, v75, 1
	v_add_lshl_u32 v46, s3, v85, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 6, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v47, s3, v76, 1
	v_add_lshl_u32 v48, s3, v77, 1
	v_add_lshl_u32 v49, s3, v78, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s24
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 8, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v43, 0x80000000, v43, s24
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s25
	s_and_b32 s36, s93, s36
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v44, 0x80000000, v44, s24
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 10, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s26
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v148, 10, v146
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v45, s24
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s27
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 12, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v46, 0x80000000, v46, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v155, 8, v146
	v_add_nc_u32_e32 v149, 14, v146
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s28
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 14, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v156, 12, v146
	v_add_nc_u32_e32 v143, 18, v146
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s29
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 16, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v48, 0x80000000, v48, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v153, 16, v146
	v_add_nc_u32_e32 v144, 22, v146
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s30
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 18, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v49, 0x80000000, v49, s24
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v150, 20, v146
	v_add_nc_u32_e32 v145, 26, v146
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s31
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 20, v41
	v_add_nc_u32_e32 v151, 24, v146
	v_add_nc_u32_e32 v142, 28, v146
	v_add_nc_u32_e32 v141, 32, v146
	v_add_nc_u32_e32 v147, 6, v146
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 22, v41
	v_add_nc_u32_e32 v152, 2, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 24, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 26, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s23, s93, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 28, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s22, s93, s22
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 30, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s21, s93, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 32, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s20, s93, s20
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 34, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s19, s93, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 36, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s93, s18
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 38, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s17, s93, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 40, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s16, s93, s16
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 42, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s15, s93, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 44, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, s93, s14
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s13, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 46, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s13, s93, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 48, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s93, s1
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s9, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 50, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s9, s93, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 52, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, s93, s7
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 54, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s93, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 56, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s93, vcc_lo
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s10, s67, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 58, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s8, s67, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 60, v41
	v_add_nc_u32_e32 v41, 62, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s12, s67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s11, s67, v41
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v41, s3, v74
	.loc	1 854 32                        ; attention.py:854:32
	v_readlane_b32 s3, v166, 9
	v_add_lshl_u32 v52, v41, s3, 1
	v_readlane_b32 s3, v166, 10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v55, v41, s3, 1
	v_readlane_b32 s3, v166, 11
	v_cndmask_b32_e64 v55, 0x80000000, v55, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v56, v41, s3, 1
	v_readlane_b32 s3, v166, 12
	v_cndmask_b32_e64 v56, 0x80000000, v56, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v57, v41, s3, 1
	v_readlane_b32 s3, v166, 13
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s67, v142
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v57, 0x80000000, v57, s20
	s_delay_alu instid0(VALU_DEP_3)
	v_add_lshl_u32 v58, v41, s3, 1
	v_readlane_b32 s3, v166, 14
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s91, s97, s21
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	v_add_lshl_u32 v59, v41, s3, 1
	v_readlane_b32 s3, v166, 15
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s67, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v59, 0x80000000, v59, s18
	v_add_lshl_u32 v60, v41, s3, 1
	v_readlane_b32 s3, v166, 16
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s67, v145
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s48, s97, s19
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v60, 0x80000000, v60, s17
	v_add_lshl_u32 v61, v41, s3, 1
	v_readlane_b32 s3, v166, 17
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s67, v150
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s70, s97, s18
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v61, 0x80000000, v61, s16
	v_add_lshl_u32 v62, v41, s3, 1
	v_readlane_b32 s3, v166, 18
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s16, s67, v144
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s50, s97, s17
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v62, 0x80000000, v62, s15
	v_add_lshl_u32 v63, v41, s3, 1
	v_readlane_b32 s3, v166, 19
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s49, s97, s16
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v63, 0x80000000, v63, s14
	v_add_lshl_u32 v64, v41, s3, 1
	v_readlane_b32 s3, v166, 21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v64, 0x80000000, v64, s13
	v_add_lshl_u32 v65, v41, s3, 1
	v_readlane_b32 s3, v166, 25
	s_clause 0x5
	buffer_load_u16 v58, v58, s[52:55], 0 offen
	buffer_load_u16 v59, v59, s[52:55], 0 offen
	buffer_load_u16 v60, v60, s[52:55], 0 offen
	buffer_load_u16 v62, v62, s[52:55], 0 offen
	buffer_load_u16 v63, v63, s[52:55], 0 offen
	buffer_load_u16 v64, v64, s[52:55], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s9
	v_add_lshl_u32 v66, v41, s3, 1
	v_readlane_b32 s3, v166, 22
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s9, s93, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v66, 0x80000000, v66, s9
	v_add_lshl_u32 v67, v41, s3, 1
	v_readlane_b32 s3, v166, 26
	v_cndmask_b32_e64 v67, 0x80000000, v67, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v68, v41, s3, 1
	v_readlane_b32 s3, v166, 23
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s7, s93, s8
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v68, 0x80000000, v68, s7
	v_add_lshl_u32 v69, v41, s3, 1
	v_readlane_b32 s3, v166, 27
	s_clause 0x3
	buffer_load_u16 v65, v65, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v68, v68, s[52:55], 0 offen
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s7, s67, v152
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_add_lshl_u32 v70, v41, s3, 1
	v_readlane_b32 s3, v166, 20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s6, s93, s12
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s82, s97, s7
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v70, 0x80000000, v70, s6
	v_add_lshl_u32 v71, v41, s3, 1
	s_clause 0x1
	buffer_load_u16 v69, v69, s[52:55], 0 offen
	buffer_load_u16 v70, v70, s[52:55], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	v_readlane_b32 s1, v166, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v72, v41, s1, 1
	v_readlane_b32 s1, v166, 28
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s93, s11
	.loc	1 859 30                        ; attention.py:859:30
	v_readlane_b32 s8, v165, 13
	v_readlane_b32 s15, v165, 20
	v_readlane_b32 s13, v165, 18
	v_readlane_b32 s9, v165, 14
	v_readlane_b32 s10, v165, 15
	v_readlane_b32 s11, v165, 16
	v_readlane_b32 s12, v165, 17
	v_readlane_b32 s14, v165, 19
	v_mov_b32_e32 v140, s15
	v_mov_b32_e32 v138, s13
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v50, v41, s44, 1
	v_add_lshl_u32 v51, v41, s100, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v53, v41, s103, 1
	v_add_lshl_u32 v54, v41, vcc_hi, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s24
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s33
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v41, v41, s1, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s24
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s34
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s36
	v_cndmask_b32_e64 v52, 0x80000000, v52, s24
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s93, s35
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v54, 0x80000000, v54, s23
	v_cndmask_b32_e64 v53, 0x80000000, v53, s24
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x13
	buffer_load_u16 v42, v42, s[52:55], 0 offen
	buffer_load_u16 v43, v43, s[52:55], 0 offen
	buffer_load_u16 v44, v44, s[52:55], 0 offen
	buffer_load_u16 v45, v45, s[52:55], 0 offen
	buffer_load_u16 v46, v46, s[52:55], 0 offen
	buffer_load_u16 v47, v47, s[52:55], 0 offen
	buffer_load_u16 v48, v48, s[52:55], 0 offen
	buffer_load_u16 v49, v49, s[52:55], 0 offen
	buffer_load_u16 v50, v50, s[52:55], 0 offen
	buffer_load_u16 v51, v51, s[52:55], 0 offen
	buffer_load_u16 v52, v52, s[52:55], 0 offen
	buffer_load_u16 v54, v54, s[52:55], 0 offen
	buffer_load_u16 v55, v55, s[52:55], 0 offen
	buffer_load_u16 v56, v56, s[52:55], 0 offen
	buffer_load_u16 v57, v57, s[52:55], 0 offen
	buffer_load_u16 v53, v53, s[52:55], 0 offen
	buffer_load_u16 v71, v71, s[52:55], 0 offen
	buffer_load_u16 v61, v61, s[52:55], 0 offen
	buffer_load_u16 v41, v41, s[52:55], 0 offen
	buffer_load_u16 v72, v72, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v139, s14
	v_dual_mov_b32 v137, s12 :: v_dual_mov_b32 v136, s11
	v_dual_mov_b32 v135, s10 :: v_dual_mov_b32 v134, s9
	v_mov_b32_e32 v133, s8
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v99
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s67, v146
	v_cmp_gt_i32_e64 s8, s67, v147
	v_cmp_gt_i32_e64 s9, s67, v154
	v_cmp_gt_i32_e64 s10, s67, v148
	v_cmp_gt_i32_e64 s11, s67, v155
	v_cmp_gt_i32_e64 s12, s67, v149
	v_cmp_gt_i32_e64 s13, s67, v156
	v_cmp_gt_i32_e64 s14, s67, v143
	v_cmp_gt_i32_e64 s15, s67, v153
	v_cmp_gt_i32_e64 s23, s67, v141
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s85, s97, s1
	s_and_b32 s99, s97, s9
	s_and_b32 s72, s97, s8
	s_and_b32 s84, s97, s11
	s_and_b32 s58, s97, s10
	s_and_b32 s65, s97, s13
	s_and_b32 s64, s97, s12
	s_and_b32 s59, s97, s15
	s_and_b32 s51, s97, s14
	s_and_b32 s68, s97, s23
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(19)
	ds_store_b16 v87, v42
	s_waitcnt vmcnt(15)
	ds_store_b16 v87, v46 offset:1024
	s_waitcnt vmcnt(11)
	ds_store_b16 v87, v50 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v87, v54 offset:3072
	ds_store_b16 v87, v58 offset:4096
	ds_store_b16 v87, v62 offset:5120
	ds_store_b16 v87, v65 offset:6144
	ds_store_b16 v87, v66 offset:7168
	ds_store_b16 v89, v43
	ds_store_b16 v89, v47 offset:1024
	ds_store_b16 v89, v51 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v89, v55 offset:3072
	ds_store_b16 v89, v59 offset:4096
	ds_store_b16 v89, v63 offset:5120
	ds_store_b16 v89, v67 offset:6144
	ds_store_b16 v89, v68 offset:7168
	ds_store_b16 v90, v44
	ds_store_b16 v90, v48 offset:1024
	ds_store_b16 v90, v52 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v90, v56 offset:3072
	ds_store_b16 v90, v60 offset:4096
	ds_store_b16 v90, v64 offset:5120
	ds_store_b16 v90, v69 offset:6144
	ds_store_b16 v90, v70 offset:7168
	ds_store_b16 v91, v45
	ds_store_b16 v91, v49 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v91, v53 offset:2048
	ds_store_b16 v91, v57 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b16 v91, v61 offset:4096
	ds_store_b16 v91, v71 offset:5120
	s_waitcnt vmcnt(0)
	ds_store_b16 v91, v72 offset:6144
	ds_store_b16 v91, v41 offset:7168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v92
	ds_load_b128 v[49:52], v88
	ds_load_b128 v[57:60], v88 offset:2048
	ds_load_b128 v[61:64], v92 offset:2048
	ds_load_b128 v[69:72], v92 offset:4096
	ds_load_b128 v[65:68], v88 offset:4096
	ds_load_b128 v[125:128], v88 offset:6144
	ds_load_b128 v[129:132], v92 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[1:8], v[133:140]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[1:8], v[133:140]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[1:8], v[133:140]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[125:132], v[1:8], v[133:140]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v94
	ds_load_b128 v[125:128], v93
	ds_load_b128 v[133:136], v93 offset:2048
	ds_load_b128 v[137:140], v94 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[9:16], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v94 offset:4096
	ds_load_b128 v[125:128], v93 offset:4096
	ds_load_b128 v[133:136], v93 offset:6144
	ds_load_b128 v[137:140], v94 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[9:16], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[133:140], v[9:16], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v96
	ds_load_b128 v[125:128], v95
	ds_load_b128 v[133:136], v95 offset:2048
	ds_load_b128 v[137:140], v96 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[17:24], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[17:24], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v96 offset:4096
	ds_load_b128 v[125:128], v95 offset:4096
	ds_load_b128 v[133:136], v95 offset:6144
	ds_load_b128 v[137:140], v96 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[133:140], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v98
	ds_load_b128 v[125:128], v97
	ds_load_b128 v[133:136], v97 offset:2048
	ds_load_b128 v[137:140], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[125:132], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[133:140], v[25:32], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[129:132], v98 offset:4096
	ds_load_b128 v[125:128], v97 offset:4096
	ds_load_b128 v[133:136], v97 offset:6144
	ds_load_b128 v[137:140], v98 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[125:132], v[25:32], v[57:64]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v125, s62, v101
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[133:140], v[25:32], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v140, 30, v146
	v_add_nc_u32_e32 v139, 34, v146
	v_add_nc_u32_e32 v137, 38, v146
	v_add_nc_u32_e32 v138, 36, v146
	v_add_nc_u32_e32 v133, 42, v146
	v_add_nc_u32_e32 v136, 40, v146
	v_add_nc_u32_e32 v132, 46, v146
	v_add_nc_u32_e32 v135, 44, v146
	v_add_nc_u32_e32 v131, 50, v146
	v_add_nc_u32_e32 v134, 48, v146
	v_add_nc_u32_e32 v128, 54, v146
	v_add_nc_u32_e32 v130, 52, v146
	v_add_nc_u32_e32 v126, 58, v146
	v_add_nc_u32_e32 v129, 56, v146
	v_add_nc_u32_e32 v127, 60, v146
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s6, s67, v125
	v_cmp_gt_i32_e64 s20, s67, v140
	v_cmp_gt_i32_e64 s22, s67, v139
	v_cmp_gt_i32_e64 s24, s67, v137
	v_cmp_gt_i32_e64 s25, s67, v138
	v_cmp_gt_i32_e64 s26, s67, v133
	v_cmp_gt_i32_e64 s27, s67, v136
	v_cmp_gt_i32_e64 s28, s67, v132
	v_cmp_gt_i32_e64 s29, s67, v135
	v_cmp_gt_i32_e64 s30, s67, v131
	v_cmp_gt_i32_e64 s31, s67, v134
	v_cmp_gt_i32_e64 s33, s67, v128
	v_cmp_gt_i32_e64 s34, s67, v130
	v_cmp_gt_i32_e64 s35, s67, v126
	v_cmp_gt_i32_e64 s36, s67, v129
	v_cmp_gt_i32_e64 s37, s67, v127
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s90, s97, s20
	s_and_b32 s78, s97, s22
	s_and_b32 s69, s97, s25
	s_and_b32 s23, s97, s24
	s_and_b32 s89, s97, s27
	s_and_b32 s21, s97, s26
	s_and_b32 s38, s97, s29
	s_and_b32 s104, s97, s28
	s_and_b32 s73, s97, s31
	s_and_b32 s102, s97, s30
	s_and_b32 s88, s97, s34
	s_and_b32 s98, s97, s33
	s_and_b32 s96, s97, s36
	s_and_b32 s79, s97, s35
	s_and_b32 s66, s97, s37
	s_and_b32 s71, s97, s6
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v146, v103
	v_cmp_le_i32_e64 s1, v152, v103
	v_cmp_le_i32_e64 s6, v154, v103
	v_cmp_le_i32_e64 s7, v147, v103
	v_cmp_le_i32_e64 s26, v135, v103
	v_cmp_le_i32_e64 s8, v155, v103
	v_cmp_le_i32_e64 s9, v148, v103
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s37, vcc_lo, s85
	s_and_b32 s1, s1, s82
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v156, v103
	v_cmp_le_i32_e64 s11, v149, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s6, s99
	s_and_b32 s7, s7, s72
	s_and_b32 s26, s26, s38
	s_and_not1_b32 s3, s85, exec_lo
	s_and_b32 s37, s37, exec_lo
	s_mov_b32 s86, s38
	s_and_not1_b32 s38, s82, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v153, v103
	v_cmp_le_i32_e64 s13, v143, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s8, s84
	s_and_b32 s9, s9, s58
	s_or_b32 s85, s3, s37
	s_or_b32 s82, s38, s1
	s_and_not1_b32 s1, s99, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s37, s72, exec_lo
	s_and_b32 s7, s7, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v150, v103
	v_cmp_le_i32_e64 s15, v144, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s10, s65
	s_and_b32 s11, s11, s64
	s_or_b32 s99, s1, s6
	s_or_b32 s72, s37, s7
	s_and_not1_b32 s1, s84, exec_lo
	s_and_b32 s6, s8, exec_lo
	s_and_not1_b32 s7, s58, exec_lo
	s_and_b32 s8, s9, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v151, v103
	v_cmp_le_i32_e64 s17, v145, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s59
	s_and_b32 s13, s13, s51
	s_or_b32 s84, s1, s6
	s_or_b32 s58, s7, s8
	s_and_not1_b32 s1, s65, exec_lo
	s_and_b32 s6, s10, exec_lo
	s_and_not1_b32 s7, s64, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_and_b32 s14, s14, s50
	s_and_b32 s15, s15, s49
	s_or_b32 s65, s1, s6
	s_or_b32 s64, s7, s8
	s_and_not1_b32 s1, s59, exec_lo
	s_and_b32 s6, s12, exec_lo
	s_and_not1_b32 s7, s51, exec_lo
	s_and_b32 s8, s13, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v142, v103
	v_cmp_le_i32_e64 s19, v140, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s16, s48
	s_and_b32 s17, s17, s70
	s_or_b32 s59, s1, s6
	s_or_b32 s51, s7, s8
	s_and_not1_b32 s1, s50, exec_lo
	s_and_b32 s6, s14, exec_lo
	s_and_not1_b32 s7, s49, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_or_b32 s50, s1, s6
	s_or_b32 s49, s7, s8
	s_and_not1_b32 s1, s48, exec_lo
	s_and_b32 s6, s16, exec_lo
	s_and_not1_b32 s7, s70, exec_lo
	s_and_b32 s8, s17, exec_lo
	s_or_b32 s48, s1, s6
	s_or_b32 s1, s7, s8
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v141, v103
	s_mov_b32 s87, s21
	v_cmp_le_i32_e64 s21, v139, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s18, s91
	s_and_b32 s19, s19, s90
	v_writelane_b32 v165, s1, 21
	s_and_not1_b32 s1, s91, exec_lo
	s_and_b32 s6, s18, exec_lo
	s_and_not1_b32 s7, s90, exec_lo
	s_and_b32 s8, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v138, v103
	s_mov_b32 s74, s23
	v_cmp_le_i32_e64 s23, v137, v103
	s_or_b32 s91, s1, s6
	s_or_b32 s1, s7, s8
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s68
	s_and_b32 s21, s21, s78
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v136, v103
	v_cmp_le_i32_e64 s25, v133, v103
	v_writelane_b32 v165, s1, 22
	s_and_not1_b32 s1, s68, exec_lo
	s_and_b32 s6, s20, exec_lo
	s_and_not1_b32 s7, s78, exec_lo
	s_and_b32 s8, s21, exec_lo
	v_cmp_le_i32_e64 s27, v132, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s22, s69
	s_and_b32 s23, s23, s74
	s_or_b32 s68, s1, s6
	s_or_b32 s1, s7, s8
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v134, v103
	v_cmp_le_i32_e64 s29, v131, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s24, s89
	s_and_b32 s25, s25, s87
	v_writelane_b32 v165, s1, 23
	s_and_not1_b32 s1, s69, exec_lo
	s_and_b32 s6, s22, exec_lo
	s_and_not1_b32 s7, s74, exec_lo
	s_and_b32 s8, s23, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s30, v130, v103
	v_cmp_le_i32_e64 s31, v128, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s104
	s_or_b32 s69, s1, s6
	s_or_b32 s23, s7, s8
	s_and_not1_b32 s1, s89, exec_lo
	s_and_b32 s6, s24, exec_lo
	s_and_not1_b32 s7, s87, exec_lo
	s_and_b32 s8, s25, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s33, v129, v103
	v_cmp_le_i32_e64 s34, v126, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s28, s73
	s_and_b32 s29, s29, s102
	s_or_b32 s89, s1, s6
	s_or_b32 s21, s7, s8
	s_and_not1_b32 s1, s86, exec_lo
	s_and_b32 s6, s26, exec_lo
	s_and_not1_b32 s7, s104, exec_lo
	s_and_b32 s8, s27, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v127, v103
	v_cmp_le_i32_e64 s36, v125, v103
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s30, s88
	s_and_b32 s31, s31, s98
	s_or_b32 s38, s1, s6
	s_or_b32 s104, s7, s8
	s_and_not1_b32 s1, s73, exec_lo
	s_and_b32 s6, s28, exec_lo
	s_and_not1_b32 s7, s102, exec_lo
	s_and_b32 s8, s29, exec_lo
	s_and_b32 s33, s33, s96
	s_and_b32 s34, s34, s79
	s_or_b32 s73, s1, s6
	s_or_b32 s102, s7, s8
	s_and_not1_b32 s1, s88, exec_lo
	s_and_b32 s6, s30, exec_lo
	s_and_not1_b32 s7, s98, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s35, s35, s66
	s_and_b32 s36, s36, s71
	s_or_b32 s88, s1, s6
	s_or_b32 s98, s7, s8
	s_and_not1_b32 s1, s96, exec_lo
	s_and_b32 s6, s33, exec_lo
	s_and_not1_b32 s7, s79, exec_lo
	s_and_b32 s8, s34, exec_lo
	s_or_b32 s96, s1, s6
	s_or_b32 s79, s7, s8
	s_and_not1_b32 s1, s66, exec_lo
	s_and_b32 s6, s35, exec_lo
	s_and_not1_b32 s7, s71, exec_lo
	s_and_b32 s8, s36, exec_lo
	s_or_b32 s66, s1, s6
	s_or_b32 s71, s7, s8
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s39
	s_cbranch_vccz .LBB0_6
	s_branch .LBB0_11
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	v_writelane_b32 v165, s70, 21
	v_writelane_b32 v165, s90, 22
	v_writelane_b32 v165, s78, 23
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s39
	s_cbranch_vccz .LBB0_6
.LBB0_11:                               ;   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 17 is_stmt 0                ; attention.py:0:17
	s_delay_alu instid0(VALU_DEP_1)
	v_readlane_b32 s24, v165, 23
	v_readlane_b32 s87, v165, 22
	v_readlane_b32 s90, v165, 21
	s_mov_b32 s78, s82
	.loc	1 865 17                        ; attention.py:865:17
	s_branch .LBB0_7
.LBB0_12:
	.loc	1 0 17                          ; attention.py:0:17
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v51, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v41, v40
	s_branch .LBB0_14
.LBB0_13:                               ; %Flow
	v_readlane_b32 s0, v166, 0
	v_readlane_b32 s1, v166, 1
	v_readlane_b32 s28, v166, 6
	v_readlane_b32 s29, v166, 7
	v_readlane_b32 s30, v166, 5
	v_readlane_b32 s10, v166, 4
	s_mov_b64 s[8:9], s[0:1]
	v_readlane_b32 s2, v166, 2
	v_readlane_b32 s3, v166, 3
.LBB0_14:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v86
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s30, s29
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s77, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s28, s1
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v51 :: v_dual_cndmask_b32 v4, 0, v33
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v34 :: v_dual_cndmask_b32 v12, 0, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v41, vcc_lo
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v35
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp26:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v36 :: v_dual_cndmask_b32 v14, 0, v39
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v40
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp30:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp33:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp55:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp65:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp67:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v15
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
	v_add_f32_e32 v17, v15, v20
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v20, v17 :: v_dual_add_f32 v13, v11, v13
	v_dual_mov_b32 v18, v16 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v12, v15
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v12, v11 :: v_dual_add_f32 v17, v17, v20
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v16, v18 :: v_dual_add_f32 v16, v14, v19
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_16
; %bb.15:
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp91:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp93:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp95:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s6, s8, s6
	s_addc_u32 s7, s9, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[6:7]
.LBB0_16:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
.Ltmp97:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v4, 0xe0, v81
	v_and_b32_e32 v1, 28, v81
	s_and_b32 vcc_lo, s10, s4
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
	v_add_nc_u32_e32 v1, s0, v73
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s9, s9, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp98:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 167
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_vgpr, 167
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15136
; TotalNumSgprs: 107
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 167
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
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp18                         ; DW_AT_low_pc
	.long	.Ltmp21-.Ltmp18                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
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
	.short	1031                            ; DW_AT_call_line
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
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 80
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
