	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b128 s[24:27], s[0:1], 0x4c
	s_load_b32 s35, s[0:1], 0x5c
	s_load_b64 s[20:21], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v73, 6, v0
	.loc	1 761 22                        ; attention.py:761:22
	v_and_b32_e32 v60, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v76, 6, v73
	v_or_b32_e32 v78, 10, v73
	v_or_b32_e32 v79, 12, v73
	v_or_b32_e32 v77, 8, v73
	v_or_b32_e32 v80, 14, v73
	v_or_b32_e32 v74, 2, v73
	v_or_b32_e32 v75, 4, v73
	v_and_b32_e32 v84, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v85, 0x70, v18
	v_and_b32_e32 v54, 32, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s40
	s_bitcmp1_b32 s40, 8
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[61:62], null, s35, v73, v[60:61]
	s_cselect_b32 s44, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 786 26                        ; attention.py:786:26
	s_mul_i32 s33, s3, s26
	s_cselect_b32 s28, -1, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s16, s24
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s34, s2, 5
	.loc	1 755 23                        ; attention.py:755:23
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s5, 0, s16
	s_abs_i32 s2, s3
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[62:63], null, s35, 6, v[61:62]
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s34, v76
	v_or_b32_e32 v6, s34, v78
	v_or_b32_e32 v7, s34, v79
	v_or_b32_e32 v5, s34, v77
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s17, s35, v60
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[63:64], null, s35, 10, v[61:62]
	v_mad_u64_u32 v[64:65], null, s35, 12, v[61:62]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, s34, v73
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[65:66], null, s35, 14, v[61:62]
	v_lshl_add_u32 v83, s35, 3, v61
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
	v_or_b32_e32 v8, s34, v80
	.loc	1 755 23                        ; attention.py:755:23
	s_sub_i32 s2, s2, s5
	s_add_i32 s5, s4, 1
	s_sub_i32 s6, s2, s16
	s_cmp_ge_u32 s2, s16
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s29, s35, 18
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s6, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s16
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s6, s26, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_cselect_b32 s19, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s18, s25
	s_xor_b32 s46, s24, s25
	s_cvt_f32_u32 s2, s18
	s_sub_i32 s13, 0, s18
	s_ashr_i32 s46, s46, 31
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s26, v4
	.loc	1 757 22                        ; attention.py:757:22
	v_rcp_iflag_f32_e32 v10, s2
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s10, s26, v9
	v_cmp_gt_i32_e64 s9, s26, v8
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s36, s35, 24
	s_mul_i32 s30, s35, 20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s12, s26, v12
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s37, s35, 26
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s34, v74
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s31, s35, 22
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s34, v75
	.loc	1 757 22                        ; attention.py:757:22
	v_readfirstlane_b32 s8, v10
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v81, s35, 1, v61
	s_mul_i32 s38, s35, 28
	s_mul_i32 s39, s35, 30
	v_lshl_add_u32 v82, s35, 2, v61
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
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v86, v84, 7, v85
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s14, s13, s15
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s13, s26, v13
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s45, s15, s14
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s14, s26, v14
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s45, s15, s45
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s15, s26, v15
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_hi_u32 s45, s16, s45
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v21, v54, 6, v86
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s47, s45, s18
	s_add_i32 s48, s45, 1
	s_sub_i32 s47, s16, s47
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s16, s26, v16
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s49, s47, s18
	s_cmp_ge_u32 s47, s18
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v22, v21, 48, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s45, s48, s45
	s_cselect_b32 s47, s49, s47
	s_add_i32 s48, s45, 1
	s_cmp_ge_u32 s47, s18
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s18, s26, v17
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s45, s48, s45
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s33, s33, s34
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s17
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s48, s33, s35
	s_lshl_b32 s47, s35, 4
	v_add_nc_u32_e32 v1, s48, v61
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v7, s48, v63, 1
	v_add_lshl_u32 v4, s48, v62, 1
	v_add_lshl_u32 v5, s48, v83, 1
	v_add_lshl_u32 v9, s48, v65, 1
	v_lshlrev_b32_e32 v6, 1, v1
	v_add_lshl_u32 v11, v1, s29, 1
	v_add_lshl_u32 v8, s48, v64, 1
	v_add_lshl_u32 v10, v1, s47, 1
	v_add_lshl_u32 v13, v1, s36, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s5, s17
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v17, v0, 6, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s6, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v12, v1, s30, 1
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s7, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v15, v1, s37, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s8, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v56, 1, v60
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s9, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v55, 0x90, v17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s10, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v14, v1, s31, 1
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s11, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v16, v1, s38, 1
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s12, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v1, s39, 1
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s14, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s48, v81, 1
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s13, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v55, v56
	v_add_lshl_u32 v3, s48, v82, 1
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s15, s17
	s_and_b32 s2, s2, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s16, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s4, s17
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v19, 0x240, v17
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s18, s17
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
	v_add_nc_u32_e32 v87, 0, v17
	v_add_nc_u32_e32 v89, 0, v19
	s_clause 0x5
	buffer_load_u16 v12, v12, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v1, v1, s[20:23], 0 offen
	v_xor_b32_e32 v18, 0x120, v17
	v_xor_b32_e32 v20, 0x360, v17
	v_add_nc_u32_e32 v17, 0, v21
	v_xad_u32 v19, v21, 32, 0
	v_xad_u32 v25, v21, 64, 0
	v_add_nc_u32_e32 v88, 0, v18
	v_xad_u32 v18, v21, 16, 0
	v_xad_u32 v29, 0x50, v21, 0
	v_xad_u32 v33, 0x60, v21, 0
	v_xad_u32 v37, 0x70, v21, 0
	v_add_nc_u32_e32 v90, 0, v20
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s45, s46
	s_mov_b32 s45, 0
	s_sub_i32 s4, s2, s46
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(15)
	ds_store_b16 v87, v6
	s_waitcnt vmcnt(12)
	ds_store_b16 v87, v5 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b16 v87, v10 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v87, v13 offset:3072
	ds_store_b16 v88, v2
	ds_store_b16 v88, v7 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b16 v88, v11 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v88, v15 offset:3072
	ds_store_b16 v89, v3
	ds_store_b16 v89, v8 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v89, v12 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v89, v16 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v90, v4
	s_waitcnt vmcnt(2)
	ds_store_b16 v90, v9 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v90, v14 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v90, v1 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v17
	ds_load_b128 v[13:16], v18
	ds_load_b128 v[17:20], v19
	ds_load_b128 v[21:24], v22
	ds_load_b128 v[25:28], v25
	ds_load_b128 v[29:32], v29
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v37
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s5, s2
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s5, s27, 15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 795 15 is_stmt 0              ; attention.py:795:15
	s_ashr_i32 s6, s5, 31
	s_lshr_b32 s7, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s23, s5, -16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	v_readfirstlane_b32 s6, v1
	.loc	1 801 9                         ; attention.py:801:9
	s_bfe_u32 s7, s40, 0x10008
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v95, 0, 1, s28
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	v_and_b32_e32 v94, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s45, s23
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v49, 16, v0
	s_mov_b32 s7, 0
	s_branch .LBB0_7
.LBB0_4:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s34, s42
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s34, s41
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s43
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s43
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
	s_and_b32 s45, s8, 0x7ffffff0
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s23, s23, s7
	.loc	1 809 9                         ; attention.py:809:9
	v_cndmask_b32_e64 v95, 0, 1, s28
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccnz .LBB0_2
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s7, s34, s43
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
	s_min_i32 s23, s23, s7
	v_and_b32_e32 v94, 16, v0
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	s_cmp_lt_i32 s45, s23
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr49
.LBB0_7:                                ; %Flow193
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s22, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v91, 64, v0
	v_and_b32_e32 v92, 0x70, v0
	v_and_b32_e32 v93, 48, v0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	s_cbranch_vccnz .LBB0_23
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s7, s3, s24
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_load_b128 s[12:15], s[0:1], 0x6c
	s_xor_b32 s8, s19, s7
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s7, s8, s7
	s_sub_i32 s8, 0, s2
	s_mul_i32 s9, s7, s24
	s_mul_i32 s8, s8, s6
	s_sub_i32 s16, s3, s9
	s_mul_hi_u32 s3, s6, s8
	s_abs_i32 s8, s16
	s_add_i32 s6, s6, s3
	s_load_b32 s24, s[0:1], 0x7c
	s_mul_hi_u32 s3, s8, s6
	s_ashr_i32 s6, s16, 31
	s_ashr_i32 s4, s4, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s9, s3, s2
	s_xor_b32 s4, s6, s4
	s_sub_i32 s6, s8, s9
	s_ashr_i32 s5, s5, 4
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s6, s2
	s_cmp_ge_u32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 4, v92
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s6, s9, s6
	s_add_i32 s8, s3, 1
	s_cmp_ge_u32 s6, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s34, v2
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s2, s8, s3
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x28
	s_load_b128 s[8:11], s[0:1], 0x8
	s_xor_b32 s2, s2, s4
	.loc	1 937 33                        ; attention.py:937:33
	s_mul_i32 s1, s7, s25
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s2, s4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v96, s43, v1
	.loc	1 937 33                        ; attention.py:937:33
	s_add_i32 s49, s0, s1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, s26, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s24, v84
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, 8, v2
	v_or_b32_e32 v4, 16, v2
	v_or_b32_e32 v5, 24, v2
	v_lshlrev_b32_e32 v46, 5, v0
	v_lshlrev_b32_e32 v47, 2, v0
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v6, s34, v3
	v_or_b32_e32 v7, s34, v4
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_mad_u64_u32 v[66:67], null, s15, v3, v[1:2]
	v_lshlrev_b32_e32 v3, 3, v84
	v_mad_u64_u32 v[67:68], null, s15, v4, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v8, s34, v5
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[68:69], null, s15, v5, v[1:2]
	v_lshrrev_b32_e32 v4, 2, v94
	v_lshrrev_b32_e32 v5, 4, v54
	v_xor_b32_e32 v3, v55, v3
	v_mad_u64_u32 v[69:70], null, s15, v2, v[1:2]
	v_and_b32_e32 v1, 0x180, v46
	v_and_b32_e32 v2, 52, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v109, v4, v5, v3
	v_and_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v4, 1, v94
	v_lshrrev_b32_e32 v5, 5, v54
	v_and_b32_e32 v46, 14, v0
	v_and_b32_e32 v47, 1, v0
	v_or3_b32 v1, v2, v3, v1
	v_lshlrev_b32_e32 v48, 2, v93
	v_mov_b32_e32 v150, 0xff800000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v49, 5, v47
	v_or3_b32 v110, v1, v4, v5
	v_xor_b32_e32 v1, 0x120, v109
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_add_nc_u32 v97, s43, v6
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s3, s26, v6
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v6, 0, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v124, 0, v1
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v3, 1, v46
	v_lshl_or_b32 v46, v46, 7, v48
	v_xor_b32_e32 v5, 32, v110
	v_dual_mov_b32 v151, 0xff800000 :: v_dual_add_nc_u32 v98, s43, v7
	v_cmp_gt_i32_e64 s4, s26, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or3_b32 v111, v46, v49, v3
	v_lshrrev_b32_e32 v49, 1, v91
	v_xor_b32_e32 v7, 16, v86
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v126, 0, v5
	.loc	1 975 39                        ; attention.py:975:39
	s_lshl_b32 s46, s5, 3
	v_add_nc_u32_e32 v56, 0, v49
	v_dual_mov_b32 v49, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_and_b32_e32 v48, 0x60, v0
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v117, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v5, v49 :: v_dual_and_b32 v2, 60, v2
	v_mov_b32_e32 v7, v49
	v_lshrrev_b32_e32 v3, 3, v48
	.loc	1 937 32                        ; attention.py:937:32
	s_mul_i32 s25, s49, s27
	.loc	1 976 30                        ; attention.py:976:30
	s_mul_i32 s48, s49, s46
	v_lshl_or_b32 v2, v48, 3, v2
	.loc	1 997 21                        ; attention.py:997:21
	s_mul_i32 s49, s49, s5
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v99, s43, v8
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s5, s26, v8
	v_xor_b32_e32 v8, 32, v86
	v_xor_b32_e32 v2, v2, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[70:71], null, s22, v73, v[60:61]
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v100, 0, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v118, 0, v8
	v_mov_b32_e32 v8, v49
	v_lshl_or_b32 v112, v47, 6, v2
	v_xor_b32_e32 v41, 48, v86
	v_xor_b32_e32 v42, 64, v86
	v_xor_b32_e32 v43, 0x50, v86
	v_xor_b32_e32 v44, 0x60, v86
	v_xor_b32_e32 v45, 0x70, v86
	v_xor_b32_e32 v4, 16, v110
	v_xor_b32_e32 v46, 48, v110
	v_xor_b32_e32 v48, 4, v111
	v_xor_b32_e32 v3, 8, v111
	v_xor_b32_e32 v50, 12, v111
	v_xor_b32_e32 v2, 16, v111
	v_xor_b32_e32 v47, 20, v111
	v_xor_b32_e32 v51, 24, v111
	v_xor_b32_e32 v52, 28, v111
	v_xor_b32_e32 v53, 0x410, v112
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v54, 1, v54
	v_lshl_add_u32 v115, v84, 2, 0
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_lshlrev_b32 v116, 1, v84
	v_lshl_add_u32 v55, v94, 2, v100
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v57, 2, v91
	v_mad_u64_u32 v[71:72], null, s22, 6, v[70:71]
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s2, s15, s34
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s6, s7, s13
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s22, v60
	v_subrev_nc_u32_e32 v101, s41, v96
	v_subrev_nc_u32_e32 v102, s41, v97
	v_subrev_nc_u32_e32 v103, s41, v98
	v_add_nc_u32_e32 v105, s42, v96
	v_add_nc_u32_e32 v106, s42, v97
	v_add_nc_u32_e32 v107, s42, v98
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v113, s22, 1, v70
	v_lshl_add_u32 v114, s22, 2, v70
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v119, 0, v41
	v_add_nc_u32_e32 v120, 0, v42
	v_dual_mov_b32 v72, 0xff800000 :: v_dual_add_nc_u32 v121, 0, v43
	v_add_nc_u32_e32 v122, 0, v44
	v_add_nc_u32_e32 v123, 0, v45
	v_add_nc_u32_e32 v125, 0, v4
	v_add_nc_u32_e32 v127, 0, v46
	v_add_nc_u32_e32 v128, 0, v48
	v_add_nc_u32_e32 v129, 0, v3
	v_add_nc_u32_e32 v130, 0, v50
	v_add_nc_u32_e32 v131, 0, v2
	v_add_nc_u32_e32 v132, 0, v47
	v_add_nc_u32_e32 v133, 0, v51
	v_add_nc_u32_e32 v134, 0, v52
	v_add_nc_u32_e32 v135, 0, v53
	v_add_nc_u32_e32 v136, v115, v54
	v_add_nc_u32_e32 v137, v55, v116
	v_add_nc_u32_e32 v138, v56, v116
	v_add_nc_u32_e32 v139, v6, v57
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, v49
	v_subrev_nc_u32_e32 v104, s41, v99
	v_dual_mov_b32 v43, v49 :: v_dual_add_nc_u32 v108, s42, v99
	v_mov_b32_e32 v44, v49
	v_mov_b32_e32 v45, v49
	v_mov_b32_e32 v46, v49
	v_mov_b32_e32 v47, v49
	v_mov_b32_e32 v48, v49
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v4, v49
	v_mov_b32_e32 v6, v49
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s47, s12, 0x3fb8aa3b
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s16, s16, s14
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_add_i32 s50, s6, s2
	s_mov_b64 s[18:19], s[30:31]
	s_add_i32 s50, s50, s16
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
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v59.h, 0xff, v59.h
	v_and_b16 v59.l, 0xff, v59.l
	v_and_b16 v58.h, 0xff, v58.h
	v_and_b16 v58.l, 0xff, v58.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v59.h
	v_cmp_ne_u16_e64 s2, 0, v59.l
	v_cmp_ne_u16_e64 s7, 0, v58.h
	v_cmp_ne_u16_e64 s9, 0, v58.l
	.loc	1 962 25                        ; attention.py:962:25
	s_barrier
	s_and_b32 vcc_lo, s15, vcc_lo
	s_and_b32 s6, s14, s2
	v_cndmask_b32_e64 v58, 0, 1, vcc_lo
	v_cndmask_b32_e64 v59, 0, 1, s6
	s_and_b32 s8, s13, s7
	s_and_b32 s7, s12, s9
	v_cndmask_b32_e64 v152, 0, 1, s8
	v_lshlrev_b16 v58.l, 8, v58.l
	v_cndmask_b32_e64 v153, 0, 1, s7
	v_lshlrev_b16 v58.h, 8, v59.l
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v154, s47, v50 :: v_dual_add_nc_u32 v59, 0, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v58.l, v152.l, v58.l
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v155, s47, v51 :: v_dual_add_nc_u32 v152, 0, v110
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v58.h, v153.l, v58.h
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v156, s47, v52 :: v_dual_mul_f32 v157, s47, v53
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b16 v59, v58
	ds_store_b16_d16_hi v124, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v58, v152
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v58, v125
	ds_load_u8_d16 v59, v126
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v59, v127
	ds_load_u8_d16 v152, v152 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v152, v125 offset:64
	ds_load_u8_d16 v153, v126 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v153, v127 offset:64
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v54, s47, v54 :: v_dual_mul_f32 v55, s47, v55
	v_dual_mul_f32 v56, s47, v56 :: v_dual_mul_f32 v57, s47, v57
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s52, s45, 1
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 977 30                        ; attention.py:977:30
	s_add_i32 s2, s52, s48
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v165, v146, v146
	.loc	1 977 30                        ; attention.py:977:30
	s_mul_i32 s53, s2, s22
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v168, v72, v72
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v169, s52, v74
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v50.l, 1, v58.l
	v_and_b16 v50.h, 1, v58.h
	v_and_b16 v51.l, 1, v59.l
	v_and_b16 v51.h, 1, v59.h
	v_and_b16 v52.l, 1, v152.l
	v_and_b16 v52.h, 1, v152.h
	v_and_b16 v53.l, 1, v153.l
	v_cmp_eq_u16_e64 s9, 1, v50.l
	v_cmp_eq_u16_e64 s10, 1, v50.h
	v_cmp_eq_u16_e64 s13, 1, v52.l
	v_cmp_eq_u16_e64 s11, 1, v51.l
	v_cmp_eq_u16_e64 s12, 1, v51.h
	v_and_b16 v53.h, 1, v153.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v59, 0xff800000, v154, s9
	v_cndmask_b32_e64 v153, 0xff800000, v54, s13
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s14, 1, v52.h
	v_cmp_eq_u16_e64 s15, 1, v53.l
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v149, v149, v149 :: v_dual_add_nc_u32 v54, 0, v111
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v50, 0xff800000, v155, s10
	v_cndmask_b32_e64 v152, 0xff800000, v156, s11
	v_cndmask_b32_e64 v51, 0xff800000, v157, s12
	v_cndmask_b32_e64 v52, 0xff800000, v55, s14
	v_cndmask_b32_e64 v154, 0xff800000, v56, s15
	ds_store_b32 v54, v59
	ds_store_b32 v128, v50
	ds_store_b32 v129, v152
	ds_store_b32 v130, v51
	ds_store_b32 v131, v153
	ds_store_b32 v132, v52
	ds_store_b32 v133, v154
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v54, s52, v73
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s16, 1, v53.h
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v148, v148, v148 :: v_dual_add_nc_u32 v55, s53, v70
	v_dual_max_f32 v147, v147, v147 :: v_dual_add_nc_u32 v56, s53, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 980 27                        ; attention.py:980:27
	v_cmp_gt_i32_e64 s2, s46, v54
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v53, 0xff800000, v57, s16
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v166, v145, v145 :: v_dual_add_nc_u32 v57, s53, v114
	v_add_nc_u32_e32 v58, s53, v71
	.loc	1 980 26                        ; attention.py:980:26
	s_and_b32 s2, s0, s2
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s53, s45, 4
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s53, s53, s49
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v134, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s53, s53, s22
	.loc	1 978 32                        ; attention.py:978:32
	s_clause 0x3
	buffer_load_u8 v159, v55, s[40:43], 0 offen
	buffer_load_u8 v160, v56, s[40:43], 0 offen
	buffer_load_u8 v161, v57, s[40:43], 0 offen
	buffer_load_u8 v162, v58, s[40:43], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v155, s53, v60, 1
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v150, v150, v150 :: v_dual_max_f32 v167, v144, v144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v158, v154, v53
	v_max3_f32 v156, v59, v50, v152
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp2:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v55, 0x80000000, v155, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v157, v51, v153, v52
.Ltmp4:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v175, v54, 1, 1
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v151
	.loc	1 1018 23                       ; attention.py:1018:23
	v_add_nc_u32_e32 v155, v115, v91
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_u16 v163, v55, s[28:31], 0 offen
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v55, 0, v112
	ds_load_2addr_b32 v[55:56], v55 offset1:32
	ds_load_2addr_b32 v[57:58], v135 offset1:32
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v156, v156, v157, v158
.Ltmp6:
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v164.h, 0
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v170, s52, v75
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v54, v156, s51, 0xfedcba98 op_sel:[1,0]
.Ltmp8:
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v169, v169, 1, 1
	.loc	1 974 36                        ; attention.py:974:36
	v_or_b32_e32 v171, s52, v76
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v172.h, v164.h
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v170, v170, 1, 1
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v54, v151, v156, v54
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v173.h, v164.h
	.loc	1 985 31                        ; attention.py:985:31
	v_lshl_or_b32 v171, v171, 1, 1
	.loc	1 988 30                        ; attention.py:988:30
	v_mov_b16_e64 v174.h, v164.h
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s45, s45, 16
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v181, v151, v54
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s45, s23
	.loc	1 962 25                        ; attention.py:962:25
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v156, v55 :: v_dual_mov_b32 v177, v56
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v157, v55, v55 :: v_dual_mov_b32 v158, v57
	v_dual_max_f32 v176, v57, v57 :: v_dual_mov_b32 v179, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v177, v177 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v158, v158 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v178, v56, v56
	v_max_f32_e32 v180, v58, v58
.Ltmp13:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v59, v59, v54 :: v_dual_max_f32 v156, v156, v156
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v179, v179 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v158, v158, v158 :: v_dual_max_f32 v177, v177, v177
.Ltmp16:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v50, v50, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v51, v51, v54 :: v_dual_max_f32 v156, v157, v156
	v_sub_f32_e32 v153, v153, v54
	v_dual_sub_f32 v154, v154, v54 :: v_dual_max_f32 v179, v179, v179
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v157, v176, v158 :: v_dual_max_f32 v158, v178, v177
.Ltmp18:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v152, v152, v54
	v_dual_sub_f32 v53, v53, v54 :: v_dual_max_f32 v176, v180, v179
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v181, v181
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v153, v153
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v177, v156
.Ltmp20:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v154, v154
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v179, v158
.Ltmp22:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v152, v152
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v51, v51
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v177, v177 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v179, v179 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v52, v52, v54
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v151, 0, v181, s2
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v59, s9
	v_cndmask_b32_e64 v153, 0, v153, s13
	v_cndmask_b32_e64 v154, 0, v154, s15
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v52, v52
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v152, 0, v152, s11
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	ds_store_b32 v136, v151
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v151, v59, 16, 1
	v_bfe_u32 v184, v153, 16, 1
	v_bfe_u32 v186, v154, 16, 1
	v_bfe_u32 v182, v152, 16, 1
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v50, s10
	v_cndmask_b32_e64 v51, 0, v51, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s2, v59, v59
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v52, s14
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v152, v152
	v_cmp_o_f32_e64 s12, v153, v153
	v_cmp_o_f32_e64 s14, v154, v154
	v_add3_u32 v59, v59, v151, 0x7fff
	v_add3_u32 v151, v152, v182, 0x7fff
	v_add3_u32 v152, v153, v184, 0x7fff
	v_add3_u32 v153, v154, v186, 0x7fff
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v154, v177, v177 :: v_dual_max_f32 v177, v179, v179
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v178, v157
.Ltmp27:
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v181, v155
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v155, v50, 16, 1
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v180, v176
.Ltmp29:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v50, v50
	v_bfe_u32 v185, v52, 16, 1
	v_add3_u32 v50, v50, v155, 0x7fff
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v178, v178
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v180, v180 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v50.l, 0x7fff, v59.h, s2
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s13, v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v59, v157, v155 :: v_dual_max_f32 v178, v180, v180
.Ltmp34:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v52, v52, v185, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v152.h, s12
	v_bfe_u32 v183, v51, 16, 1
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v157, v59
.Ltmp36:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v51, v51
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v158, v177
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp38:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v53, 0, v53, s16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v51, v51, v183, 0x7fff
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v51.l, 0x7fff, v151.h, s10
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v151, v176, v178
.Ltmp42:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v187, v53, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v152, v157, v157
	v_max_f32_e32 v154, v156, v154
.Ltmp44:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s9
	v_add3_u32 v53, v53, v187, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v153.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v59, v59, v152 :: v_dual_mov_b32 v156, v154
.Ltmp46:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s11
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s15
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v153, v59
	v_mov_b32_dpp v156, v156 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_barrier
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s13
	ds_store_b16 v137, v50
	ds_store_b16_d16_hi v137, v50 offset:128
	ds_store_b16 v137, v51 offset:256
	ds_store_b16_d16_hi v137, v51 offset:384
	ds_store_b16 v137, v52 offset:512
	ds_store_b16_d16_hi v137, v52 offset:640
	ds_store_b16 v137, v53 offset:768
	ds_store_b16_d16_hi v137, v53 offset:896
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v156, v156, v156
.Ltmp51:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v48, v48, v181
	v_mul_f32_e32 v6, v6, v181
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v154, v154, v156
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v158, v155
.Ltmp54:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v181
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v176, v151 :: v_dual_mul_f32 v41, v41, v181
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v157, v158, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v176, v176 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v152, v155, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v156, v176, v176
	v_max_f32_e32 v151, v151, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v157, v151
	v_mov_b32_e32 v155, v154
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v156, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v155, v155 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v53, v157, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v155, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v53, v151, v53
	v_dual_max_f32 v51, v156, v156 :: v_dual_max_f32 v50, v153, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v52, v154, v155
.Ltmp63:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v150, v150, v53 :: v_dual_max_f32 v51, v152, v51
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v50, v59, v50 :: v_dual_max_f32 v59, v165, v52
.Ltmp65:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v177, v168, v53
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_load_u16_d16 v151, v138
	ds_load_u16_d16 v152, v138 offset:128
	ds_load_u16_d16 v153, v138 offset:256
	ds_load_u16_d16 v154, v138 offset:384
	ds_load_u16_d16 v155, v138 offset:512
	ds_load_u16_d16 v156, v138 offset:640
	ds_load_u16_d16 v157, v138 offset:768
	ds_load_u16_d16 v158, v138 offset:896
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v149, v149, v51
	v_dual_max_f32 v147, v147, v52 :: v_dual_max_f32 v148, v148, v50
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v52, v58, v150
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v58, v166, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v56, v56, v149 :: v_dual_sub_f32 v55, v55, v147
	v_sub_f32_e32 v57, v57, v148
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v50, v52
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v176, v167, v51 :: v_dual_sub_f32 v53, v145, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v51, v146, v59
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v55, v55
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v179, v53
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v138 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v138 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v138 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v154, v138 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v155, v138 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v156, v138 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v157, v138 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v158, v138 offset:960
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v50, s6
	v_cndmask_b32_e32 v56, 0, v56, vcc_lo
	v_cndmask_b32_e64 v57, 0, v57, s7
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v166, v72, v177
	.loc	1 970 61 is_stmt 0              ; attention.py:970:61
	v_exp_f32_e32 v178, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v51, v50 :: v_dual_mov_b32 v168, v56
	v_mov_b32_e32 v167, v57
.Ltmp67:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v52, 0, v55, s8
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v182, v166
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v51, v51 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v167, v167 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v175
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v175, v100, v116
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v56, v56, v168 :: v_dual_add_f32 v57, v57, v167
	v_add_f32_e32 v167, v50, v51
.Ltmp71:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v55, v144, v176
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v180, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v165, v52 :: v_dual_mov_b32 v166, v167
	v_mov_b32_e32 v168, v57
.Ltmp73:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v180, v180 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v165, v165 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v166, v166 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v181
	v_mul_f32_e32 v5, v5, v181
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v52, v165
.Ltmp77:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v53, v52
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v183, v52, v53
.Ltmp80:
	.loc	1 988 32                        ; attention.py:988:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v164.l, 4, v159.l
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(3)
	v_and_b16 v50.h, v160.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v53, 15, v160
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v165, 15, v161
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v172.l, 4, v160.l
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v160, 0, v164, vcc_lo
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v169
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v51.l, v161.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v173.l, 4, v161.l
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v169, -16, v53
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v50.l, v159.l, 15
	.loc	1 986 32 is_stmt 0              ; attention.py:986:32
	v_cndmask_b32_e32 v161, 0, v172, vcc_lo
	.loc	1 985 30 is_stmt 1              ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v170
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(1)
	v_and_b16 v51.h, v162.l, 15
	.loc	1 987 29                        ; attention.py:987:29
	v_and_b32_e32 v52, 15, v159
	v_and_b32_e32 v184, 15, v162
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v174.l, 4, v162.l
	.loc	1 986 32                        ; attention.py:986:32
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v162, 0, v173 :: v_dual_lshlrev_b32 v159, 16, v163
	.loc	1 985 30                        ; attention.py:985:30
	v_cmp_gt_i32_e32 vcc_lo, s27, v171
	.loc	1 989 54                        ; attention.py:989:54
	v_or_b32_e32 v164, -16, v52
	v_or_b32_e32 v170, -16, v165
	v_or_b32_e32 v171, -16, v184
	.loc	1 986 32                        ; attention.py:986:32
	v_cndmask_b32_e32 v163, 0, v174, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v50.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b32_e32 v52, v52, v164, vcc_lo
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v50.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v164, -16, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v52, v52
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v50, v53, v169, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v51.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v169, -16, v162
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v52, v52, v159
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v53, v165, v170, vcc_lo
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v51.h
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b32_e32 v165, -16, v161
	v_or_b32_e32 v170, -16, v163
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v50, v50, v159
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b32_e32 v51, v184, v171, vcc_lo
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s2, v50, v50
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v160, v160, v164, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v161
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v161, v161, v165, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_mul_f32_e32 v53, v53, v159
	v_cvt_f32_i32_e32 v161, v161
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b32_e32 v162, v162, v169, vcc_lo
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_lt_u32_e32 vcc_lo, 7, v163
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v165, v53, 16, 1
	v_cmp_o_f32_e64 s6, v53, v53
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b32_e32 v163, v163, v170, vcc_lo
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v164, v159, v51
	v_mul_f32_e32 v51, v160, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v160, v161, v159 :: v_dual_mul_f32 v161, v159, v162
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_bfe_u32 v162, v52, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_bfe_u32 v169, v164, 16, 1
	v_cmp_o_f32_e64 s7, v51, v51
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v159, v159, v163
	.loc	1 1017 30                       ; attention.py:1017:30
	v_bfe_u32 v163, v50, 16, 1
	v_add3_u32 v52, v52, v162, 0x7fff
	v_bfe_u32 v162, v51, 16, 1
	v_cmp_o_f32_e64 s8, v160, v160
	v_add3_u32 v53, v53, v165, 0x7fff
	v_add3_u32 v50, v50, v163, 0x7fff
	v_bfe_u32 v163, v160, 16, 1
	v_add3_u32 v51, v51, v162, 0x7fff
	v_bfe_u32 v162, v161, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v52.h, vcc_lo
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s2
	v_add3_u32 v52, v160, v163, 0x7fff
	v_bfe_u32 v160, v159, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s7
	v_add3_u32 v162, v161, v162, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v161, v164, v169, 0x7fff
	v_cmp_o_f32_e64 s2, v164, v164
	v_add3_u32 v160, v159, v160, 0x7fff
	v_cmp_o_f32_e64 s7, v159, v159
	v_cndmask_b16 v51.h, 0x7fff, v52.h, s8
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s6
	v_cndmask_b16 v52.h, 0x7fff, v162.h, vcc_lo
	v_cndmask_b16 v53.l, 0x7fff, v161.h, s2
	v_cndmask_b16 v53.h, 0x7fff, v160.h, s7
	ds_store_b16 v139, v50
	ds_store_b16 v139, v51 offset:128
	ds_store_b16_d16_hi v139, v50 offset:512
	ds_store_b16_d16_hi v139, v51 offset:640
	ds_store_b16 v139, v52 offset:1024
	ds_store_b16_d16_hi v139, v52 offset:1152
	ds_store_b16 v139, v53 offset:1536
	ds_store_b16_d16_hi v139, v53 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v165, v175 offset:1536
	ds_load_u16_d16 v172, v175 offset:1344
.Ltmp81:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v50, v183
.Ltmp82:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v146
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v56, v180
	v_add_f32_e32 v51, v57, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v56, 0, v178, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v145
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v146, v52
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v183, v50
	v_add_f32_e32 v53, v167, v166
.Ltmp88:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16 v160, v175 offset:256
	ds_load_u16_d16 v161, v175 offset:512
	ds_load_u16_d16 v162, v175 offset:768
	ds_load_u16_d16 v163, v175 offset:1024
	ds_load_u16_d16 v164, v175 offset:1280
	ds_load_u16_d16 v159, v175
	ds_load_u16_d16 v167, v175 offset:64
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v165, v175 offset:1664
	ds_load_u16_d16 v166, v175 offset:1792
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v172, v175 offset:1472
	ds_load_u16_d16 v173, v175 offset:1600
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v145, 0, v179, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v144
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v144, v50 :: v_dual_mov_b32 v57, v51
	v_mov_b32_e32 v168, v53
	v_mov_b32_dpp v146, v146 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e32 v55, 0, v55, vcc_lo
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v72
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v168, v168 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v52, v52, v146
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v144, v144 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	1 970 25                        ; attention.py:970:25
	v_dual_cndmask_b32 v72, 0, v182 :: v_dual_add_f32 v51, v51, v57
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v53, v168
.Ltmp96:
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v160, v175 offset:384
	ds_load_u16_d16 v169, v175 offset:576
	ds_load_u16_d16 v170, v175 offset:832
	ds_load_u16_d16 v171, v175 offset:1088
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v159, v175 offset:128
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v167, v175 offset:192
	ds_load_u16_d16 v168, v175 offset:320
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v166, v175 offset:1920
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v173, v175 offset:1728
	ds_load_u16_d16 v174, v175 offset:1856
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v146, v52 :: v_dual_mov_b32 v57, v51
	v_mov_b32_e32 v178, v53
.Ltmp98:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_u16_d16_hi v161, v175 offset:640
	ds_load_u16_d16_hi v162, v175 offset:896
	ds_load_u16_d16_hi v163, v175 offset:1152
	ds_load_u16_d16_hi v164, v175 offset:1408
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v171, v175 offset:1216
	ds_load_u16_d16_hi v170, v175 offset:960
	ds_load_u16_d16_hi v169, v175 offset:704
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v168, v175 offset:448
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v174, v175 offset:1984
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v50, v144
.Ltmp101:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v42, v42, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v43, v181 :: v_dual_add_f32 v52, v52, v146
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v51, v51, v57
	v_dual_add_f32 v53, v53, v178 :: v_dual_mul_f32 v44, v44, v181
.Ltmp103:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v45, v45, v181 :: v_dual_fmac_f32 v50, v140, v56
	v_dual_mul_f32 v47, v47, v181 :: v_dual_fmac_f32 v52, v142, v55
	v_mul_f32_e32 v1, v1, v181
	v_mul_f32_e32 v3, v3, v181
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v53, v143, v72 :: v_dual_mul_f32 v2, v2, v181
	v_mov_b32_e32 v72, v177
	v_fmac_f32_e32 v51, v141, v145
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v46, v46, v181
	v_mov_b32_e32 v140, v50
	v_dual_mov_b32 v142, v52 :: v_dual_mov_b32 v143, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v141, v51
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[159:166], v[151:158], v[41:48]
	v_dual_mov_b32 v146, v59 :: v_dual_mov_b32 v145, v58
	v_mov_b32_e32 v144, v176
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[151:158], v[1:8]
	v_mov_b32_e32 v151, v54
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_22
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v50, s45, v73
	v_or_b32_e32 v51, s45, v74
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s45, s25
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v52, s45, v75
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s12, s2, s35
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e32 vcc_lo, s27, v50
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v54, s45, v77
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s2, s27, v51
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v50, s12, v61, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v53, s45, v76
	v_or_b32_e32 v55, s45, v78
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s6, s27, v52
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v51, s12, v81, 1
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v56, s45, v79
	v_or_b32_e32 v57, s45, v80
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, vcc_lo
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s8, s27, v54
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v52, s12, v82, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, s2
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s7, s27, v53
	v_cmp_gt_i32_e64 s9, s27, v55
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v54, s12, v83, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, s6
	.loc	1 941 65 is_stmt 0              ; attention.py:941:65
	v_cmp_gt_i32_e64 s10, s27, v56
	v_cmp_gt_i32_e64 s11, s27, v57
	.loc	1 939 32 is_stmt 1              ; attention.py:939:32
	v_add_lshl_u32 v53, s12, v62, 1
	v_add_lshl_u32 v55, s12, v63, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, s8
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v56, s12, v64, 1
	v_add_lshl_u32 v57, s12, v65, 1
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 s2, s17, s7
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, s9
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 941 30                        ; attention.py:941:30
	s_and_b32 vcc_lo, s17, s10
	s_and_b32 s2, s17, s11
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_add_nc_u32 v59, 0, v86
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	s_clause 0x7
	buffer_load_u16 v58, v50, s[36:39], 0 offen
	buffer_load_u16 v54, v54, s[36:39], 0 offen
	buffer_load_u16 v51, v51, s[36:39], 0 offen
	buffer_load_u16 v55, v55, s[36:39], 0 offen
	buffer_load_u16 v52, v52, s[36:39], 0 offen
	buffer_load_u16 v56, v56, s[36:39], 0 offen
	buffer_load_u16 v53, v53, s[36:39], 0 offen
	buffer_load_u16 v57, v57, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v50, v49
	.loc	1 948 17                        ; attention.py:948:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v95
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v87, v58
	s_waitcnt vmcnt(6)
	ds_store_b16 v87, v54 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v88, v51
	s_waitcnt vmcnt(4)
	ds_store_b16 v88, v55 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v89, v52
	s_waitcnt vmcnt(2)
	ds_store_b16 v89, v56 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v90, v53
	s_waitcnt vmcnt(0)
	ds_store_b16 v90, v57 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[152:155], v59
	ds_load_b128 v[156:159], v117
	ds_load_b128 v[160:163], v118
	ds_load_b128 v[164:167], v119
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v56, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[168:171], v120
	ds_load_b128 v[172:175], v121
	.loc	1 944 30                        ; attention.py:944:30
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
	ds_load_b128 v[176:179], v122
	ds_load_b128 v[180:183], v123
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v58, s45, v84
	.loc	1 948 17                        ; attention.py:948:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[152:159], v[9:16], v[50:57]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 941 65                        ; attention.py:941:65
	v_cmp_gt_i32_e64 s2, s27, v58
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[160:167], v[17:24], v[50:57]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s13, s1, s2
	s_and_b32 s12, s3, s2
	s_and_b32 s15, s4, s2
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[168:175], v[25:32], v[50:57]
	.loc	1 946 25                        ; attention.py:946:25
	s_and_b32 s14, s5, s2
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[176:183], v[33:40], v[50:57]
	.loc	1 948 17                        ; attention.py:948:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e32 vcc_lo, v58, v96
	v_cmp_le_i32_e64 s2, v58, v97
	v_cmp_le_i32_e64 s6, v58, v98
	v_cmp_le_i32_e64 s7, v58, v99
	s_and_not1_b32 s9, s13, exec_lo
	.loc	1 949 21 is_stmt 0              ; attention.py:949:21
	s_and_b32 s8, vcc_lo, s13
	s_and_b32 s2, s2, s12
	s_and_b32 s6, s6, s15
	s_and_b32 s7, s7, s14
	s_and_b32 s8, s8, exec_lo
	s_and_not1_b32 s10, s12, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s13, s9, s8
	s_or_b32 s12, s10, s2
	s_and_not1_b32 s2, s15, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s8, s14, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_or_b32 s15, s2, s6
	s_or_b32 s14, s8, s7
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 950 17 is_stmt 1              ; attention.py:950:17
	s_and_not1_b32 vcc_lo, exec_lo, s44
	s_cbranch_vccnz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e32 vcc_lo, v58, v101
	v_cmp_ge_i32_e64 s2, v58, v102
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s7, v58, v105
	v_cmp_le_i32_e64 s8, v58, v106
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s6, v58, v103
	v_cmp_ge_i32_e64 s9, v58, v104
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s10, v58, v107
	v_cmp_le_i32_e64 s11, v58, v108
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s2, s2, s8
	s_and_b32 s7, s7, s13
	s_and_b32 s2, s2, s12
	s_and_b32 s6, s6, s10
	s_and_b32 s8, s9, s11
	s_and_b32 s6, s6, s15
	s_and_b32 s8, s8, s14
	s_and_not1_b32 s9, s13, exec_lo
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s10, s12, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_or_b32 s13, s9, s7
	s_or_b32 s12, s10, s2
	s_and_not1_b32 s2, s15, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_and_not1_b32 s7, s14, exec_lo
	s_and_b32 s8, s8, exec_lo
	s_or_b32 s15, s2, s6
	s_or_b32 s14, s7, s8
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v58.l, 0
	.loc	1 955 25 is_stmt 1              ; attention.py:955:25
	s_mul_i32 s2, s45, s24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s2, s50, s2
	v_mov_b16_e32 v58.h, v58.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s13
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v59, s2, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v153, 31, v59
	v_add_co_u32 v152, vcc_lo, s18, v59
	v_add_co_ci_u32_e64 v153, null, s19, v153, vcc_lo
	global_load_d16_hi_u8 v58, v[152:153], off
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s12
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v59, s2, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v153, 31, v59
	v_add_co_u32 v152, vcc_lo, s18, v59
	v_add_co_ci_u32_e64 v153, null, s19, v153, vcc_lo
	global_load_d16_u8 v58, v[152:153], off
.LBB0_18:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	v_mov_b16_e32 v59.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v59.h, v59.l
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s15
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v152, s2, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v153, 31, v152
	v_add_co_u32 v152, vcc_lo, s18, v152
	v_add_co_ci_u32_e64 v153, null, s19, v153, vcc_lo
	global_load_d16_hi_u8 v59, v[152:153], off
.LBB0_20:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s6, s14
	s_cbranch_execz .LBB0_9
; %bb.21:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v152, s2, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v153, 31, v152
	v_add_co_u32 v152, vcc_lo, s18, v152
	v_add_co_ci_u32_e64 v153, null, s19, v153, vcc_lo
	global_load_d16_u8 v59, v[152:153], off
	s_branch .LBB0_9
.LBB0_22:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v49, v94
.LBB0_23:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v0, 1, v0
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v9, 3, v91
	v_add_nc_u32_e32 v11, 0, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v10, 2, v91
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v11, v[50:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v25, v10, v84
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v20, 1, v93
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v0, v0, v9, v85
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, s34, v25
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v23, 1, v20
	v_or_b32_e32 v22, 2, v20
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s15, s22, v20
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v24, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, s26, v26
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s14, s22, v23
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 39, v20
	v_or_b32_e32 v9, 38, v20
	v_or_b32_e32 v10, 37, v20
	v_or_b32_e32 v11, 36, v20
	v_or_b32_e32 v12, 35, v20
	v_or_b32_e32 v13, 34, v20
	v_or_b32_e32 v14, 33, v20
	v_or_b32_e32 v15, 32, v20
	v_or_b32_e32 v16, 7, v20
	v_or_b32_e32 v17, 6, v20
	v_or_b32_e32 v18, 5, v20
	v_or_b32_e32 v19, 4, v20
	v_or_b32_e32 v21, 3, v20
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s13, s22, v22
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s15, s0, s15
	s_and_b32 s14, s0, s14
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s11, s22, v19
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v26, null, v24, v24, v41
	v_div_scale_f32 v28, null, v24, v24, v42
	v_div_scale_f32 v34, null, v24, v24, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v26
	v_rcp_f32_e32 v32, v28
	v_div_scale_f32 v29, null, v24, v24, v43
	v_div_scale_f32 v36, null, v24, v24, v45
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v33, v29
	v_div_scale_f32 v50, s3, v44, v24, v44
	v_fma_f32 v38, -v26, v31, 1.0
	v_fma_f32 v39, -v28, v32, 1.0
	v_div_scale_f32 v27, vcc_lo, v41, v24, v41
	v_div_scale_f32 v30, s1, v42, v24, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v31, v38, v31
	v_rcp_f32_e32 v38, v36
	v_fmac_f32_e32 v32, v39, v32
	v_fma_f32 v39, -v34, v37, 1.0
	v_fma_f32 v40, -v29, v33, 1.0
	v_div_scale_f32 v35, s2, v43, v24, v43
	v_div_scale_f32 v53, null, v24, v24, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v33, v40, v33 :: v_dual_mul_f32 v40, v27, v31
	v_fma_f32 v56, -v36, v38, 1.0
	v_fmac_f32_e32 v37, v39, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s13, s0, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v35, v33
	v_fma_f32 v39, -v26, v40, v27
	v_dual_fmac_f32 v38, v56, v38 :: v_dual_mul_f32 v57, v50, v37
	v_mul_f32_e32 v51, v30, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v55, -v29, v52, v35
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s12, s22, v21
	v_cmp_gt_i32_e64 s10, s22, v18
	v_cmp_gt_i32_e64 s9, s22, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v54, -v28, v51, v30
	v_fmac_f32_e32 v40, v39, v31
	v_fmac_f32_e32 v52, v55, v33
	v_fma_f32 v39, -v34, v57, v50
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s6, s22, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v54, v32
	v_fma_f32 v26, -v26, v40, v27
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s8, s22, v12
	v_cmp_gt_i32_e64 s7, s22, v11
	.loc	1 1047 24 is_stmt 0             ; attention.py:1047:24
	s_and_b32 s12, s0, s12
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_fma_f32 v27, -v28, v51, v30
	v_rcp_f32_e32 v30, v53
	v_div_fmas_f32 v26, v26, v31, v40
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v29, v52, v35
	v_div_scale_f32 v29, s4, v45, v24, v45
	v_div_fmas_f32 v27, v27, v32, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v26, v24, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v31, v29, v38
	v_fma_f32 v32, -v53, v30, 1.0
	v_fmac_f32_e32 v57, v39, v37
	v_div_fmas_f32 v28, v28, v33, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v35, -v36, v31, v29
	v_fmac_f32_e32 v30, v32, v30
	v_fma_f32 v33, -v34, v57, v50
	v_div_scale_f32 v34, null, v24, v24, v47
	v_div_scale_f32 v32, s2, v46, v24, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v37, v57
	v_rcp_f32_e32 v39, v34
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v27, v24, v42
	v_div_fixup_f32 v28, v28, v24, v43
	v_div_scale_f32 v43, null, v24, v24, v2
	v_div_fixup_f32 v33, v33, v24, v44
	v_div_scale_f32 v37, null, v24, v24, v48
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v34, v39, 1.0
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s11, s0, s11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s10, s0, s10
	s_and_b32 s9, s0, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v40, v39
	v_fmac_f32_e32 v31, v35, v38
	v_mul_f32_e32 v35, v32, v30
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s6, s0, s6
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v25, s33, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v36, v31, v29
	v_fma_f32 v36, -v53, v35, v32
	v_fma_f32 v40, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v25, v25, s22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v36, v30
	v_div_scale_f32 v36, s3, v47, v24, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v53, v35, v32
	v_mul_f32_e32 v42, v36, v39
	v_div_fmas_f32 v29, v29, v38, v31
	v_div_scale_f32 v31, null, v24, v24, v1
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v50, s2, v1, v24, v1
	v_rcp_f32_e32 v38, v31
	v_div_fixup_f32 v29, v29, v24, v45
	v_rcp_f32_e32 v45, v43
	v_div_fmas_f32 v30, v32, v30, v35
	v_fma_f32 v32, -v34, v42, v36
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v20, v25, v20, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v30, v24, v46
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v23, v25, v23, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v31, v38, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v22, v25, v22, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v43, v45, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	v_add_lshl_u32 v18, v25, v18, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, null, v24, v24, v3
	v_dual_fmac_f32 v45, v51, v45 :: v_dual_fmac_f32 v42, v32, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v50, v38
	v_rcp_f32_e32 v52, v44
	v_div_scale_f32 v51, s5, v2, v24, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v42, v36
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v25, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v36, v51, v45
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v23, 0x80000000, v23, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v39, v42
	v_div_scale_f32 v39, s3, v3, v24, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v44, v52, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v22, 0x80000000, v22, s13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v34, v34, v24, v47
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s10
	v_cndmask_b32_e64 v17, 0x80000000, v17, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v52, v46, v52 :: v_dual_fmac_f32 v41, v40, v41
	v_div_scale_f32 v40, s4, v48, v24, v48
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v35, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v37, v35, v40
	v_fmac_f32_e32 v35, v32, v41
	v_fma_f32 v32, -v31, v53, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v37, v35, v40
	v_fmac_f32_e32 v53, v32, v38
	v_fma_f32 v32, -v43, v36, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v31, v53, v50
	v_fmac_f32_e32 v36, v32, v45
	v_mul_f32_e32 v32, v39, v52
	v_div_fmas_f32 v35, v37, v41, v35
	v_div_scale_f32 v37, null, v24, v24, v4
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v44, v32, v39
	v_div_fmas_f32 v31, v31, v38, v53
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v38, -v43, v36, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v35, v35, v24, v48
	v_div_fixup_f32 v1, v31, v24, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v38, v45, v36
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v24, v24, v8
	v_fma_f32 v38, -v37, v41, 1.0
	v_fmac_f32_e32 v32, v40, v52
	v_div_fixup_f32 v2, v36, v24, v2
	v_div_scale_f32 v36, null, v24, v24, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v38, v41
	v_fma_f32 v31, -v44, v32, v39
	v_div_scale_f32 v39, null, v24, v24, v7
	v_div_scale_f32 v38, null, v24, v24, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v31, v52, v32
	v_rcp_f32_e32 v32, v36
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v40, vcc_lo, v4, v24, v4
	v_div_fixup_f32 v3, v31, v24, v3
	v_rcp_f32_e32 v47, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v36, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v39, v43, 1.0
	v_mul_f32_e32 v44, v40, v41
	v_fma_f32 v46, -v38, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v31, v32
	v_div_scale_f32 v31, s2, v5, v24, v5
	v_fmac_f32_e32 v43, v50, v43
	v_fma_f32 v48, -v37, v44, v40
	v_fma_f32 v52, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v51, v31, v32 :: v_dual_fmac_f32 v42, v46, v42
	v_div_scale_f32 v46, s3, v6, v24, v6
	v_div_scale_f32 v50, s4, v7, v24, v7
	v_dual_fmac_f32 v44, v48, v41 :: v_dual_mul_f32 v53, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v36, v51, v31
	v_fmac_f32_e32 v47, v52, v47
	v_div_scale_f32 v52, s5, v8, v24, v8
	v_dual_mul_f32 v54, v50, v43 :: v_dual_fmac_f32 v51, v48, v32
	v_fma_f32 v37, -v37, v44, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v52, v47
	v_fma_f32 v40, -v38, v53, v46
	v_fma_f32 v48, -v39, v54, v50
	v_fma_f32 v31, -v36, v51, v31
	v_div_fmas_f32 v37, v37, v41, v44
	v_fma_f32 v36, -v45, v55, v52
	v_fmac_f32_e32 v53, v40, v42
	v_fmac_f32_e32 v54, v48, v43
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v37, v24, v4
	v_fmac_f32_e32 v55, v36, v47
	v_div_fmas_f32 v31, v31, v32, v51
	v_fma_f32 v32, -v38, v53, v46
	v_fma_f32 v36, -v39, v54, v50
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v45, v55, v52
	v_div_fixup_f32 v5, v31, v24, v5
	v_div_fmas_f32 v32, v32, v42, v53
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v34, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v43, v54
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v32, v24, v6
	v_div_fmas_f32 v38, v38, v47, v55
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v35, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v24, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v38, v24, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v33, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v33, v24, 16, 1
	v_cmp_o_f32_e64 s16, v24, v24
	v_bfe_u32 v35, v27, 16, 1
	v_bfe_u32 v36, v28, 16, 1
	v_cmp_o_f32_e64 s17, v27, v27
	v_add3_u32 v33, v24, v33, 0x7fff
	v_bfe_u32 v24, v26, 16, 1
	v_cmp_o_f32_e64 s18, v28, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s16
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cmp_o_f32_e64 s16, v26, v26
	v_add3_u32 v26, v27, v35, 0x7fff
	v_add3_u32 v27, v28, v36, 0x7fff
	v_bfe_u32 v28, v30, 16, 1
	v_cmp_o_f32_e64 s19, v8, v8
	v_cndmask_b16 v33.h, 0x7fff, v24.h, s16
	v_bfe_u32 v24, v29, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s17
	v_cmp_o_f32_e64 s16, v29, v29
	v_add3_u32 v28, v30, v28, 0x7fff
	v_cmp_o_f32_e64 s17, v30, v30
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s18
	v_bfe_u32 v27, v31, 16, 1
	v_bfe_u32 v29, v32, 16, 1
	v_bfe_u32 v30, v2, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s16
	v_cndmask_b16 v24.h, 0x7fff, v28.h, s17
	v_bfe_u32 v28, v1, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v31, v31
	v_add3_u32 v29, v32, v29, 0x7fff
	v_cmp_o_f32_e64 s16, v32, v32
	v_add3_u32 v28, v1, v28, 0x7fff
	v_cmp_o_f32_e64 s17, v1, v1
	v_add3_u32 v1, v2, v30, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s18
	v_cmp_o_f32_e64 s18, v2, v2
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s16
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v28.h, s17
	v_bfe_u32 v28, v4, 16, 1
	v_bfe_u32 v29, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s18
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e64 s16, v3, v3
	v_add3_u32 v3, v4, v28, 0x7fff
	v_cmp_o_f32_e64 s17, v4, v4
	v_add3_u32 v4, v5, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v5, v5
	v_bfe_u32 v5, v6, 16, 1
	v_bfe_u32 v28, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s16
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s17
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s18
	v_add3_u32 v4, v6, v5, 0x7fff
	v_add3_u32 v5, v7, v28, 0x7fff
	v_cmp_o_f32_e64 s17, v7, v7
	v_cmp_eq_u32_e64 s18, 0, v49
	v_mov_b32_e32 v7, 0x5410
	v_cmp_o_f32_e64 s16, v6, v6
	v_bfe_u32 v6, v8, 16, 1
	v_mov_b32_e32 v28, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s17
	v_cndmask_b32_e64 v7, 0x1054, v7, s18
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s16
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cndmask_b32_e64 v28, 0x3276, v28, s18
	s_mov_b32 s16, 0x76543210
	v_lshl_or_b32 v5, v7, 8, v7
	v_cndmask_b32_e64 v7, v33, v24, s18
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s19
	v_lshl_or_b32 v6, v28, 8, v28
	v_cndmask_b32_e64 v8, v24, v33, s18
	v_and_b32_e32 v5, 0x540054, v5
	v_cndmask_b32_e64 v24, v27, v26, s18
	v_cndmask_b32_e64 v26, v26, v27, s18
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v27, v3, v1, s18
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v1, v1, v3, s18
	v_cndmask_b32_e64 v3, v4, v2, s18
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e64 v2, v2, v4, s18
	v_permlanex16_b32 v4, v7, s16, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x5040504, v5
	v_mov_b16_e32 v34.h, 0
	v_and_b32_e32 v6, 0x7060706, v6
	v_permlanex16_b32 v7, v26, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v2, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v26, v4, v8, v5
	v_perm_b32 v4, v4, v8, v6
	v_perm_b32 v8, v7, v24, v5
	v_perm_b32 v7, v7, v24, v6
	v_perm_b32 v24, v1, v27, v5
	v_perm_b32 v5, v2, v3, v5
	v_perm_b32 v2, v2, v3, v6
	v_mov_b16_e32 v3.l, v26.h
	v_mov_b16_e32 v3.h, v34.h
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s22, v15
	v_cmp_gt_i32_e64 s2, s22, v14
	v_cmp_gt_i32_e32 vcc_lo, s22, v13
	v_cmp_gt_i32_e64 s3, s22, v10
	v_cmp_gt_i32_e64 s1, s22, v9
	v_cmp_gt_i32_e64 s5, s22, v0
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v34.l, v4.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	buffer_store_b16 v26, v20, s[20:23], 0 offen
	v_add_lshl_u32 v20, v25, v21, 1
	s_clause 0x1
	buffer_store_b16 v3, v23, s[20:23], 0 offen
	buffer_store_b16 v4, v22, s[20:23], 0 offen
	v_add_lshl_u32 v3, v25, v19, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v1, v27, v6
	v_mov_b16_e32 v27.l, v8.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v20, s12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v34.h
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s11
	s_clause 0x1
	buffer_store_b16 v34, v4, s[20:23], 0 offen
	buffer_store_b16 v8, v3, s[20:23], 0 offen
	v_add_lshl_u32 v3, v25, v16, 1
	v_add_lshl_u32 v4, v25, v15, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v7.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v27, v18, s[20:23], 0 offen
	buffer_store_b16 v7, v17, s[20:23], 0 offen
	v_add_lshl_u32 v7, v25, v14, 1
	v_add_lshl_u32 v8, v25, v13, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s4, s0, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s6
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v29.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_store_b16 v6, v3, s[20:23], 0 offen
	buffer_store_b16 v24, v4, s[20:23], 0 offen
	v_add_lshl_u32 v3, v25, v12, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v28.l, v1.h
	.loc	1 1049 17                       ; attention.py:1049:17
	s_clause 0x1
	buffer_store_b16 v29, v7, s[20:23], 0 offen
	buffer_store_b16 v1, v8, s[20:23], 0 offen
	v_add_lshl_u32 v1, v25, v11, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s8
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v4, v25, v10, 1
	v_add_lshl_u32 v0, v25, v0, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s7
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v6, v25, v9, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v28.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v5.h
	v_mov_b16_e32 v31.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v2.h
	v_mov_b16_e32 v30.h, v34.h
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v28, v3, s[20:23], 0 offen
	buffer_store_b16 v5, v1, s[20:23], 0 offen
	buffer_store_b16 v31, v4, s[20:23], 0 offen
	buffer_store_b16 v2, v6, s[20:23], 0 offen
	buffer_store_b16 v30, v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp104:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_vgpr, 188
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11168
; TotalNumSgprs: 56
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 56
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm32_bn16_w4_s1_ds1.kd
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
