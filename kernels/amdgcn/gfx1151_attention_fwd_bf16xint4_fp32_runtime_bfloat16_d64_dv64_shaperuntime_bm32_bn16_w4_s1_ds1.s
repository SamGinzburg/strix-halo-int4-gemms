	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[48:51], s[0:1], 0x80
	s_load_b128 s[24:27], s[0:1], 0x4c
	s_load_b32 s34, s[0:1], 0x5c
	s_load_b64 s[20:21], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v70, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v58, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 6, v70
	v_or_b32_e32 v75, 10, v70
	v_or_b32_e32 v76, 12, v70
	v_or_b32_e32 v74, 8, v70
	v_or_b32_e32 v77, 14, v70
	v_or_b32_e32 v71, 2, v70
	v_or_b32_e32 v72, 4, v70
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s48
	s_bitcmp1_b32 s48, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[59:60], null, s34, v70, v[58:59]
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s19, s3, s26
	s_cselect_b32 s29, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s24
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 5
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s5, 0, s16
	s_abs_i32 s2, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[60:61], null, s34, 6, v[59:60]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v73
	v_or_b32_e32 v6, s33, v75
	v_or_b32_e32 v7, s33, v76
	v_or_b32_e32 v5, s33, v74
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s18, s34, v58
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[61:62], null, s34, 10, v[59:60]
	v_mad_u64_u32 v[62:63], null, s34, 12, v[59:60]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s33, v70
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s34, 14, v[59:60]
	v_lshl_add_u32 v80, s34, 3, v59
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, 16, v1
	v_or_b32_e32 v11, 18, v1
	v_or_b32_e32 v12, 20, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_u32_f32 s4, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v13, 22, v1
	v_or_b32_e32 v14, 24, v1
	v_or_b32_e32 v15, 26, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s5, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, 28, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s5, s4, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, 30, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s26, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s5, s4, s16
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s33, v77
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s16
	s_cmp_ge_u32 s2, s16
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s30, s34, 18
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s26, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s28, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s17, s25
	s_xor_b32 s42, s24, s25
	s_cvt_f32_u32 s2, s17
	s_sub_i32 s13, 0, s17
	s_ashr_i32 s42, s42, 31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s26, v4
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s26, v9
	v_cmp_gt_i32_e64 s9, s26, v8
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s37, s34, 24
	s_mul_i32 s31, s34, 20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s26, v12
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s38, s34, 26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v71
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s36, s34, 22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s33, v72
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s8, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v78, s34, 1, v59
	s_mul_i32 s39, s34, 28
	s_mul_i32 s40, s34, 30
	v_lshl_add_u32 v79, s34, 2, v59
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s11, s8, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s26, v7
	v_cmp_gt_i32_e64 s2, s26, v2
	v_cmp_gt_i32_e64 s4, s26, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s15, s11
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s26, v11
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s14, s13, s15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s26, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s41, s15, s14
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s26, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s41, s15, s41
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s26, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s41, s16, s41
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s43, s41, s17
	s_add_i32 s44, s41, 1
	s_sub_i32 s43, s16, s43
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s26, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s45, s43, s17
	s_cmp_ge_u32 s43, s17
	s_cselect_b32 s41, s44, s41
	s_cselect_b32 s43, s45, s43
	s_add_i32 s44, s41, 1
	s_cmp_ge_u32 s43, s17
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s26, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s41, s44, s41
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s19, s19, s33
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s18
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s44, s19, s34
	s_lshl_b32 s43, s34, 4
	v_add_nc_u32_e32 v1, s44, v59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s44, v61, 1
	v_add_lshl_u32 v4, s44, v60, 1
	v_add_lshl_u32 v5, s44, v80, 1
	v_add_lshl_u32 v9, s44, v63, 1
	v_lshlrev_b32_e32 v6, 1, v1
	v_add_lshl_u32 v11, v1, s30, 1
	v_add_lshl_u32 v8, s44, v62, 1
	v_add_lshl_u32 v10, v1, s43, 1
	v_add_lshl_u32 v13, v1, s37, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s18
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v17, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v1, s31, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v1, s38, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s8, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v54, 1, v58
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s9, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v49, 0x90, v17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s10, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v1, s36, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s11, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v1, s39, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v1, s40, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s14, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s44, v78, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s13, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v49, v54
	v_add_lshl_u32 v3, s44, v79, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s18
	s_and_b32 s2, s2, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s4, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v81, 0, v17
	v_xor_b32_e32 v18, 0x120, v17
	v_xor_b32_e32 v19, 0x240, v17
	v_xor_b32_e32 v17, 0x360, v17
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s18
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x9
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	v_add_nc_u32_e32 v85, 0, v17
	s_clause 0x5
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s41, s42
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s6, s27, 15
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s4, s2, s42
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v82, 0, v18
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v84, 0, v19
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s5, s2
	s_mov_b32 s23, 0
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(15)
	ds_store_b16 v81, v6
	s_waitcnt vmcnt(12)
	ds_store_b16 v81, v5 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v81, v10 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v81, v13 offset:3072
	ds_store_b16 v82, v2
	ds_store_b16 v82, v7 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v82, v11 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v82, v15 offset:3072
	ds_store_b16 v84, v3
	ds_store_b16 v84, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v84, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v84, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v85, v4
	s_waitcnt vmcnt(2)
	ds_store_b16 v85, v9 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v85, v14 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v85, v1 offset:3072
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v20, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s5, s6, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s5, s5, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s5, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s52, s5, -16
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s6, s48, 0x10008
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s6, v20
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s29
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s10, 1, v1
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_lshlrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v90, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s23, s52
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 16, v0
	s_mov_b32 s7, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s33, s50
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s33, s49
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s51
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s51
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s7, s27, s7
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s7, s7, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s8, s7, 31
	s_lshr_b32 s8, s8, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s8, s9, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s7, s7, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s23, s8, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s52, s52, s7
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s29
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s10, 1, v1
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s7, s33, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 32
	s_min_i32 s7, s27, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s8, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s8, s8, 28
	s_add_i32 s7, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s7, s7, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s52, s52, s7
	v_lshlrev_b32_e32 v1, 4, v0
	v_and_b32_e32 v90, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s23, s52
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr25
.LBB0_7:                                ; %Flow193
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v83, 15, v0
	v_and_b32_e32 v86, 0x70, v1
	v_and_b32_e32 v87, 64, v0
	v_and_b32_e32 v88, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v8 :: v_dual_and_b32 v89, 48, v0
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s7, s3, s24
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, 0, s2
	s_xor_b32 s9, s28, s7
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s7, s9, s7
	v_and_b32_e32 v2, 32, v0
	s_mul_i32 s9, s7, s24
	s_mul_i32 s8, s8, s6
	v_lshl_or_b32 v91, v83, 7, v86
	s_sub_i32 s3, s3, s9
	s_mul_hi_u32 s8, s6, s8
	s_abs_i32 s9, s3
	s_add_i32 s6, s6, s8
	v_lshl_or_b32 v1, v2, 6, v91
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s3, 31
	s_ashr_i32 s4, s4, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s11, s6, s2
	s_xor_b32 s4, s8, s4
	s_sub_i32 s8, s9, s11
	v_add_nc_u32_e32 v3, 0, v1
	v_xad_u32 v4, v1, 16, 0
	s_ashr_i32 s5, s5, 4
	s_add_i32 s9, s6, 1
	s_sub_i32 s11, s8, s2
	s_cmp_ge_u32 s8, s2
	s_clause 0x3
	s_load_b128 s[44:47], s[0:1], 0x8
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b32 s24, s[0:1], 0x7c
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_cselect_b32 s0, s9, s6
	v_xad_u32 v9, 0x60, v1, 0
	s_cselect_b32 s1, s11, s8
	ds_load_b128 v[17:20], v3
	ds_load_b128 v[21:24], v4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 4, v88
	v_xad_u32 v5, v1, 32, 0
	v_xad_u32 v6, v1, 48, 0
	v_xad_u32 v7, v1, 64, 0
	v_xad_u32 v8, 0x50, v1, 0
	v_xad_u32 v1, 0x70, v1, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s6, s0, 1
	s_cmp_ge_u32 s1, s2
	ds_load_b128 v[41:44], v9
	ds_load_b128 v[45:48], v1
	s_cselect_b32 s0, s6, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s33, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s0, s0, s4
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s1, s7, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s4
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[29:32], v6
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s55, s0, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 8, v1
	v_or_b32_e32 v5, 16, v1
	v_or_b32_e32 v6, 24, v1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v92, s51, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s26, v1
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v10, 0x60, v0
	v_and_b32_e32 v14, 1, v0
	v_lshlrev_b32_e32 v15, 2, v89
	v_mov_b32_e32 v145, 0xff800000
	v_and_b32_e32 v11, 60, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s15, v3
	v_lshrrev_b32_e32 v3, 3, v10
	v_lshlrev_b32_e32 v16, 5, v14
	v_lshrrev_b32_e32 v51, 5, v2
	v_lshl_or_b32 v10, v10, 3, v11
	v_and_b32_e32 v11, 14, v0
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v139, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, v10, v3
	v_lshlrev_b32_e32 v10, 1, v11
	v_lshl_or_b32 v11, v11, 7, v15
	v_mov_b32_e32 v141, 0
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[37:40], v8
	v_lshl_or_b32 v97, v14, 6, v3
	v_lshlrev_b32_e32 v3, 5, v0
	v_or3_b32 v98, v11, v16, v10
	v_lshlrev_b32_e32 v10, 2, v0
	v_lshlrev_b32_e32 v14, 3, v83
	v_and_b32_e32 v16, 2, v0
	v_and_b32_e32 v3, 0x180, v3
	v_lshrrev_b32_e32 v15, 2, v90
	v_and_b32_e32 v10, 52, v10
	v_xor_b32_e32 v14, v49, v14
	v_lshrrev_b32_e32 v49, 1, v90
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s48, s5, 3
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s25, s55, s27
	v_or3_b32 v3, v10, v16, v3
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s54, s55, s48
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s55, s55, s5
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, s26, v4
	v_cmp_gt_i32_e64 s5, s26, v5
	v_or3_b32 v100, v3, v49, v51
	v_lshrrev_b32_e32 v49, 1, v87
	v_cmp_gt_i32_e64 s6, s26, v6
	v_xor_b32_e32 v7, 48, v91
	v_xor_b32_e32 v8, 64, v91
	v_xor_b32_e32 v9, 0x50, v91
	v_add_nc_u32_e32 v56, 0, v49
	v_mov_b32_e32 v49, 0
	v_lshrrev_b32_e32 v50, 4, v2
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[64:65], null, s24, v83, v[1:2]
	v_mad_u64_u32 v[65:66], null, s22, v70, v[58:59]
	v_add_nc_u32_e32 v96, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v99, v15, v50, v14
	v_xor_b32_e32 v15, 28, v98
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v93, s51, v4
	v_add_nc_u32_e32 v94, s51, v5
	v_add_nc_u32_e32 v95, s51, v6
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v4, 0, v54
	v_xor_b32_e32 v5, 16, v91
	v_xor_b32_e32 v6, 32, v91
	v_xor_b32_e32 v12, 0x60, v91
	v_xor_b32_e32 v13, 0x70, v91
	v_xor_b32_e32 v1, 0x410, v97
	v_xor_b32_e32 v11, 4, v98
	v_xor_b32_e32 v10, 8, v98
	v_xor_b32_e32 v16, 12, v98
	v_xor_b32_e32 v52, 16, v98
	v_xor_b32_e32 v3, 20, v98
	v_xor_b32_e32 v14, 24, v98
	v_xor_b32_e32 v50, 0x120, v99
	v_xor_b32_e32 v51, 16, v100
	v_xor_b32_e32 v53, 32, v100
	v_xor_b32_e32 v54, 48, v100
	v_lshlrev_b32_e32 v2, 1, v2
	v_lshl_add_u32 v101, v83, 2, 0
	v_dual_mov_b32 v143, 0xff800000 :: v_dual_lshlrev_b32 v102, 1, v83
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_lshlrev_b32 v57, 2, v87
	v_add_nc_u32_e32 v117, 0, v15
	v_mov_b32_e32 v15, v49
	v_lshl_add_u32 v55, v90, 2, v96
	v_mad_u64_u32 v[67:68], null, s15, 24, v[64:65]
	v_mad_u64_u32 v[68:69], null, s22, 6, v[65:66]
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s2, s15, s33
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s7, s7, s13
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s22, v58
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v103, 0, v5
	v_add_nc_u32_e32 v104, 0, v6
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v105, 0, v7
	v_add_nc_u32_e32 v106, 0, v8
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v107, 0, v9
	v_add_nc_u32_e32 v108, 0, v12
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v109, 0, v13
	v_add_nc_u32_e32 v110, 0, v1
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_add_nc_u32 v111, 0, v11
	v_add_nc_u32_e32 v112, 0, v10
	v_add_nc_u32_e32 v113, 0, v16
	v_add_nc_u32_e32 v114, 0, v52
	v_add_nc_u32_e32 v115, 0, v3
	v_add_nc_u32_e32 v116, 0, v14
	v_add_nc_u32_e32 v118, 0, v50
	v_add_nc_u32_e32 v119, 0, v51
	v_add_nc_u32_e32 v120, 0, v53
	v_add_nc_u32_e32 v121, 0, v54
	v_add_nc_u32_e32 v123, v55, v102
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v124, v56, v102
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v11, v49
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_dual_mov_b32 v14, v49 :: v_dual_add_nc_u32 v125, v4, v57
	v_dual_mov_b32 v16, v49 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	v_mov_b32_e32 v8, v49
	v_subrev_nc_u32_e32 v126, s49, v92
	v_subrev_nc_u32_e32 v127, s49, v93
	v_subrev_nc_u32_e32 v128, s49, v94
	v_subrev_nc_u32_e32 v129, s49, v95
	v_add_nc_u32_e32 v130, s50, v92
	v_add_nc_u32_e32 v131, s50, v93
	v_add_nc_u32_e32 v132, s50, v94
	v_add_nc_u32_e32 v133, s50, v95
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v134, s15, 3, v64
	v_lshl_add_u32 v135, s15, 4, v64
	v_lshl_add_u32 v136, s22, 1, v65
	v_lshl_add_u32 v137, s22, 2, v65
	v_dual_mov_b32 v69, 0xff800000 :: v_dual_add_nc_u32 v122, v101, v2
	v_mov_b32_e32 v2, v49
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s53, s12, 0x3fb8aa3b
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s3, s3, s14
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s51, s7, s2
	s_and_b32 s31, s31, 0xffff
	s_and_b32 s47, s47, 0xffff
	s_add_i32 s51, s51, s3
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s44
	s_mov_b32 s37, s45
	s_mov_b32 s56, 0x76543210
	s_mov_b32 s40, s30
	s_mov_b32 s41, s31
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s44, s46
	s_mov_b32 s45, s47
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s2, s23, s24
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s49, s23, 1
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s2, s51, s2
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v161, s49, v70
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v149, s2, v64, 2
	v_add_lshl_u32 v150, s2, v134, 2
	v_add_lshl_u32 v151, s2, v135, 2
	v_add_lshl_u32 v152, s2, v67, 2
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s48, v161
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v149, 0x80000000, v149, s14
	v_cndmask_b32_e64 v150, 0x80000000, v150, s13
	v_cndmask_b32_e64 v151, 0x80000000, v151, s16
	v_cndmask_b32_e64 v152, 0x80000000, v152, s15
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s3, s49, s54
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x3
	buffer_load_b32 v153, v149, s[40:43], 0 offen
	buffer_load_b32 v150, v150, s[40:43], 0 offen
	buffer_load_b32 v151, v151, s[40:43], 0 offen
	buffer_load_b32 v152, v152, s[40:43], 0 offen
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s3, s3, s22
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s0, vcc_lo
	v_add_nc_u32_e32 v157, s3, v65
	.loc	1 965 35                        ; attention.py:965:35
	v_add_nc_u32_e32 v154, 0, v98
	v_add_nc_u32_e32 v158, s3, v136
	v_add_nc_u32_e32 v149, 0, v97
	s_waitcnt lgkmcnt(0)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s2, s23, 4
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v161, v161, 1, 1
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s2, s2, s55
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v171, s49, v73
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s2, s2, s22
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v162, s2, v58, 1
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v171, v171, 1, 1
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v153, 0xff800000, v153, s14
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v150, 0xff800000, v150, s13
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v151, 0xff800000, v151, s16
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v152, 0xff800000, v152, s15
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b32 v149, v153, v151 offset1:32
	ds_store_2addr_b32 v110, v150, v152 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v163, v154
	ds_load_b32 v164, v111
	ds_load_b32 v165, v112
	ds_load_b32 v166, v113
	ds_load_b32 v167, v114
	ds_load_b32 v168, v115
	ds_load_b32 v169, v116
	ds_load_b32 v170, v117
	v_add_nc_u32_e32 v159, s3, v137
	v_add_nc_u32_e32 v160, s3, v68
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v152
	v_cmp_neq_f32_e64 s2, 0xff800000, v153
	v_cmp_neq_f32_e64 s9, 0xff800000, v150
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s7, s15, s3
	s_and_b32 s8, s14, s2
	s_and_b32 s9, s13, s9
	v_cndmask_b32_e64 v152, 0, 1, s8
	v_cndmask_b32_e64 v153, 0, 1, s9
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	v_dual_mul_f32 v163, 0x3fb8aa3b, v163 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v164
	v_mul_f32_e32 v165, 0x3fb8aa3b, v165
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v160, 0x80000000, v160 :: v_dual_add_nc_u32 v155, 0, v99
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v166, 0x3fb8aa3b, v166
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_add_nc_u32 v156, 0, v100
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v151
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	v_cndmask_b32_e64 v151, 0, 1, s7
	.loc	1 965 25 is_stmt 1              ; attention.py:965:25
	v_dual_fmac_f32 v163, s53, v50 :: v_dual_fmac_f32 v164, s53, v51
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_dual_mul_f32 v167, 0x3fb8aa3b, v167 :: v_dual_mul_f32 v168, 0x3fb8aa3b, v168
	.loc	1 966 25 is_stmt 1              ; attention.py:966:25
	s_and_b32 vcc_lo, s16, vcc_lo
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v165, s53, v52 :: v_dual_fmac_f32 v166, s53, v53
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v150, 0, 1, vcc_lo
	v_lshlrev_b16 v150.h, 8, v151.l
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v167, s53, v54 :: v_dual_fmac_f32 v168, s53, v55
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v150.l, 8, v150.l
	v_or_b16 v150.h, v153.l, v150.h
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s52
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v150.l, v152.l, v150.l
	ds_store_b16 v155, v150
	ds_store_b16_d16_hi v118, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v150, v156
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v150, v119
	ds_load_u8_d16 v151, v120
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v151, v121
	ds_load_u8_d16 v152, v156 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v152, v119 offset:64
	ds_load_u8_d16 v153, v120 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v153, v121 offset:64
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v155, 0x3fb8aa3b, v169 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v170
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v170, v143, v143 :: v_dual_fmac_f32 v155, s53, v56
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v156, s53, v57 :: v_dual_max_f32 v57, v66, v66
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v56.h, 0
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v169, v69, v69
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v50.l, 1, v150.l
	v_and_b16 v50.h, 1, v150.h
	v_and_b16 v51.l, 1, v151.l
	v_and_b16 v51.h, 1, v151.h
	v_and_b16 v52.l, 1, v152.l
	v_and_b16 v52.h, 1, v152.h
	v_and_b16 v53.l, 1, v153.l
	v_and_b16 v53.h, 1, v153.h
	v_cmp_eq_u16_e64 s3, 1, v50.l
	v_cmp_eq_u16_e64 s11, 1, v50.h
	v_cmp_eq_u16_e64 s12, 1, v51.l
	v_cmp_eq_u16_e64 s13, 1, v51.h
	v_cmp_eq_u16_e64 s14, 1, v52.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v150, 0xff800000, v163, s3
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s15, 1, v52.h
	v_cmp_eq_u16_e64 s16, 1, v53.l
	v_cmp_eq_u16_e64 s17, 1, v53.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v151, 0xff800000, v164, s11
	v_cndmask_b32_e64 v152, 0xff800000, v165, s12
	v_cndmask_b32_e64 v153, 0xff800000, v166, s13
	v_cndmask_b32_e64 v163, 0xff800000, v167, s14
	v_cndmask_b32_e64 v164, 0xff800000, v168, s15
	v_cndmask_b32_e64 v155, 0xff800000, v155, s16
	v_cndmask_b32_e64 v156, 0xff800000, v156, s17
	ds_store_b32 v154, v150
	ds_store_b32 v111, v151
	ds_store_b32 v112, v152
	ds_store_b32 v113, v153
	ds_store_b32 v114, v163
	ds_store_b32 v115, v164
	ds_store_b32 v116, v155
	ds_store_b32 v117, v156
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v51, v157, s[44:47], 0 offen
	buffer_load_u8 v52, v158, s[44:47], 0 offen
	buffer_load_u8 v53, v159, s[44:47], 0 offen
	buffer_load_u8 v54, v160, s[44:47], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v50, 0x80000000, v162, s0
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[157:158], v149 offset1:32
	ds_load_2addr_b32 v[159:160], v110 offset1:32
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v162, v145, v145 :: v_dual_max_f32 v165, v146, v146
	v_dual_max_f32 v166, v147, v147 :: v_dual_max_f32 v167, v148, v148
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v55, v50, s[28:31], 0 offen
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v148, v155, v156 :: v_dual_add_nc_u32 v145, v101, v87
	v_max3_f32 v146, v150, v151, v152
	v_max3_f32 v147, v153, v163, v164
.Ltmp2:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v50, v96, v102
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v149, s49, v71
	v_or_b32_e32 v154, s49, v72
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v146, v146, v147, v148
.Ltmp4:
	.loc	1 1018 23                       ; attention.py:1018:23
	s_barrier
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v175, v149, 1, 1
	v_lshl_or_b32 v176, v154, 1, 1
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v168, v144, v144
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v147, v146, s56, 0xfedcba98 op_sel:[1,0]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v148, v157, v157 :: v_dual_mov_b32 v149, v159
	v_dual_max_f32 v154, v159, v159 :: v_dual_mov_b32 v177, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v146, v142, v146, v147
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v147, v157 :: v_dual_max_f32 v178, v158, v158
	v_mov_b32_e32 v179, v160
	v_mov_b32_dpp v149, v149 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp9:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v151, v151, v146
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v147, v147 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v150, v150, v146
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v177, v177 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v164, v164, v146
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v180, v160, v160 :: v_dual_sub_f32 v181, v142, v146
	v_max_f32_e32 v147, v147, v147
.Ltmp15:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v153, v153, v146
	v_dual_sub_f32 v152, v152, v146 :: v_dual_max_f32 v149, v149, v149
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v179, v179 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v156, v156, v146 :: v_dual_max_f32 v177, v177, v177
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v164, v164
	v_mov_b32_e32 v142, v146
	v_exp_f32_e32 v151, v151
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v182, v148, v147
.Ltmp19:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v153, v153
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v163, v163, v146
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v181, v181
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v150, v150
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v179, v179, v179
.Ltmp21:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v156, v156
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v149, v154, v149
.Ltmp23:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v155, v155, v146
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v152, v152
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v154, v178, v177
.Ltmp25:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v163, v163
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v177, v180, v179
.Ltmp27:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v148, 0, v151, s11
	v_cndmask_b32_e64 v151, 0, v153, s13
	v_cndmask_b32_e64 v153, 0, v164, s15
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v164, v149
.Ltmp29:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v155, v155
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v146, 0, v181, s2
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v147, 0, v150, s3
	v_cndmask_b32_e64 v156, 0, v156, s17
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v178, v154 :: v_dual_mov_b32 v179, v177
.Ltmp31:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v150, 0, v152, s12
	v_cndmask_b32_e64 v152, 0, v163, s14
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v122, v146
	s_waitcnt lgkmcnt(0)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v155, 0, v155, s16
	.loc	1 1018 23                       ; attention.py:1018:23
	s_barrier
	ds_load_b32 v180, v145
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v145, v147, 16, 1
	v_bfe_u32 v146, v148, 16, 1
	v_bfe_u32 v183, v151, 16, 1
	v_bfe_u32 v185, v153, 16, 1
	v_bfe_u32 v187, v156, 16, 1
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v163, v182
.Ltmp33:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v181, v150, 16, 1
	v_bfe_u32 v184, v152, 16, 1
	v_cmp_o_f32_e64 s2, v147, v147
	v_cmp_o_f32_e64 s3, v148, v148
	v_cmp_o_f32_e64 s12, v151, v151
	v_cmp_o_f32_e64 s14, v153, v153
	v_bfe_u32 v186, v155, 16, 1
	v_cmp_o_f32_e64 s16, v156, v156
	v_add3_u32 v145, v147, v145, 0x7fff
	v_add3_u32 v146, v148, v146, 0x7fff
	v_add3_u32 v148, v151, v183, 0x7fff
	v_add3_u32 v151, v153, v185, 0x7fff
	v_add3_u32 v153, v156, v187, 0x7fff
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v156, v164, v164
	v_max_f32_e32 v164, v179, v179
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v163, v163 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v150, v150
	v_add3_u32 v147, v150, v181, 0x7fff
	v_cmp_o_f32_e64 s13, v152, v152
	v_add3_u32 v150, v152, v184, 0x7fff
	v_cmp_o_f32_e64 s15, v155, v155
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v152, v155, v186, 0x7fff
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v155, v163, v163 :: v_dual_max_f32 v164, v177, v164
.Ltmp40:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v56.l, 0x7fff, v145.h, s2
	v_cndmask_b16 v145.l, 0x7fff, v146.h, s3
	v_cndmask_b16 v145.h, 0x7fff, v147.h, s11
	v_cndmask_b16 v146.l, 0x7fff, v148.h, s12
	v_cndmask_b16 v146.h, 0x7fff, v150.h, s13
	v_cndmask_b16 v148.l, 0x7fff, v153.h, s16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v147.l, 0x7fff, v151.h, s14
	v_cndmask_b16 v147.h, 0x7fff, v152.h, s15
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v179, v149, v156
.Ltmp42:
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_store_b16 v123, v56
	ds_store_b16 v123, v145 offset:128
	ds_store_b16_d16_hi v123, v145 offset:256
	ds_store_b16 v123, v146 offset:384
	ds_store_b16_d16_hi v123, v146 offset:512
	ds_store_b16 v123, v147 offset:640
	ds_store_b16_d16_hi v123, v147 offset:768
	ds_store_b16 v123, v148 offset:896
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v148, v164 :: v_dual_max_f32 v163, v178, v178
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v178, v182, v155
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v146, v179
.Ltmp46:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v180
	v_mul_f32_e32 v10, v10, v180
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v154, v163
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v145, v178 :: v_dual_mul_f32 v16, v16, v180
	v_mov_b32_dpp v148, v148 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v147, v163
	v_mov_b32_dpp v145, v145 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v14, v14, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v9, v180 :: v_dual_max_f32 v146, v146, v146
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v147, v147 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v2, v2, v180 :: v_dual_max_f32 v145, v145, v145
	v_mul_f32_e32 v4, v4, v180
	v_dual_mul_f32 v13, v13, v180 :: v_dual_max_f32 v146, v179, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v147, v147, v147 :: v_dual_max_f32 v148, v148, v148
	v_max_f32_e32 v145, v178, v145
.Ltmp53:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v11, v11, v180
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v172.h, v56.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v147, v163, v147 :: v_dual_max_f32 v148, v164, v148
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v163, v145
.Ltmp56:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v15, v15, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v6, v180 :: v_dual_mov_b32 v177, v147
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v178, v148
	v_mov_b32_e32 v164, v146
	v_mov_b32_dpp v163, v163 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v180
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v177, v177 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v1, v1, v180
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v164, v164 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v163, v163, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v177, v177, v177 :: v_dual_max_f32 v178, v178, v178
.Ltmp63:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v180
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v164, v164, v164 :: v_dual_max_f32 v163, v145, v163
.Ltmp65:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v173.h, v56.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v178, v148, v178 :: v_dual_mul_f32 v5, v5, v180
	v_dual_max_f32 v164, v146, v164 :: v_dual_max_f32 v177, v147, v177
.Ltmp67:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v148, v167, v178 :: v_dual_max_f32 v145, v162, v163
	v_dual_max_f32 v146, v165, v164 :: v_dual_max_f32 v147, v166, v177
	v_max_f32_e32 v178, v57, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v160, v160, v148 :: v_dual_sub_f32 v157, v157, v145
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v179, v169, v164 :: v_dual_sub_f32 v158, v158, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v164, v66, v178
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v159, v159, v146
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v157, v157
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v162, v69, v179
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v158, v158
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v166, v168, v163
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v159, v159
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v177, v170, v177
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v180, v162
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v174.h, v56.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v160, v160
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v157, 0, v157, s8
	.loc	1 1019 30                       ; attention.py:1019:30
	s_barrier
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e32 v158, 0, v158, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v161
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v159, 0, v159, s9
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v165, v157
.Ltmp69:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v57, v144, v166
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_load_u16_d16 v149, v124
	ds_load_u16_d16 v150, v124 offset:128
	ds_load_u16_d16 v151, v124 offset:256
	ds_load_u16_d16 v152, v124 offset:384
	ds_load_u16_d16 v153, v124 offset:512
	ds_load_u16_d16 v154, v124 offset:640
	ds_load_u16_d16 v155, v124 offset:768
	ds_load_u16_d16 v156, v124 offset:896
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v160, 0, v160, s7
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v168, v159
.Ltmp71:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v124 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v124 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v124 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v124 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v124 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v124 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v155, v124 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v156, v124 offset:960
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v167, v57
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v168, v168 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v163, v143, v177 :: v_dual_mov_b32 v170, v160
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v170, v170 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v56.l, 4, v51.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(3)
	v_and_b16 v57.h, v52.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v182, 15, v53
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v165, v165 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v169, v158
.Ltmp77:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v172.l, 4, v52.l
	v_lshrrev_b16 v173.l, 4, v53.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v162, v157, v165 :: v_dual_and_b32 v181, 15, v52
.Ltmp79:
	.loc	1 986 32                        ; attention.py:986:32
	v_dual_cndmask_b32 v52, 0, v56 :: v_dual_and_b32 v165, 15, v51
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v175
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v57.l, v51.l, 15
	v_and_b16 v157.l, v53.l, 15
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v55
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v157.h, v54.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e32 v53, 0, v172, vcc_lo
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v176
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v174.l, 4, v54.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v56, -16, v165
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v183, 15, v54
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v169, v169 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v54, 0, v173, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v171
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v161, -16, v181
	v_or_b32_e32 v171, -16, v182
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v55, 0, v174, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v57.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e32 v56, v165, v56, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v57.h
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v172, -16, v183
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v165, -16, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v57, v181, v161, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 vcc_lo, 7, v157.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v161, v182, v171, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 vcc_lo, 7, v157.h
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v157, v183, v172, vcc_lo
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v52
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v172, -16, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v52, v52, v165, vcc_lo
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v56, v56, v51
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v171, -16, v53
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v53
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v157, v51, v157
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v53, v53, v171, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v54
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v52, v52, v51
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s7, v157, v157
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v54, v54, v172, vcc_lo
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b32_e32 v173, -16, v55
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v55
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v57, v57, v51
	v_mul_f32_e32 v53, v53, v51
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v172, v157, 16, 1
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v55, v55, v173, vcc_lo
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_bfe_u32 v165, v57, 16, 1
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v54, v51, v54
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s2, v57, v57
	v_add3_u32 v57, v57, v165, 0x7fff
	v_cmp_o_f32_e64 s8, v52, v52
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v161, v161, v51
	v_mul_f32_e32 v55, v51, v55
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v51, v56, 16, 1
	v_add3_u32 v157, v157, v172, 0x7fff
	v_cmp_o_f32_e64 s11, v54, v54
	v_bfe_u32 v171, v161, 16, 1
	v_cmp_o_f32_e64 s3, v161, v161
	v_add3_u32 v51, v56, v51, 0x7fff
	v_bfe_u32 v56, v52, 16, 1
	v_bfe_u32 v172, v55, 16, 1
	v_add3_u32 v161, v161, v171, 0x7fff
	v_bfe_u32 v171, v54, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v51.h, vcc_lo
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
	v_mov_b32_e32 v144, v166
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v165, v53, 16, 1
	v_add3_u32 v56, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s9, v53, v53
	v_cmp_o_f32_e64 s12, v55, v55
	v_add3_u32 v54, v54, v171, 0x7fff
	v_add3_u32 v53, v53, v165, 0x7fff
	v_add3_u32 v55, v55, v172, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v157.h, s7
	v_cndmask_b16 v53.l, 0x7fff, v56.h, s8
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v56, v158, v169
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v157, v162
.Ltmp84:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v54.h, 0x7fff, v55.h, s12
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v55, v159, v168 :: v_dual_cndmask_b32 v176, 0, v167
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v159, v56
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v51.h, 0x7fff, v57.h, s2
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s9
	v_cndmask_b16 v52.l, 0x7fff, v161.h, s3
	ds_store_b16 v125, v51
	ds_store_b16 v125, v53 offset:128
	ds_store_b16_d16_hi v125, v51 offset:512
	ds_store_b16_d16_hi v125, v53 offset:640
	ds_store_b16 v125, v52 offset:1024
	ds_store_b16 v125, v54 offset:1152
	ds_store_b16_d16_hi v125, v52 offset:1536
	ds_store_b16_d16_hi v125, v54 offset:1664
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v162, v157
.Ltmp90:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v69
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v57, v160, v170
.Ltmp92:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v173, v163
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v54, v56, v159
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v56, v52
.Ltmp95:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v163, v50 offset:1536
	ds_load_u16_d16 v170, v50 offset:1344
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v158, v55
.Ltmp97:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v51, v164
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v174, v54
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v52, v56
.Ltmp100:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v56, 0, v180, vcc_lo
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v160, v57
	v_mov_b32_dpp v158, v158 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v143
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v174, v174 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v160, v160 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v143, 0, v173, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v66
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v55, v158
	v_add_f32_e32 v55, v57, v160
.Ltmp106:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v158, v50 offset:256
	ds_load_u16_d16 v159, v50 offset:512
	ds_load_u16_d16 v160, v50 offset:768
	ds_load_u16_d16 v161, v50 offset:1024
	ds_load_u16_d16 v162, v50 offset:1280
	ds_load_u16_d16 v157, v50
	ds_load_u16_d16 v165, v50 offset:64
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v163, v50 offset:1664
	ds_load_u16_d16 v164, v50 offset:1792
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v170, v50 offset:1472
	ds_load_u16_d16 v171, v50 offset:1600
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v158, v50 offset:384
	ds_load_u16_d16 v167, v50 offset:576
	ds_load_u16_d16 v168, v50 offset:832
	ds_load_u16_d16 v169, v50 offset:1088
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v157, v50 offset:128
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v165, v50 offset:192
	ds_load_u16_d16 v166, v50 offset:320
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v164, v50 offset:1920
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v171, v50 offset:1728
	ds_load_u16_d16 v172, v50 offset:1856
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v66, 0, v51 :: v_dual_mov_b32 v57, v53
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v54, v54, v174
.Ltmp108:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v159, v50 offset:640
	ds_load_u16_d16_hi v160, v50 offset:896
	ds_load_u16_d16_hi v161, v50 offset:1152
	ds_load_u16_d16_hi v162, v50 offset:1408
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v169, v50 offset:1216
	ds_load_u16_d16_hi v168, v50 offset:960
	ds_load_u16_d16_hi v167, v50 offset:704
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v166, v50 offset:448
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v172, v50 offset:1984
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v173, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v53, v57
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v57, v52
	v_mov_b32_dpp v173, v173 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[157:164], v[149:156], v[9:16]
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v50, v52, v57 :: v_dual_mov_b32 v175, v55
	v_add_f32_e32 v52, v54, v173
.Ltmp114:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[165:172], v[149:156], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v50, v138, v176
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v175, v175 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v69, v53 :: v_dual_fmac_f32 v52, v140, v143
	v_dual_mov_b32 v143, v177 :: v_dual_mov_b32 v138, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v55, v55, v175
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v140, v52
	v_dual_mov_b32 v174, v55 :: v_dual_add_f32 v51, v53, v69
	v_mov_b32_e32 v69, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v174, v174 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp118:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v51, v139, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v55, v174
	v_mov_b32_e32 v139, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v53, v141, v66 :: v_dual_mov_b32 v66, v178
	v_mov_b32_e32 v141, v53
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v50, s23, v70
	v_or_b32_e32 v51, s23, v71
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s23, s25
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v52, s23, v72
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s13, s2, s34
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s27, v50
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v54, s23, v74
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s2, s27, v51
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v50, s13, v59, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v53, s23, v73
	v_or_b32_e32 v55, s23, v75
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s3, s27, v52
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v51, s13, v78, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v56, s23, v76
	v_or_b32_e32 v57, s23, v77
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s8, s27, v54
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v52, s13, v79, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, s2
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s27, v53
	v_cmp_gt_i32_e64 s9, s27, v55
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v54, s13, v80, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, s3
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s11, s27, v56
	v_cmp_gt_i32_e64 s12, s27, v57
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v53, s13, v60, 1
	v_add_lshl_u32 v55, s13, v61, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, s8
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v56, s13, v62, 1
	v_add_lshl_u32 v57, s13, v63, 1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s2, s18, s7
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, s9
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s18, s11
	s_and_b32 s2, s18, s12
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x7
	buffer_load_u16 v149, v50, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v56, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v57, s[36:39], 0 offen
	v_add_nc_u32_e32 v150, 0, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v50, v49
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s10
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v81, v149
	s_waitcnt vmcnt(6)
	ds_store_b16 v81, v54 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v82, v51
	s_waitcnt vmcnt(4)
	ds_store_b16 v82, v55 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v84, v52
	s_waitcnt vmcnt(2)
	ds_store_b16 v84, v56 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v85, v53
	s_waitcnt vmcnt(0)
	ds_store_b16 v85, v57 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v55, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[149:152], v150
	ds_load_b128 v[153:156], v103
	ds_load_b128 v[157:160], v104
	ds_load_b128 v[161:164], v105
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v56, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[165:168], v106
	ds_load_b128 v[169:172], v107
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v57, v56
	v_mov_b32_e32 v56, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[173:176], v108
	ds_load_b128 v[177:180], v109
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[149:156], v[17:24], v[50:57]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v149, s23, v83
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[157:164], v[25:32], v[50:57]
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s2, s27, v149
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[165:172], v[33:40], v[50:57]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s14, s1, s2
	s_and_b32 s13, s4, s2
	s_and_b32 s16, s5, s2
	s_and_b32 s15, s6, s2
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[173:180], v[41:48], v[50:57]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v149, v92
	v_cmp_le_i32_e64 s2, v149, v93
	v_cmp_le_i32_e64 s3, v149, v94
	v_cmp_le_i32_e64 s7, v149, v95
	s_and_not1_b32 s9, s14, exec_lo
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s8, vcc_lo, s14
	s_and_b32 s2, s2, s13
	s_and_b32 s3, s3, s16
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s11, s13, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s14, s9, s8
	s_or_b32 s13, s11, s2
	s_and_not1_b32 s2, s16, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s8, s15, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s16, s2, s3
	s_or_b32 s15, s8, s7
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v149, v126
	v_cmp_ge_i32_e64 s2, v149, v127
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v149, v130
	v_cmp_le_i32_e64 s8, v149, v131
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v149, v128
	v_cmp_ge_i32_e64 s9, v149, v129
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s11, v149, v132
	v_cmp_le_i32_e64 s12, v149, v133
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s2, s2, s8
	s_and_b32 s7, s7, s14
	s_and_b32 s2, s2, s13
	s_and_b32 s3, s3, s11
	s_and_b32 s8, s9, s12
	s_and_b32 s3, s3, s16
	s_and_b32 s8, s8, s15
	s_and_not1_b32 s9, s14, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s11, s13, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s14, s9, s7
	s_or_b32 s13, s11, s2
	s_and_not1_b32 s2, s16, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s7, s15, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s16, s2, s3
	s_or_b32 s15, s7, s8
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v25, v90
.LBB0_15:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v0, 1, v0
	v_lshrrev_b32_e32 v17, 3, v87
	v_add_nc_u32_e32 v19, 0, v88
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v18, 2, v87
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v19, v[50:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, v18, v83
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v29, 1, v89
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v0, v0, v17, v86
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s33, v34
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v32, 1, v29
	v_or_b32_e32 v31, 2, v29
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s22, v29
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v33, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s26, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s22, v32
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 39, v29
	v_or_b32_e32 v17, 38, v29
	v_or_b32_e32 v18, 37, v29
	v_or_b32_e32 v19, 36, v29
	v_or_b32_e32 v20, 35, v29
	v_or_b32_e32 v21, 34, v29
	v_or_b32_e32 v22, 33, v29
	v_or_b32_e32 v23, 32, v29
	v_or_b32_e32 v24, 7, v29
	v_or_b32_e32 v26, 6, v29
	v_or_b32_e32 v27, 5, v29
	v_or_b32_e32 v28, 4, v29
	v_or_b32_e32 v30, 3, v29
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s22, v31
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s15, s0, s15
	s_and_b32 s14, s0, s14
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s22, v28
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v37, null, v33, v33, v10
	v_div_scale_f32 v38, null, v33, v33, v11
	v_div_scale_f32 v35, null, v33, v33, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v37
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v43, null, v33, v33, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v35
	v_div_scale_f32 v39, s1, v10, v33, v10
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v44, s2, v11, v33, v11
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v49, -v38, v42, 1.0
	v_div_scale_f32 v36, vcc_lo, v9, v33, v9
	v_fma_f32 v47, -v35, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_fmac_f32 v42, v49, v42
	v_fma_f32 v48, -v43, v46, 1.0
	v_div_scale_f32 v50, s3, v12, v33, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v39, v41
	v_div_scale_f32 v45, null, v33, v33, v13
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v40, v47, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v54, -v37, v51, v39
	v_mul_f32_e32 v52, v44, v42
	v_rcp_f32_e32 v47, v45
	v_mul_f32_e32 v57, v50, v46
	v_div_scale_f32 v53, null, v33, v33, v14
	v_fmac_f32_e32 v51, v54, v41
	v_fma_f32 v55, -v38, v52, v44
	v_mul_f32_e32 v49, v36, v40
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s22, v30
	v_cmp_gt_i32_e64 s10, s22, v27
	v_cmp_gt_i32_e64 s9, s22, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v55, v42
	v_fma_f32 v48, -v35, v49, v36
	v_fma_f32 v56, -v45, v47, 1.0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s22, v24
	v_cmp_gt_i32_e64 s8, s22, v20
	v_cmp_gt_i32_e64 s7, s22, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v48, v40
	v_fma_f32 v48, -v43, v57, v50
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s0, s13
	s_and_b32 s12, s0, s12
	s_and_b32 s11, s0, s11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v35, v49, v36
	v_fma_f32 v36, -v37, v51, v39
	v_fma_f32 v37, -v38, v52, v44
	v_div_scale_f32 v38, s4, v13, v33, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v40, v49
	v_div_scale_f32 v40, null, v33, v33, v15
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v53
	v_div_fmas_f32 v36, v36, v41, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v35, v33, v9
	v_div_fmas_f32 v37, v37, v42, v52
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v36, v33, v10
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v37, v33, v11
	v_fma_f32 v36, -v53, v39, 1.0
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s10, s0, s10
	s_and_b32 s9, s0, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v44, -v40, v42, 1.0
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s2, v14, v33, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v44, v42
	v_fmac_f32_e32 v47, v56, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s16, v9, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s0, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s17, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v35, v38, v47
	v_fmac_f32_e32 v57, v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v45, v35, v38
	v_fma_f32 v37, -v43, v57, v50
	v_div_scale_f32 v43, null, v33, v33, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v47
	v_div_fmas_f32 v37, v37, v46, v57
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v41, v36, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v37, v33, v12
	v_fma_f32 v37, -v45, v35, v38
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v38, -v53, v41, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v37, v47, v35
	v_div_scale_f32 v37, null, v33, v33, v1
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v47, null, v33, v33, v2
	v_rcp_f32_e32 v44, v37
	v_div_fixup_f32 v13, v35, v33, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v43, v45, 1.0
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v50, s2, v1, v33, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v35, v45
	v_div_scale_f32 v35, s4, v16, v33, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v48, -v37, v44, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s18, v12, v12
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v48, v44
	v_div_scale_f32 v48, null, v33, v33, v3
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s5, v2, v33, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v48
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, s3, v15, v33, v15
	v_fma_f32 v36, -v53, v41, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v38, v42
	v_mul_f32_e32 v53, v50, v44
	v_div_fmas_f32 v36, v36, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v40, v46, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v36, v33, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v39, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v40, v46, v38
	v_fma_f32 v40, -v48, v52, 1.0
	v_fma_f32 v38, -v37, v53, v50
	v_div_fmas_f32 v36, v36, v42, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v52, v40, v52
	v_div_scale_f32 v40, s3, v3, v33, v3
	v_mul_f32_e32 v41, v35, v45
	v_fmac_f32_e32 v53, v38, v44
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v36, v33, v15
	v_div_scale_f32 v36, null, v33, v33, v5
	v_fma_f32 v39, -v43, v41, v35
	v_fma_f32 v37, -v37, v53, v50
	v_div_scale_f32 v46, null, v33, v33, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v39, v45
	v_mul_f32_e32 v39, v51, v49
	v_fma_f32 v35, -v43, v41, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v47, v39, v51
	v_div_fmas_f32 v35, v35, v45, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v39, v38, v49 :: v_dual_mul_f32 v38, v40, v52
	v_div_scale_f32 v41, null, v33, v33, v4
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v47, v39, v51
	v_fma_f32 v43, -v48, v38, v40
	v_div_fmas_f32 v37, v37, v44, v53
	v_rcp_f32_e32 v44, v41
	v_div_fixup_f32 v16, v35, v33, v16
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v38, v43, v52
	v_div_fixup_f32 v1, v37, v33, v1
	v_div_fmas_f32 v39, v42, v49, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v48, v38, v40
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v37, -v41, v44, 1.0
	v_div_fixup_f32 v2, v39, v33, v2
	v_div_scale_f32 v39, null, v33, v33, v7
	v_div_fmas_f32 v35, v35, v52, v38
	v_rcp_f32_e32 v38, v36
	v_fmac_f32_e32 v44, v37, v44
	v_div_scale_f32 v37, null, v33, v33, v6
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v40, vcc_lo, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v37
	v_div_fixup_f32 v3, v35, v33, v3
	v_fma_f32 v52, -v46, v48, 1.0
	v_fma_f32 v35, -v36, v38, 1.0
	v_mul_f32_e32 v45, v40, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v39, v43, 1.0
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, s2, v5, v33, v5
	v_fma_f32 v47, -v37, v42, 1.0
	v_fma_f32 v49, -v41, v45, v40
	v_fmac_f32_e32 v43, v50, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v35, v38
	v_div_scale_f32 v50, s4, v7, v33, v7
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s3, v6, v33, v6
	v_fmac_f32_e32 v45, v49, v44
	v_fma_f32 v49, -v36, v51, v35
	v_fmac_f32_e32 v48, v52, v48
	v_div_scale_f32 v52, s5, v8, v33, v8
	v_dual_mul_f32 v53, v47, v42 :: v_dual_mul_f32 v54, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v49, v38
	v_mul_f32_e32 v55, v52, v48
	v_fma_f32 v40, -v41, v45, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v37, v53, v47
	v_fma_f32 v49, -v39, v54, v50
	v_fma_f32 v35, -v36, v51, v35
	v_fma_f32 v36, -v46, v55, v52
	v_div_fmas_f32 v40, v40, v44, v45
	v_fmac_f32_e32 v53, v41, v42
	v_fmac_f32_e32 v54, v49, v43
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v36, v48
	v_div_fmas_f32 v35, v35, v38, v51
	v_fma_f32 v37, -v37, v53, v47
	v_fma_f32 v36, -v39, v54, v50
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v46, v55, v52
	v_div_fixup_f32 v4, v40, v33, v4
	v_div_fmas_f32 v37, v37, v42, v53
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v35, v33, v5
	v_div_fmas_f32 v36, v36, v43, v54
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v37, v33, v6
	v_div_fmas_f32 v38, v38, v48, v55
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v37, v12, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v33, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v36, v11, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v38, v33, v8
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_nc_u32_e32 v33, s19, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v34, v9, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v34, v9, v34, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, v33, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v35.h, 0
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s16
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s16, v10, v10
	v_add3_u32 v10, v11, v36, 0x7fff
	v_add3_u32 v11, v12, v37, 0x7fff
	v_bfe_u32 v12, v14, 16, 1
	v_cmp_o_f32_e64 s19, v8, v8
	v_cndmask_b16 v34.h, 0x7fff, v9.h, s16
	v_bfe_u32 v9, v13, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s17
	v_cmp_o_f32_e64 s16, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s18
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_bfe_u32 v14, v2, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s16
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s17
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s18, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s16, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v1, v1
	v_add3_u32 v1, v2, v14, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s18
	v_cmp_o_f32_e64 s18, v2, v2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s16
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v12.h, s17
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s18
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e64 s16, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s18, v5, v5
	v_bfe_u32 v5, v6, 16, 1
	v_bfe_u32 v12, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s16
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s17
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s18
	v_add3_u32 v4, v6, v5, 0x7fff
	v_add3_u32 v5, v7, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v7, v7
	v_cmp_eq_u32_e64 s18, 0, v25
	v_mov_b32_e32 v7, 0x5410
	v_cmp_o_f32_e64 s16, v6, v6
	v_bfe_u32 v6, v8, 16, 1
	v_mov_b32_e32 v12, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s17
	v_cndmask_b32_e64 v7, 0x1054, v7, s18
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s16
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cndmask_b32_e64 v12, 0x3276, v12, s18
	s_mov_b32 s16, 0x76543210
	v_lshl_or_b32 v5, v7, 8, v7
	v_cndmask_b32_e64 v7, v34, v9, s18
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s19
	v_lshl_or_b32 v6, v12, 8, v12
	v_cndmask_b32_e64 v8, v9, v34, s18
	v_and_b32_e32 v5, 0x540054, v5
	v_cndmask_b32_e64 v9, v11, v10, s18
	v_cndmask_b32_e64 v10, v10, v11, s18
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v11, v3, v1, s18
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v1, v1, v3, s18
	v_cndmask_b32_e64 v3, v4, v2, s18
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e64 v2, v2, v4, s18
	v_permlanex16_b32 v4, v7, s16, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x5040504, v5
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v29, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v6, 0x7060706, v6
	v_permlanex16_b32 v7, v10, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v4, v8, v5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v25, v33, v32, 1
	v_add_lshl_u32 v29, v33, v31, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s22, v23
	v_cmp_gt_i32_e64 s2, s22, v22
	v_cmp_gt_i32_e32 vcc_lo, s22, v21
	v_cmp_gt_i32_e64 s3, s22, v18
	v_cmp_gt_i32_e64 s1, s22, v17
	v_cmp_gt_i32_e64 s5, s22, v0
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v4, v4, v8, v6
	v_perm_b32 v8, v7, v9, v5
	v_perm_b32 v7, v7, v9, v6
	v_perm_b32 v9, v1, v11, v5
	v_perm_b32 v5, v2, v3, v5
	v_perm_b32 v2, v2, v3, v6
	v_mov_b16_e32 v3.l, v10.h
	v_mov_b16_e32 v3.h, v35.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v25, 0x80000000, v25, s14
	v_cndmask_b32_e64 v29, 0x80000000, v29, s13
	buffer_store_b16 v10, v16, s[20:23], 0 offen
	v_add_lshl_u32 v10, v33, v30, 1
	s_clause 0x1
	buffer_store_b16 v3, v25, s[20:23], 0 offen
	buffer_store_b16 v4, v29, s[20:23], 0 offen
	v_add_lshl_u32 v3, v33, v28, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v35.l, v4.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v10, s12
	v_add_lshl_u32 v10, v33, v27, 1
	v_add_lshl_u32 v16, v33, v26, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v1, v11, v6
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v35.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v10, 0x80000000, v10, s10
	v_cndmask_b32_e64 v16, 0x80000000, v16, s9
	s_clause 0x1
	buffer_store_b16 v35, v4, s[20:23], 0 offen
	buffer_store_b16 v8, v3, s[20:23], 0 offen
	v_add_lshl_u32 v3, v33, v24, 1
	v_add_lshl_u32 v4, v33, v23, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v7.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v10, s[20:23], 0 offen
	buffer_store_b16 v7, v16, s[20:23], 0 offen
	v_add_lshl_u32 v7, v33, v22, 1
	v_add_lshl_u32 v8, v33, v21, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s4, s0, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.h, v35.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v9.h
	v_mov_b16_e32 v13.h, v35.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_store_b16 v6, v3, s[20:23], 0 offen
	buffer_store_b16 v9, v4, s[20:23], 0 offen
	v_add_lshl_u32 v3, v33, v20, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v1.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v13, v7, s[20:23], 0 offen
	buffer_store_b16 v1, v8, s[20:23], 0 offen
	v_add_lshl_u32 v1, v33, v19, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v33, v18, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v33, v17, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v33, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v35.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v5.h
	v_mov_b16_e32 v15.h, v35.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v14.h, v35.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v12, v3, s[20:23], 0 offen
	buffer_store_b16 v5, v1, s[20:23], 0 offen
	buffer_store_b16 v15, v4, s[20:23], 0 offen
	buffer_store_b16 v2, v6, s[20:23], 0 offen
	buffer_store_b16 v14, v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp121:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 188
		.amdhsa_next_free_sgpr 57
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_vgpr, 188
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11236
; TotalNumSgprs: 59
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 59
; NumVGPRsForWavesPerEU: 188
; Occupancy: 8
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
