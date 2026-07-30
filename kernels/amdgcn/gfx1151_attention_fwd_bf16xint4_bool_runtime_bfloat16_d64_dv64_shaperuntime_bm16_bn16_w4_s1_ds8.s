	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s33, s[0:1], 0x68
	s_load_b128 s[16:19], s[0:1], 0x4c
	s_load_b64 s[20:21], s[0:1], 0x0
	s_load_b32 s40, s[0:1], 0x5c
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v63, 6, v0
	.loc	1 572 22                        ; attention.py:572:22
	v_and_b32_e32 v51, 63, v0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v9, v0, 6, 1
	v_and_b32_e32 v67, 15, v0
	v_and_b32_e32 v33, 64, v0
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v10, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v9, 0x90, v9
	v_and_b32_e32 v10, 0x70, v10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s12
	s_bitcmp1_b32 s12, 8
	.loc	1 597 26                        ; attention.py:597:26
	s_mul_i32 s10, s3, s18
	s_cselect_b32 s35, -1, 0
	s_cmp_eq_u32 s4, 1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[52:53], null, s40, v63, v[51:52]
	s_cselect_b32 s28, -1, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s11, s33
	.loc	1 559 27                        ; attention.py:559:27
	s_abs_i32 s5, s2
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s11
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s2, s33
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v10, v67, 7, v10
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s6, s6, 31
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[53:54], null, s40, 6, v[52:53]
	v_lshl_add_u32 v64, s40, 1, v52
	v_lshl_add_u32 v65, s40, 2, v52
	v_lshl_add_u32 v66, s40, 3, v52
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v13, 16, v10
	v_xor_b32_e32 v14, 32, v10
	v_xor_b32_e32 v15, 48, v10
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[54:55], null, s40, 10, v[52:53]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_readfirstlane_b32 s4, v1
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[55:56], null, s40, 12, v[52:53]
	v_mad_u64_u32 v[56:57], null, s40, 14, v[52:53]
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v16, 64, v10
	v_add_nc_u32_e32 v69, 0, v10
	v_xor_b32_e32 v17, 0x50, v10
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s24, s4
	s_sub_i32 s4, 0, s11
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v18, 0x60, v10
	v_xor_b32_e32 v10, 0x70, v10
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s4, s4, s24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v73, 0, v13
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s4, s24, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v74, 0, v14
	.loc	1 609 32                        ; attention.py:609:32
	s_add_i32 s24, s24, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v75, 0, v15
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s5, s24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v76, 0, v16
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_i32 s7, s4, s11
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v77, 0, v17
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s8, s5, s11
	s_cmp_ge_u32 s5, s11
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v78, 0, v18
	.loc	1 559 27                        ; attention.py:559:27
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s8, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s11
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v79, 0, v10
	.loc	1 559 27                        ; attention.py:559:27
	s_cselect_b32 s4, s7, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s8, s16
	.loc	1 566 23                        ; attention.py:566:23
	s_abs_i32 s9, s3
	s_cvt_f32_u32 s5, s8
	s_sub_i32 s7, 0, s8
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 566 23                        ; attention.py:566:23
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_sub_i32 s4, s4, s6
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s4, s33
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s29, s4, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s34, s2, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s29, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 566 23                        ; attention.py:566:23
	v_readfirstlane_b32 s5, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v3, 4, v2
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, s18, v2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, 6, v2
	v_or_b32_e32 v5, 8, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v6, 10, v2
	v_or_b32_e32 v7, 12, v2
	v_or_b32_e32 v8, 14, v2
	.loc	1 566 23                        ; attention.py:566:23
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
	.loc	1 568 22                        ; attention.py:568:22
	s_abs_i32 s9, s17
	s_xor_b32 s27, s16, s17
	s_cvt_f32_u32 s2, s9
	s_sub_i32 s4, 0, s9
	s_ashr_i32 s27, s27, 31
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s5, s40, v51
	.loc	1 568 22                        ; attention.py:568:22
	v_rcp_iflag_f32_e32 v1, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s2, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, 2, v2
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_cvt_u32_f32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, s18, v1
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_i32 s6, s4, s7
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s4, s18, v3
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s26, s7, s6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s6, s18, v4
	.loc	1 568 22                        ; attention.py:568:22
	s_add_i32 s26, s7, s26
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s7, s18, v5
	.loc	1 568 22                        ; attention.py:568:22
	s_mul_hi_u32 s26, s8, s26
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s30, s26, s9
	s_add_i32 s31, s26, 1
	s_sub_i32 s30, s8, s30
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s8, s18, v6
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s36, s30, s9
	s_cmp_ge_u32 s30, s9
	s_cselect_b32 s26, s31, s26
	s_cselect_b32 s30, s36, s30
	s_add_i32 s31, s26, 1
	s_cmp_ge_u32 s30, s9
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s9, s18, v7
	.loc	1 568 22                        ; attention.py:568:22
	s_cselect_b32 s26, s31, s26
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s30, s10, s29
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s30, s30, s40
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s10, s18, v8
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, s30, v52, 1
	v_add_lshl_u32 v2, s30, v64, 1
	v_add_lshl_u32 v3, s30, v65, 1
	v_add_lshl_u32 v4, s30, v53, 1
	v_add_lshl_u32 v5, s30, v66, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v6, s30, v54, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v7, s30, v55, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s6
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v8, s30, v56, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s7
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s8
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v34, 1, v51
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s9
	.loc	1 606 16                        ; attention.py:606:16
	s_add_i32 s2, s19, 15
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s5, s10
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s4, s2, 31
	.loc	1 599 26                        ; attention.py:599:26
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
	.loc	1 606 15                        ; attention.py:606:15
	s_lshr_b32 s4, s4, 28
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, v9, v34
	.loc	1 568 22                        ; attention.py:568:22
	s_xor_b32 s6, s26, s27
	.loc	1 606 15                        ; attention.py:606:15
	s_add_i32 s2, s2, s4
	.loc	1 568 22                        ; attention.py:568:22
	s_sub_i32 s8, s6, s27
	.loc	1 606 15                        ; attention.py:606:15
	s_ashr_i32 s6, s2, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v11, 0x120, v9
	.loc	1 569 19                        ; attention.py:569:19
	s_abs_i32 s7, s8
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s4, s6, s33
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v12, 0x240, v9
	.loc	1 569 19                        ; attention.py:569:19
	s_cvt_f32_u32 s9, s7
	.loc	1 609 33                        ; attention.py:609:33
	s_add_i32 s4, s4, -1
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v68, 0, v9
	v_xor_b32_e32 v9, 0x360, v9
	.loc	1 606 14                        ; attention.py:606:14
	s_and_b32 s10, s2, -16
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s2, s4
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v70, 0, v11
	.loc	1 569 19                        ; attention.py:569:19
	v_rcp_iflag_f32_e32 v35, s9
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s9, s2, s24
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v71, 0, v12
	v_add_nc_u32_e32 v72, 0, v9
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s20, s9, s11
	s_xor_b32 s4, s4, s33
	s_sub_i32 s2, s2, s20
	s_ashr_i32 s4, s4, 31
	s_add_i32 s20, s9, 1
	s_sub_i32 s21, s2, s11
	s_cmp_ge_u32 s2, s11
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(7)
	ds_store_b16 v68, v1
	s_waitcnt vmcnt(6)
	ds_store_b16 v68, v5 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v70, v2
	s_waitcnt vmcnt(4)
	ds_store_b16 v70, v6 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v71, v3
	s_waitcnt vmcnt(2)
	ds_store_b16 v71, v7 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v72, v4
	s_waitcnt vmcnt(0)
	ds_store_b16 v72, v8 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v69
	ds_load_b128 v[5:8], v73
	ds_load_b128 v[9:12], v74
	ds_load_b128 v[13:16], v75
	ds_load_b128 v[17:20], v76
	ds_load_b128 v[21:24], v77
	ds_load_b128 v[25:28], v78
	ds_load_b128 v[29:32], v79
	.loc	1 609 32                        ; attention.py:609:32
	s_cselect_b32 s9, s20, s9
	s_cselect_b32 s2, s21, s2
	s_add_i32 s20, s9, 1
	s_cmp_ge_u32 s2, s11
	s_cselect_b32 s2, s20, s9
	.loc	1 569 19                        ; attention.py:569:19
	v_readfirstlane_b32 s9, v35
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s2, s4
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s2, s34, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_lshl_b32 s42, s2, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_cmp_eq_u32_e64 s2, 0, v33
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl4_add_u32 s4, s4, s42
	.loc	1 611 18 is_stmt 0              ; attention.py:611:18
	s_min_i32 s43, s10, s4
	.loc	1 612 9 is_stmt 1               ; attention.py:612:9
	s_bfe_u32 s4, s12, 0x10008
	s_cbranch_scc1 .LBB0_4
; %bb.1:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_load_b32 s41, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
	s_and_not1_b32 vcc_lo, exec_lo, s28
	s_cbranch_vccz .LBB0_5
.LBB0_2:
	.loc	1 778 24                        ; attention.py:778:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s41, v51
	v_lshlrev_b32_e32 v80, 2, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s42, s43
	s_cbranch_scc1 .LBB0_6
.LBB0_3:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshlrev_b32_e32 v41, 2, v0
	s_mov_b32 s10, 0
	s_branch .LBB0_7
.Ltmp2:
.LBB0_4:
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s14, s15
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s10, s15, s13
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, s29
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s10, s10, s29
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s4, s4, 16
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s10, s10, 0
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s4, s19, s4
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s10, s10, 0x7ffffff0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s4, s4, 15
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s42, s42, s10
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s11, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 28
	s_add_i32 s4, s4, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 33 is_stmt 0              ; attention.py:619:33
	s_and_b32 s4, s4, -16
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s43, s43, s4
	s_load_b32 s41, s[0:1], 0x64
	.loc	1 620 9 is_stmt 1               ; attention.py:620:9
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
	.loc	1 622 34 is_stmt 1              ; attention.py:622:34
	s_ashr_i32 s10, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 28
	s_add_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 622 33 is_stmt 0              ; attention.py:622:33
	s_and_b32 s4, s4, -16
	.loc	1 622 18                        ; attention.py:622:18
	s_min_i32 s43, s43, s4
	.loc	1 778 24 is_stmt 1              ; attention.py:778:24
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s4, s41, v51
	v_lshlrev_b32_e32 v80, 2, v0
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s42, s43
	s_cbranch_scc0 .LBB0_3
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr41
.LBB0_7:                                ; %Flow
	s_load_b64 s[20:21], s[0:1], 0x40
	v_and_b32_e32 v61, 0x70, v0
	v_lshlrev_b32_e32 v62, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_16
; %bb.8:                                ; %.lr.ph
	s_xor_b32 s10, s3, s16
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_ashr_i32 s10, s10, 31
	s_ashr_i32 s8, s8, 31
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
	.loc	1 569 19 is_stmt 1              ; attention.py:569:19
	s_xor_b32 s23, s10, s8
	s_mul_i32 s22, s9, s7
	s_load_b128 s[36:39], s[0:1], 0x6c
	s_sub_i32 s8, s11, s22
	.loc	1 734 33                        ; attention.py:734:33
	s_mul_i32 s22, s12, s17
	s_load_b32 s17, s[0:1], 0x7c
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v35, 4, v61
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s8, s7
	s_cmp_ge_u32 s8, s7
	s_load_b128 s[24:27], s[0:1], 0x28
	s_cselect_b32 s9, s10, s9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v37, s29, v35
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s8, s7
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, 8, v35
	.loc	1 569 19                        ; attention.py:569:19
	s_cselect_b32 s7, s10, s9
	s_load_b128 s[8:11], s[0:1], 0x8
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v81, s15, v37
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, s18, v37
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v37, 0, v34
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s29, v36
	v_and_b32_e32 v39, 1, v0
	v_lshrrev_b32_e32 v41, 1, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v34, s17, v67
	v_dual_mov_b32 v105, 0xff800000 :: v_dual_and_b32 v42, 14, v0
	v_lshlrev_b32_e32 v43, 6, v39
	v_lshlrev_b32_e32 v39, 5, v39
	v_and_b32_e32 v44, 64, v80
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v82, s15, v38
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, s18, v38
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[57:58], null, s39, v36, v[34:35]
	v_bfe_i32 v36, v0, 3, 1
	v_mad_u64_u32 v[58:59], null, s39, v35, v[34:35]
	v_mad_u64_u32 v[59:60], null, s41, v63, v[51:52]
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v36, 0x84, v36
	v_lshrrev_b32_e32 v40, 5, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_xor_b32 s7, s7, s23
	.loc	1 772 39                        ; attention.py:772:39
	s_lshl_b32 s45, s6, 3
	.loc	1 569 19                        ; attention.py:569:19
	s_sub_i32 s7, s7, s23
	v_and_or_b32 v36, v41, 3, v36
	v_mul_u32_u24_e32 v41, 0x42, v42
	.loc	1 734 33                        ; attention.py:734:33
	s_add_i32 s48, s7, s22
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s29, s29, s39
	.loc	1 734 32                        ; attention.py:734:32
	s_mul_i32 s44, s48, s19
	v_or3_b32 v88, v36, v39, v44
	v_and_b32_e32 v36, 16, v0
	v_add3_u32 v89, v41, v39, v44
	v_dual_mov_b32 v41, 0x5410 :: v_dual_add_nc_u32 v86, s14, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v39, 4, v88
	v_cmp_eq_u32_e32 vcc_lo, 0, v36
	v_mov_b32_e32 v36, 0x7632
	v_and_b32_e32 v38, 60, v62
	v_xor_b32_e32 v42, 8, v89
	v_xor_b32_e32 v44, 12, v89
	v_cndmask_b32_e32 v41, 0x1054, v41, vcc_lo
	v_cndmask_b32_e32 v36, 0x3276, v36, vcc_lo
	v_xor_b32_e32 v46, 16, v89
	v_xor_b32_e32 v47, 20, v89
	v_mov_b32_e32 v103, 0
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v36, v36, 8, v36
	v_xor_b32_e32 v48, 28, v89
	.loc	1 773 30                        ; attention.py:773:30
	s_mul_i32 s47, s48, s45
	.loc	1 794 21                        ; attention.py:794:21
	s_mul_i32 s48, s48, s6
	v_and_b32_e32 v41, 0x540054, v41
	v_and_b32_e32 v36, 0x760076, v36
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s6, s12, s37
	v_subrev_nc_u32_e32 v83, s13, v81
	v_subrev_nc_u32_e32 v84, s13, v82
	v_lshl_or_b32 v41, v41, 4, v41
	v_lshl_or_b32 v36, v36, 4, v36
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_add_nc_u32 v85, s14, v81
	v_add_nc_u32_e32 v92, 0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v60, 0x5040504, v41
	v_and_b32_e32 v90, 0x7060706, v36
	v_lshl_add_u32 v36, v67, 1, 0
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v34, 0x60, v0
	v_lshlrev_b32_e32 v33, 2, v33
	v_add_nc_u32_e32 v94, 0, v42
	v_add_nc_u32_e32 v95, 0, v44
	v_add_nc_u32_e32 v96, 0, v46
	v_add_nc_u32_e32 v97, 0, v47
	v_add_nc_u32_e32 v101, v37, v33
	v_mov_b32_e32 v37, v41
	v_lshrrev_b32_e32 v45, 3, v34
	v_add_nc_u32_e32 v102, v36, v34
	v_mov_b32_e32 v36, v41
	v_or3_b32 v87, v40, v43, v38
	v_lshl_or_b32 v38, v34, 2, v38
	v_xor_b32_e32 v40, 4, v89
	v_add_nc_u32_e32 v99, 0, v48
	v_mov_b32_e32 v33, 0
	v_xor_b32_e32 v35, 0x84, v87
	v_xor_b32_e32 v38, v38, v45
	v_xor_b32_e32 v45, 24, v89
	v_dual_mov_b32 v34, v41 :: v_dual_add_nc_u32 v93, 0, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_add_nc_u32 v91, 0, v35
	v_or_b32_e32 v38, v38, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v35, v41 :: v_dual_add_nc_u32 v98, 0, v45
	v_mov_b32_e32 v39, v41
	v_mov_b32_e32 v40, v41
	v_add_nc_u32_e32 v100, 0, v38
	v_mov_b32_e32 v38, v41
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s46, s36, 0x3fb8aa3b
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s16, s16, s38
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_add_i32 s49, s6, s29
	s_mov_b64 s[22:23], s[26:27]
	s_xor_b32 s18, s28, -1
	s_add_i32 s49, s49, s16
	s_lshl_b32 s50, s41, 1
	s_lshl_b32 s51, s41, 2
	s_mul_i32 s52, s41, 6
	s_and_b32 s37, s11, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s53, 0x76543210
	s_mov_b32 s36, s10
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 27 is_stmt 0                ; attention.py:0:27
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v50.h, 0xff, v50.h
	v_and_b16 v50.l, 0xff, v50.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v113, s46, v45 :: v_dual_add_nc_u32 v108, 0, v87
	v_dual_mul_f32 v110, s46, v42 :: v_dual_add_nc_u32 v109, 0, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v50.h
	v_cmp_ne_u16_e64 s6, 0, v50.l
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 771 36 is_stmt 1              ; attention.py:771:36
	s_lshr_b32 s14, s42, 31
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 vcc_lo, s10, vcc_lo
	s_and_b32 s6, s9, s6
	v_cndmask_b32_e64 v50, 0, 1, vcc_lo
	v_cndmask_b32_e64 v107, 0, 1, s6
	.loc	1 771 36                        ; attention.py:771:36
	s_add_i32 s14, s42, s14
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v111, s46, v43 :: v_dual_mul_f32 v112, s46, v44
	.loc	1 759 25                        ; attention.py:759:25
	ds_store_b8 v108, v50
	ds_store_b8 v91, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v50, v109
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v50, v92
	ds_load_u8_d16 v107, v109 offset:8
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v107, v92 offset:8
	ds_load_u8_d16 v108, v109 offset:16
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v108, v92 offset:16
	ds_load_u8_d16 v109, v109 offset:24
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v109, v92 offset:24
	.loc	1 771 36                        ; attention.py:771:36
	s_ashr_i32 s14, s14, 1
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	.loc	1 774 30                        ; attention.py:774:30
	s_add_i32 s15, s14, s47
	.loc	1 764 26                        ; attention.py:764:26
	s_barrier
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v46, s46, v46 :: v_dual_mul_f32 v47, s46, v47
	v_dual_mul_f32 v48, s46, v48 :: v_dual_mul_f32 v49, s46, v49
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v115.h, 0
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v116, v104, v104
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v42.l, 1, v50.l
	v_and_b16 v42.h, 1, v50.h
	v_and_b16 v43.l, 1, v107.l
	v_and_b16 v43.h, 1, v107.h
	v_and_b16 v44.l, 1, v108.l
	v_cmp_eq_u16_e64 s6, 1, v42.l
	v_cmp_eq_u16_e64 s8, 1, v42.h
	.loc	1 764 26                        ; attention.py:764:26
	v_add_nc_u32_e32 v42, 0, v89
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v44.h, 1, v108.h
	v_and_b16 v45.l, 1, v109.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v50, 0xff800000, v110, s6
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b16 v45.h, 1, v109.h
	v_cmp_eq_u16_e64 s7, 1, v43.l
	v_cmp_eq_u16_e64 s11, 1, v43.h
	v_cmp_eq_u16_e64 s12, 1, v44.h
	.loc	1 764 26                        ; attention.py:764:26
	ds_store_b32 v42, v50
	v_mad_u64_u32 v[42:43], null, s15, s41, v[59:60]
	.loc	1 771 36                        ; attention.py:771:36
	v_add_nc_u32_e32 v43, s14, v63
	s_ashr_i32 s15, s42, 31
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s10, 1, v45.l
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s15, s15, 28
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s13, 1, v45.h
	.loc	1 798 53                        ; attention.py:798:53
	s_add_i32 s15, s42, s15
	.loc	1 777 27                        ; attention.py:777:27
	v_cmp_gt_i32_e64 s14, s45, v43
	.loc	1 798 53                        ; attention.py:798:53
	s_ashr_i32 s15, s15, 4
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u16_e64 s9, 1, v44.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v44, 0xff800000, v47, s12
	v_cndmask_b32_e64 v47, 0xff800000, v48, s10
	v_add_nc_u32_e32 v48, s50, v42
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s15, s15, s48
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v45, 0xff800000, v49, s13
	v_add_nc_u32_e32 v49, s51, v42
	v_add_nc_u32_e32 v110, s52, v42
	.loc	1 777 26                        ; attention.py:777:26
	s_and_b32 s14, s4, s14
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s15, s15, s41
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v107, 0xff800000, v111, s8
	v_cndmask_b32_e64 v108, 0xff800000, v112, s7
	v_cndmask_b32_e64 v109, 0xff800000, v113, s11
	v_cndmask_b32_e64 v46, 0xff800000, v46, s9
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s14
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v111, s15, v51, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v48, 0x80000000, v48, s14
	v_cndmask_b32_e64 v49, 0x80000000, v49, s14
	v_cndmask_b32_e64 v110, 0x80000000, v110, s14
	.loc	1 764 26                        ; attention.py:764:26
	ds_store_b32 v93, v107
	ds_store_b32 v94, v108
	ds_store_b32 v95, v109
	ds_store_b32 v96, v46
	ds_store_b32 v97, v44
	ds_store_b32 v98, v47
	ds_store_b32 v99, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	s_clause 0x3
	buffer_load_u8 v112, v42, s[36:39], 0 offen
	buffer_load_u8 v48, v48, s[36:39], 0 offen
	buffer_load_u8 v49, v49, s[36:39], 0 offen
	buffer_load_u8 v110, v110, s[36:39], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v42, 0x80000000, v111, s4
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v118, v50, v107, v108
	v_max3_f32 v119, v109, v46, v44
.Ltmp4:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v123.h, v115.h
	v_mov_b16_e32 v124.h, v115.h
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_u16 v111, v42, s[24:27], 0 offen
	.loc	1 764 26                        ; attention.py:764:26
	ds_load_b32 v42, v100
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v117.h, v115.h
	v_mov_b16_e32 v122.h, v115.h
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s42, s42, 16
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v105, v105, v105
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s42, s43
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v120, v47, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v118, v118, v119, v120
.Ltmp6:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v119.h, v115.h
	v_mov_b16_e32 v120.h, v115.h
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v125, v118, s53, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v113, v42
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v114, v42, v42 :: v_dual_lshlrev_b32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v125, v106, v118, v125
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v113, v113 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	1 782 31                        ; attention.py:782:31
	v_add_nc_u32_e32 v128, 9, v43
	v_or_b32_e32 v126, 1, v43
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v50, v50, v125 :: v_dual_add_nc_u32 v127, 5, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v113, v113, v113 :: v_dual_add_nc_u32 v118, 13, v43
.Ltmp13:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v113, v114, v113
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v114, v113
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v50, 0, v50, s6
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v114, v114 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v123.l, v50.h
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v114, v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v114
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v114, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v114, v114 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v114, v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v113, v113, v114
.Ltmp22:
	.loc	1 785 30                        ; attention.py:785:30
	v_mov_b16_e32 v114.h, v115.h
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v121, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v121, v121, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v113, v113, v121
.Ltmp25:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v105, v105, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v42, v42, v105
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 767 74 is_stmt 1              ; attention.py:767:74
	v_dual_sub_f32 v43, v106, v125 :: v_dual_cndmask_b32 v42, 0, v42
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v43, v43
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v106
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v108, v108, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	v_dual_sub_f32 v44, v44, v125 :: v_dual_cndmask_b32 v43, 0, v43
	v_sub_f32_e32 v107, v107, v125
	v_sub_f32_e32 v46, v46, v125
	v_sub_f32_e32 v47, v47, v125
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v108, v108
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v36, v36, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v107, v107
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v35, v35, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v46, v46
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v38, v38, v43
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v47, v47
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v33, v33, v43
	v_mul_f32_e32 v34, v34, v43
	v_mul_f32_e32 v37, v37, v43
	v_mul_f32_e32 v39, v39, v43
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v108, 0, v108, s7
	v_cndmask_b32_e64 v106, 0, v107, s8
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v107, v42
.Ltmp27:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v44, v44
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v50, v50
	v_mov_b16_e32 v124.l, v108.h
	v_cmp_o_f32_e64 s6, v106, v106
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v107, v107 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp29:
	.loc	1 768 62                        ; attention.py:768:62
	v_dual_sub_f32 v109, v109, v125 :: v_dual_add_f32 v42, v42, v107
	v_sub_f32_e32 v45, v45, v125
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v129, 0, v44, s12
	v_cndmask_b32_e64 v44, 0, v46, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v109, v109
.Ltmp30:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v46, v42
.Ltmp31:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v45, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s9, v108, v108
	v_mov_b16_e32 v119.l, v44.h
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v40, v40, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v121, 0, v109, s11
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v42, v46
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp35:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v130, 0, v45, s13
	v_cndmask_b32_e64 v45, 0, v47, s10
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v42, 1, v123
	v_cmp_o_f32_e64 s11, v44, v44
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v46, v43
.Ltmp37:
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v121, v121
	v_mov_b16_e32 v120.l, v45.h
	v_add3_u32 v50, v50, v42, 0x7fff
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v42, v116, v113
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v46, v46 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v47, 1, v124
	v_and_b32_e32 v109, 1, v120
	v_cmp_o_f32_e64 s12, v45, v45
	v_cmp_o_f32_e64 s10, v129, v129
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v116, v43, v46 :: v_dual_and_b32 v107, 1, v119
.Ltmp41:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v47, v108, v47, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s7
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s7, s19, v126
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v50, v116
.Ltmp43:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v43, v44, v107, 0x7fff
	v_add3_u32 v44, v45, v109, 0x7fff
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v45, v104, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v119.l, 0x7fff, v47.h, s9
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v120.l, 0x7fff, v43.h, s11
	v_cndmask_b16 v123.l, 0x7fff, v44.h, s12
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	.loc	1 785 32                        ; attention.py:785:32
	s_waitcnt vmcnt(4)
	v_lshrrev_b16 v115.l, 4, v112.l
	.loc	1 783 76                        ; attention.py:783:76
	s_waitcnt vmcnt(3)
	v_and_b16 v43.h, v48.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v44.l, v49.l, 15
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v46, 15, v48
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v117.l, 4, v48.l
	v_lshrrev_b16 v114.l, 4, v49.l
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v124, v45
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v43.l, v112.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v44.h, v110.l, 15
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v111
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v107, 15, v49
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v49, 0, v115, s7
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s7, s19, v127
	.loc	1 784 29                        ; attention.py:784:29
	v_and_b32_e32 v45, 15, v112
	v_and_b32_e32 v108, 15, v110
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v122.l, 4, v110.l
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v113, -16, v46
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v109, 0, v117, s7
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s7, s19, v128
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v112, -16, v45
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v115.l, v106.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v110, 0, v114, s7
	.loc	1 782 30                        ; attention.py:782:30
	v_cmp_gt_i32_e64 s7, s19, v118
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v114, -16, v107
	.loc	1 783 32                        ; attention.py:783:32
	v_cndmask_b32_e64 v111, 0, v122, s7
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v43.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b32_e64 v45, v45, v112, s7
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v43.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v112, -16, v110
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v43, v46, v113, s7
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v44.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v113, -16, v111
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v45, v45, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b32_e64 v46, v107, v114, s7
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v44.h
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b32_e32 v107, -16, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v43, v43, v48
	.loc	1 786 54                        ; attention.py:786:54
	v_or_b32_e32 v117, -16, v108
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s9, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b32_e64 v44, v108, v117, s7
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_lt_u32_e64 s7, 7, v49
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b32_e32 v108, -16, v109
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_mul_f32_e32 v46, v46, v48
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v49, v49, v107, s7
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s7, 7, v109
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v117, 1, v115
	v_mov_b16_e32 v115.l, v121.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v44, v48, v44
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v107, v109, v108, s7
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s7, 7, v110
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v118, 1, v115
	v_mov_b16_e64 v115.l, v129.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v49, v49, v48
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b32_e64 v108, v110, v112, s7
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_lt_u32_e64 s7, 7, v111
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_bfe_u32 v110, v43, 16, 1
	v_bfe_u32 v112, v44, 16, 1
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v107, v107, v48
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 787 30 is_stmt 1              ; attention.py:787:30
	v_cndmask_b32_e64 v109, v111, v113, s7
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v111, v46, 16, 1
	v_cmp_o_f32_e64 s7, v45, v45
	v_add3_u32 v43, v43, v110, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v108, v48, v108
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v110, v107, 16, 1
	v_cmp_o_f32_e64 s11, v46, v46
	v_cmp_o_f32_e64 s12, v44, v44
	v_add3_u32 v46, v46, v111, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v48, v48, v109
	.loc	1 814 30                        ; attention.py:814:30
	v_bfe_u32 v109, v45, 16, 1
	v_bfe_u32 v111, v108, 16, 1
	v_add3_u32 v44, v44, v112, 0x7fff
	v_cmp_o_f32_e64 s13, v49, v49
	v_bfe_u32 v112, v48, 16, 1
	v_add3_u32 v45, v45, v109, 0x7fff
	v_bfe_u32 v109, v49, 16, 1
	v_cmp_o_f32_e64 s14, v107, v107
	v_cmp_o_f32_e64 s15, v108, v108
	v_cmp_o_f32_e64 s16, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v45.h, s7
	v_add3_u32 v45, v49, v109, 0x7fff
	v_add3_u32 v49, v107, v110, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v46.h, s11
	v_add3_u32 v46, v108, v111, 0x7fff
	v_add3_u32 v48, v48, v112, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s13
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s9
	v_cndmask_b16 v45.h, 0x7fff, v49.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s12
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s15
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s16
	ds_store_b16 v101, v43
	ds_store_b16 v101, v45 offset:128
	ds_store_b16_d16_hi v101, v43 offset:512
	ds_store_b16_d16_hi v101, v45 offset:640
	ds_store_b16 v101, v44 offset:1024
	ds_store_b16 v101, v46 offset:1152
	ds_store_b16_d16_hi v101, v44 offset:1536
	ds_store_b16_d16_hi v101, v46 offset:1664
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v107, v102
	ds_load_u16_d16 v108, v102 offset:256
	ds_load_u16_d16 v109, v102 offset:512
	ds_load_u16_d16 v110, v102 offset:768
	ds_load_u16_d16 v111, v102 offset:1024
	ds_load_u16_d16 v112, v102 offset:1280
	ds_load_u16_d16 v113, v102 offset:1536
	ds_load_u16_d16 v114, v102 offset:1792
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v44, 1, v115
	v_mov_b16_e64 v115.l, v130.h
	v_add3_u32 v45, v106, v117, 0x7fff
	v_add3_u32 v46, v121, v118, 0x7fff
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v104
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v44, v129, v44, 0x7fff
	v_and_b32_e32 v49, 1, v115
	v_cndmask_b16 v47.h, 0x7fff, v45.h, s6
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v102 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v108, v102 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v102 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v102 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v102 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v102 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v102 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v102 offset:1920
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v45, v130, v49, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v46.h, s8
	v_permlanex16_b32 v46, v47, s53, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v120.h, 0x7fff, v44.h, s10
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v48, 0, v124, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v123.h, 0x7fff, v45.h, vcc_lo
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v43, v116, v50
.Ltmp47:
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v44, v119, s53, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v115, v46, v47, v60
	v_permlanex16_b32 v45, v120, s53, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v116, v46, v47, v90
	v_permlanex16_b32 v46, v123, s53, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_dual_fmac_f32 v43, v103, v48 :: v_dual_mov_b32 v104, v42
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v117, v44, v119, v60
	v_perm_b32 v118, v44, v119, v90
	v_perm_b32 v119, v45, v120, v60
	v_perm_b32 v120, v45, v120, v90
	v_perm_b32 v121, v46, v123, v60
	v_perm_b32 v122, v46, v123, v90
	v_dual_mov_b32 v106, v125 :: v_dual_mov_b32 v103, v43
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[107:114], v[115:122], v[33:40]
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_17
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v42, s42, v63
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s6, s42, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_mul_i32 s13, s6, s40
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v47, 10, v42
	v_add_nc_u32_e32 v44, 4, v42
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e32 vcc_lo, s19, v42
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v49, 14, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s10, s19, v47
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v47, s13, v54, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v48, 12, v42
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s7, s19, v44
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v44, s13, v65, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v43, 2, v42
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 738 65 is_stmt 0              ; attention.py:738:65
	v_cmp_gt_i32_e64 s11, s19, v48
	.loc	1 736 32 is_stmt 1              ; attention.py:736:32
	v_add_lshl_u32 v48, s13, v55, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v45, 6, v42
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s6, s19, v43
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v43, s13, v64, 1
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s12, s19, v49
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v49, s13, v56, 1
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s8, s19, v45
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v45, s13, v53, 1
	.loc	1 708 31                        ; attention.py:708:31
	v_add_nc_u32_e32 v46, 8, v42
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v42, s13, v52, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s6
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s7
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v44, 0x80000000, v44, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s8
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s9, s19, v46
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v46, s13, v66, 1
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s10
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s11
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 738 30                        ; attention.py:738:30
	s_and_b32 vcc_lo, s5, s12
	.loc	1 736 32                        ; attention.py:736:32
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0x7
	buffer_load_u16 v50, v42, s[28:31], 0 offen
	buffer_load_u16 v46, v46, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v47, v47, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v45, v45, s[28:31], 0 offen
	buffer_load_u16 v49, v49, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v42, v41
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(7)
	ds_store_b16 v68, v50
	s_waitcnt vmcnt(6)
	ds_store_b16 v68, v46 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b16 v70, v43
	s_waitcnt vmcnt(4)
	ds_store_b16 v70, v47 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v71, v44
	s_waitcnt vmcnt(2)
	ds_store_b16 v71, v48 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v72, v45
	s_waitcnt vmcnt(0)
	ds_store_b16 v72, v49 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[107:110], v69
	ds_load_b128 v[111:114], v73
	ds_load_b128 v[115:118], v74
	ds_load_b128 v[119:122], v75
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v48, v41
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[123:126], v76
	ds_load_b128 v[127:130], v77
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v43, v41
	v_mov_b32_e32 v44, v41
	v_mov_b32_e32 v45, v41
	v_mov_b32_e32 v46, v41
	v_dual_mov_b32 v47, v41 :: v_dual_add_nc_u32 v50, s42, v67
	v_mov_b32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v48, v47
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v46, v45
	v_mov_b32_e32 v45, v44
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v43, v42
	v_mov_b32_e32 v42, v41
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[131:134], v78
	ds_load_b128 v[135:138], v79
	.loc	1 745 17                        ; attention.py:745:17
	v_cmp_le_i32_e32 vcc_lo, v50, v81
	v_cmp_le_i32_e64 s6, v50, v82
	.loc	1 738 65                        ; attention.py:738:65
	v_cmp_gt_i32_e64 s7, s19, v50
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[107:114], v[1:8], v[42:49]
	.loc	1 745 17                        ; attention.py:745:17
	s_or_b32 s8, s18, vcc_lo
	s_or_b32 s6, s18, s6
	s_and_b32 s8, s0, s8
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[115:122], v[9:16], v[42:49]
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 s6, s1, s6
	s_and_b32 s10, s7, s8
	.loc	1 747 17                        ; attention.py:747:17
	s_and_not1_b32 vcc_lo, exec_lo, s35
	.loc	1 745 17                        ; attention.py:745:17
	s_and_b32 s9, s7, s6
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[123:130], v[17:24], v[42:49]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[42:49], v[131:138], v[25:32], v[42:49]
	.loc	1 747 17                        ; attention.py:747:17
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e32 vcc_lo, v50, v83
	v_cmp_ge_i32_e64 s6, v50, v84
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s7, v50, v85
	v_cmp_le_i32_e64 s8, v50, v86
	s_and_not1_b32 s11, s10, exec_lo
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s6, s6, s8
	s_and_b32 s7, s7, s10
	s_and_b32 s6, s6, s9
	s_and_b32 s7, s7, exec_lo
	s_and_not1_b32 s8, s9, exec_lo
	s_and_b32 s6, s6, exec_lo
	s_or_b32 s10, s11, s7
	s_or_b32 s9, s8, s6
.LBB0_12:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v50.l, 0
	.loc	1 752 25 is_stmt 1              ; attention.py:752:25
	s_mul_i32 s6, s42, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s6, s49, s6
	v_mov_b16_e32 v50.h, v50.l
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s7, s10
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v107, s6, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v107, vcc_lo, s22, v107
	v_add_co_ci_u32_e64 v108, null, s23, v108, vcc_lo
	global_load_d16_hi_u8 v50, v[107:108], off
.LBB0_14:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s7
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s7, s9
	s_cbranch_execz .LBB0_9
; %bb.15:                               ;   in Loop: Header=BB0_10 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v107, s6, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v107, vcc_lo, s22, v107
	v_add_co_ci_u32_e64 v108, null, s23, v108, vcc_lo
	global_load_d16_u8 v50, v[107:108], off
	s_branch .LBB0_9
.LBB0_16:
	.loc	1 0 34                          ; attention.py:0:34
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
	s_branch .LBB0_18
.LBB0_17:                               ; %._crit_edge.loopexit
.Ltmp48:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v42, v42 :: v_dual_add_f32 v1, 0, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v41, v80 :: v_dual_max_f32 v2, 0xff800000, v2
.Ltmp49:
.LBB0_18:                               ; %._crit_edge
	.loc	1 825 26                        ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v61
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_lshrrev_b32_e32 v3, 3, v0
	s_mov_b32 s0, 0x76543210
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v2, 0xff800000, v2 :: v_dual_and_b32 v3, 12, v3
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s33, s33, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s41, s41, 2
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s3, exec_lo
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v4, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v1, 0, v1
.Ltmp54:
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_and_b32 v5, 12, v41
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_add_nc_u32_e32 v3, 0, v3
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v6, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s0, s34, s33
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v12, 0, v37, vcc_lo
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_nc_u32 v4, 0, v5
.Ltmp61:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v5, 0, v33 :: v_dual_cndmask_b32 v6, 0, v35
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v3, v1
.Ltmp64:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v1, v5 :: v_dual_mov_b32 v8, v6
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v4, v4
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v1, v1 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 830 17 is_stmt 1              ; attention.py:830:17
	v_cndmask_b32_e32 v3, 0, v34, vcc_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s0, s41
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v14, 0, v39, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v6, v6, v8 :: v_dual_mov_b32 v7, v3
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v10, v6
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v15, 0, v40, vcc_lo
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v3, v7
	v_dual_add_f32 v1, v5, v1 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v38 :: v_dual_mov_b32 v20, v15
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v8, v3 :: v_dual_mov_b32 v5, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v9, v2
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v20, v15
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v2, v7
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v11, v4 :: v_dual_add_f32 v2, v3, v8
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v3, v6, v10
	v_dual_add_f32 v1, v1, v5 :: v_dual_mov_b32 v10, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_mov_b32 v6, v3
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v4, v11
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v4, v1
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v9, v8
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v2, v2, v5 :: v_dual_cndmask_b32 v11, 0, v36
	v_add_f32_e32 v5, v3, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v1, v4 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
	v_mov_b32_e32 v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v16, v11
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v19, v14
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v18, v16 :: v_dual_mov_b32 v13, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v17, v14, v19 :: v_dual_mov_b32 v14, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v11, v13
	v_add_f32_e32 v11, v12, v14
	v_dual_add_f32 v14, v16, v18 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v12, v11
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v15, v15, v20
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v16, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v19, v16
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v17, v15, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v15, v13
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_20
; %bb.19:
.Ltmp114:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v7, v7, v7
.Ltmp115:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v8, v9
.Ltmp117:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[6:7], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v7, v10
.Ltmp119:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s6, s20, s6
	s_addc_u32 s7, s21, s7
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[6:7]
.LBB0_20:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v14, v18 :: v_dual_add_f32 v16, v13, v15
	v_dual_add_f32 v15, v5, v6 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v14, v2, v4 :: v_dual_and_b32 v5, 0xc0, v41
	v_add_f32_e32 v13, v1, v3
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v1, 28, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp121:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v2, 0, v5
	v_lshl_add_u32 v3, v61, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v1, s0, v51
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 vcc_lo, s2, s4
	ds_load_b32 v0, v0
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	v_lshl_add_u32 v1, v1, 2, 8
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[20:23], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp122:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 139
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_vgpr, 139
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7248
; TotalNumSgprs: 56
; NumVgprs: 139
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 56
; NumVGPRsForWavesPerEU: 139
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
	.short	824                             ; DW_AT_call_line
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.short	828                             ; DW_AT_call_line
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
	.short	829                             ; DW_AT_call_line
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
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
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn16_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     139
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
