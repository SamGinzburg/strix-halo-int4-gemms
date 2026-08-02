	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_mov_b32 s30, s3
	s_clause 0x4
	s_load_b128 s[16:19], s[0:1], 0x80
	s_load_b32 s3, s[0:1], 0x68
	s_load_b128 s[68:71], s[0:1], 0x4c
	s_load_b64 s[20:21], s[0:1], 0x0
	s_load_b32 s89, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v88, 6, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v73, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v9, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v33, 7, v0
	v_and_b32_e32 v92, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v35, 64, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v9, 0x90, v9
	v_lshlrev_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s33, 0, v35
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s16
	s_bitcmp1_b32 s16, 8
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s13, s30, s70
	s_cselect_b32 s88, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[74:75], null, s89, v88, v[73:74]
	s_cselect_b32 s4, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s14, s3
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s5, s14
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s7, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s7, s7, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[75:76], null, s89, 6, v[74:75]
	v_lshl_add_u32 v89, s89, 1, v74
	v_lshl_add_u32 v90, s89, 2, v74
	v_lshl_add_u32 v91, s89, 3, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mad_u64_u32 v[76:77], null, s89, 10, v[74:75]
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s5, v1
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[77:78], null, s89, 12, v[74:75]
	v_mad_u64_u32 v[78:79], null, s89, 14, v[74:75]
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
	s_abs_i32 s11, s68
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s30
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
	s_mul_i32 s7, s5, s3
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s15, s5, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s31, s2, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v36, s15, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s6, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v37, 2, v36
	v_or_b32_e32 v38, 4, v36
	v_or_b32_e32 v39, 6, v36
	v_or_b32_e32 v40, 8, v36
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s6, s6, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v41, 10, v36
	v_or_b32_e32 v42, 12, v36
	v_or_b32_e32 v43, 14, v36
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
	v_cmp_gt_i32_e64 s7, s70, v37
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s2, s6, s5
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s12, s69
	s_xor_b32 s26, s68, s69
	s_cvt_f32_u32 s6, s12
	s_sub_i32 s8, 0, s12
	s_ashr_i32 s26, s26, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s89, v73
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s10, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s70, v36
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s9, s8, s10
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s70, v38
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s25, s10, s9
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s70, v39
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s25, s10, s25
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s70, v40
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s25, s11, s25
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s27, s25, s12
	s_add_i32 s28, s25, 1
	s_sub_i32 s27, s11, s27
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s70, v41
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s29, s27, s12
	s_cmp_ge_u32 s27, s12
	s_cselect_b32 s25, s28, s25
	s_cselect_b32 s27, s29, s27
	s_add_i32 s28, s25, 1
	s_cmp_ge_u32 s27, s12
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s70, v42
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s25, s28, s25
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s27, s13, s15
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s27, s27, s89
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s70, v43
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
	s_add_i32 s20, s71, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v10, v92, 7, v34
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
	s_add_i32 s21, s22, s3
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
	s_xor_b32 s21, s21, s3
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
	v_rcp_iflag_f32_e32 v44, s22
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
	v_readfirstlane_b32 s14, v44
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s22, s31, s21
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s21, s21, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s90, s22, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s21, s90, s21
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s91, s20, s21
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
	s_min_i32 s16, s71, s16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s20, s20, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s16, s16, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s90, s90, s20
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s21, s16, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s21, s21, 26
	s_add_i32 s16, s16, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s16, s16, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s91, s91, s16
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s70, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v106, 0, 1, s4
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s4, s19, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, 16
	s_min_i32 s4, s71, s4
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
	s_min_i32 s91, s91, s4
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[72:73], s[0:1], 0x40
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_lshrrev_b32_e32 v105, 4, v35
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s70, v73
	v_lshlrev_b32_e32 v86, 1, v0
	v_lshlrev_b32_e32 v87, 2, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s90, s91
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s16, s30, s68
	v_and_b32_e32 v63, 0x60, v0
	s_ashr_i32 s16, s16, 31
	v_and_b32_e32 v85, 0x70, v86
	s_xor_b32 s2, s2, s16
	v_bfe_i32 v126, v0, 3, 1
	s_sub_i32 s2, s2, s16
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_mul_i32 s20, s2, s68
	v_xor_b32_e32 v85, v34, v85
	s_sub_i32 s28, s30, s20
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b32 s68, s[0:1], 0x7c
	v_lshl_or_b32 v34, v63, 6, v34
	v_and_or_b32 v63, 0x410, v126, v63
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_and_b32 v83, 16, v0
	s_cvt_u32_f32 s14, s14
	s_sub_i32 s16, 0, s25
	s_delay_alu instid0(VALU_DEP_2)
	v_xor_b32_e32 v34, v63, v34
	.loc	1 762 27 is_stmt 1              ; attention.py:762:27
	v_add_nc_u32_e32 v108, s19, v37
	v_add_nc_u32_e32 v110, s19, v39
	v_cmp_eq_u32_e32 vcc_lo, 0, v83
	v_mov_b32_e32 v83, 0x7632
	v_lshl_or_b32 v128, v33, 7, v34
	v_mov_b32_e32 v33, 0
	v_add_nc_u32_e32 v109, s19, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v83, 0x3276, v83 :: v_dual_lshlrev_b32 v38, 6, v0
	s_mul_i32 s16, s16, s14
	v_dual_mov_b32 v84, 0x5410 :: v_dual_add_nc_u32 v107, s19, v36
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v36, s23, v88
	s_mul_hi_u32 s16, s14, s16
	v_add_nc_u32_e32 v111, s19, v40
	v_add_nc_u32_e32 v112, s19, v41
	v_dual_cndmask_b32 v84, 0x1054, v84 :: v_dual_and_b32 v37, 60, v86
	v_cndmask_b32_e64 v40, 0x104, 0, s33
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_and_b32 v41, 64, v38
	v_lshrrev_b32_e32 v58, 5, v0
	s_abs_i32 s24, s28
	s_add_i32 s14, s14, s16
	v_and_b32_e32 v39, 32, v0
	s_mul_hi_u32 s14, s24, s14
	v_xor_b32_e32 v40, v40, v37
	.loc	1 758 19                        ; attention.py:758:19
	s_mul_i32 s27, s14, s25
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[79:80], null, s68, v73, v[36:37]
	v_or3_b32 v123, v58, v41, v37
	v_and_b32_e32 v37, 0x380, v38
	v_dual_mov_b32 v203, 0xff800000 :: v_dual_lshlrev_b32 v38, 1, v92
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_and_b32 v58, 64, v87
	s_ashr_i32 s16, s28, 31
	s_ashr_i32 s26, s26, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s24, s24, s27
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v113, s19, v42
	v_lshlrev_b32_e32 v42, 2, v39
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s16, s16, s26
	s_add_i32 s26, s14, 1
	s_sub_i32 s27, s24, s25
	v_lshl_or_b32 v83, v83, 8, v83
	s_cmp_ge_u32 s24, s25
	v_or3_b32 v124, v37, v58, v38
	v_lshl_or_b32 v84, v84, 8, v84
	s_cselect_b32 s14, s26, s14
	s_cselect_b32 s24, s27, s24
	v_or3_b32 v121, v40, v42, v41
	s_add_i32 s26, s14, 1
	v_lshrrev_b32_e32 v82, 2, v35
	v_and_b32_e32 v83, 0x760076, v83
	v_dual_mov_b32 v200, 0xff800000 :: v_dual_lshlrev_b32 v125, 7, v73
	v_lshrrev_b32_e32 v35, 3, v35
	s_cmp_ge_u32 s24, s25
	v_xor_b32_e32 v80, 24, v124
	v_xor_b32_e32 v81, 28, v124
	v_and_b32_e32 v84, 0x540054, v84
	s_cselect_b32 s14, s26, s14
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x30
	v_xor_b32_e32 v40, 0x208, v121
	v_dual_mov_b32 v201, v33 :: v_dual_and_b32 v36, 0x7c, v87
	v_lshl_or_b32 v83, v83, 4, v83
	v_or3_b32 v125, v125, v35, v85
	v_lshl_or_b32 v84, v84, 4, v84
	v_add_nc_u32_e32 v165, 0, v80
	v_add_nc_u32_e32 v166, 0, v81
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[80:81], null, s23, 6, v[79:80]
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v41, 0, v41
	v_add_nc_u32_e32 v131, 0, v40
	v_mov_b32_e32 v40, v33
	v_lshl_add_u32 v39, v39, 1, 0
	v_lshl_or_b32 v122, v92, 8, v36
	v_and_b32_e32 v127, 0x7060706, v83
	v_xor_b32_e32 v83, 48, v125
	v_and_b32_e32 v126, 0x5040504, v84
	v_xor_b32_e32 v84, 0x50, v125
	v_xor_b32_e32 v85, 0x60, v125
                                        ; implicit-def: $vgpr247 : SGPR spill to VGPR lane
	v_dual_mov_b32 v202, 0xff800000 :: v_dual_add_nc_u32 v129, v39, v82
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_add_nc_u32 v130, v41, v82
	v_mad_u64_u32 v[81:82], null, s23, 10, v[79:80]
	v_writelane_b32 v247, s31, 0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v114, s19, v43
	v_xor_b32_e32 v42, 0x410, v121
	v_xor_b32_e32 v43, 0x618, v121
	v_xor_b32_e32 v36, 0x820, v121
	v_xor_b32_e32 v44, 0xa28, v121
	v_xor_b32_e32 v45, 0xc30, v121
	v_xor_b32_e32 v46, 0xe38, v121
	v_xor_b32_e32 v47, 4, v122
	v_xor_b32_e32 v48, 8, v122
	v_xor_b32_e32 v49, 12, v122
	v_xor_b32_e32 v50, 16, v122
	v_xor_b32_e32 v51, 20, v122
	v_xor_b32_e32 v52, 24, v122
	v_xor_b32_e32 v53, 28, v122
	v_xor_b32_e32 v54, 32, v122
	v_xor_b32_e32 v55, 36, v122
	v_xor_b32_e32 v56, 40, v122
	v_xor_b32_e32 v57, 44, v122
	v_xor_b32_e32 v59, 48, v122
	v_xor_b32_e32 v60, 52, v122
	v_xor_b32_e32 v61, 56, v122
	v_xor_b32_e32 v62, 60, v122
	v_xor_b32_e32 v64, 0x84, v123
	v_xor_b32_e32 v65, 0x108, v123
	v_xor_b32_e32 v66, 0x18c, v123
	v_xor_b32_e32 v37, 0x210, v123
	v_xor_b32_e32 v38, 0x294, v123
	v_xor_b32_e32 v58, 0x318, v123
	v_xor_b32_e32 v67, 0x39c, v123
	v_xor_b32_e32 v68, 4, v124
	v_xor_b32_e32 v69, 8, v124
	v_xor_b32_e32 v70, 12, v124
	v_xor_b32_e32 v71, 16, v124
	v_xor_b32_e32 v72, 20, v124
	v_xor_b32_e32 v35, 16, v125
	v_xor_b32_e32 v63, 32, v125
	v_xor_b32_e32 v34, 64, v125
	v_xor_b32_e32 v173, 0x70, v125
	v_xor_b32_e32 v174, 16, v128
	v_xor_b32_e32 v175, 32, v128
	v_xor_b32_e32 v176, 48, v128
	v_xor_b32_e32 v177, 64, v128
	v_xor_b32_e32 v178, 0x50, v128
	v_xor_b32_e32 v179, 0x60, v128
	v_xor_b32_e32 v180, 0x70, v128
	v_add_nc_u32_e32 v169, 0, v83
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[82:83], null, s23, 12, v[79:80]
	v_add_nc_u32_e32 v171, 0, v84
	v_mad_u64_u32 v[83:84], null, s23, 14, v[79:80]
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s14, s14, s16
	v_add_nc_u32_e32 v172, 0, v85
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[84:85], null, s70, v105, v[73:74]
	.loc	1 852 33                        ; attention.py:852:33
	s_mul_i32 s29, s2, s69
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s14, s14, s16
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s15, s15, s23
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s2, s21
	v_writelane_b32 v247, s30, 1
	v_subrev_nc_u32_e32 v115, s17, v107
	v_subrev_nc_u32_e32 v116, s17, v108
	v_subrev_nc_u32_e32 v118, s17, v110
	v_dual_mov_b32 v199, 0xff800000 :: v_dual_add_nc_u32 v132, 0, v42
	v_add_nc_u32_e32 v133, 0, v43
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_add_nc_u32 v134, 0, v36
	v_add_nc_u32_e32 v135, 0, v44
	v_add_nc_u32_e32 v136, 0, v45
	v_add_nc_u32_e32 v137, 0, v46
	v_add_nc_u32_e32 v138, 0, v47
	v_add_nc_u32_e32 v139, 0, v48
	v_add_nc_u32_e32 v140, 0, v49
	v_add_nc_u32_e32 v141, 0, v50
	v_add_nc_u32_e32 v142, 0, v51
	v_add_nc_u32_e32 v143, 0, v52
	v_add_nc_u32_e32 v144, 0, v53
	v_add_nc_u32_e32 v145, 0, v54
	v_add_nc_u32_e32 v146, 0, v55
	v_add_nc_u32_e32 v147, 0, v56
	v_add_nc_u32_e32 v148, 0, v57
	v_add_nc_u32_e32 v149, 0, v59
	v_add_nc_u32_e32 v150, 0, v60
	v_add_nc_u32_e32 v151, 0, v61
	v_add_nc_u32_e32 v152, 0, v62
	v_add_nc_u32_e32 v153, 0, v64
	v_add_nc_u32_e32 v154, 0, v65
	v_add_nc_u32_e32 v155, 0, v66
	v_add_nc_u32_e32 v156, 0, v37
	v_add_nc_u32_e32 v157, 0, v38
	v_add_nc_u32_e32 v158, 0, v58
	v_add_nc_u32_e32 v159, 0, v67
	v_add_nc_u32_e32 v160, 0, v68
	v_add_nc_u32_e32 v161, 0, v69
	v_add_nc_u32_e32 v162, 0, v70
	v_add_nc_u32_e32 v163, 0, v71
	v_add_nc_u32_e32 v164, 0, v72
	v_add_nc_u32_e32 v167, 0, v35
	v_add_nc_u32_e32 v168, 0, v63
	v_add_nc_u32_e32 v170, 0, v34
	v_add_nc_u32_e32 v173, 0, v173
	v_add_nc_u32_e32 v174, 0, v174
	v_add_nc_u32_e32 v175, 0, v175
	v_add_nc_u32_e32 v176, 0, v176
	v_add_nc_u32_e32 v177, 0, v177
	v_add_nc_u32_e32 v178, 0, v178
	v_add_nc_u32_e32 v179, 0, v179
	v_add_nc_u32_e32 v180, 0, v180
	v_mov_b32_e32 v34, v33
	v_subrev_nc_u32_e32 v117, s17, v109
	v_mov_b32_e32 v35, v33
	v_subrev_nc_u32_e32 v120, s17, v112
	v_mov_b32_e32 v36, v33
	v_subrev_nc_u32_e32 v119, s17, v111
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_subrev_nc_u32_e32 v181, s17, v113
	v_subrev_nc_u32_e32 v182, s17, v114
	v_add_nc_u32_e32 v183, s18, v107
	v_add_nc_u32_e32 v184, s18, v108
	v_add_nc_u32_e32 v185, s18, v109
	v_add_nc_u32_e32 v186, s18, v110
	v_add_nc_u32_e32 v187, s18, v111
	v_add_nc_u32_e32 v188, s18, v112
	v_add_nc_u32_e32 v189, s18, v113
	v_add_nc_u32_e32 v190, s18, v114
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v191, s23, 1, v79
	v_lshl_add_u32 v192, s23, 2, v79
	v_lshl_add_u32 v193, s23, 3, v79
	.loc	1 852 33                        ; attention.py:852:33
	s_add_i32 s92, s14, s29
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s69, s20, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s28, s28, s22
	s_add_i32 s95, s0, s15
	s_mov_b32 s60, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_mul_i32 s92, s92, s71
	s_lshl_b32 s93, s89, 4
	s_lshl_b32 s94, s89, 5
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s25, 0xffff
	s_mov_b32 s80, s24
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_add_i32 s95, s95, s28
	s_and_b32 s77, s77, 0xffff
	s_lshl_b32 s96, s70, 1
	s_lshl_b32 s97, s70, 3
	s_lshl_b32 s98, s70, 4
	s_lshl_b32 s99, s70, 5
	s_mul_i32 s100, s70, 48
	s_mul_i32 s101, s70, 49
	s_mul_i32 s102, s70, 50
	s_mul_i32 s103, s70, 51
	s_mul_i32 s104, s70, 56
	s_mul_i32 vcc_hi, s70, 57
	s_mul_i32 s75, s70, 58
	s_mul_i32 s2, s70, 59
	s_and_b32 s85, s27, 0xffff
	s_mov_b32 s84, s26
	s_mov_b32 s61, s60
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	s_mov_b32 s65, s60
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	s_mov_b32 s74, 0x76543210
	v_writelane_b32 v247, s33, 2
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s0, s90, s68
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s78, s82
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s0, s95, s0
	.loc	1 879 36                        ; attention.py:879:36
	s_mov_b32 s79, s83
	v_add_lshl_u32 v204, s0, v79, 2
	v_add_lshl_u32 v205, s0, v191, 2
	v_add_lshl_u32 v206, s0, v192, 2
	v_add_lshl_u32 v207, s0, v80, 2
	v_add_lshl_u32 v208, s0, v193, 2
	v_add_lshl_u32 v209, s0, v81, 2
	v_add_lshl_u32 v210, s0, v82, 2
	v_add_lshl_u32 v211, s0, v83, 2
	v_cndmask_b32_e64 v204, 0x80000000, v204, s35
	v_cndmask_b32_e64 v205, 0x80000000, v205, s34
	v_cndmask_b32_e64 v206, 0x80000000, v206, s33
	v_cndmask_b32_e64 v207, 0x80000000, v207, s31
	v_cndmask_b32_e64 v208, 0x80000000, v208, s30
	v_cndmask_b32_e64 v209, 0x80000000, v209, s29
	v_cndmask_b32_e64 v210, 0x80000000, v210, s28
	v_cndmask_b32_e64 v211, 0x80000000, v211, s27
	s_clause 0x7
	buffer_load_b32 v204, v204, s[76:79], 0 offen
	buffer_load_b32 v205, v205, s[76:79], 0 offen
	buffer_load_b32 v206, v206, s[76:79], 0 offen
	buffer_load_b32 v207, v207, s[76:79], 0 offen
	buffer_load_b32 v208, v208, s[76:79], 0 offen
	buffer_load_b32 v209, v209, s[76:79], 0 offen
	buffer_load_b32 v210, v210, s[76:79], 0 offen
	buffer_load_b32 v211, v211, s[76:79], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v224, 0, v121
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mul_i32 s79, s70, 43
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v204, 0xff800000, v204, s35
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v225, 0xff800000, v205, s34
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v205, 0, v122
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v226, 0xff800000, v206, s33
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v227, 0xff800000, v207, s31
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v228, 0xff800000, v208, s30
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v229, 0xff800000, v209, s29
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v230, 0xff800000, v210, s28
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v231, 0xff800000, v211, s27
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v224, v204
	ds_store_b32 v131, v225
	ds_store_b32 v132, v226
	ds_store_b32 v133, v227
	ds_store_b32 v134, v228
	ds_store_b32 v135, v229
	ds_store_b32 v136, v230
	ds_store_b32 v137, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[206:207], v205 offset1:32
	ds_load_2addr_b32 v[208:209], v138 offset1:32
	ds_load_2addr_b32 v[210:211], v140 offset1:32
	ds_load_2addr_b32 v[212:213], v142 offset1:32
	ds_load_2addr_b32 v[214:215], v144 offset1:32
	ds_load_2addr_b32 v[220:221], v150 offset1:32
	ds_load_2addr_b32 v[216:217], v146 offset1:32
	ds_load_2addr_b32 v[222:223], v152 offset1:32
	ds_load_2addr_b32 v[218:219], v148 offset1:32
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v204
	v_cmp_neq_f32_e64 s0, 0xff800000, v225
	v_cmp_neq_f32_e64 s1, 0xff800000, v228
	v_cmp_neq_f32_e64 s14, 0xff800000, v229
	v_cmp_neq_f32_e64 s15, 0xff800000, v230
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s44, s35, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v226
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s46, s34, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v227
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s51, s30, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v231
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(8)
	v_mul_f32_e32 v206, 0x3fb8aa3b, v206
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v208, 0x3fb8aa3b, v208
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v210, 0x3fb8aa3b, v210 :: v_dual_mul_f32 v241, 0x3fb8aa3b, v211
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v214, 0x3fb8aa3b, v214 :: v_dual_mul_f32 v239, 0x3fb8aa3b, v220
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v206, s69, v41
	v_fmac_f32_e32 v208, s69, v42
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[41:42], v139 offset1:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v210, s69, v44
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v212, 0x3fb8aa3b, v212 :: v_dual_fmac_f32 v239, s69, v54
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v214, s69, v48
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v236, 0x3fb8aa3b, v216
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v238, 0x3fb8aa3b, v218 :: v_dual_mul_f32 v243, 0x3fb8aa3b, v213
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v212, s69, v46
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_and_b32 s47, s33, vcc_lo
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v236, s69, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v238, s69, v52 :: v_dual_mul_f32 v245, 0x3fb8aa3b, v215
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s45, s31, s0
	s_and_b32 s50, s29, s14
	s_and_b32 s49, s28, s15
	s_and_b32 s48, s27, s16
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v241, s69, v60 :: v_dual_mul_f32 v60, 0x3fb8aa3b, v221
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v243, s69, v62 :: v_dual_mul_f32 v232, 0x3fb8aa3b, v41
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v41, 0, 1, s44
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v240, 0x3fb8aa3b, v42
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v42, 0, 1, s46
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v223
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v232, s69, v43
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[43:44], v141 offset1:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v60, s69, v70 :: v_dual_fmac_f32 v245, s69, v64
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v62, s69, v72 :: v_dual_mul_f32 v233, 0x3fb8aa3b, v43
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v242, 0x3fb8aa3b, v44 :: v_dual_add_nc_u32 v43, 0, v123
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v233, s69, v45
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[45:46], v143 offset1:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v242, s69, v61
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v234, 0x3fb8aa3b, v45
	v_mul_f32_e32 v244, 0x3fb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v234, s69, v47
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[47:48], v145 offset1:32
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v235, 0x3fb8aa3b, v47
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_add_nc_u32_e32 v47, 0, v124
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v235, s69, v49
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_2addr_b32 v[49:50], v147 offset1:32
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v237, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v50, 0x3fb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v237, s69, v51
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[51:52], v149 offset1:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v50, s69, v67
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v51, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v52, 0x3fb8aa3b, v52
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, s69, v53
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_2addr_b32 v[53:54], v151 offset1:32
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, s69, v69
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v43, v41
	v_cndmask_b32_e64 v41, 0, 1, s47
	ds_store_b8 v153, v42
	v_cndmask_b32_e64 v42, 0, 1, s45
	ds_store_b8 v154, v41
	v_cndmask_b32_e64 v41, 0, 1, s51
	ds_store_b8 v155, v42
	v_cndmask_b32_e64 v42, 0, 1, s50
	ds_store_b8 v156, v41
	v_cndmask_b32_e64 v41, 0, 1, s49
	ds_store_b8 v157, v42
	v_cndmask_b32_e64 v42, 0, 1, s48
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v54
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b8 v158, v41
	ds_store_b8 v159, v42
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, s69, v55
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v222
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	s_barrier
	ds_load_u16_d16 v41, v161
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v41, v162
	ds_load_u16_d16 v42, v161 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v42, v160 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, s69, v71 :: v_dual_fmac_f32 v55, s69, v56
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v207 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v207, s69, v58 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v217
	v_dual_fmac_f32 v56, s69, v57 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v48
	v_fmac_f32_e32 v240, s69, v59
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v219
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v244, s69, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v58, s69, v66 :: v_dual_fmac_f32 v57, s69, v65
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_and_b16 v43.l, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v41.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v59, s69, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v43.l
	v_and_b16 v43.l, 1, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v221, 0xff800000, v232, s38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v43.l
	ds_load_u16_d16 v43, v163
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v43, v166
	ds_load_u16_d16 v44, v165
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v44, v164
	ds_load_u16_d16 v45, v163 offset:32
	v_cmp_eq_u16_e64 s23, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v41.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v220, 0xff800000, v210, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s24, 1, v41.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v45.h, 1, v43.l
	v_lshrrev_b16 v41.l, 8, v43.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s41, 1, v45.h
	v_and_b16 v45.h, 1, v44.h
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v219, 0xff800000, v233, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v45.h
	v_and_b16 v45.h, 1, v44.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s21, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v44.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v218, 0xff800000, v212, s40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v45.h
	v_and_b16 v45.h, 1, v43.h
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v242, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v217, 0xff800000, v234, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v45.h
	ds_load_u16_d16_hi v45, v47 offset:32
	ds_load_u16_d16 v46, v160
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v46, v47
	v_cmp_eq_u16_e64 s22, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v44.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v216, 0xff800000, v214, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v72, 0xff800000, v243, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s19, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v43.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v244, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v47.l, 1, v45.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e64 s34, 1, v47.l
	v_and_b16 v47.l, 1, v42.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s20, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v45.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v214, 0xff800000, v235, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s35, 1, v47.l
	v_and_b16 v47.l, 1, v42.l
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v245, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v215, 0xff800000, v236, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v47.l
	ds_load_u16_d16 v47, v162 offset:32
	v_cmp_eq_u16_e64 s15, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v42.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v212, 0xff800000, v237, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v67, 0xff800000, v57, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s17, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v42.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v58, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v47.h, 1, v47.l
	v_cmp_eq_u16_e64 s1, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v47.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s33, 1, v47.h
	v_and_b16 v47.h, 1, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v50, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v213, 0xff800000, v238, s33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s29, 1, v47.h
	ds_load_u16_d16_hi v47, v164 offset:32
	v_cmp_eq_u16_e64 s14, 1, v41.l
	v_lshrrev_b16 v41.l, 8, v45.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v210, 0xff800000, v51, s29
	v_cndmask_b32_e64 v66, 0xff800000, v59, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v41.l, 1, v41.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v63, 0xff800000, v52, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.l, 1, v47.h
	v_lshrrev_b16 v41.l, 8, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s30, 1, v48.l
	ds_load_u16_d16 v48, v165 offset:32
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v211, 0xff800000, v239, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s0, 1, v41.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v60, s0
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v48.h, 1, v48.l
	v_lshrrev_b16 v41.l, 8, v48.l
	v_cmp_eq_u16_e64 s27, 1, v48.h
	ds_load_u16_d16_hi v48, v166 offset:32
	v_and_b16 v41.l, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v54, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v48.h
	v_lshrrev_b16 v41.l, 8, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s28, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v46.h
	v_and_b16 v41.l, 1, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v209, 0xff800000, v55, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s18, 1, v41.l
	v_and_b16 v41.l, 1, v46.h
	v_cmp_eq_u16_e64 s25, 1, v49.l
	v_lshrrev_b16 v49.l, 8, v46.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s42, 1, v41.l
	v_and_b16 v41.l, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v62, s18
	v_cndmask_b32_e64 v204, 0xff800000, v56, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v49.l, 1, v49.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v222, 0xff800000, v206, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v41.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v206, 0xff800000, v241, s24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s26, 1, v49.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_2addr_b32 v205, v222, v204 offset1:32
	v_cndmask_b32_e64 v223, 0xff800000, v208, s43
	v_cndmask_b32_e64 v205, 0xff800000, v240, s23
	v_cndmask_b32_e64 v208, 0xff800000, v53, s27
	v_cndmask_b32_e64 v207, 0xff800000, v207, s26
	ds_store_2addr_b32 v138, v223, v207 offset1:32
	ds_store_2addr_b32 v139, v221, v205 offset1:32
	ds_store_2addr_b32 v140, v220, v206 offset1:32
	ds_store_2addr_b32 v141, v219, v71 offset1:32
	ds_store_2addr_b32 v142, v218, v72 offset1:32
	ds_store_2addr_b32 v143, v217, v69 offset1:32
	ds_store_2addr_b32 v144, v216, v70 offset1:32
	ds_store_2addr_b32 v145, v214, v67 offset1:32
	ds_store_2addr_b32 v146, v215, v68 offset1:32
	ds_store_2addr_b32 v147, v212, v65 offset1:32
	ds_store_2addr_b32 v148, v213, v66 offset1:32
	ds_store_2addr_b32 v149, v210, v63 offset1:32
	ds_store_2addr_b32 v150, v211, v64 offset1:32
	ds_store_2addr_b32 v151, v208, v61 offset1:32
	ds_store_2addr_b32 v152, v209, v62 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v224
	ds_load_b32 v42, v131
	ds_load_b32 v43, v132
	ds_load_b32 v44, v133
	ds_load_b32 v45, v134
	ds_load_b32 v46, v135
	ds_load_b32 v47, v136
	ds_load_b32 v48, v137
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v49, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v50, v41, v41 :: v_dual_max_f32 v51, v42, v42
	v_dual_max_f32 v52, v43, v43 :: v_dual_max_f32 v53, v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v56, v47, v47
	v_dual_max_f32 v54, v45, v45 :: v_dual_max_f32 v55, v46, v46
	v_max_f32_e32 v57, v48, v48
	v_max_f32_e32 v49, v50, v49
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v50, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v50, v50
	v_max_f32_e32 v50, v51, v50
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v51, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v51
	v_max_f32_e32 v51, v52, v51
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	v_max_f32_e32 v52, v53, v52
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v53, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v53, v53
	v_max_f32_e32 v53, v54, v53
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v54, v54, v54
	v_max_f32_e32 v54, v55, v54
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v55, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v55, v55, v55
	v_max_f32_e32 v55, v56, v55
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v56, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v56, v57, v56
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v49 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v49, v49, v57
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v50 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v50, v50, v57
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v51 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v51, v51, v57
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v52 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v52, v52, v57
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v53 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v53, v53, v57
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v54 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v54, v54, v57
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v55 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v55, v55, v57
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v56 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v56, v56, v57
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v49 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v49, v49, v57
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v50 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v50, v50, v57
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v51 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v51, v51, v57
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v52 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v52, v52, v57
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v53 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v53, v53, v57
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v54 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v54, v54, v57
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v55 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v55, v55, v57
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v56 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v56, v56, v57
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v49 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v49, v49, v57
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v50 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v50, v50, v57
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v51 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v51, v51, v57
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v52 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v52, v52, v57
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v53 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v53, v53, v57
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v54 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v54, v54, v57
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v55 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v55, v55, v57
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v57, v56 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v56, v56, v57
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v57, v49, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	v_max_f32_e32 v49, v49, v57
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v57, v50, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s52, v49, 31
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v49, s52 :: v_dual_max_f32 v50, v50, v57
	v_permlanex16_b32 v57, v51, -1, -1 op_sel:[1,0]
	v_readlane_b32 s54, v50, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v57, v57, v57 :: v_dual_mov_b32 v50, s54
	v_max_f32_e32 v51, v51, v57
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v57, v52, -1, -1 op_sel:[1,0]
	s_mul_i32 s54, s70, 26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s55, v51, 31
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v51, s55 :: v_dual_max_f32 v52, v52, v57
	v_permlanex16_b32 v57, v53, -1, -1 op_sel:[1,0]
	s_mul_i32 s55, s70, 19
	v_readlane_b32 s56, v52, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v57, v57, v57 :: v_dual_mov_b32 v52, s56
	v_max_f32_e32 v53, v53, v57
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v57, v54, -1, -1 op_sel:[1,0]
	s_mul_i32 s56, s70, 25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s57, v53, 31
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v53, s57 :: v_dual_max_f32 v54, v54, v57
	v_permlanex16_b32 v57, v55, -1, -1 op_sel:[1,0]
	s_mul_i32 s57, s70, 27
	v_readlane_b32 s58, v54, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v57, v57, v57 :: v_dual_mov_b32 v54, s58
	v_max_f32_e32 v55, v55, v57
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v57, v56, -1, -1 op_sel:[1,0]
	s_mul_i32 s58, s70, 33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s59, v55, 31
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v55, s59 :: v_dual_max_f32 v56, v56, v57
	s_mul_i32 s59, s70, 35
	v_readlane_b32 s78, v56, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v56, s78
	ds_store_b128 v129, v[49:52]
	ds_store_b128 v129, v[53:56] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v130 offset:32
	ds_load_b128 v[53:56], v130
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mul_i32 s78, s70, 41
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v57, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v198, v198, v49, v57
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp86:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v45, v198
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v199, v199, v50, v49
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v49, v51 :: v_dual_max_f32 v50, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp90:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v199
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp92:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v200, v200, v51, v49
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v52
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp95:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v200
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp98:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v85, v85, v52, v49
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v54
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v85
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v45, v45, v45 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v46, v46, v46 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp104:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v195, v195, v54, v49
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v55
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_mad_u64_u32 v[57:58], null, s53, s70, v[84:85]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v195
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v47, v47, v47 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp110:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s48
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v46, v46, v46 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp112:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v196, v196, v55, v49
.Ltmp113:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v56
.Ltmp114:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v196
.Ltmp117:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_mul_i32 s53, s70, 10
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v47, v47, v47 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp119:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v197, v197, v56, v49
.Ltmp120:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v49, v53
.Ltmp121:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s46
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v48, v48, v48 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp123:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v232, v57, s70, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v197
.Ltmp124:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v48, v48, v48 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp126:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s47
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
.Ltmp127:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v49, v49, v49
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp129:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v229, v57, s55, 1
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp131:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v228, v57, s56, 1
.Ltmp132:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v224, v50, v49
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v45, -1, -1 op_sel:[1,0]
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp135:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s45
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v227, v57, s57, 1
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v49
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v46, -1, -1 op_sel:[1,0]
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v42, v42, v42 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v43, v43, v43 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v44, v44, v44 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s45, v45, 31
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v46, v49
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v47, -1, -1 op_sel:[1,0]
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v43, v43, v43 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v194, v194
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp145:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v225, v57, s58, 1
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v47, v47, v49
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v48, -1, -1 op_sel:[1,0]
.Ltmp148:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v58, v57, s100, 1
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp150:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v226, v57, s101, 1
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s47, v47, 31
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v48, v49
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v42, -1, -1 op_sel:[1,0]
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v44, v44, v44 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp155:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v59, v57, s102, 1
	v_add_lshl_u32 v231, v57, s103, 1
	v_add_lshl_u32 v60, v57, s104, 1
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v49
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v43, -1, -1 op_sel:[1,0]
.Ltmp158:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v233, v57, vcc_hi, 1
	v_add_lshl_u32 v238, v57, s75, 1
	v_add_lshl_u32 v237, v57, s2, 1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s48, v42, 31
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v49
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v49, v44, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_readlane_b32 s49, v43, 31
	v_dual_mov_b32 v43, s47 :: v_dual_max_f32 v194, v45, v224
.Ltmp162:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v44, v44, v49 :: v_dual_mov_b32 v47, s49
.Ltmp163:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s46, v46, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp164:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v194
.Ltmp165:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s50, v44, 31
	v_mov_b32_e32 v46, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v42, s46
.Ltmp166:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s44
.Ltmp167:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s44, v48, 31
	v_mov_b32_e32 v48, s50
.Ltmp168:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp169:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v44, s44
.Ltmp170:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v41, v41, v41 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v41, v41, v41 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v41, v41, v41 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp171:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v45, v41, -1, -1 op_sel:[1,0]
.Ltmp172:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s51, v41, 31
	v_mov_b32_e32 v41, s45
	v_mov_b32_e32 v45, s51
	ds_store_b128 v129, v[41:44] offset:32
	ds_store_b128 v129, v[45:48]
.Ltmp174:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s90, v105
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s96, 1
.Ltmp175:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp176:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v44, v57, s59, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 1, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s71, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s90, s90, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 2, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s4, s52
	s_and_b32 s44, s4, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 3, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v232, 0x80000000, v232, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s48, s4, s48
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 8, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s4, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 9, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 10, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 11, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 16, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s71, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v57
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s52
	s_clause 0x1
	buffer_load_u16 v53, v42, s[84:87], 0 offen
	buffer_load_u16 v54, v43, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 17, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s53, 1
	s_mul_i32 s53, s70, 18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 18, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s48
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s71, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s97, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s49
	s_clause 0x1
	buffer_load_u16 v45, v42, s[84:87], 0 offen
	buffer_load_u16 v46, v43, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 24, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s53, 1
	s_mul_i32 s53, s70, 24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 26, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s71, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s98, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s51
	s_clause 0x1
	buffer_load_u16 v47, v42, s[84:87], 0 offen
	buffer_load_u16 v48, v43, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 32, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s54, 1
	s_mul_i32 s54, s70, 42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 34, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s51
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s71, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s53, 1
	s_mul_i32 s53, s70, 34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s49
	s_clause 0x1
	buffer_load_u16 v49, v42, s[84:87], 0 offen
	buffer_load_u16 v50, v43, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 40, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s53, 1
	s_mul_i32 s53, s70, 40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 42, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s71, v42
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s99, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s51
	s_clause 0x1
	buffer_load_u16 v51, v42, s[84:87], 0 offen
	buffer_load_u16 v52, v43, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 48, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v43, v57, s54, 1
	s_mul_i32 s54, s70, 17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v230, v57, s54, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 50, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s71, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v42, v57, s53, 1
	s_mul_i32 s53, s70, 11
	v_add_lshl_u32 v236, v57, s53, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s50
	s_mul_i32 s50, s70, 9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s49
	s_mul_i32 s49, s70, 3
	s_clause 0x1
	buffer_load_u16 v55, v42, s[84:87], 0 offen
	buffer_load_u16 v56, v43, s[84:87], 0 offen
	v_add_lshl_u32 v235, v57, s49, 1
	v_add_lshl_u32 v234, v57, s50, 1
	v_add_lshl_u32 v43, v57, s78, 1
	v_add_lshl_u32 v42, v57, s79, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v57, 56, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s71, v57
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v57, 58, v41
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s53
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s71, v57
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v58, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s4, s52
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v58, 0x80000000, v59, s49
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v59, 19, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v57, v57, s[84:87], 0 offen
	buffer_load_u16 v58, v58, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s71, v59
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v59, 25, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s71, v59
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v59, 0x80000000, v60, s51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s4, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v238, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 27, v41
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v59, v59, s[84:87], 0 offen
	buffer_load_u16 v60, v60, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 33, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 35, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 43, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 49, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 51, v41
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s71, v238
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v238, 57, v41
	v_add_nc_u32_e32 v41, 59, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s71, v238
	v_cmp_gt_i32_e64 s59, s71, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v235, s45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s4, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v235, 0x80000000, v236, s45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s4, s46
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v234, 0x80000000, v234, s45
	s_clause 0x3
	buffer_load_u16 v235, v235, s[84:87], 0 offen
	buffer_load_u16 v234, v234, s[84:87], 0 offen
	buffer_load_u16 v41, v41, s[84:87], 0 offen
	buffer_load_u16 v232, v232, s[84:87], 0 offen
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v46.h, v235.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v45.h, v234.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v54.h, v41.l
	v_cndmask_b32_e64 v41, 0x80000000, v230, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s49
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v53.h, v232.l
	v_cndmask_b32_e64 v229, 0x80000000, v229, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v228, 0x80000000, v228, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v227, 0x80000000, v227, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v225, 0x80000000, v225, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s53
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v44, 0x80000000, v44, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v43, 0x80000000, v43, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s55
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v226, 0x80000000, v226, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s57
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v230, 0x80000000, v231, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s58
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v231, 0x80000000, v233, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s4, s59
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s90, s91
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v232, 0x80000000, v237, s44
	s_clause 0xb
	buffer_load_u16 v233, v227, s[84:87], 0 offen
	buffer_load_u16 v236, v228, s[84:87], 0 offen
	buffer_load_u16 v237, v229, s[84:87], 0 offen
	buffer_load_u16 v238, v41, s[84:87], 0 offen
	buffer_load_u16 v239, v42, s[84:87], 0 offen
	buffer_load_u16 v240, v43, s[84:87], 0 offen
	buffer_load_u16 v241, v44, s[84:87], 0 offen
	buffer_load_u16 v242, v225, s[84:87], 0 offen
	buffer_load_u16 v243, v232, s[84:87], 0 offen
	buffer_load_u16 v244, v231, s[84:87], 0 offen
	buffer_load_u16 v245, v230, s[84:87], 0 offen
	buffer_load_u16 v246, v226, s[84:87], 0 offen
.Ltmp177:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[41:44], v130
.Ltmp178:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v42, 0, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp179:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v43, v210, v211, v208
	v_max3_f32 v44, v209, v204, v207
.Ltmp180:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v42, v[53:54]
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v215, v212, v213
	v_max3_f32 v53, v67, v68, v65
.Ltmp182:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v167, v[45:46]
.Ltmp183:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v205, v206, v71
	v_max3_f32 v44, v72, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v43, v43, v44, v53
	v_max_f32_e32 v44, v222, v223
	v_max3_f32 v53, v220, v219, v218
	v_max3_f32 v44, v44, v221, v53
	v_max3_f32 v53, v217, v216, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v44, v53, v42
	v_dual_max_f32 v44, v66, v63 :: v_dual_max_f32 v53, v61, v62
	v_max3_f32 v44, v44, v64, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v42, v42, v43, v44
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp185:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v42, v203, v42, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v223, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v223.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v53.h, v223.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v223.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s43, v43, v43
	v_and_b32_e32 v44, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v222, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v53.l, v44.h
	v_cmp_o_f32_e64 s42, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v44, v44, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s42
	v_permlanex16_b32 v44, v43, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v225, v44, v43, v126
	v_perm_b32 v226, v44, v43, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v221, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v223.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v220, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v44.h
	v_cmp_o_f32_e64 s36, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v223
	v_add3_u32 v44, v44, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s36
	v_permlanex16_b32 v44, v43, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v227, v44, v43, v126
	v_perm_b32 v228, v44, v43, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v219, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v223.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v43, v43
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v218, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v44.h
	v_cmp_o_f32_e64 s38, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v223
	v_add3_u32 v44, v44, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s38
	v_permlanex16_b32 v44, v43, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v229, v44, v43, v126
	v_perm_b32 v230, v44, v43, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v217, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v223.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s39
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v50.h, v233.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v48.h, v237.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v47.h, v238.l
	v_mov_b16_e64 v49.h, v236.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s36, v43, v43
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v52.h, v241.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v51.h, v242.l
	v_mov_b16_e64 v56.h, v239.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v55.h, v240.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v58.h, v245.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v57.h, v246.l
	v_mov_b16_e64 v60.h, v243.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v216, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v59.h, v244.l
	ds_store_b64 v168, v[47:48]
	ds_store_b64 v169, v[49:50]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s36, 0xff800000, v203
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v170, v[51:52]
	ds_store_b64 v171, v[55:56]
	ds_store_b64 v172, v[57:58]
	ds_store_b64 v173, v[59:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v51.h, v223.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v223.l, v44.h
	v_cmp_o_f32_e64 s37, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v223
	v_add3_u32 v44, v44, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s37
	v_permlanex16_b32 v44, v43, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v231, v44, v43, v126
	v_perm_b32 v232, v44, v43, v127
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v43, v203, v42
	v_mov_b32_e32 v203, v42
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
	v_dual_mul_f32 v40, v40, v43 :: v_dual_add_nc_u32 v43, 0, v128
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[43:46], v43
	ds_load_b128 v[47:50], v174
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[43:50], v[225:232], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v215, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v223.h
	v_mov_b16_e64 v47.h, v223.h
	v_mov_b16_e64 v49.h, v223.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v43.h
	v_cmp_o_f32_e64 s35, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v223
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v214, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s35
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v43, v43
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v43, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v126
	v_perm_b32 v44, v45, v44, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v213, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v45.h
	v_cmp_o_f32_e64 s33, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v223
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v212, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s33
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s31, v45, v45
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v126
	v_perm_b32 v46, v47, v46, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v211, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v47.h
	v_cmp_o_f32_e64 s30, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v223
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v210, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s29, v47, v47
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v47, v49, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v48, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v49, v48, v126
	v_perm_b32 v48, v49, v48, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v209, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v49.h
	v_cmp_o_f32_e64 s28, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v223
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v208, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s28
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v51.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v49, v49
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v49, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v51, v50, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v51, v50, v126
	v_perm_b32 v50, v51, v50, v127
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v175
	ds_load_b128 v[55:58], v176
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[51:58], v[43:50], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v207, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v223.h
	v_mov_b16_e64 v47.h, v223.h
	v_mov_b16_e64 v49.h, v223.h
	v_mov_b16_e64 v51.h, v223.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s26, v43, v43
	v_and_b32_e32 v44, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v204, v42
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
	v_permlanex16_b32 v45, v44, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v126
	v_perm_b32 v44, v45, v44, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v206, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s24, v45, v45
	v_and_b32_e32 v46, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v205, v42
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
	v_permlanex16_b32 v47, v46, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v47, v46, v126
	v_perm_b32 v46, v47, v46, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v72, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v47, v47
	v_and_b32_e32 v48, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v71, v42
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
	v_permlanex16_b32 v49, v48, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v126
	v_perm_b32 v48, v49, v48, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v70, v42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v49, v49
	v_and_b32_e32 v50, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v69, v42
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
	v_permlanex16_b32 v51, v50, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v49, v51, v50, v126
	v_perm_b32 v50, v51, v50, v127
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v177
	ds_load_b128 v[55:58], v178
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[51:58], v[43:50], v[33:40]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v68, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v45.h, v223.h
	v_mov_b16_e64 v47.h, v223.h
	v_mov_b16_e64 v49.h, v223.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v43.h
	v_cmp_o_f32_e64 s17, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v223
	v_add3_u32 v44, v43, v44, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.l, v43.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v43, v43
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v43, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v126
	v_perm_b32 v44, v45, v44, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v66, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v45.h
	v_cmp_o_f32_e64 s14, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v46, 1, v223
	v_add3_u32 v46, v45, v46, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v65, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s14
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v45, v45
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v45, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v126
	v_perm_b32 v46, v47, v46, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v64, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v47, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v47.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v223
	v_add3_u32 v48, v47, v48, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v63, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v47, 0, v47, vcc_lo
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v47, v49, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v49.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v48, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v49, v48, v126
	v_perm_b32 v48, v49, v48, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v62, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v223.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v223
	v_add3_u32 v50, v49, v50, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v61, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v202
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v223.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v49, v49
	v_and_b32_e32 v51, 1, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v49, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v51, v50, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v51, v50, v126
	v_perm_b32 v50, v51, v50, v127
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[51:54], v179
	ds_load_b128 v[55:58], v180
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
	v_max_f32_e32 v43, v202, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v43, v43, v224
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v44, v202, v43
	v_mov_b32_e32 v202, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v44, v44
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v44, 0, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v41, v201, v44
	v_mov_b32_e32 v201, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s90, v88
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v219, s67 :: v_dual_mov_b32 v214, s62
	v_mov_b32_e32 v218, s66
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s53, s90, s92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v217, s65 :: v_dual_add_nc_u32 v42, 2, v41
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s44, s53, s89
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s43, s71, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, s44, v89, 1
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s28, s71, v42
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v215, s63 :: v_dual_add_nc_u32 v42, 4, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v44, s44, v90, 1
	v_add_lshl_u32 v45, s44, v75, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v213, s61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s29, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 6, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s28
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v46, s44, v91, 1
	v_cndmask_b32_e64 v43, 0x80000000, v43, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s29
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s30, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 8, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v44, 0x80000000, v44, s28
	v_add_lshl_u32 v47, s44, v76, 1
	v_add_lshl_u32 v48, s44, v77, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s30
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s31, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 10, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v45, s28
	v_add_lshl_u32 v49, s44, v78, 1
	s_mul_i32 s29, s89, 20
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s31
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s33, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 12, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v46, 0x80000000, v46, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s43, s5, s43
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v212, s60
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s33
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s34, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 14, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v47, 0x80000000, v47, s28
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v216, s64
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s35, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 16, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v48, 0x80000000, v48, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s35
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s36, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 18, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v49, 0x80000000, v49, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s37, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 20, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s38, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 22, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s39, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 24, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s40, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 26, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s41, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 28, v41
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s42, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 30, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s27, s71, v42
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v42, 32, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s27, s5, s27
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s26, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 34, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s26, s5, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s25, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 36, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s25, s5, s25
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s24, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 38, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s24, s5, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s23, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 40, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s23, s5, s23
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s22, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 42, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s22, s5, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s21, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 44, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s21, s5, s21
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s20, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 46, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s20, s5, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s0, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 48, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s0, s5, s0
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s19, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 50, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s19, s5, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s15, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 52, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s15, s5, s15
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s1, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 54, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s5, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e32 vcc_lo, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 56, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s18, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 58, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s18, s5, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s14, s71, v42
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v42, 60, v41
	v_add_nc_u32_e32 v41, 62, v41
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s14, s5, s14
	.loc	1 856 65 is_stmt 0              ; attention.py:856:65
	v_cmp_gt_i32_e64 s17, s71, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s16, s71, v41
	.loc	1 853 32 is_stmt 1              ; attention.py:853:32
	v_add_nc_u32_e32 v41, s44, v74
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v50, v41, s93, 1
	v_add_lshl_u32 v52, v41, s29, 1
	s_mul_i32 s29, s89, 24
	v_add_lshl_u32 v58, v41, s94, 1
	v_add_lshl_u32 v54, v41, s29, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s28
	s_mul_i32 s28, s89, 18
	s_mul_i32 s29, s89, 28
	v_add_lshl_u32 v51, v41, s28, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s37
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v56, v41, s29, 1
	v_cndmask_b32_e64 v58, 0x80000000, v58, s26
	s_mul_i32 s26, s89, 34
	v_cndmask_b32_e64 v51, 0x80000000, v51, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s38
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v59, v41, s26, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s28
	s_mul_i32 s28, s89, 22
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v53, v41, s28, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s39
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v59, 0x80000000, v59, s25
	s_mul_i32 s25, s89, 40
	v_cndmask_b32_e64 v42, 0x80000000, v42, s43
	v_cndmask_b32_e64 v53, 0x80000000, v53, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s40
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v62, v41, s25, 1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s28
	s_mul_i32 s28, s89, 26
	s_clause 0x7
	buffer_load_u16 v42, v42, s[80:83], 0 offen
	buffer_load_u16 v43, v43, s[80:83], 0 offen
	buffer_load_u16 v44, v44, s[80:83], 0 offen
	buffer_load_u16 v45, v45, s[80:83], 0 offen
	buffer_load_u16 v46, v46, s[80:83], 0 offen
	buffer_load_u16 v47, v47, s[80:83], 0 offen
	buffer_load_u16 v48, v48, s[80:83], 0 offen
	buffer_load_u16 v49, v49, s[80:83], 0 offen
	v_add_lshl_u32 v55, v41, s28, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s41
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v62, 0x80000000, v62, s22
	s_mul_i32 s22, s89, 42
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v55, 0x80000000, v55, s28
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s28, s5, s42
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v63, v41, s22, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s28
	s_mul_i32 s28, s89, 30
	s_clause 0x5
	buffer_load_u16 v50, v50, s[80:83], 0 offen
	buffer_load_u16 v51, v51, s[80:83], 0 offen
	buffer_load_u16 v52, v52, s[80:83], 0 offen
	buffer_load_u16 v54, v54, s[80:83], 0 offen
	buffer_load_u16 v55, v55, s[80:83], 0 offen
	buffer_load_u16 v56, v56, s[80:83], 0 offen
	v_add_lshl_u32 v57, v41, s28, 1
	v_cndmask_b32_e64 v63, 0x80000000, v63, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v57, 0x80000000, v57, s27
	s_mul_i32 s27, s89, 36
	v_add_lshl_u32 v60, v41, s27, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v60, 0x80000000, v60, s24
	s_mul_i32 s24, s89, 38
	v_add_lshl_u32 v61, v41, s24, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s23
	s_mul_i32 s23, s89, 44
	v_add_lshl_u32 v64, v41, s23, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v64, 0x80000000, v64, s20
	s_mul_i32 s20, s89, 48
	s_clause 0x5
	buffer_load_u16 v58, v58, s[80:83], 0 offen
	buffer_load_u16 v59, v59, s[80:83], 0 offen
	buffer_load_u16 v60, v60, s[80:83], 0 offen
	buffer_load_u16 v62, v62, s[80:83], 0 offen
	buffer_load_u16 v63, v63, s[80:83], 0 offen
	buffer_load_u16 v64, v64, s[80:83], 0 offen
	v_add_lshl_u32 v65, v41, s20, 1
	s_mul_i32 s20, s89, 50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v67, v41, s20, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s19
	s_mul_i32 s19, s89, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v66, v41, s19, 1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s15
	s_mul_i32 s15, s89, 58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v68, v41, s15, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s18
	s_mul_i32 s18, s89, 52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v69, v41, s18, 1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s14
	s_mul_i32 s14, s89, 46
	s_clause 0x3
	buffer_load_u16 v65, v65, s[80:83], 0 offen
	buffer_load_u16 v66, v66, s[80:83], 0 offen
	buffer_load_u16 v67, v67, s[80:83], 0 offen
	buffer_load_u16 v68, v68, s[80:83], 0 offen
	v_add_lshl_u32 v71, v41, s14, 1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	s_mul_i32 s1, s89, 60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v70, v41, s1, 1
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s1, s5, s17
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	s_mul_i32 s0, s89, 54
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	s_mul_i32 s1, s89, 62
	v_add_lshl_u32 v72, v41, s0, 1
	v_add_lshl_u32 v41, v41, s1, 1
	s_clause 0x1
	buffer_load_u16 v69, v69, s[80:83], 0 offen
	buffer_load_u16 v70, v70, s[80:83], 0 offen
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 vcc_lo, s5, s16
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v41, 0x80000000, v41, vcc_lo
	s_clause 0x5
	buffer_load_u16 v57, v57, s[80:83], 0 offen
	buffer_load_u16 v53, v53, s[80:83], 0 offen
	buffer_load_u16 v71, v71, s[80:83], 0 offen
	buffer_load_u16 v61, v61, s[80:83], 0 offen
	buffer_load_u16 v41, v41, s[80:83], 0 offen
	buffer_load_u16 v72, v72, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v106
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(31)
	ds_store_b16 v93, v42
	s_waitcnt vmcnt(27)
	ds_store_b16 v93, v46 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b16 v93, v50 offset:2048
	s_waitcnt vmcnt(20)
	ds_store_b16 v93, v54 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b16 v93, v58 offset:4096
	s_waitcnt vmcnt(14)
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
	ds_load_b128 v[53:56], v98
	ds_load_b128 v[49:52], v94
	ds_load_b128 v[57:60], v94 offset:2048
	ds_load_b128 v[61:64], v98 offset:2048
	ds_load_b128 v[69:72], v98 offset:4096
	ds_load_b128 v[65:68], v94 offset:4096
	ds_load_b128 v[204:207], v94 offset:6144
	ds_load_b128 v[208:211], v98 offset:6144
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[49:56], v[1:8], v[212:219]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[57:64], v[1:8], v[212:219]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[65:72], v[1:8], v[212:219]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[204:211], v[1:8], v[212:219]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v100
	ds_load_b128 v[204:207], v99
	ds_load_b128 v[212:215], v99 offset:2048
	ds_load_b128 v[216:219], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[204:211], v[9:16], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[212:219], v[9:16], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v100 offset:4096
	ds_load_b128 v[204:207], v99 offset:4096
	ds_load_b128 v[212:215], v99 offset:6144
	ds_load_b128 v[216:219], v100 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[204:211], v[9:16], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[212:219], v[9:16], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v102
	ds_load_b128 v[204:207], v101
	ds_load_b128 v[212:215], v101 offset:2048
	ds_load_b128 v[216:219], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[204:211], v[17:24], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[212:219], v[17:24], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v102 offset:4096
	ds_load_b128 v[204:207], v101 offset:4096
	ds_load_b128 v[212:215], v101 offset:6144
	ds_load_b128 v[216:219], v102 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[204:211], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[212:219], v[17:24], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v104
	ds_load_b128 v[204:207], v103
	ds_load_b128 v[212:215], v103 offset:2048
	ds_load_b128 v[216:219], v104 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[204:211], v[25:32], v[41:48]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[212:219], v[25:32], v[49:56]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[208:211], v104 offset:4096
	ds_load_b128 v[204:207], v103 offset:4096
	ds_load_b128 v[212:215], v103 offset:6144
	ds_load_b128 v[216:219], v104 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[204:211], v[25:32], v[57:64]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, s90, v73
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[212:219], v[25:32], v[65:72]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_gt_i32_e64 s0, s71, v204
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s35, s6, s0
	s_and_b32 s34, s7, s0
	s_and_b32 s33, s8, s0
	s_and_b32 s31, s9, s0
	s_and_b32 s30, s10, s0
	s_and_b32 s29, s11, s0
	s_and_b32 s28, s12, s0
	s_and_b32 s27, s13, s0
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v204, v107
	v_cmp_le_i32_e64 s0, v204, v108
	v_cmp_le_i32_e64 s1, v204, v109
	v_cmp_le_i32_e64 s14, v204, v110
	v_cmp_le_i32_e64 s15, v204, v111
	v_cmp_le_i32_e64 s16, v204, v112
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s19, vcc_lo, s35
	s_and_b32 s0, s0, s34
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v204, v113
	v_cmp_le_i32_e64 s18, v204, v114
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s33
	s_and_b32 s14, s14, s31
	s_and_not1_b32 s20, s35, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s34, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s15, s15, s30
	s_and_b32 s16, s16, s29
	s_or_b32 s35, s20, s19
	s_or_b32 s34, s21, s0
	s_and_not1_b32 s0, s33, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s19, s31, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s28
	s_and_b32 s18, s18, s27
	s_or_b32 s33, s0, s1
	s_or_b32 s31, s19, s14
	s_and_not1_b32 s0, s30, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s14, s29, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s30, s0, s1
	s_or_b32 s29, s14, s15
	s_and_not1_b32 s0, s28, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s14, s27, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s28, s0, s1
	s_or_b32 s27, s14, s15
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s88
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v204, v115
	v_cmp_ge_i32_e64 s0, v204, v116
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v204, v183
	v_cmp_le_i32_e64 s20, v204, v184
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v204, v117
	v_cmp_ge_i32_e64 s14, v204, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v204, v185
	v_cmp_le_i32_e64 s22, v204, v186
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v204, v119
	v_cmp_ge_i32_e64 s16, v204, v120
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v204, v187
	v_cmp_le_i32_e64 s24, v204, v188
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s0, s0, s20
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v204, v181
	v_cmp_ge_i32_e64 s18, v204, v182
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v204, v189
	v_cmp_le_i32_e64 s26, v204, v190
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s19, s19, s35
	s_and_b32 s0, s0, s34
	s_and_b32 s1, s1, s21
	s_and_b32 s14, s14, s22
	s_and_b32 s1, s1, s33
	s_and_b32 s14, s14, s31
	s_and_b32 s15, s15, s23
	s_and_b32 s16, s16, s24
	s_and_not1_b32 s20, s35, exec_lo
	s_and_b32 s19, s19, exec_lo
	s_and_not1_b32 s21, s34, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s15, s15, s30
	s_and_b32 s16, s16, s29
	s_and_b32 s17, s17, s25
	s_and_b32 s18, s18, s26
	s_or_b32 s35, s20, s19
	s_or_b32 s34, s21, s0
	s_and_not1_b32 s0, s33, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s19, s31, exec_lo
	s_and_b32 s14, s14, exec_lo
	s_and_b32 s17, s17, s28
	s_and_b32 s18, s18, s27
	s_or_b32 s33, s0, s1
	s_or_b32 s31, s19, s14
	s_and_not1_b32 s0, s30, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s14, s29, exec_lo
	s_and_b32 s15, s16, exec_lo
	s_or_b32 s30, s0, s1
	s_or_b32 s29, s14, s15
	s_and_not1_b32 s0, s28, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s14, s27, exec_lo
	s_and_b32 s15, s18, exec_lo
	s_or_b32 s28, s0, s1
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
	v_max_f32_e32 v1, v43, v43
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, 0, v41
	v_readlane_b32 s30, v247, 1
	v_readlane_b32 s31, v247, 0
	v_readlane_b32 s33, v247, 2
.Ltmp191:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v2, 0xff800000, v1
.Ltmp192:
.LBB0_13:                               ; %._crit_edge
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v92
.Ltmp193:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v1, 1, v0
	v_add_nc_u32_e32 v4, 0, v105
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp194:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e64 v2, 0xff800000, v2, s33
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e64 v3, 0, v3, s33
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
	s_mul_i32 s3, s3, s30
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
	s_add_i32 s70, s70, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s0, s31, s3
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s0, s70
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
	s_add_u32 s6, s72, s6
	s_addc_u32 s7, s73, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v0, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp242:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v7, v9 :: v_dual_and_b32 v0, 0xc0, v87
	v_add_f32_e32 v8, v6, v8
	v_dual_add_f32 v7, v3, v4 :: v_dual_and_b32 v2, 0xe0, v86
.Ltmp243:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 28, v86
	v_lshlrev_b32_e32 v1, 5, v1
	s_and_b32 vcc_lo, s33, s4
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v21, v18, v21 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_f32 v19, v15, v19
	v_add_f32_e32 v10, v14, v16
.Ltmp245:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v12, v13
.Ltmp247:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v0, v0, v1, v3
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
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v1, v1, 2, 8
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[72:75], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp248:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 248
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_vgpr, 248
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17012
; TotalNumSgprs: 107
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 248
; Occupancy: 5
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
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
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
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 3
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     248
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
