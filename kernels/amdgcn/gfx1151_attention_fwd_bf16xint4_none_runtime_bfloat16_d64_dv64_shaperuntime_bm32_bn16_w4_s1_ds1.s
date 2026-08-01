	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[24:27], s[0:1], 0x4c
	s_load_b32 s34, s[0:1], 0x5c
	s_load_b64 s[20:21], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v67, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v58, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v72, 6, v67
	v_or_b32_e32 v74, 10, v67
	v_or_b32_e32 v75, 12, v67
	v_or_b32_e32 v73, 8, v67
	v_or_b32_e32 v76, 14, v67
	v_or_b32_e32 v70, 2, v67
	v_or_b32_e32 v71, 4, v67
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s40
	s_bitcmp1_b32 s40, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[59:60], null, s34, v67, v[58:59]
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s19, s3, s26
	s_cselect_b32 s29, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s17, s24
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s33, s2, 5
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s6, 0, s17
	s_abs_i32 s2, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[60:61], null, s34, 6, v[59:60]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s33, v72
	v_or_b32_e32 v6, s33, v74
	v_or_b32_e32 v7, s33, v75
	v_or_b32_e32 v5, s33, v73
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s5, s34, v58
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[61:62], null, s34, 10, v[59:60]
	v_mad_u64_u32 v[62:63], null, s34, 12, v[59:60]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s33, v67
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s34, 14, v[59:60]
	v_lshl_add_u32 v79, s34, 3, v59
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
	s_mul_i32 s6, s6, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, 28, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s6, s4, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v17, 30, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s4, s4, s6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, s26, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s4, s2, s4
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s8, s26, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s6, s4, s17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s33, v76
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s2, s17
	s_cmp_ge_u32 s2, s17
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s30, s34, 18
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s2, s7, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s17
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s7, s26, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s28, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s18, s25
	s_xor_b32 s46, s24, s25
	s_cvt_f32_u32 s2, s18
	s_sub_i32 s14, 0, s18
	s_ashr_i32 s46, s46, 31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s26, v4
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s11, s26, v9
	v_cmp_gt_i32_e64 s10, s26, v8
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s37, s34, 24
	s_mul_i32 s31, s34, 20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s26, v12
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s38, s34, 26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s33, v70
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s36, s34, 22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s33, v71
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s9, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v77, s34, 1, v59
	s_mul_i32 s39, s34, 28
	s_mul_i32 s44, s34, 30
	v_lshl_add_u32 v78, s34, 2, v59
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s12, s9, 0x4f7ffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s9, s26, v7
	v_cmp_gt_i32_e64 s2, s26, v2
	v_cmp_gt_i32_e64 s4, s26, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s16, s12
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s26, v11
	s_delay_alu instid0(SALU_CYCLE_2)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s15, s14, s16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s26, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s45, s16, s15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s26, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s45, s16, s45
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s26, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s45, s17, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s47, s45, s18
	s_add_i32 s48, s45, 1
	s_sub_i32 s47, s17, s47
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s17, s26, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s49, s47, s18
	s_cmp_ge_u32 s47, s18
	s_cselect_b32 s45, s48, s45
	s_cselect_b32 s47, s49, s47
	s_add_i32 s48, s45, 1
	s_cmp_ge_u32 s47, s18
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s26, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s45, s48, s45
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s19, s19, s33
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s19, s34
	s_lshl_b32 s47, s34, 4
	v_add_nc_u32_e32 v1, s48, v59
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s48, v61, 1
	v_add_lshl_u32 v4, s48, v60, 1
	v_add_lshl_u32 v5, s48, v79, 1
	v_add_lshl_u32 v9, s48, v63, 1
	v_lshlrev_b32_e32 v6, 1, v1
	v_add_lshl_u32 v11, v1, s30, 1
	v_add_lshl_u32 v8, s48, v62, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v17, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v10, v1, s47, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v13, v1, s37, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v17, 0x90, v17
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s8, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v49, 1, v58
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s9, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v1, s31, 1
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s10, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v1, s38, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s11, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v1, s36, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v17, v49
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s13, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v1, s39, 1
	v_add_lshl_u32 v1, v1, s44, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s48, v77, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s14, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, s48, v78, 1
	v_xor_b32_e32 v19, 0x240, v17
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s5
	s_and_b32 s2, s2, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s17, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s4, s5
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s5
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
	v_add_nc_u32_e32 v83, 0, v19
	s_clause 0x5
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s45, s46
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v80, 0, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s46
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v18, 0x120, v17
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s6
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s7, s27, 15
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s4, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, 0x360, v17
	v_add_nc_u32_e32 v82, 0, v18
	s_mov_b32 s23, 0
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v20, s4
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s4, s7, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v84, 0, v17
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s4, s4, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(15)
	ds_store_b16 v80, v6
	s_waitcnt vmcnt(12)
	ds_store_b16 v80, v5 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v80, v10 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v80, v13 offset:3072
	ds_store_b16 v82, v2
	ds_store_b16 v82, v7 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v82, v11 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v82, v15 offset:3072
	ds_store_b16 v83, v3
	ds_store_b16 v83, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v83, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v83, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v84, v4
	s_waitcnt vmcnt(2)
	ds_store_b16 v84, v9 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v84, v14 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v84, v1 offset:3072
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v20
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s7, s7, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s44, s7, -16
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s4, s40, 0x10008
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 801 9                         ; attention.py:801:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s33, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s33, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s43
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, 32
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s4, s27, s4
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s4, s4, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s9, s4, 31
	s_lshr_b32 s9, s9, 28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s4, s4, s9
	.loc	1 802 25 is_stmt 1              ; attention.py:802:25
	s_max_i32 s9, s10, 0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s4, s4, -16
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s23, s9, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s44, s44, s4
.LBB0_2:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v1, 0, 1, s29
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s4, 1, v1
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s9, s33, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 32
	s_min_i32 s9, s27, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, 15
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s9, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_b32 s9, s9, -16
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s44, s44, s9
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	v_and_b32_e32 v81, 15, v0
	v_and_b32_e32 v69, 32, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s23, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v86, 2, v81
	v_lshlrev_b32_e32 v87, 1, v69
	v_lshlrev_b32_e32 v88, 1, v81
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %.._crit_edge_crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_lshlrev_b32_e32 v17, 2, v81
	v_lshlrev_b32_e32 v18, 1, v69
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_lshlrev_b32_e32 v32, 1, v81
	s_mov_b32 s9, 0
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 19                          ; attention.py:0:19
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr18
                                        ; implicit-def: $vgpr32
.LBB0_7:                                ; %Flow162
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v85, 64, v0
	v_and_b32_e32 v68, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
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
	v_mov_b32_e32 v50, v8
	s_cbranch_vccnz .LBB0_15
; %bb.8:                                ; %.lr.ph
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v0
	s_xor_b32 s9, s3, s24
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s9, s9, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v1, 0x70, v1
	s_xor_b32 s10, s28, s9
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s12, s10, s9
	s_sub_i32 s9, 0, s2
	s_mul_i32 s10, s12, s24
	s_mul_i32 s9, s9, s8
	v_lshl_or_b32 v89, v81, 7, v1
	s_sub_i32 s3, s3, s10
	s_mul_hi_u32 s9, s8, s9
	s_abs_i32 s13, s3
	s_add_i32 s14, s8, s9
	v_lshl_or_b32 v1, v69, 6, v89
	s_mul_hi_u32 s14, s13, s14
	s_ashr_i32 s3, s3, 31
	s_ashr_i32 s6, s6, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s15, s14, s2
	s_xor_b32 s3, s3, s6
	s_sub_i32 s6, s13, s15
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 16, 0
	s_ashr_i32 s7, s7, 4
	s_add_i32 s13, s14, 1
	s_sub_i32 s15, s6, s2
	s_cmp_ge_u32 s6, s2
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x8
	s_load_b64 s[28:29], s[0:1], 0x28
	s_load_b32 s0, s[0:1], 0x6c
	s_cselect_b32 s1, s13, s14
	v_xad_u32 v4, v1, 32, 0
	v_xad_u32 v6, v1, 64, 0
	v_xad_u32 v8, 0x60, v1, 0
	s_cselect_b32 s6, s15, s6
	ds_load_b128 v[17:20], v2
	ds_load_b128 v[21:24], v3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v69
	v_xad_u32 v5, v1, 48, 0
	v_xad_u32 v7, 0x50, v1, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s13, s1, 1
	v_xad_u32 v1, 0x70, v1, 0
	s_cmp_ge_u32 s6, s2
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[29:32], v5
	s_cselect_b32 s1, s13, s1
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[41:44], v8
	ds_load_b128 v[45:48], v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or3_b32 v1, v81, v2, s33
	v_lshrrev_b32_e32 v9, 1, v85
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s1, s1, s3
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s12, s12, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s1, s1, s3
	.loc	1 903 13                        ; attention.py:903:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[64:65], null, s22, v67, v[58:59]
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s47, s1, s12
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v91, s43, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s26, v1
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v1, 0, v49
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v92, 0, v69
	v_add_nc_u32_e32 v9, 0, v9
	v_xor_b32_e32 v2, 16, v89
	v_xor_b32_e32 v3, 32, v89
	v_xor_b32_e32 v4, 48, v89
	v_xor_b32_e32 v5, 64, v89
	v_xor_b32_e32 v6, 0x50, v89
	v_xor_b32_e32 v7, 0x60, v89
	v_xor_b32_e32 v8, 0x70, v89
	v_dual_mov_b32 v16, v49 :: v_dual_lshlrev_b32 v11, 2, v85
	v_add_nc_u32_e32 v105, v9, v88
	v_mov_b32_e32 v9, 0
	v_lshl_add_u32 v10, v68, 2, v92
	v_mad_u64_u32 v[65:66], null, s22, 6, v[64:65]
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s25, s0, 0x3fb8aa3b
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s22, v58
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v90, 4, v68
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v95, s22, 1, v64
	v_lshl_add_u32 v96, s22, 2, v64
	v_dual_mov_b32 v13, v49 :: v_dual_add_nc_u32 v66, 0, v86
	v_add_nc_u32_e32 v97, 0, v2
	v_dual_mov_b32 v15, v49 :: v_dual_add_nc_u32 v98, 0, v3
	v_add_nc_u32_e32 v99, 0, v4
	v_add_nc_u32_e32 v100, 0, v5
	v_add_nc_u32_e32 v101, 0, v6
	v_dual_mov_b32 v3, v49 :: v_dual_add_nc_u32 v102, 0, v7
	v_add_nc_u32_e32 v103, 0, v8
	v_dual_mov_b32 v5, v49 :: v_dual_add_nc_u32 v104, v10, v88
	v_mov_b32_e32 v10, v49
	v_mov_b32_e32 v12, v49
	v_subrev_nc_u32_e32 v93, s41, v91
	v_add_nc_u32_e32 v94, s42, v91
	v_mov_b32_e32 v14, v49
	v_mov_b32_e32 v2, v49
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v106, v1, v11
	v_mov_b32_e32 v11, v49
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, v49
	v_mov_b32_e32 v6, v49
	v_mov_b32_e32 v7, v49
	v_mov_b32_e32 v8, v49
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s45, s7, 3
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s24, s47, s27
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s46, s47, s45
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s47, s47, s7
	s_and_b32 s41, s11, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s48, 0x76543210
	s_mov_b32 s40, s10
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s30, s38
	s_mov_b32 s31, s39
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s2, s23, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s23, 4
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v109, s2, v67
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s47
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s6, s2, s46
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s22
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s6, s6, s22
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e32 vcc_lo, s45, v109
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v111, s3, v58, 1
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v51, s25, v51 :: v_dual_add_nc_u32 v110, s6, v64
	v_dual_mul_f32 v53, s25, v53 :: v_dual_add_nc_u32 v112, s6, v95
	v_dual_mul_f32 v50, s25, v50 :: v_dual_add_nc_u32 v113, s6, v96
	v_dual_mul_f32 v55, s25, v55 :: v_dual_add_nc_u32 v114, s6, v65
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 978 32                        ; attention.py:978:32
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	v_cndmask_b32_e32 v112, 0x80000000, v112, vcc_lo
	v_cndmask_b32_e32 v114, 0x80000000, v114, vcc_lo
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v116, v111, s[28:31], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v117, v110, s[40:43], 0 offen
	buffer_load_u8 v118, v112, s[40:43], 0 offen
	buffer_load_u8 v119, v113, s[40:43], 0 offen
	buffer_load_u8 v120, v114, s[40:43], 0 offen
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v52, s25, v52 :: v_dual_mul_f32 v57, s25, v57
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v51, 0xff800000, v51, s50
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v54, s25, v54
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v108
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v56, s25, v56
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s53
	v_cndmask_b32_e64 v52, 0xff800000, v52, s55
	v_cndmask_b32_e64 v53, 0xff800000, v53, s49
	v_cndmask_b32_e64 v54, 0xff800000, v54, s54
	v_cndmask_b32_e64 v55, 0xff800000, v55, s51
	v_cndmask_b32_e64 v56, 0xff800000, v56, s56
	v_cndmask_b32_e64 v57, 0xff800000, v57, s52
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v110, v50, v51, v52
.Ltmp2:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v126, v109, 1, 1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v111, v53, v54, v55
.Ltmp4:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v115, s2, v72
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v112, v56, v57
.Ltmp6:
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v121.h, 0
	.loc	1 1018 23                       ; attention.py:1018:23
	v_add_nc_u32_e32 v113, v66, v87
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v110, v110, v111, v112
.Ltmp8:
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v111, s2, v70
	v_or_b32_e32 v112, s2, v71
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v122.h, v121.h
	v_mov_b16_e32 v124.h, v121.h
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v123, v110, s48, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v127, v111, 1, 1
	v_lshl_or_b32 v128, v115, 1, 1
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e32 v125.h, v121.h
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s23, s23, 16
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v132, v108, v110, v123
	.loc	1 1018 23                       ; attention.py:1018:23
	v_add_nc_u32_e32 v114, v66, v85
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v123, v112, 1, 1
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s23, s44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v50, v50, v132
	v_sub_f32_e32 v51, v51, v132
	v_sub_f32_e32 v52, v52, v132
	v_sub_f32_e32 v53, v53, v132
	v_sub_f32_e32 v54, v54, v132
	v_sub_f32_e32 v55, v55, v132
	v_sub_f32_e32 v56, v56, v132
	v_sub_f32_e32 v57, v57, v132
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v109, v108, v132
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v109, v109
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v129, 0, v50, s53
	v_cndmask_b32_e64 v130, 0, v51, s50
	v_cndmask_b32_e64 v131, 0, v52, s55
	v_cndmask_b32_e64 v134, 0, v53, s49
	v_cndmask_b32_e64 v54, 0, v54, s54
	v_cndmask_b32_e64 v55, 0, v55, s51
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v56, 0, v56, s56
	v_cndmask_b32_e64 v57, 0, v57, s52
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v50, v129, 16, 1
	v_bfe_u32 v51, v130, 16, 1
	v_bfe_u32 v52, v131, 16, 1
	v_bfe_u32 v53, v134, 16, 1
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v133, 0, v109, vcc_lo
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v108, v54, 16, 1
	v_bfe_u32 v109, v55, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_bfe_u32 v110, v56, 16, 1
	v_bfe_u32 v111, v57, 16, 1
	v_add3_u32 v50, v129, v50, 0x7fff
	v_cmp_o_f32_e64 s2, v130, v130
	v_add3_u32 v51, v130, v51, 0x7fff
	v_cmp_o_f32_e64 s3, v131, v131
	v_add3_u32 v52, v131, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v134, v134
	v_add3_u32 v53, v134, v53, 0x7fff
	v_cmp_o_f32_e64 s7, v54, v54
	v_cmp_o_f32_e64 s8, v55, v55
	v_add3_u32 v108, v54, v108, 0x7fff
	v_add3_u32 v109, v55, v109, 0x7fff
	v_cmp_o_f32_e64 s9, v56, v56
	v_cmp_o_f32_e64 s10, v57, v57
	v_add3_u32 v110, v56, v110, 0x7fff
	v_add3_u32 v111, v57, v111, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v126
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v50.h, 0x7fff, v51.h, s2
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s3
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s6
	v_cndmask_b16 v52.l, 0x7fff, v108.h, s7
	v_cndmask_b16 v52.h, 0x7fff, v109.h, s8
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v113, v133
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v135, v114
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v53.l, 0x7fff, v110.h, s9
	v_cndmask_b16 v53.h, 0x7fff, v111.h, s10
	ds_store_b16 v104, v50
	ds_store_b16_d16_hi v104, v50 offset:128
	ds_store_b16 v104, v51 offset:256
	ds_store_b16_d16_hi v104, v51 offset:384
	ds_store_b16 v104, v52 offset:512
	ds_store_b16_d16_hi v104, v52 offset:640
	ds_store_b16 v104, v53 offset:768
	ds_store_b16_d16_hi v104, v53 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v108, v105
	ds_load_u16_d16 v109, v105 offset:128
	ds_load_u16_d16 v110, v105 offset:256
	ds_load_u16_d16 v111, v105 offset:384
	ds_load_u16_d16 v112, v105 offset:512
	ds_load_u16_d16 v113, v105 offset:640
	ds_load_u16_d16 v114, v105 offset:768
	ds_load_u16_d16 v115, v105 offset:896
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v54, v54, v55
.Ltmp12:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v105 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v105 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v105 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v105 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v105 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v105 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v105 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v105 offset:960
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v135
	v_mul_f32_e32 v14, v14, v135
	v_mul_f32_e32 v16, v16, v135
	v_mul_f32_e32 v2, v2, v135
	v_mul_f32_e32 v4, v4, v135
	v_mul_f32_e32 v6, v6, v135
	v_mul_f32_e32 v7, v7, v135
	v_mul_f32_e32 v8, v8, v135
	v_mul_f32_e32 v15, v15, v135
	v_mul_f32_e32 v11, v11, v135
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v55, v56, v57
.Ltmp14:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v135
	v_mul_f32_e32 v13, v13, v135
	v_mul_f32_e32 v1, v1, v135
	v_mul_f32_e32 v3, v3, v135
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(3)
	v_lshrrev_b16 v121.l, 4, v117.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(2)
	v_and_b16 v50.h, v118.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v122.l, 4, v118.l
	.loc	1 987 29                        ; attention.py:987:29
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v136, 15, v120
	.loc	1 1000 41                       ; attention.py:1000:41
	v_lshlrev_b32_e32 v52, 16, v116
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v116, 15, v118
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v124.l, 4, v119.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v118, 0, v121, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v127
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v51.h, v120.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v125.l, 4, v120.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v50.l, v117.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_dual_cndmask_b32 v120, 0, v122 :: v_dual_and_b32 v53, 15, v117
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v123
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v51.l, v119.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v117, 15, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v119, -16, v53
	v_or_b32_e32 v123, -16, v116
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v121, 0, v124, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v128
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v124, -16, v117
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v122, 0, v125, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v50.l
	.loc	1 989 54 is_stmt 0              ; attention.py:989:54
	v_or_b32_e32 v125, -16, v136
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v53, v53, v119, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v50.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v119, -16, v118
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v50, v116, v123, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v51.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v123, -16, v121
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v116, v117, v124, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v51.h
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v51, v136, v125, vcc_lo
	.loc	1 990 39 is_stmt 1              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v118
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v53, v53, v52
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v117, -16, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v136, v92, v88
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v118, v118, v119, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v51, v52, v51
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b32_e32 v124, -16, v122
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b32_e32 v117, v120, v117, vcc_lo
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v121
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s6, v51, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v119, v121, v123, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v122
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v118, v118, v52
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v121, v53, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v117, v117, v52
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v120, v122, v124, vcc_lo
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v124, v118, 16, 1
	v_bfe_u32 v125, v117, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v119, v52, v119
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v120, v120
	v_mul_f32_e32 v50, v50, v52
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v123, v51, 16, 1
	v_bfe_u32 v126, v119, 16, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v116, v116, v52
	v_mul_f32_e32 v52, v52, v120
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v120, v50, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v53, v53, v121, 0x7fff
	v_bfe_u32 v122, v116, 16, 1
	v_bfe_u32 v127, v52, 16, 1
	v_cmp_o_f32_e64 s7, v118, v118
	v_add3_u32 v118, v118, v124, 0x7fff
	v_cmp_o_f32_e64 s2, v50, v50
	v_add3_u32 v50, v50, v120, 0x7fff
	v_cmp_o_f32_e64 s8, v117, v117
	v_add3_u32 v117, v117, v125, 0x7fff
	v_cmp_o_f32_e64 s3, v116, v116
	v_add3_u32 v116, v116, v122, 0x7fff
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v51, v51, v123, 0x7fff
	v_cmp_o_f32_e64 s10, v52, v52
	v_add3_u32 v119, v119, v126, 0x7fff
	v_add3_u32 v120, v52, v127, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v53.h, vcc_lo
	v_cndmask_b16 v52.l, 0x7fff, v118.h, s7
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s2
	v_cndmask_b16 v52.h, 0x7fff, v117.h, s8
	v_cndmask_b16 v51.l, 0x7fff, v116.h, s3
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s6
	v_cndmask_b16 v53.l, 0x7fff, v119.h, s9
	v_cndmask_b16 v53.h, 0x7fff, v120.h, s10
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v117, v129, v130
	v_add_f32_e32 v118, v131, v134
.Ltmp16:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_b16 v106, v50
	ds_store_b16 v106, v52 offset:128
	ds_store_b16_d16_hi v106, v50 offset:512
	ds_store_b16_d16_hi v106, v52 offset:640
	ds_store_b16 v106, v51 offset:1024
	ds_store_b16 v106, v53 offset:1152
	ds_store_b16_d16_hi v106, v51 offset:1536
	ds_store_b16_d16_hi v106, v53 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v121, v136 offset:1344
	ds_load_u16_d16 v125, v136 offset:256
	ds_load_u16_d16 v126, v136 offset:512
	ds_load_u16_d16 v130, v136 offset:1536
	ds_load_u16_d16 v127, v136 offset:768
	ds_load_u16_d16 v128, v136 offset:1024
	ds_load_u16_d16 v129, v136 offset:1280
	ds_load_u16_d16 v124, v136
	ds_load_u16_d16 v116, v136 offset:64
	ds_load_u16_d16 v131, v136 offset:1792
	ds_load_u16_d16 v122, v136 offset:1600
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v117, v118
.Ltmp18:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v120, v136 offset:1088
	ds_load_u16_d16 v119, v136 offset:832
	ds_load_u16_d16 v118, v136 offset:576
	ds_load_u16_d16 v117, v136 offset:320
	ds_load_u16_d16 v123, v136 offset:1856
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v130, v136 offset:1664
	ds_load_u16_d16_hi v121, v136 offset:1472
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v51, v54, v55
.Ltmp20:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v125, v136 offset:384
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v124, v136 offset:128
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v116, v136 offset:192
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v131, v136 offset:1920
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v122, v136 offset:1728
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v50, v51
.Ltmp22:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v126, v136 offset:640
	ds_load_u16_d16_hi v127, v136 offset:896
	ds_load_u16_d16_hi v128, v136 offset:1152
	ds_load_u16_d16_hi v129, v136 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v120, v136 offset:1216
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v119, v136 offset:960
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v118, v136 offset:704
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v117, v136 offset:448
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v123, v136 offset:1984
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v51, v50, s48, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v50, v51
.Ltmp25:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v5, v5, v135 :: v_dual_fmac_f32 v50, v107, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v12, v12, v135 :: v_dual_mov_b32 v107, v50
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[108:115], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[116:123], v[108:115], v[1:8]
	v_mov_b32_e32 v108, v132
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_14
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v50, s23, v67
	v_or_b32_e32 v51, s23, v70
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s23, s24
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v52, s23, v71
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s11, s2, s34
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s27, v50
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v54, s23, v73
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s2, s27, v51
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v50, s11, v59, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v53, s23, v72
	v_or_b32_e32 v55, s23, v74
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s3, s27, v52
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v51, s11, v77, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v56, s23, v75
	v_or_b32_e32 v57, s23, v76
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s27, v54
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v52, s11, v78, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s2
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s27, v53
	v_cmp_gt_i32_e64 s8, s27, v55
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v54, s11, v79, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s3
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s9, s27, v56
	v_cmp_gt_i32_e64 s10, s27, v57
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v53, s11, v60, 1
	v_add_lshl_u32 v55, s11, v61, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s7
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v56, s11, v62, 1
	v_add_lshl_u32 v57, s11, v63, 1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s2, s5, s6
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_add_nc_u32 v109, 0, v89
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s8
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s5, s9
	s_and_b32 s2, s5, s10
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x7
	buffer_load_u16 v50, v50, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v56, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v57, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b16 v80, v50
	s_waitcnt vmcnt(6)
	ds_store_b16 v80, v54 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v82, v51
	s_waitcnt vmcnt(4)
	ds_store_b16 v82, v55 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v83, v52
	s_waitcnt vmcnt(2)
	ds_store_b16 v83, v56 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v84, v53
	s_waitcnt vmcnt(0)
	ds_store_b16 v84, v57 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v109
	ds_load_b128 v[114:117], v97
	ds_load_b128 v[118:121], v98
	ds_load_b128 v[122:125], v99
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v56, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[126:129], v100
	ds_load_b128 v[130:133], v101
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v50, v49
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v56, v55
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[134:137], v102
	ds_load_b128 v[138:141], v103
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v109, s23, v90
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[110:117], v[17:24], v[50:57]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v110, 2, v109
	v_or_b32_e32 v111, 4, v109
	v_or_b32_e32 v112, 6, v109
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[118:125], v[25:32], v[50:57]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v113, 8, v109
	v_or_b32_e32 v114, 10, v109
	v_or_b32_e32 v115, 12, v109
	v_or_b32_e32 v116, 14, v109
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[126:133], v[33:40], v[50:57]
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s27, v109
	v_cmp_gt_i32_e64 s2, s27, v110
	v_cmp_gt_i32_e64 s3, s27, v111
	v_cmp_gt_i32_e64 s6, s27, v112
	v_cmp_gt_i32_e64 s7, s27, v113
	v_cmp_gt_i32_e64 s8, s27, v114
	v_cmp_gt_i32_e64 s9, s27, v115
	v_cmp_gt_i32_e64 s10, s27, v116
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[134:141], v[41:48], v[50:57]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s53, s1, vcc_lo
	s_and_b32 s50, s1, s2
	s_and_b32 s55, s1, s3
	s_and_b32 s49, s1, s6
	s_and_b32 s54, s1, s7
	s_and_b32 s51, s1, s8
	s_and_b32 s56, s1, s9
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, s4
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s52, s1, s10
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v109, v91
	v_cmp_le_i32_e64 s2, v110, v91
	v_cmp_le_i32_e64 s3, v111, v91
	v_cmp_le_i32_e64 s6, v112, v91
	v_cmp_le_i32_e64 s7, v113, v91
	v_cmp_le_i32_e64 s8, v114, v91
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s11, vcc_lo, s53
	s_and_b32 s2, s2, s50
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s9, v115, v91
	v_cmp_le_i32_e64 s10, v116, v91
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s3, s3, s55
	s_and_b32 s6, s6, s49
	s_and_not1_b32 s12, s53, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s50, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s7, s54
	s_and_b32 s8, s8, s51
	s_or_b32 s53, s12, s11
	s_or_b32 s50, s13, s2
	s_and_not1_b32 s2, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s11, s49, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s56
	s_and_b32 s10, s10, s52
	s_or_b32 s55, s2, s3
	s_or_b32 s49, s11, s6
	s_and_not1_b32 s2, s54, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s51, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s54, s2, s3
	s_or_b32 s51, s6, s7
	s_and_not1_b32 s2, s56, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s52, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s56, s2, s3
	s_or_b32 s52, s6, s7
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	s_cbranch_vccnz .LBB0_9
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v109, v93
	v_cmp_ge_i32_e64 s2, v110, v93
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s11, v109, v94
	v_cmp_le_i32_e64 s12, v110, v94
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v111, v93
	v_cmp_ge_i32_e64 s6, v112, v93
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v111, v94
	v_cmp_le_i32_e64 s14, v112, v94
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s7, v113, v93
	v_cmp_ge_i32_e64 s8, v114, v93
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s15, v113, v94
	v_cmp_le_i32_e64 s16, v114, v94
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s2, s2, s12
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s9, v115, v93
	v_cmp_ge_i32_e64 s10, v116, v93
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v115, v94
	v_cmp_le_i32_e64 s18, v116, v94
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s11, s11, s53
	s_and_b32 s2, s2, s50
	s_and_b32 s3, s3, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s3, s3, s55
	s_and_b32 s6, s6, s49
	s_and_b32 s7, s7, s15
	s_and_b32 s8, s8, s16
	s_and_not1_b32 s12, s53, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_not1_b32 s13, s50, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s7, s54
	s_and_b32 s8, s8, s51
	s_and_b32 s9, s9, s17
	s_and_b32 s10, s10, s18
	s_or_b32 s53, s12, s11
	s_or_b32 s50, s13, s2
	s_and_not1_b32 s2, s55, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_not1_b32 s11, s49, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_b32 s9, s9, s56
	s_and_b32 s10, s10, s52
	s_or_b32 s55, s2, s3
	s_or_b32 s49, s11, s6
	s_and_not1_b32 s2, s54, exec_lo
	s_and_b32 s3, s7, exec_lo
	s_and_not1_b32 s6, s51, exec_lo
	s_and_b32 s7, s8, exec_lo
	s_or_b32 s54, s2, s3
	s_or_b32 s51, s6, s7
	s_and_not1_b32 s2, s56, exec_lo
	s_and_b32 s3, s9, exec_lo
	s_and_not1_b32 s6, s52, exec_lo
	s_and_b32 s7, s10, exec_lo
	s_or_b32 s56, s2, s3
	s_or_b32 s52, s6, s7
	s_branch .LBB0_9
.LBB0_14:                               ; %Flow
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v17, v86 :: v_dual_mov_b32 v18, v87
	v_mov_b32_e32 v32, v88
.LBB0_15:                               ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_add_nc_u32_e32 v17, 0, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v19, 2, v85
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_add_nc_u32_e32 v18, v17, v18
	v_add_nc_u32_e32 v17, v17, v85
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, v19, v81
	s_mov_b32 s23, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	ds_store_b32 v18, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s33, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v32, 0, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s26, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v33, v33, v9
	v_div_scale_f32 v37, null, v33, v33, v10
	v_div_scale_f32 v35, null, v33, v33, v11
	v_rcp_f32_e32 v38, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v40, vcc_lo, v9, v33, v9
	v_rcp_f32_e32 v42, v35
	v_div_scale_f32 v45, s1, v10, v33, v10
	v_div_scale_f32 v41, null, v33, v33, v12
	v_div_scale_f32 v49, s3, v12, v33, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v43, -v36, v38, 1.0
	v_fma_f32 v44, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v41
	v_div_scale_f32 v53, null, v33, v33, v13
	v_fmac_f32_e32 v38, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v39, v44, v39 :: v_dual_and_b32 v28, 24, v0
	v_fma_f32 v44, -v35, v42, 1.0
	v_div_scale_f32 v43, s2, v11, v33, v11
	v_mul_f32_e32 v47, v40, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v41, v46, 1.0
	v_fmac_f32_e32 v42, v44, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v31, 1, v28
	v_or_b32_e32 v30, 2, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v36, v47, v40
	v_mul_f32_e32 v48, v45, v39
	v_fmac_f32_e32 v46, v51, v46
	v_mul_f32_e32 v54, v43, v42
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s22, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v44, v38
	v_fma_f32 v52, -v37, v48, v45
	v_rcp_f32_e32 v44, v53
	v_fma_f32 v51, -v35, v54, v43
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s22, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v36, v47, v40
	v_fmac_f32_e32 v48, v52, v39
	v_div_scale_f32 v52, null, v33, v33, v4
	v_fmac_f32_e32 v54, v51, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_fma_f32 v37, -v37, v48, v45
	v_div_scale_f32 v45, null, v33, v33, v14
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v9, v36, v33, v9
	v_div_fmas_f32 v37, v37, v39, v48
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v35, -v35, v54, v43
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v53, v44, 1.0
	v_div_fixup_f32 v10, v37, v33, v10
	v_div_scale_f32 v37, s4, v14, v33, v14
	v_div_fmas_f32 v35, v35, v42, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v44, v38, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v45, v47, 1.0
	v_mul_f32_e32 v40, v49, v46
	v_div_scale_f32 v38, s1, v13, v33, v13
	v_div_fixup_f32 v11, v35, v33, v11
	v_fmac_f32_e32 v47, v39, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v41, v40, v49
	v_div_scale_f32 v39, null, v33, v33, v15
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s22, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v48, v37, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v36, v46
	v_rcp_f32_e32 v43, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 39, v28
	v_or_b32_e32 v17, 38, v28
	v_or_b32_e32 v18, 37, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v41, v40, v49
	v_div_scale_f32 v49, null, v33, v33, v16
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v19, 36, v28
	v_or_b32_e32 v20, 35, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v46, v40
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v46, -v39, v43, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v21, 34, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v40, v33, v12
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v22, 33, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v46, v43
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v23, 32, v28
	v_or_b32_e32 v24, 7, v28
	v_or_b32_e32 v25, 6, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v41, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v26, 5, v28
	v_or_b32_e32 v27, 4, v28
	v_or_b32_e32 v29, 3, v28
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s15, s0, s15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v40, v41 :: v_dual_mul_f32 v36, v38, v44
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s14, s0, s14
	s_and_b32 s13, s0, s13
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s22, v29
	v_cmp_gt_i32_e64 s11, s22, v27
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fma_f32 v42, -v53, v36, v38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s10, s22, v26
	v_cmp_gt_i32_e64 s9, s22, v25
	v_cmp_gt_i32_e64 s6, s22, v24
	v_cmp_gt_i32_e64 s8, s22, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v42, v44
	v_fma_f32 v42, -v45, v48, v37
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s7, s22, v19
	v_cmp_gt_i32_e64 s5, s22, v0
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s12, s0, s12
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fma_f32 v35, -v53, v36, v38
	v_fmac_f32_e32 v48, v42, v47
	v_div_scale_f32 v38, s2, v15, v33, v15
	v_div_scale_f32 v42, null, v33, v33, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v44, v36
	v_fma_f32 v36, -v45, v48, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v38, v43
	v_div_scale_f32 v44, s1, v16, v33, v16
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v46, -v39, v37, v38
	v_div_fmas_f32 v36, v36, v47, v48
	v_mul_f32_e32 v47, v44, v41
	v_div_scale_f32 v45, null, v33, v33, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v46, v43
	v_div_scale_f32 v46, null, v33, v33, v3
	v_div_fixup_f32 v13, v35, v33, v13
	v_fma_f32 v35, -v49, v47, v44
	v_fma_f32 v38, -v39, v37, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v46
	v_rcp_f32_e32 v51, v45
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v47, v35, v41
	v_fma_f32 v48, -v42, v40, 1.0
	v_div_fmas_f32 v37, v38, v43, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v36, v33, v14
	v_fma_f32 v38, -v49, v47, v44
	v_div_scale_f32 v36, s3, v1, v33, v1
	v_fma_f32 v49, -v46, v39, 1.0
	v_div_fixup_f32 v15, v37, v33, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v41, v47
	v_rcp_f32_e32 v41, v52
	v_div_scale_f32 v47, s1, v3, v33, v3
	v_dual_fmac_f32 v39, v49, v39 :: v_dual_fmac_f32 v40, v48, v40
	v_fma_f32 v48, -v45, v51, 1.0
	v_div_fixup_f32 v16, v38, v33, v16
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v47, v39
	v_mul_f32_e32 v35, v36, v40
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v48, s4, v2, v33, v2
	v_fma_f32 v38, -v52, v41, 1.0
	v_fma_f32 v43, -v42, v35, v36
	v_div_scale_f32 v49, null, v33, v33, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v48, v51 :: v_dual_fmac_f32 v41, v38, v41
	v_fmac_f32_e32 v35, v43, v40
	v_div_scale_f32 v38, s2, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v45, v44, v48
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s11, s0, s11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v42, v35, v36
	v_div_scale_f32 v42, null, v33, v33, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v43, v51
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s10, s0, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v36, v40, v35
	v_fma_f32 v36, -v46, v37, v47
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v43, -v45, v44, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v35, v35, v33, v1
	v_fmac_f32_e32 v37, v36, v39
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s9, s0, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v43, v51, v44
	v_mul_f32_e32 v43, v38, v41
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v46, v37, v47
	v_fma_f32 v44, -v42, v40, 1.0
	v_div_scale_f32 v46, null, v33, v33, v6
	v_fma_f32 v47, -v52, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v45, v39, v37
	v_fmac_f32_e32 v40, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v48, v46
	v_rcp_f32_e32 v39, v49
	v_fmac_f32_e32 v43, v47, v41
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v36, v33, v2
	v_div_scale_f32 v44, s3, v5, v33, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v1, -v52, v43, v38
	v_div_scale_f32 v38, null, v33, v33, v8
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v49, v39, 1.0
	v_div_fmas_f32 v41, v1, v41, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v38
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v48, v36, v48 :: v_dual_fmac_f32 v39, v47, v39
	v_div_scale_f32 v47, s4, v7, v33, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v52, 5, v69
	v_cndmask_b32_e64 v50, 0, 1, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v37, v33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v43, v47, v39
	v_fma_f32 v1, -v38, v51, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v52, v32, v52
	v_add_nc_u32_e32 v32, v32, v67
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, s1, v6, v33, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v1, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_mov_b16_e32 v1.l, v50.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v50, s2, v8, v33, v8
	v_mul_f32_e32 v45, v44, v40
	v_fma_f32 v54, -v49, v43, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	ds_store_b8 v52, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v1, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v50, v51
	v_fma_f32 v37, -v42, v45, v44
	v_div_fixup_f32 v4, v41, v33, v4
	v_fmac_f32_e32 v43, v54, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s22, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v37, v40
	v_mul_f32_e32 v37, v36, v48
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v42, v45, v44
	v_fma_f32 v53, -v46, v37, v36
	v_fma_f32 v42, -v38, v32, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v53, v48 :: v_dual_fmac_f32 v32, v42, v51
	v_div_fmas_f32 v40, v41, v40, v45
	v_fma_f32 v41, -v49, v43, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v46, v37, v36
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v40, v33, v5
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s22, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v48, v37
	v_fma_f32 v37, -v38, v32, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s22, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v41, v39, v43
	s_mov_b32 vcc_lo, s2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s22, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v37, v51, v32
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v36, v33, v6
	v_div_fixup_f32 v6, v38, v33, v7
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s4, s0, s4
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v32, v33, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v9, 0, v10
	v_dual_cndmask_b32 v10, 0, v11 :: v_dual_cndmask_b32 v11, 0, v12
	v_cndmask_b32_e32 v12, 0, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v33, v8, 16, 1
	v_cmp_o_f32_e64 s16, v8, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v13, 0, v14 :: v_dual_cndmask_b32 v14, 0, v15
	v_dual_cndmask_b32 v15, 0, v16 :: v_dual_add_nc_u32 v32, s19, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v33, v8, v33, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v16, 0, v35, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v35, v10, 16, 1
	v_bfe_u32 v36, v11, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s16
	v_add3_u32 v8, v9, v8, 0x7fff
	v_cmp_o_f32_e64 s16, v9, v9
	v_add3_u32 v9, v10, v35, 0x7fff
	v_cmp_o_f32_e64 s17, v10, v10
	v_add3_u32 v10, v11, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v11, v11
	v_cndmask_b16 v33.h, 0x7fff, v8.h, s16
	v_bfe_u32 v8, v12, 16, 1
	v_bfe_u32 v11, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s17
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s18
	v_bfe_u32 v10, v14, 16, 1
	v_add3_u32 v8, v12, v8, 0x7fff
	v_cmp_o_f32_e64 s16, v12, v12
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s17, v13, v13
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s18, v14, v14
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s16
	v_bfe_u32 v12, v15, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s17
	v_bfe_u32 v11, v16, 16, 1
	v_bfe_u32 v13, v2, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v4, 0, v4
	v_dual_cndmask_b32 v5, 0, v5 :: v_dual_cndmask_b32 v6, 0, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s18
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e64 s16, v15, v15
	v_add3_u32 v11, v16, v11, 0x7fff
	v_cmp_o_f32_e64 s17, v16, v16
	v_add3_u32 v13, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s18, v2, v2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s16
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s17
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s18
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e64 s16, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s18, v5, v5
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v12, v6, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s16
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s17
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s18
	v_add3_u32 v4, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s16, v1, v1
	v_add3_u32 v1, v6, v12, 0x7fff
	v_cmp_o_f32_e64 s17, v6, v6
	v_cmp_eq_u32_e64 s18, 0, v68
	v_mov_b32_e32 v6, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_bfe_u32 v5, v7, 16, 1
	v_cmp_o_f32_e64 s19, v7, v7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s16
	v_cndmask_b32_e64 v6, 0x1054, v6, s18
	v_cndmask_b32_e64 v12, 0x3276, v12, s18
	v_add3_u32 v5, v7, v5, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s17
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, v32, s22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b32_e64 v6, v33, v8, s18
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s19
	v_lshl_or_b32 v5, v12, 8, v12
	s_mov_b32 s16, 0x76543210
	v_and_b32_e32 v4, 0x540054, v4
	v_cndmask_b32_e64 v7, v8, v33, s18
	v_cndmask_b32_e64 v8, v10, v9, s18
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v9, v9, v10, s18
	v_lshl_or_b32 v4, v4, 4, v4
	v_cndmask_b32_e64 v10, v3, v11, s18
	v_cndmask_b32_e64 v3, v11, v3, s18
	v_cndmask_b32_e64 v11, v1, v2, s18
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v1, v2, v1, s18
	v_permlanex16_b32 v2, v6, s16, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x5040504, v4
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v28, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v34.h, 0
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v6, v9, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v2, v7, v4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v28, v32, v31, 1
	v_add_lshl_u32 v30, v32, v30, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v2, v7, v5
	v_perm_b32 v7, v6, v8, v4
	v_perm_b32 v6, v6, v8, v5
	v_perm_b32 v8, v3, v10, v4
	v_perm_b32 v3, v3, v10, v5
	v_perm_b32 v4, v1, v11, v4
	v_perm_b32 v1, v1, v11, v5
	v_mov_b16_e32 v5.l, v9.h
	v_mov_b16_e32 v5.h, v34.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v28, 0x80000000, v28, s14
	v_cndmask_b32_e64 v30, 0x80000000, v30, s13
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s22, v21
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v34.l, v2.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	buffer_store_b16 v9, v16, s[20:23], 0 offen
	v_add_lshl_u32 v9, v32, v29, 1
	s_clause 0x1
	buffer_store_b16 v5, v28, s[20:23], 0 offen
	buffer_store_b16 v2, v30, s[20:23], 0 offen
	v_add_lshl_u32 v2, v32, v27, 1
	v_add_lshl_u32 v16, v32, v25, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v7.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v5, 0x80000000, v9, s12
	v_add_lshl_u32 v9, v32, v26, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v34.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v34, v5, s[20:23], 0 offen
	buffer_store_b16 v7, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v9, s10
	v_add_lshl_u32 v2, v32, v24, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s9
	v_add_lshl_u32 v5, v32, v23, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v34.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v11, v9, s[20:23], 0 offen
	buffer_store_b16 v6, v16, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s6
	v_add_lshl_u32 v6, v32, v22, 1
	v_add_lshl_u32 v7, v32, v21, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v8.h
	v_mov_b16_e32 v13.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x1
	buffer_store_b16 v10, v2, s[20:23], 0 offen
	buffer_store_b16 v8, v5, s[20:23], 0 offen
	v_add_lshl_u32 v2, v32, v20, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v3.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v5, v32, v18, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_store_b16 v13, v6, s[20:23], 0 offen
	buffer_store_b16 v3, v7, s[20:23], 0 offen
	v_add_lshl_u32 v3, v32, v19, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v32, v17, 1
	v_add_lshl_u32 v0, v32, v0, 1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v34.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v4.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v1.h
	v_mov_b16_e32 v14.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v12, v2, s[20:23], 0 offen
	buffer_store_b16 v4, v3, s[20:23], 0 offen
	buffer_store_b16 v15, v5, s[20:23], 0 offen
	buffer_store_b16 v1, v6, s[20:23], 0 offen
	buffer_store_b16 v14, v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 142
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_vgpr, 142
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9288
; TotalNumSgprs: 59
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 59
; NumVGPRsForWavesPerEU: 142
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
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
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
