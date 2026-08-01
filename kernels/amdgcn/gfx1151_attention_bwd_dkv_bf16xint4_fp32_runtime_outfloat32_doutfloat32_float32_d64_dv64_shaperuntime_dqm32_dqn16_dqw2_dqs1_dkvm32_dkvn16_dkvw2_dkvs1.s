	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x4
	s_load_b128 s[28:31], s[0:1], 0x94
	s_load_b128 s[16:19], s[0:1], 0x64
	s_load_b32 s35, s[0:1], 0x74
	s_load_b32 s56, s[0:1], 0x7c
	s_load_b128 s[36:39], s[0:1], 0x8
.Ltmp0:
	.loc	1 534 24 prologue_end           ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v23, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v50, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v19, 0x1b0, v23
	v_xor_b32_e32 v20, 0x240, v23
	v_xor_b32_e32 v21, 0x2d0, v23
	v_xor_b32_e32 v22, 0x360, v23
	v_add_nc_u32_e32 v212, 0, v23
	v_add_nc_u32_e32 v215, 0, v19
	v_add_nc_u32_e32 v216, 0, v20
	v_add_nc_u32_e32 v217, 0, v21
	v_add_nc_u32_e32 v218, 0, v22
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s28
	s_bitcmp1_b32 s28, 8
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_mul_i32 s34, s3, s19
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s4, 1
	s_cselect_b32 s58, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s40, s17
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s40
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s14, s2, 4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s44, s4
	s_sub_i32 s4, 0, s40
	s_mul_i32 s4, s4, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s44, s4
	s_add_i32 s44, s44, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s44
	s_mul_i32 s6, s4, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s6
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s40
	s_cmp_ge_u32 s5, s40
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s40
	s_cselect_b32 s15, s6, s4
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_ashr_i32 s41, s16, 31
	s_ashr_i32 s42, s17, 31
	s_abs_i32 s43, s16
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s14, 1
	s_or_b32 s6, s14, 2
	s_or_b32 s7, s14, 3
	s_or_b32 s8, s14, 4
	s_or_b32 s9, s14, 5
	s_or_b32 s10, s14, 6
	s_or_b32 s11, s14, 7
	s_or_b32 s12, s14, 8
	s_or_b32 s13, s14, 9
	s_or_b32 s20, s14, 10
	s_or_b32 s21, s14, 11
	s_or_b32 s22, s14, 12
	s_or_b32 s23, s14, 13
	s_or_b32 s24, s14, 14
	s_or_b32 s25, s14, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s14, s19
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s4, s19
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s6, s19
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s7, s19
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s8, s19
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s9, s19
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s10, s19
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s11, s19
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s12, s19
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s13, s19
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s13, s35, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s20, s19
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s21, s19
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s22, s19
	s_mov_b32 s22, 0x7ffffffe
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s23, s19
	s_mov_b32 s23, 0x31027000
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s24, s19
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s26, s22
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s25, s19
	s_load_b64 s[24:25], s[0:1], 0x28
	s_cselect_b32 s11, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s5, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s33, s34, s35
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_mov_b32 s20, s36
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s33, v0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s21, s37, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s27, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v2, s35, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v3, s35, v2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v3, 1, v3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s51, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v5, s35, v4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v4, 1, v4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s7, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v6, s35, v5
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v5, 1, v5
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s50, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v7, s35, v6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v6, 1, v6
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s6, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v8, s35, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_clause 0x5
	buffer_load_u16 v11, v1, s[20:23], 0 offen
	buffer_load_u16 v12, v2, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s49, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s8, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v10, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v8, 1, v9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s48, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s9, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v9, s35, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s47, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v9, 1, v9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s10, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v14, s35, v13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v13, 1, v13
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s46, s13
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v15, s35, v14
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v14, 1, v14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	s_clause 0x4
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v16, v1, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s12, s13
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 1, v15
	v_add_lshl_u32 v15, v15, s35, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s45, s13
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s11, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	s_clause 0x4
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v17, v1, s[20:23], 0 offen
	buffer_load_u16 v18, v2, s[20:23], 0 offen
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s4, s19, 15
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v1, 0x90, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s20, s4, 31
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v2, 0x120, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s20, s20, 28
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v23, 0x3f0, v23
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s4, s4, s20
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s20, s14, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s4, s4, 4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v213, 0, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s21, s4, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v214, 0, v2
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s20, s21
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s21, s3, s21
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s36, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s21, s21, s20
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s4, s3, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[1:2], null, s21, s56, v[0:1]
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v219, 0, v23
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s4, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s56, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s56
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	v_add_lshl_u32 v2, s2, v0, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s5, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s36, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s21, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, vcc_lo, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s56, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s51, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v40, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s7, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v30, s56, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s50, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s20, s38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s6, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v33, s56, v30
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s49, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s8, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v36, s56, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s48, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s9, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v39, s56, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v31, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s47, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s10, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s46, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s12, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v37, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s45, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s11, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v41, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s18, 31
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v212, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v212, v8 offset:1024
	ds_store_b16 v213, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v213, v10 offset:1024
	ds_store_b16 v214, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v214, v16 offset:1024
	ds_store_b16 v215, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v215, v9 offset:1024
	ds_store_b16 v216, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v216, v13 offset:1024
	ds_store_b16 v217, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v217, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v218, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v218, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v219, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v4, v20, s[24:27], 0 offen
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	buffer_load_u16 v31, v31, s[24:27], 0 offen
	buffer_load_u16 v32, v32, s[24:27], 0 offen
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v42, v2, s[24:27], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_clause 0x7
	buffer_load_u8 v19, v1, s[20:23], 0 offen
	buffer_load_u8 v20, v40, s[20:23], 0 offen
	buffer_load_u8 v15, v27, s[20:23], 0 offen
	buffer_load_u8 v16, v30, s[20:23], 0 offen
	buffer_load_u8 v17, v33, s[20:23], 0 offen
	buffer_load_u8 v18, v36, s[20:23], 0 offen
	buffer_load_u8 v13, v39, s[20:23], 0 offen
	buffer_load_u8 v14, v41, s[20:23], 0 offen
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_and_b32_e32 v3, 7, v0
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s5, s2, 31
	s_mov_b32 s20, 0
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 4, v3
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_add_i32 s5, s2, s5
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s43, s44
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s59, s5, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s5, s28, 0x10008
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v1, v50, 7, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, 16, v1
	v_xor_b32_e32 v7, 32, v1
	v_xor_b32_e32 v8, 48, v1
	v_xor_b32_e32 v9, 64, v1
	v_xor_b32_e32 v10, 0x50, v1
	v_xor_b32_e32 v11, 0x60, v1
	v_xor_b32_e32 v12, 0x70, v1
	v_add_nc_u32_e32 v5, 0, v1
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v12, 0, v12
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v17.h, v4.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v18.h, v21.l
	v_mov_b16_e32 v19.h, v22.l
	v_mov_b16_e32 v20.h, v23.l
	v_mov_b16_e32 v21.h, v24.l
	v_mov_b16_e32 v22.h, v25.l
	v_mov_b16_e32 v23.h, v26.l
	v_mov_b16_e32 v24.h, v28.l
	v_mov_b16_e32 v25.h, v29.l
	v_mov_b16_e32 v26.h, v31.l
	v_mov_b16_e32 v27.h, v32.l
	v_mov_b16_e32 v28.h, v34.l
	v_mov_b16_e32 v16.h, v35.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v14.h, v37.l
	v_mov_b16_e32 v15.h, v38.l
	v_mov_b16_e32 v13.h, v42.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s14, s29
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s21, s30, s31
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s5, s5, s31
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s21, s14, s21
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s5, s5, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s5, s18, s5
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s5, s5, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s5, s5, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s20, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s20, s20, 27
	s_add_i32 s5, s5, s20
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s20, s21, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s5, s5, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s20, s20, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s59, s59, s5
.LBB0_2:
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v5
	ds_load_b128 v[33:36], v6
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_mul_i32 s5, s2, s40
	s_xor_b32 s21, s41, s42
	s_sub_i32 s5, s43, s5
	s_add_i32 s22, s2, 1
	s_sub_i32 s23, s5, s40
	s_cmp_ge_u32 s5, s40
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v19.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s22, s2
	s_cselect_b32 s5, s23, s5
	s_add_i32 s22, s2, 1
	s_cmp_ge_u32 s5, s40
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v20.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s22, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v15.l, 15
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s21
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v16.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s28, s2, s21
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v21.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v24.l, v16.l, 15
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:16 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[33:36], v8
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v25.l, v17.l, 15
	v_and_b16 v26.l, v18.l, 15
	v_and_b16 v27.l, v13.l, 15
	v_and_b16 v21.l, v14.l, 15
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v20.l
	v_lshrrev_b16 v42.l, 4, v15.l
	v_lshrrev_b16 v44.l, 4, v17.l
	v_lshrrev_b16 v47.l, 4, v14.l
	v_lshrrev_b16 v45.l, 4, v18.l
	v_lshrrev_b16 v46.l, 4, v13.l
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v222, s14, v50
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s28, 1
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[29:32], off offset:32
	scratch_store_b128 off, v[33:36], off offset:48
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v9
	ds_load_b128 v[33:36], v10
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s19, v222
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:80 ; 16-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	ds_load_b128 v[29:32], v11
	ds_load_b128 v[33:36], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[29:32], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[33:36], off offset:112 ; 16-byte Folded Spill
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v18
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v40, -16, v34
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v19
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v35, -16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v29, v29, v35, s2
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v13
	v_and_b32_e32 v30, 15, v20
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v22.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v36, -16, v30
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v30, v30, v36, s2
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v36, 15, v14
	v_and_b32_e32 v31, 15, v15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v23.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v37, -16, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v31, v31, v37, s2
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v19.l
	.loc	1 557 34 is_stmt 1              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v24.l
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v51, 16, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v37.h
	v_mov_b16_e32 v41.h, v37.h
	v_mov_b16_e32 v42.h, v37.h
	v_mov_b16_e32 v44.h, v37.h
	v_mov_b16_e32 v47.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s8
	v_cndmask_b32_e64 v41, 0, v41, s7
	v_cndmask_b32_e64 v42, 0, v42, s6
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s9
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v43
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v16
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v42
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v47, 0, v47, s11
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v46.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v45, s10
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v38, -16, v32
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v37.h
	v_mov_b16_e32 v19.l, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v46, 0, v46, s12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v32, v32, v38, s2
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v38, 0, v37, vcc_lo
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v37.h
	v_mov_b16_e32 v22.l, v37.h
	v_mov_b16_e32 v23.l, v37.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v39, -16, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v4, 32, v0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v37.h
	v_mov_b16_e32 v25.l, v37.h
	v_mov_b16_e32 v28.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v39, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v39, -16, v35
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v37.h
	v_mov_b16_e32 v16.l, v37.h
	v_mov_b16_e32 v14.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v40, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v27.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v40, -16, v36
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v37.h
	v_mov_b16_e32 v15.l, v37.h
	v_mov_b16_e32 v13.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v39, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v39, -16, v38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v37.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v36, v36, v40, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v40, -16, v41
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v19, v30, v19
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v39, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v39, -16, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v31, v21
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v37, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v41, v40, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v41, -16, v45
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s6, v21, v21
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_mul_f32_e32 v18, v37, v18
	v_cvt_f32_i32_e32 v38, v40
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v46
	.loc	1 575 26 is_stmt 1              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v18, v18
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_dual_mul_f32 v20, v38, v20 :: v_dual_mul_f32 v17, v29, v17
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v47
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v34, v27
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v52, 1, v4
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v44, v39, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v33, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v45, v41, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v39, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v46, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v47, v49, vcc_lo
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v42
	v_cvt_f32_i32_e32 v42, v43
	v_cvt_f32_i32_e32 v43, v44
	v_mul_f32_e32 v28, v41, v28
	v_cvt_f32_i32_e32 v44, v45
	v_mul_f32_e32 v30, v35, v16
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v16, v18, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v43, v14
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v23, v32, v23 :: v_dual_mul_f32 v24, v42, v24
	v_mul_f32_e32 v32, v36, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v18, v16, 0x7fff
	v_bfe_u32 v16, v19, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v44, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v40, v22
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v21, 16, 1
	v_add3_u32 v16, v19, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_bfe_u32 v17, v23, 16, 1
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v22, 16, 1
	v_bfe_u32 v18, v24, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v23, v23
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_add3_u32 v16, v22, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v18, v24, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_bfe_u32 v19, v25, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s2
	v_bfe_u32 v17, v26, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v27, 16, 1
	v_add3_u32 v19, v25, v19, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v17, v26, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v26, v26
	v_add3_u32 v18, v27, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_bfe_u32 v20, v28, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v30, 16, 1
	v_bfe_u32 v21, v31, 16, 1
	v_bfe_u32 v22, v32, 16, 1
	v_bfe_u32 v23, v29, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s2
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_add3_u32 v20, v28, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v19, v30, v19, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	v_add3_u32 v21, v31, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v22, v32, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_add3_u32 v23, v29, v23, 0x7fff
	v_cmp_o_f32_e64 s8, v29, v29
	v_cndmask_b16 v18.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s8
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	ds_store_b16 v212, v13
	ds_store_b16 v212, v17 offset:1024
	ds_store_b16_d16_hi v213, v13
	ds_store_b16_d16_hi v213, v17 offset:1024
	ds_store_b16 v214, v14
	ds_store_b16 v214, v18 offset:1024
	ds_store_b16_d16_hi v215, v14
	ds_store_b16_d16_hi v215, v18 offset:1024
	ds_store_b16 v216, v15
	ds_store_b16 v216, v19 offset:1024
	ds_store_b16_d16_hi v217, v15
	ds_store_b16_d16_hi v217, v19 offset:1024
	ds_store_b16 v218, v16
	ds_store_b16 v218, v20 offset:1024
	ds_store_b16_d16_hi v219, v16
	ds_store_b16_d16_hi v219, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_13
; %bb.3:                                ; %.lr.ph133
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[24:27], v12
	ds_load_b128 v[20:23], v11
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b32 s6, s[0:1], 0x90
	v_dual_mov_b32 v243, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	v_lshlrev_b32_e32 v15, 2, v0
	s_xor_b32 s2, s3, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v225, 4, v0
	s_ashr_i32 s2, s2, 31
	v_and_b32_e32 v13, 48, v0
	v_dual_mov_b32 v75, v243 :: v_dual_and_b32 v14, 0x180, v14
	v_dual_mov_b32 v80, v243 :: v_dual_and_b32 v19, 2, v0
	v_mov_b32_e32 v74, v243
	v_dual_mov_b32 v77, v243 :: v_dual_and_b32 v18, 52, v15
	s_xor_b32 s7, s15, s2
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s8, s14, s31
	s_sub_i32 s2, s7, s2
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:128
	scratch_store_b128 off, v[24:27], off offset:144
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v9
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s7, s8, 0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v16, 14, v0
	v_dual_mov_b32 v78, v243 :: v_dual_lshlrev_b32 v13, 2, v13
	v_or3_b32 v14, v18, v19, v14
	v_dual_mov_b32 v68, v243 :: v_dual_lshlrev_b32 v19, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v4
	s_mul_i32 s8, s2, s17
	s_and_b32 s7, s7, 0x7fffffe0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s8
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s7, s20, s7
	s_and_b32 s8, s58, exec_lo
	s_cselect_b32 s19, s7, s20
	v_dual_mov_b32 v66, v243 :: v_dual_lshlrev_b32 v11, 1, v16
	v_lshl_or_b32 v13, v16, 7, v13
	v_lshrrev_b32_e32 v16, 1, v51
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:160
	scratch_store_b128 off, v[25:28], off offset:176
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[23:26], v7
	v_lshrrev_b32_e32 v18, 5, v4
	v_dual_mov_b32 v70, v243 :: v_dual_and_b32 v19, 60, v19
	v_cndmask_b32_e64 v20, 0x104, 0, vcc_lo
	s_cmp_lt_i32 s19, s59
	v_dual_mov_b32 v76, v243 :: v_dual_and_b32 v17, 1, v0
	s_cselect_b32 s60, -1, 0
	s_lshl_b32 s7, s43, 2
	v_or3_b32 v22, v14, v16, v18
	v_xor_b32_e32 v9, v20, v19
	v_lshrrev_b32_e32 v7, 1, v0
	s_mul_i32 s10, s43, 20
	s_mul_i32 s8, s43, 12
	s_mul_i32 s11, s43, 24
	v_lshl_or_b32 v20, v17, 6, v9
	v_dual_mov_b32 v72, v243 :: v_dual_and_b32 v7, 12, v7
	s_lshl_b32 s9, s43, 4
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:200
	scratch_store_b128 off, v[27:30], off offset:216
	ds_load_b128 v[27:30], v6
	ds_load_b128 v[23:26], v5
	v_mul_lo_u32 v5, s43, v225
	v_mul_lo_u32 v6, s6, v222
	s_lshl_b32 s6, s43, 3
	v_lshl_or_b32 v3, v3, 7, v7
	v_lshrrev_b32_e32 v7, 4, v4
	s_mul_i32 s12, s43, 28
	v_dual_mov_b32 v79, v243 :: v_dual_lshlrev_b32 v12, 5, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v8, v6, v5
	v_add3_u32 v9, v5, s10, v6
	v_or3_b32 v21, v13, v12, v11
	v_xor_b32_e32 v10, 0x660, v15
	v_xor_b32_e32 v11, 0x770, v15
	v_xor_b32_e32 v12, 0x880, v15
	v_xor_b32_e32 v13, 0x990, v15
	v_xor_b32_e32 v14, 0xaa0, v15
	v_xor_b32_e32 v16, 0xbb0, v15
	v_xor_b32_e32 v17, 0xcc0, v15
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[23:26], off offset:232
	scratch_store_b128 off, v[27:30], off offset:248
	v_dual_mov_b32 v90, v243 :: v_dual_lshlrev_b32 v23, 3, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:268
	scratch_store_b32 off, v22, off offset:196
	v_add3_u32 v8, v5, s7, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:292
	scratch_store_b32 off, v51, off offset:772
	v_add3_u32 v9, v5, s11, v6
	v_or3_b32 v24, v3, v2, v7
	scratch_store_b32 off, v8, off offset:272 ; 4-byte Folded Spill
	v_add3_u32 v8, v5, s6, v6
	v_dual_mov_b32 v67, v243 :: v_dual_lshlrev_b32 v2, 1, v50
	v_dual_mov_b32 v92, v243 :: v_dual_lshlrev_b32 v3, 2, v51
	scratch_store_b32 off, v8, off offset:276 ; 4-byte Folded Spill
	v_add3_u32 v8, v5, s8, v6
	v_add3_u32 v241, 0, v4, v2
	v_or3_b32 v26, v2, v3, v4
	v_dual_mov_b32 v69, v243 :: v_dual_lshlrev_b32 v2, 3, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:280
	scratch_store_b32 off, v24, off offset:304
	v_add3_u32 v8, v5, s9, v6
	v_add3_u32 v5, v5, s12, v6
	v_lshl_or_b32 v6, v4, 6, v1
	v_mul_u32_u24_e32 v1, 0x110, v50
	v_mov_b32_e32 v94, v243
	v_mov_b32_e32 v96, v243
	scratch_store_b32 off, v8, off offset:284 ; 4-byte Folded Spill
	v_mov_b32_e32 v82, v243
	v_lshl_or_b32 v25, v4, 7, v1
	v_lshl_add_u32 v1, v4, 1, 0
	v_mov_b32_e32 v84, v243
	v_lshrrev_b32_e32 v8, 2, v51
	v_xor_b32_e32 v3, 0x220, v15
	v_xor_b32_e32 v18, 0xdd0, v15
	v_lshl_add_u32 v242, v50, 2, v1
	v_and_b32_e32 v1, 48, v2
	v_xor_b32_e32 v2, 0x110, v15
	v_xor_b32_e32 v19, 0xee0, v15
	s_clause 0x1
	s_load_b64 s[44:45], s[0:1], 0x0
	s_load_b256 s[20:27], s[0:1], 0x30
	v_lshl_or_b32 v27, v50, 6, v1
	v_xor_b32_e32 v1, 16, v6
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s64, s40, 0x3fb8aa3b
	s_mov_b32 s61, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s62, s28, s3
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s63, s2, s16
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v9, off offset:296 ; 4-byte Folded Spill
	v_xor_b32_e32 v9, 0x550, v15
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s41, s2, s41
	s_mov_b32 s47, 0x31027000
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v6
	s_mov_b32 s46, 0x7ffffffe
	v_mov_b32_e32 v86, v243
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v26, off offset:320
	scratch_store_b32 off, v23, off offset:288
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	v_or3_b32 v5, v8, v7, v23
	v_xor_b32_e32 v7, 0x330, v15
	v_xor_b32_e32 v8, 0x440, v15
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v6
	v_xor_b32_e32 v15, 0xff0, v15
	s_waitcnt lgkmcnt(0)
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s25, s25, 0xffff
	v_add_nc_u32_e32 v1, 0, v1
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	v_mov_b32_e32 v88, v243
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v6
	s_mov_b32 s52, s22
	v_mov_b32_e32 v71, v243
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v91, v243
	v_add_nc_u32_e32 v1, 0, v1
	v_mov_b32_e32 v93, v243
	v_mov_b32_e32 v95, v243
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, v243
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v6
	v_mov_b32_e32 v85, v243
	v_mov_b32_e32 v87, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v6
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:348
	scratch_store_b32 off, v6, off offset:312
	v_xor_b32_e32 v1, 0x70, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x208, v20
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:356 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x410, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v20, off offset:264
	v_xor_b32_e32 v1, 0x618, v20
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 4, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:368 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 8, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:372 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 12, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:376 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 24, v21
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v21, off offset:192
	v_xor_b32_e32 v1, 28, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v5
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:396 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:400
	scratch_store_b32 off, v5, off offset:308
	v_xor_b32_e32 v1, 0x1b0, v5
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v4, 0, v1
	v_xor_b32_e32 v1, 32, v22
	v_add_nc_u32_e32 v5, 0, v1
	v_xor_b32_e32 v1, 48, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v6, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	v_mov_b32_e32 v2, v52
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v50, off offset:768
	scratch_store_b32 off, v2, off offset:776
	scratch_store_b32 off, v1, off offset:408
	v_add_nc_u32_e32 v1, 0, v3
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v3, s56, v0
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v2, v2, v50
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:412
	scratch_store_b32 off, v3, off offset:544
	v_add_nc_u32_e32 v1, 0, v7
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:416
	scratch_store_b32 off, v3, off offset:552
	v_add_nc_u32_e32 v1, 0, v8
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:420
	scratch_store_b32 off, v3, off offset:560
	v_add_nc_u32_e32 v1, 0, v9
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:424
	scratch_store_b32 off, v3, off offset:568
	v_add_nc_u32_e32 v1, 0, v10
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:428
	scratch_store_b32 off, v3, off offset:576
	v_add_nc_u32_e32 v1, 0, v11
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:432
	scratch_store_b32 off, v3, off offset:584
	v_add_nc_u32_e32 v1, 0, v12
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:436
	scratch_store_b32 off, v3, off offset:592
	v_add_nc_u32_e32 v1, 0, v13
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:440
	scratch_store_b32 off, v3, off offset:600
	v_add_nc_u32_e32 v1, 0, v14
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:444
	scratch_store_b32 off, v3, off offset:608
	v_add_nc_u32_e32 v1, 0, v16
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:448
	scratch_store_b32 off, v3, off offset:616
	v_add_nc_u32_e32 v1, 0, v17
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:452
	scratch_store_b32 off, v3, off offset:624
	v_add_nc_u32_e32 v1, 0, v18
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:456
	scratch_store_b32 off, v3, off offset:632
	v_add_nc_u32_e32 v1, 0, v19
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:460
	scratch_store_b32 off, v3, off offset:640
	v_add_nc_u32_e32 v1, 0, v15
	v_add_nc_u32_e32 v3, s56, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:464
	scratch_store_b32 off, v3, off offset:648
	v_xor_b32_e32 v1, 16, v25
	v_add_nc_u32_e32 v3, s56, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:656 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:468 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v25
	scratch_store_b32 off, v3, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v25
	scratch_store_b32 off, v3, off offset:680 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:688 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v25
	scratch_store_b32 off, v3, off offset:696 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:704
	scratch_store_b32 off, v1, off offset:480
	v_xor_b32_e32 v1, 0x50, v25
	v_add_nc_u32_e32 v3, s56, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:712 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v25
	scratch_store_b32 off, v3, off offset:720 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v25
	scratch_store_b32 off, v3, off offset:736 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v3, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	scratch_store_b32 off, v1, off offset:492 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v25
	scratch_store_b32 off, v3, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, s56, v3
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:764
	scratch_store_b32 off, v1, off offset:496
	v_xor_b32_e32 v1, 0x90, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:500 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v25
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:508 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xc0, v25
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:512 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:516 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v25
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:520
	scratch_store_b32 off, v25, off offset:316
	v_xor_b32_e32 v1, 0xf0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:524 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v26
	v_add_nc_u32_e32 v37, 0, v1
	v_xor_b32_e32 v1, 0x120, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v38, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v26
	v_add_nc_u32_e32 v39, 0, v1
	v_xor_b32_e32 v1, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v27
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:532
	scratch_store_b32 off, v27, off offset:324
	v_xor_b32_e32 v1, 48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v24
	v_add_nc_u32_e32 v253, 0, v1
	v_xor_b32_e32 v1, 32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v254, 0, v1
	v_xor_b32_e32 v1, 48, v24
	v_add_nc_u32_e32 v255, 0, v1
	v_xor_b32_e32 v1, 64, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v221, 0, v1
	v_xor_b32_e32 v1, 0x50, v24
	v_add_nc_u32_e32 v220, 0, v1
	v_xor_b32_e32 v1, 0x60, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v210, 0, v1
	v_xor_b32_e32 v1, 0x70, v24
	v_add_nc_u32_e32 v211, 0, v1
	v_xor_b32_e32 v1, 0x90, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v238, 0, v1
	v_xor_b32_e32 v1, 0x120, v23
	v_add_nc_u32_e32 v51, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v52, 0, v1
	v_xor_b32_e32 v1, 0x240, v23
	v_add_nc_u32_e32 v53, 0, v1
	v_xor_b32_e32 v1, 0x2d0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v54, 0, v1
	v_xor_b32_e32 v1, 0x360, v23
	v_add_nc_u32_e32 v55, 0, v1
	v_xor_b32_e32 v1, 0x3f0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v56, 0, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v0
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:580 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:588 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:596 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:604 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:660 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:676 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:692 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:700 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:708 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:716 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:724 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:732 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:740 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:756
	scratch_store_b32 off, v1, off offset:760
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v2, s56, v3
	v_add_nc_u32_e32 v22, s35, v1
	v_dual_mov_b32 v20, v2 :: v_dual_add_nc_u32 v23, s56, v2
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s61, s61, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s61, s28
	s_cbranch_scc0 .LBB0_12
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s60
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s61, s62
	s_mov_b32 s67, s19
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s65, s0, s63
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s66, s0, s42
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s65, s65, s18
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s66, s66, s41
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:268
	scratch_load_b32 v2, off, off offset:284
	scratch_load_b32 v3, off, off offset:272
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_mul_i32 s0, s67, s43
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s22, s46
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s0, s66, s0
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_mov_b32 s23, s47
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v244, v243 :: v_dual_add_nc_u32 v63, s56, v23
	v_dual_mov_b32 v246, v243 :: v_dual_add_nc_u32 v99, 0x800, v242
	v_dual_mov_b32 v248, v243 :: v_dual_add_nc_u32 v101, 0x1000, v242
	v_dual_mov_b32 v250, v243 :: v_dual_add_nc_u32 v103, 0x1800, v242
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v102, 0x1400, v242
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v245, v243 :: v_dual_add_nc_u32 v104, 0x1c00, v242
	v_mov_b32_e32 v247, v243
	v_dual_mov_b32 v249, v243 :: v_dual_add_nc_u32 v98, 0x400, v242
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v100, 0xc00, v242
	.loc	1 691 36                        ; attention_backward.py:691:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s0, v1, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s0, v2, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v3, 2
	scratch_load_b32 v3, off, off offset:292 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v1, 0x80000000, v1, s101
	v_cndmask_b32_e64 v2, 0x80000000, v2, s102
	v_cndmask_b32_e64 v7, 0x80000000, v7, s99
	s_clause 0x1
	buffer_load_b32 v1, v1, s[20:23], 0 offen
	buffer_load_b32 v2, v2, s[20:23], 0 offen
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v8, s0, v3, 2
	scratch_load_b32 v3, off, off offset:276 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s100
	s_clause 0x1
	buffer_load_b32 v7, v7, s[20:23], 0 offen
	buffer_load_b32 v8, v8, s[20:23], 0 offen
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v1, 0xff800000, v1, s101
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v2, 0xff800000, v2, s102
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v2
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s3, s102, vcc_lo
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v9, s0, v3, 2
	scratch_load_b32 v3, off, off offset:296 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s97
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s0, v3, 2
	scratch_load_b32 v3, off, off offset:300 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s98
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s0, v3, 2
	scratch_load_b32 v3, off, off offset:280 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s96
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s0, v3, 2
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s0, 0xff800000, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s55
	s_clause 0x3
	buffer_load_b32 v13, v9, s[20:23], 0 offen
	buffer_load_b32 v10, v10, s[20:23], 0 offen
	buffer_load_b32 v11, v11, s[20:23], 0 offen
	buffer_load_b32 v12, v12, s[20:23], 0 offen
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_and_b32 s0, s101, s0
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v3
	scratch_load_b32 v3, off, off offset:356 ; 4-byte Folded Reload
	ds_store_2addr_b32 v9, v1, v2 offset1:32
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v1, 0xff800000, v7, s99
	v_cndmask_b32_e64 v2, 0xff800000, v8, s100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v1
	v_cmp_neq_f32_e64 s2, 0xff800000, v2
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v3, v1, v2 offset1:32
	scratch_load_b32 v3, off, off offset:360 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s3
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v2, 0xff800000, v12, s55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_mov_b16_e32 v7.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s100, s2
	v_lshlrev_b16 v7.l, 8, v7.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v8.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s99, s1
	.loc	1 697 34 is_stmt 0              ; attention_backward.py:697:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v7.l, v8.l, v7.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v8.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	v_lshlrev_b16 v7.h, 8, v8.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v9.l, v1.l
	.loc	1 691 36 is_stmt 1              ; attention_backward.py:691:36
	v_cndmask_b32_e64 v1, 0xff800000, v13, s97
	v_cndmask_b32_e64 v8, 0xff800000, v10, s98
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v7.h, v9.l, v7.h
	.loc	1 691 36                        ; attention_backward.py:691:36
	v_cndmask_b32_e64 v9, 0xff800000, v11, s96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 697 34                        ; attention_backward.py:697:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v8
	v_cmp_neq_f32_e64 s0, 0xff800000, v1
	v_cmp_neq_f32_e64 s2, 0xff800000, v9
	.loc	1 697 25 is_stmt 0              ; attention_backward.py:697:25
	s_and_b32 s3, s98, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 696 35 is_stmt 1              ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v3, v1, v8 offset1:32
	scratch_load_b32 v3, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cndmask_b32_e64 v1, 0, 1, s3
	.loc	1 696 35                        ; attention_backward.py:696:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_b32 v3, v2, v9 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, 0, v3
	scratch_load_b32 v3, off, off offset:368 ; 4-byte Folded Reload
	ds_load_b32 v27, v10
	s_waitcnt vmcnt(0)
	ds_load_b32 v28, v3
	scratch_load_b32 v3, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v29, v3
	scratch_load_b32 v3, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v30, v3
	scratch_load_b32 v3, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v31, v3
	scratch_load_b32 v3, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v32, v3
	scratch_load_b32 v3, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v239, v3
	scratch_load_b32 v3, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b32 v33, v3
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:308
	scratch_load_b32 v2, off, off offset:756
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, 0, v3
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v3, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	ds_store_b16 v10, v7
	v_mov_b16_e32 v7.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s96, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v7.l, 8, v7.l
	v_mov_b16_e32 v8.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_and_b32 s0, s55, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s54, s56
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s55, s47
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v7.l, v8.l, v7.l
	v_mov_b16_e32 v8.l, v1.l
	v_cndmask_b32_e64 v1, 0, 1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s95
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v61, s1, v20, 2
	v_add_lshl_u32 v62, s1, v23, 2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_lshlrev_b16 v8.l, 8, v8.l
	v_mov_b16_e32 v9.l, v1.l
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v1, s67, v2
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v2, s54, v2, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v63, s1, v63, 2
	s_mov_b32 s54, s46
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_or_b16 v8.l, v9.l, v8.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s67, s67, 32
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v7
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v7
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v7, s1, v3, 2
	scratch_load_b32 v3, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(1)
	ds_store_b16 v1, v8
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v1, s1, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s1, v3, 2
	scratch_load_b32 v3, off, off offset:560 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s94
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s1, v3, 2
	scratch_load_b32 v3, off, off offset:568 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s1, v3, 2
	scratch_load_b32 v3, off, off offset:576 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s1, v3, 2
	scratch_load_b32 v3, off, off offset:584 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s1, v3, 2
	scratch_load_b32 v3, off, off offset:592 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s1, v3, 2
	scratch_load_b32 v3, off, off offset:600 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, s1, v3, 2
	scratch_load_b32 v3, off, off offset:608 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s1, v3, 2
	scratch_load_b32 v3, off, off offset:616 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s1, v3, 2
	scratch_load_b32 v3, off, off offset:624 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v34, s1, v3, 2
	scratch_load_b32 v3, off, off offset:632 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v35, s1, v3, 2
	scratch_load_b32 v3, off, off offset:640 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v36, s1, v3, 2
	scratch_load_b32 v3, off, off offset:648 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v40, s1, v3, 2
	scratch_load_b32 v3, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v41, s1, v3, 2
	scratch_load_b32 v3, off, off offset:664 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v42, s1, v3, 2
	scratch_load_b32 v3, off, off offset:672 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s1, v3, 2
	scratch_load_b32 v3, off, off offset:680 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s1, v3, 2
	scratch_load_b32 v3, off, off offset:688 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v45, s1, v3, 2
	scratch_load_b32 v3, off, off offset:696 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v46, s1, v3, 2
	scratch_load_b32 v3, off, off offset:704 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v47, s1, v3, 2
	scratch_load_b32 v3, off, off offset:712 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s1, v3, 2
	scratch_load_b32 v3, off, off offset:720 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v49, s1, v3, 2
	scratch_load_b32 v3, off, off offset:728 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s1, v3, 2
	scratch_load_b32 v3, off, off offset:736 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v57, s1, v3, 2
	scratch_load_b32 v3, off, off offset:744 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v58, s1, v3, 2
	scratch_load_b32 v3, off, off offset:752 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v59, s1, v3, 2
	scratch_load_b32 v3, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v60, s1, v3, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	s_clause 0x1f
	buffer_load_b32 v1, v1, s[52:55], 0 offen
	buffer_load_b32 v7, v7, s[52:55], 0 offen
	buffer_load_b32 v8, v8, s[52:55], 0 offen
	buffer_load_b32 v9, v9, s[52:55], 0 offen
	buffer_load_b32 v10, v10, s[52:55], 0 offen
	buffer_load_b32 v11, v11, s[52:55], 0 offen
	buffer_load_b32 v12, v12, s[52:55], 0 offen
	buffer_load_b32 v13, v13, s[52:55], 0 offen
	buffer_load_b32 v14, v14, s[52:55], 0 offen
	buffer_load_b32 v15, v15, s[52:55], 0 offen
	buffer_load_b32 v16, v16, s[52:55], 0 offen
	buffer_load_b32 v64, v34, s[52:55], 0 offen
	buffer_load_b32 v97, v35, s[52:55], 0 offen
	buffer_load_b32 v36, v36, s[52:55], 0 offen
	buffer_load_b32 v40, v40, s[52:55], 0 offen
	buffer_load_b32 v41, v41, s[52:55], 0 offen
	buffer_load_b32 v42, v42, s[52:55], 0 offen
	buffer_load_b32 v43, v43, s[52:55], 0 offen
	buffer_load_b32 v44, v44, s[52:55], 0 offen
	buffer_load_b32 v45, v45, s[52:55], 0 offen
	buffer_load_b32 v46, v46, s[52:55], 0 offen
	buffer_load_b32 v47, v47, s[52:55], 0 offen
	buffer_load_b32 v48, v48, s[52:55], 0 offen
	buffer_load_b32 v49, v49, s[52:55], 0 offen
	buffer_load_b32 v50, v50, s[52:55], 0 offen
	buffer_load_b32 v57, v57, s[52:55], 0 offen
	buffer_load_b32 v58, v58, s[52:55], 0 offen
	buffer_load_b32 v59, v59, s[52:55], 0 offen
	buffer_load_b32 v60, v60, s[52:55], 0 offen
	buffer_load_b32 v61, v61, s[52:55], 0 offen
	buffer_load_b32 v62, v62, s[52:55], 0 offen
	buffer_load_b32 v63, v63, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v34, v2, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v35, v2, s[48:51], 0 offen
	.loc	1 697 25                        ; attention_backward.py:697:25
	scratch_load_b32 v2, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s67, s59
	.loc	1 697 25                        ; attention_backward.py:697:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_load_u8_d16_hi v116, v2
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v116, v2 offset:64
	ds_load_u8_d16_hi v115, v4
	ds_load_u8_d16 v114, v4 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v115, v5
	ds_load_u8_d16_hi v113, v5 offset:64
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v114, v6
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v113, v6 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_lshlrev_b32_e32 v2, 1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, v212, v2
	ds_store_2addr_stride64_b32 v2, v1, v7 offset1:1
	ds_store_2addr_stride64_b32 v2, v8, v9 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v2, v10, v11 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v2, v12, v13 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v2, v14, v15 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v2, v16, v64 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v2, v97, v36 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v2, v40, v41 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v2, v42, v43 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v2, v44, v45 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v2, v46, v47 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v2, v48, v49 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v2, v50, v57 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v2, v58, v59 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v2, v60, v61 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v2, v62, v63 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[162:163], v98 offset1:32
	ds_load_2addr_b32 v[180:181], v98 offset0:64 offset1:96
	ds_load_2addr_b32 v[164:165], v98 offset0:128 offset1:160
	ds_load_2addr_b32 v[182:183], v98 offset0:192 offset1:224
	ds_load_2addr_b32 v[166:167], v99 offset1:32
	ds_load_2addr_b32 v[184:185], v99 offset0:64 offset1:96
	ds_load_2addr_b32 v[168:169], v99 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v99 offset0:192 offset1:224
	ds_load_2addr_b32 v[170:171], v100 offset1:32
	ds_load_2addr_b32 v[188:189], v100 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v100 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v100 offset0:192 offset1:224
	ds_load_2addr_b32 v[160:161], v101 offset1:32
	ds_load_2addr_b32 v[192:193], v101 offset0:64 offset1:96
	ds_load_2addr_b32 v[158:159], v101 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v101 offset0:192 offset1:224
	ds_load_2addr_b32 v[156:157], v102 offset1:32
	ds_load_2addr_b32 v[196:197], v102 offset0:64 offset1:96
	ds_load_2addr_b32 v[154:155], v102 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v102 offset0:192 offset1:224
	ds_load_2addr_b32 v[152:153], v103 offset1:32
	ds_load_2addr_b32 v[200:201], v103 offset0:64 offset1:96
	ds_load_2addr_b32 v[150:151], v103 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v103 offset0:192 offset1:224
	ds_load_2addr_b32 v[148:149], v104 offset1:32
	ds_load_2addr_b32 v[204:205], v104 offset0:64 offset1:96
	ds_load_2addr_b32 v[146:147], v104 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v104 offset0:192 offset1:224
	ds_load_2addr_b32 v[174:175], v242 offset1:32
	ds_load_2addr_b32 v[178:179], v242 offset0:64 offset1:96
	ds_load_2addr_b32 v[176:177], v242 offset0:128 offset1:160
	ds_load_2addr_b32 v[208:209], v242 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v2, v1, v42 offset1:16
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	v_bfe_u32 v228, v154, 16, 1
	v_bfe_u32 v19, v150, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v228, v154, v228, 0x7fff
	v_bfe_u32 v17, v146, 16, 1
	v_add3_u32 v19, v150, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v17, v146, v17, 0x7fff
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v7, v43 offset1:16
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v8, v44 offset1:16
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v9, v45 offset1:16
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v10, v46 offset1:16
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v11, v47 offset1:16
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v12, v48 offset1:16
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v13, v49 offset1:16
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v14, v50 offset1:16
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v15, v57 offset1:16
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v16, v58 offset1:16
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v64, v59 offset1:16
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v97, v60 offset1:16
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v97, v243
	v_dual_mov_b32 v99, v245 :: v_dual_mov_b32 v100, v246
	v_dual_mov_b32 v101, v247 :: v_dual_mov_b32 v102, v248
	v_dual_mov_b32 v103, v249 :: v_dual_mov_b32 v104, v250
	v_mov_b32_e32 v98, v244
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v36, v61 offset1:16
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v40, v62 offset1:16
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v41, v63 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:316
	scratch_load_b32 v3, off, off offset:472
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v2, v8, 16, 1
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v8, v2, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v2.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	v_bfe_u32 v1, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v15, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v15.h, s1
	v_add3_u32 v16, v10, v7, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v36, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v16.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v59.l, 0x7fff, v36.h, s3
	v_add3_u32 v40, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v40.h, s6
	v_add3_u32 v41, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v41.h, s7
	v_add3_u32 v42, v14, v7, 0x7fff
	ds_load_b128 v[7:10], v3
	scratch_load_b32 v3, off, off offset:476 ; 4-byte Folded Reload
	v_cndmask_b16 v60.h, 0x7fff, v42.h, s8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v7, v7, v43, 0x7fff
	v_bfe_u32 v43, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v7.h, s9
	v_add3_u32 v8, v8, v43, 0x7fff
	v_bfe_u32 v43, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v8.h, s10
	v_add3_u32 v9, v9, v43, 0x7fff
	v_bfe_u32 v43, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v9.h, s11
	v_add3_u32 v10, v10, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v62.h, 0x7fff, v10.h, s12
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v3
	scratch_load_b32 v3, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v11, v11, v43, 0x7fff
	v_bfe_u32 v43, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v11.h, s14
	v_add3_u32 v12, v12, v43, 0x7fff
	v_bfe_u32 v43, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v12.h, s15
	v_add3_u32 v13, v13, v43, 0x7fff
	v_bfe_u32 v43, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v13.h, s16
	v_add3_u32 v14, v14, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v14.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:232
	scratch_load_b128 v[11:14], off, off offset:248
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[7:14], v[57:64], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v2, v8, 16, 1
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v8, v2, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v2.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	v_bfe_u32 v1, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v15, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v15.h, s1
	v_add3_u32 v16, v10, v7, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v36, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v16.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v59.l, 0x7fff, v36.h, s3
	v_add3_u32 v40, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v40.h, s6
	v_add3_u32 v41, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v41.h, s7
	v_add3_u32 v42, v14, v7, 0x7fff
	ds_load_b128 v[7:10], v3
	scratch_load_b32 v3, off, off offset:492 ; 4-byte Folded Reload
	v_cndmask_b16 v60.h, 0x7fff, v42.h, s8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v7, v7, v43, 0x7fff
	v_bfe_u32 v43, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v7.h, s9
	v_add3_u32 v8, v8, v43, 0x7fff
	v_bfe_u32 v43, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v8.h, s10
	v_add3_u32 v9, v9, v43, 0x7fff
	v_bfe_u32 v43, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v9.h, s11
	v_add3_u32 v10, v10, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v62.h, 0x7fff, v10.h, s12
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v3
	scratch_load_b32 v3, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v11, v11, v43, 0x7fff
	v_bfe_u32 v43, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v11.h, s14
	v_add3_u32 v12, v12, v43, 0x7fff
	v_bfe_u32 v43, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v12.h, s15
	v_add3_u32 v13, v13, v43, 0x7fff
	v_bfe_u32 v43, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v13.h, s16
	v_add3_u32 v14, v14, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v14.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:200
	scratch_load_b128 v[11:14], off, off offset:216
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[7:14], v[57:64], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v2, v8, 16, 1
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v8, v2, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v2.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	v_bfe_u32 v1, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v15, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b16 v58.l, 0x7fff, v15.h, s1
	v_add3_u32 v16, v10, v7, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v36, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v16.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v59.l, 0x7fff, v36.h, s3
	v_add3_u32 v40, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v40.h, s6
	v_add3_u32 v41, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v60.l, 0x7fff, v41.h, s7
	v_add3_u32 v42, v14, v7, 0x7fff
	ds_load_b128 v[7:10], v3
	scratch_load_b32 v3, off, off offset:508 ; 4-byte Folded Reload
	v_cndmask_b16 v60.h, 0x7fff, v42.h, s8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v7, v7, v43, 0x7fff
	v_bfe_u32 v43, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v7.h, s9
	v_add3_u32 v8, v8, v43, 0x7fff
	v_bfe_u32 v43, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v8.h, s10
	v_add3_u32 v9, v9, v43, 0x7fff
	v_bfe_u32 v43, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v9.h, s11
	v_add3_u32 v10, v10, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v62.h, 0x7fff, v10.h, s12
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v3
	scratch_load_b32 v3, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v11, v11, v43, 0x7fff
	v_bfe_u32 v43, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v11.h, s14
	v_add3_u32 v12, v12, v43, 0x7fff
	v_bfe_u32 v43, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v12.h, s15
	v_add3_u32 v13, v13, v43, 0x7fff
	v_bfe_u32 v43, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v13.h, s16
	v_add3_u32 v14, v14, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v14.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:160
	scratch_load_b128 v[11:14], off, off offset:176
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[7:14], v[57:64], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_bfe_u32 v2, v8, 16, 1
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v8, v2, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v2.h, s0
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v2, 0x3fb8aa3b, v28
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	v_bfe_u32 v1, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v7, v1, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v1.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v1, 0x3fb8aa3b, v27
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v58.l, 0x7fff, v15.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v16, v10, v7, 0x7fff
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v1, s64, v105
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v36, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v16.h, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v1, v1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v59.l, 0x7fff, v36.h, s3
	v_add3_u32 v40, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v59.h, 0x7fff, v40.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v41.h, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v42, v14, v7, 0x7fff
	ds_load_b128 v[7:10], v3
	scratch_load_b32 v3, off, off offset:524 ; 4-byte Folded Reload
	v_cndmask_b16 v60.h, 0x7fff, v42.h, s8
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v7, v7, v43, 0x7fff
	v_bfe_u32 v43, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.l, 0x7fff, v7.h, s9
	v_add3_u32 v8, v8, v43, 0x7fff
	v_bfe_u32 v43, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v61.h, 0x7fff, v8.h, s10
	v_add3_u32 v9, v9, v43, 0x7fff
	v_bfe_u32 v43, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v9.h, s11
	v_add3_u32 v10, v10, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v62.h, 0x7fff, v10.h, s12
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v3
	v_bfe_u32 v3, v148, 16, 1
	v_add3_u32 v3, v148, v3, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v43, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v11, v11, v43, 0x7fff
	v_bfe_u32 v43, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v11.h, s14
	v_add3_u32 v12, v12, v43, 0x7fff
	v_bfe_u32 v43, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.h, 0x7fff, v12.h, s15
	v_add3_u32 v13, v13, v43, 0x7fff
	v_bfe_u32 v43, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v13.h, s16
	v_add3_u32 v14, v14, v43, 0x7fff
	v_bfe_u32 v43, v208, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v64.h, 0x7fff, v14.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:128
	scratch_load_b128 v[11:14], off, off offset:144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v208, v43, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[7:14], v[57:64], v[97:104]
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_mul_f32_e32 v12, 0x3fb8aa3b, v239
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v7.l, 1, v116.h
	.loc	1 696 35                        ; attention_backward.py:696:35
	v_dual_mul_f32 v11, 0x3fb8aa3b, v32 :: v_dual_mul_f32 v8, 0x3fb8aa3b, v29
	v_dual_mul_f32 v13, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v10, 0x3fb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v7.l
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v2, s64, v106 :: v_dual_sub_f32 v15, v98, v35
	v_dual_fmac_f32 v11, s64, v110 :: v_dual_fmac_f32 v8, s64, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v13, s64, v112 :: v_dual_fmac_f32 v10, s64, v109
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v31, v100, v35
	v_sub_f32_e32 v14, v97, v35
	v_sub_f32_e32 v16, v99, v35
	v_sub_f32_e32 v28, v101, v35
	v_sub_f32_e32 v32, v102, v35
	v_dual_sub_f32 v33, v103, v35 :: v_dual_sub_f32 v2, v2, v34
	v_dual_sub_f32 v36, v104, v35 :: v_dual_cndmask_b32 v35, 0, v1
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_dual_fmac_f32 v12, s64, v111 :: v_dual_mul_f32 v9, 0x3fb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v35, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 696 25                        ; attention_backward.py:696:25
	v_fmac_f32_e32 v9, s64, v108
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v1, s40, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v1, v7, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	v_sub_f32_e32 v7, v10, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v7
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v7.l, 1, v116.l
	v_cmp_eq_u16_e64 s0, 1, v7.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v27, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v7, v27, v28
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v7, s40, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v10, v7, 16, 1
	v_cmp_o_f32_e64 s0, v7, v7
	v_add3_u32 v7, v7, v10, 0x7fff
	.loc	1 697 25 is_stmt 1              ; attention_backward.py:697:25
	v_and_b16 v7.l, 1, v115.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v7.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.l, 0x7fff, v1.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v28, 0, v2, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v28, v15
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s40, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v10, v2, 16, 1
	v_cmp_o_f32_e64 s1, v2, v2
	v_add3_u32 v2, v2, v10, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b16 v1, v7
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v1, v7 offset:512
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v2, v9, v34
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_and_b16 v7.h, 1, v115.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v2, v2
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v7.h
	v_and_b16 v7.h, 1, v114.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s0, 1, v7.h
	v_and_b16 v7.h, 1, v114.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v30, 0, v2, s0
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v1, v8, v34
	v_sub_f32_e32 v8, v11, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s1, 1, v7.h
	v_and_b16 v7.h, 1, v113.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v2, v30, v31
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v8, v8
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s2, 1, v7.h
	v_and_b16 v7.h, 1, v113.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v2, s40, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 697 25                        ; attention_backward.py:697:25
	v_cmp_eq_u16_e64 s3, 1, v7.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v29, 0, v1, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v31, 0, v8, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_sub_f32_e32 v9, v12, v34
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v1, v29, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v31, v32
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v1, s40, v1 :: v_dual_mul_f32 v8, s40, v8
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v32, 0, v9, s2
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v1, v11, 0x7fff
	v_bfe_u32 v11, v2, 16, 1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v9, v32, v33 :: v_dual_sub_f32 v10, v13, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v2, v2, v11, 0x7fff
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v9, s40, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v10
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v11, v8, 16, 1
	v_cmp_o_f32_e64 s2, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v8, v8, v11, 0x7fff
	v_bfe_u32 v11, v9, 16, 1
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v33, 0, v10, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s1
	v_add3_u32 v9, v9, v11, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v37, v7
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.l, 0x7fff, v1.h, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v10, v33, v36
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v37, v7 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.h, 0x7fff, v9.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v38, v7
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v10, s40, v10
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s0
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v38, v7 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v28, v28
	v_cmp_o_f32_e64 s1, v29, v29
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v11, v10, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v8, v30, 16, 1
	v_bfe_u32 v9, v32, 16, 1
	v_cmp_o_f32_e64 s2, v30, v30
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v33, v33
	v_add3_u32 v8, v30, v8, 0x7fff
	v_add3_u32 v9, v32, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v39, v7
	ds_store_b16_d16_hi v39, v7 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v7, v29, 16, 1
	v_bfe_u32 v10, v33, 16, 1
	v_cmp_o_f32_e64 s3, v32, v32
	v_cndmask_b16 v41.h, 0x7fff, v8.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v29, v7, 0x7fff
	v_add3_u32 v10, v33, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v25.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v31, 16, 1
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v34.h, 0x7fff, v10.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v31, v7, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v7.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[57:60], v1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[61:64], v1
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v1
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[102:105], v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v212, v117
	ds_store_b16 v212, v118 offset:128
	ds_store_b16 v212, v119 offset:256
	ds_store_b16 v212, v120 offset:384
	ds_store_b16 v212, v121 offset:512
	ds_store_b16 v212, v122 offset:640
	ds_store_b16 v212, v123 offset:768
	ds_store_b16 v212, v26 offset:896
	ds_store_b16 v212, v124 offset:1024
	ds_store_b16 v212, v125 offset:1152
	ds_store_b16 v212, v126 offset:1280
	ds_store_b16 v212, v127 offset:1408
	ds_store_b16 v212, v128 offset:1536
	ds_store_b16 v212, v129 offset:1664
	ds_store_b16 v212, v130 offset:1792
	ds_store_b16 v212, v25 offset:1920
	ds_store_b16 v212, v131 offset:2048
	ds_store_b16 v212, v132 offset:2176
	ds_store_b16 v212, v133 offset:2304
	ds_store_b16 v212, v134 offset:2432
	ds_store_b16 v212, v135 offset:2560
	ds_store_b16 v212, v136 offset:2688
	ds_store_b16 v212, v137 offset:2816
	ds_store_b16 v212, v24 offset:2944
	ds_store_b16 v212, v138 offset:3072
	ds_store_b16 v212, v139 offset:3200
	ds_store_b16 v212, v140 offset:3328
	ds_store_b16 v212, v141 offset:3456
	ds_store_b16 v212, v142 offset:3584
	ds_store_b16 v212, v143 offset:3712
	ds_store_b16 v212, v144 offset:3840
	ds_store_b16 v212, v145 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v108, v241 offset:512
	ds_load_u16_d16 v109, v241 offset:768
	ds_load_u16_d16 v110, v241 offset:1024
	ds_load_u16_d16 v111, v241 offset:1280
	ds_load_u16_d16 v129, v241 offset:1088
	ds_load_u16_d16 v128, v241 offset:832
	ds_load_u16_d16 v106, v241
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v129, v241 offset:1216
	ds_load_u16_d16 v107, v241 offset:256
	ds_load_u16_d16 v113, v241 offset:1792
	ds_load_u16_d16 v112, v241 offset:1536
	ds_load_u16_d16_hi v108, v241 offset:640
	ds_load_u16_d16_hi v109, v241 offset:896
	ds_load_u16_d16_hi v110, v241 offset:1152
	ds_load_u16_d16 v130, v241 offset:1344
	ds_load_u16_d16 v117, v241 offset:2816
	ds_load_u16_d16 v118, v241 offset:3072
	ds_load_u16_d16 v124, v241 offset:2624
	ds_load_u16_d16 v123, v241 offset:2368
	ds_load_u16_d16 v114, v241 offset:2048
	ds_load_u16_d16 v115, v241 offset:2304
	ds_load_u16_d16 v116, v241 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v124, v241 offset:2752
	ds_load_u16_d16_hi v112, v241 offset:1664
	ds_load_u16_d16_hi v111, v241 offset:1408
	ds_load_u16_d16 v125, v241 offset:64
	ds_load_u16_d16_hi v106, v241 offset:128
	ds_load_u16_d16_hi v107, v241 offset:384
	ds_load_u16_d16 v127, v241 offset:576
	ds_load_u16_d16 v126, v241 offset:320
	ds_load_u16_d16_hi v113, v241 offset:1920
	ds_load_u16_d16 v131, v241 offset:1600
	ds_load_u16_d16 v122, v241 offset:2112
	ds_load_u16_d16 v132, v241 offset:1856
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v125, v241 offset:192
	ds_load_u16_d16_hi v128, v241 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v127, v241 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v126, v241 offset:448
	ds_load_u16_d16_hi v130, v241 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v131, v241 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v132, v241 offset:1984
	ds_load_u16_d16_hi v117, v241 offset:2944
	ds_load_u16_d16_hi v116, v241 offset:2688
	ds_load_u16_d16_hi v115, v241 offset:2432
	ds_load_u16_d16_hi v114, v241 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v1, v35, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v24.l, 0
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[57:64], v[89:96]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v1, v35, v1, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v41.l, v24.l
	v_mov_b16_e32 v26.l, v24.l
	v_mov_b16_e32 v25.l, v24.l
	v_mov_b16_e32 v36.l, v24.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v24.h, 0x7fff, v1.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v239.l, v24.l
	v_mov_b16_e32 v34.l, v24.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v24.l
	v_mov_b16_e64 v244.l, v24.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[125:132], v[57:64], v[81:88]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v125, v241 offset:2880
	ds_load_u16_d16 v119, v241 offset:3328
	ds_load_u16_d16 v126, v241 offset:3136
	ds_load_u16_d16_hi v123, v241 offset:2496
	ds_load_u16_d16_hi v122, v241 offset:2240
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v35, v24
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v119, v241 offset:3456
	ds_load_u16_d16 v128, v241 offset:3648
	ds_load_u16_d16 v129, v241 offset:3904
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v126, v241 offset:3264
	ds_load_u16_d16 v127, v241 offset:3392
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v120, v241 offset:3584
	ds_load_u16_d16 v121, v241 offset:3840
	ds_load_u16_d16_hi v118, v241 offset:3200
	ds_load_u16_d16_hi v125, v241 offset:3008
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v120, v241 offset:3712
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v121, v241 offset:3968
	ds_load_u16_d16_hi v129, v241 offset:4032
	ds_load_u16_d16_hi v128, v241 offset:3776
	ds_load_u16_d16_hi v127, v241 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v1, v2, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v28, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b16 v35.h, 0x7fff, v9.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v7.l, 0x7fff, v1.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v28, v2, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v33, v34
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v35.l, v24.l
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v245.l, v24.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v26.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v27, 16, 1
	v_cmp_o_f32_e64 s0, v27, v27
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v246.l, v24.l
	v_mov_b16_e64 v247.l, v24.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v27, v2, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v24.l
	v_mov_b16_e64 v249.l, v24.l
	v_mov_b16_e64 v251.l, v24.l
	v_mov_b16_e64 v145.l, v24.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v239.h, 0x7fff, v2.h, s0
	scratch_load_b32 v2, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v209, v209
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v144.l, v24.l
	v_mov_b16_e32 v45.l, v24.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v8, v27, v239
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v24.l
	v_mov_b16_e32 v48.l, v24.l
	v_mov_b16_e32 v49.l, v24.l
	v_mov_b16_e32 v60.l, v24.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v8, v8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v24.l
	v_mov_b16_e32 v50.l, v24.l
	v_mov_b16_e32 v58.l, v24.l
	v_mov_b16_e32 v61.l, v24.l
	v_mov_b16_e32 v42.l, v24.l
	v_mov_b16_e32 v19.l, v24.l
	v_mov_b16_e32 v59.l, v24.l
	v_mov_b16_e32 v57.l, v24.l
	v_mov_b16_e32 v62.l, v24.l
	v_mov_b16_e64 v252.l, v24.l
	v_mov_b16_e32 v18.l, v24.l
	v_mov_b16_e32 v3.l, v24.l
	v_mov_b16_e32 v17.l, v24.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[98:105], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[98:105], v[81:88]
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v31, v36
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v31.l, v24.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v9, v9
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b16_d16_hi v2, v24
	ds_store_b16_d16_hi v253, v26
	ds_store_b16_d16_hi v254, v25
	ds_store_b16_d16_hi v255, v41
	ds_store_b16_d16_hi v221, v239
	ds_store_b16_d16_hi v220, v36
	ds_store_b16_d16_hi v210, v35
	ds_store_b16_d16_hi v211, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	ds_load_b64 v[109:110], v238
	ds_load_b64 v[111:112], v54
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v130.h, v109.l
	v_mov_b16_e64 v134.h, v110.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, 0, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v179, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	ds_load_b64 v[132:133], v51
	ds_load_b64 v[138:139], v52
	ds_load_b64 v[135:136], v40
	ds_load_b64 v[106:107], v55
	ds_load_b64 v[140:141], v56
	ds_load_b64 v[142:143], v53
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v179, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v244.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v181, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v240, v179, v244
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v181, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v131.l, v132.l
	v_mov_b16_e64 v131.h, v138.l
	v_mov_b16_e64 v138.l, v132.h
	v_mov_b16_e64 v137.l, v107.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v246.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v183, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v137.h, v141.l
	v_mov_b16_e64 v141.l, v107.h
	v_mov_b32_e32 v107, v138
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v183, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v109.l, v135.h
	v_mov_b16_e64 v135.h, v139.l
	v_mov_b16_e64 v139.l, v133.h
	v_mov_b16_e64 v133.h, v140.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v185, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v106.h
	v_mov_b16_e64 v130.l, v135.l
	v_mov_b16_e64 v135.l, v133.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v185, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v133.l, v106.l
	v_dual_mov_b32 v106, v109 :: v_dual_mov_b32 v109, v140
	v_mov_b32_e32 v113, v141
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v187, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v132.h, v111.l
	v_mov_b16_e64 v111.l, v142.h
	v_mov_b16_e64 v110.l, v136.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v187, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v136.h, v112.l
	v_mov_b16_e64 v112.l, v143.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v2, v7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v2, v209, 16, 1
	v_cndmask_b16 v249.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v108, v111
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v2, v209, v2, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v111, v139
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v189, v1, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v7, v30, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v134.l, v136.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v245.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v195, 16, 1
	v_cndmask_b16 v250.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v191, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	v_cmp_o_f32_e64 s0, v195, v195
	v_add3_u32 v2, v195, v2, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v191, v1, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v10, v32, v35 :: v_dual_sub_f32 v189, v189, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v2.h, s0
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v2, v29, v25
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v193, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v10, v10
	v_cmp_o_f32_e64 s0, v2, v2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v132.l, v142.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v193, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v136.l, v143.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v138.l, v24.l
	v_mov_b16_e64 v139.l, v24.l
	v_mov_b16_e64 v140.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v138.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v197, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v191, v191, v251 :: v_dual_sub_f32 v64, v185, v248
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v1, v197, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v237, v181, v246
	v_sub_f32_e32 v209, v209, v245
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v142.l, v24.l
	v_mov_b16_e64 v143.l, v24.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v140.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v195, v139
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v30.l, v24.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v197, v140
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v1, v199, v1, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v29.l, v24.l
	v_mov_b16_e32 v32.l, v24.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v141.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v199, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v201, v1, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v203, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v183, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v203, v1, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v205, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v205, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v203, v143
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v205, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v144.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v63, v187, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v207, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v145.h, 0x7fff, v1.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v1, v28, v26 :: v_dual_sub_f32 v26, v205, v144
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v201, v142
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v205, v172, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v207, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v12, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v207, v158, 16, 1
	v_add3_u32 v205, v172, v205, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v24.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v1, v12, 0x7fff
	v_bfe_u32 v1, v2, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v207, v158, v207, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v207.l, v24.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v2, v1, 0x7fff
	v_bfe_u32 v2, v7, 16, 1
	v_add3_u32 v2, v7, v2, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v8, v9, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v253, v7
	v_cndmask_b16 v7.l, 0x7fff, v1.h, s0
	v_add3_u32 v8, v9, v8, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v1, v175, 16, 1
	v_cmp_o_f32_e64 s0, v163, v163
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v254, v7
	v_cndmask_b16 v7.l, 0x7fff, v2.h, s1
	v_add3_u32 v9, v10, v9, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v175, v1, 0x7fff
	v_bfe_u32 v2, v163, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v255, v7
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v10, v11, v10, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v221, v7
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v2, v163, v2, 0x7fff
	v_add3_u32 v1, v177, v1, 0x7fff
	v_bfe_u32 v8, v167, 16, 1
	v_cmp_o_f32_e64 s1, v165, v165
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v220, v7
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v169, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v59.h, 0x7fff, v2.h, s0
	v_bfe_u32 v1, v171, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v210, v7
	v_cndmask_b16 v7.l, 0x7fff, v10.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v2, v173, 16, 1
	v_add3_u32 v8, v167, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v167, v167
	v_add3_u32 v9, v169, v9, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v211, v7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v165, 16, 1
	v_cmp_o_f32_e64 s3, v169, v169
	v_add3_u32 v1, v171, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	v_add3_u32 v2, v173, v2, 0x7fff
	v_add3_u32 v7, v165, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v173, v173
	v_cndmask_b16 v57.h, 0x7fff, v8.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v9.h, s3
	v_bfe_u32 v8, v159, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v161, 16, 1
	v_bfe_u32 v9, v157, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v61.h, 0x7fff, v2.h, s0
	v_bfe_u32 v1, v155, 16, 1
	v_bfe_u32 v2, v153, 16, 1
	v_add3_u32 v7, v161, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v161, v161
	v_add3_u32 v8, v159, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v159, v159
	v_add3_u32 v9, v157, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v157, v157
	v_add3_u32 v1, v155, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v2, v153, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v153, v153
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[231:232], v54
	ds_load_b64 v[223:224], v55
	ds_load_b64 v[235:236], v56
	ds_load_b64 v[15:16], v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v8.h, s2
	v_cndmask_b16 v29.h, 0x7fff, v9.h, s3
	v_bfe_u32 v7, v151, 16, 1
	v_bfe_u32 v8, v149, 16, 1
	v_bfe_u32 v9, v147, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v239.h, 0x7fff, v2.h, s0
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[226:227], v40
	ds_load_b64 v[1:2], v51
	ds_load_b64 v[233:234], v52
	ds_load_b64 v[229:230], v238
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v7, v151, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v151, v151
	v_add3_u32 v8, v149, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v149, v149
	v_add3_u32 v9, v147, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v147, v147
	v_cndmask_b16 v35.h, 0x7fff, v7.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v61.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v32.h, 0x7fff, v8.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v62.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v30.h, 0x7fff, v9.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v249.l, v42.h
	v_mov_b16_e64 v248.l, v57.h
	v_mov_b16_e64 v247.l, v58.h
	v_mov_b16_e64 v246.l, v59.h
	v_mov_b16_e64 v245.l, v60.h
	v_mov_b16_e64 v244.l, v41.h
	v_mov_b16_e64 v145.l, v30.h
	v_mov_b16_e64 v144.l, v32.h
	v_mov_b16_e64 v143.l, v35.h
	v_mov_b16_e64 v142.l, v239.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[244:251], v[130:137], v[65:72]
	v_mov_b16_e64 v141.l, v36.h
	v_mov_b16_e64 v140.l, v29.h
	v_mov_b16_e64 v139.l, v31.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v9.h, v231.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v40, v174, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v231.l, v15.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v193, v138
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v34.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v7.l, v226.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v7.h, v229.l
	v_mov_b16_e32 v8.l, v1.l
	v_mov_b16_e64 v8.h, v233.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[138:145], v[106:113], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v9.l, v15.l
	v_mov_b16_e64 v10.l, v223.l
	v_mov_b16_e64 v10.h, v235.l
	v_mov_b16_e64 v11.l, v227.l
	v_mov_b16_e64 v11.h, v230.l
	v_mov_b16_e32 v12.l, v2.l
	v_mov_b16_e64 v12.h, v234.l
	v_mov_b16_e32 v13.l, v16.l
	v_mov_b16_e64 v13.h, v232.l
	v_mov_b16_e64 v14.l, v224.l
	v_mov_b16_e64 v14.h, v236.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v174, v40, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cmp_o_f32_e64 s0, v208, v208
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v229.l, v226.h
	v_wmma_f32_16x16x16_bf16 v[65:72], v[244:251], v[7:14], v[65:72]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v250.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v244.l, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v180, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	v_cndmask_b16 v245.h, 0x7fff, v43.h, s0
	v_bfe_u32 v43, v194, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v180, v40, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v24.h, v244.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v194, v194
	v_add3_u32 v44, v194, v43, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v246.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v246.l, v24.l
	v_mov_b16_e32 v44.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v182, v40, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v247.l, v24.l
	v_mov_b16_e64 v248.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v195, v180, v246 :: v_dual_mov_b32 v226, v229
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v184, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v245.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s0, v176, v176
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v197, v182, v247
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v184, v40, 0x7fff
	v_cmp_o_f32_e64 s3, v170, v170
	v_cmp_o_f32_e64 s1, v166, v166
	v_cmp_o_f32_e64 s2, v168, v168
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v24.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v186, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v234.l, v2.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v174, v24
	v_sub_f32_e32 v199, v184, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v186, v40, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v233.l, v1.h
	v_mov_b16_e64 v230.l, v227.h
	v_mov_b16_e64 v235.l, v223.h
	v_mov_b16_e64 v236.l, v224.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v232.l, v16.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v195, v195
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v186, v249
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v40, v188, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v250.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v203, v188, v250
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v190, v40, 0x7fff
	v_cndmask_b16 v251.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v190, v190, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v192, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v43.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v192, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v196, v40, 0x7fff
	v_bfe_u32 v192, v178, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v192, v178, v192, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v196, v45
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v40, v198, v40, 0x7fff
	v_bfe_u32 v196, v162, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v196, v162, v196, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v198, v46
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v40, v200, v40, 0x7fff
	v_bfe_u32 v198, v164, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v202, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v198, v164, v198, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v184, v200, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v40, v202, v40, 0x7fff
	v_bfe_u32 v200, v166, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v200, v166, v200, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v24.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v202, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v40, v204, v40, 0x7fff
	v_bfe_u32 v202, v168, 16, 1
	v_cndmask_b16 v200.h, 0x7fff, v200.h, s1
	v_cmp_o_f32_e64 s1, v158, v158
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v227, v233
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v40.h, vcc_lo
	v_bfe_u32 v40, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v202, v168, v202, 0x7fff
	v_cndmask_b16 v207.h, 0x7fff, v207.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v204, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v206, v40, 0x7fff
	v_bfe_u32 v204, v170, 16, 1
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s2
	v_cmp_o_f32_e64 s2, v156, v156
	v_cmp_o_f32_e64 s1, v148, v148
	v_cndmask_b16 v50.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_add3_u32 v204, v170, v204, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v208, v245
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v208, v156, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v206, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v192.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_cndmask_b16 v204.h, 0x7fff, v204.h, s3
	v_bfe_u32 v206, v160, 16, 1
	v_cmp_o_f32_e64 s3, v154, v154
	v_add3_u32 v208, v156, v208, 0x7fff
	v_cndmask_b16 v196.h, 0x7fff, v196.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_add3_u32 v206, v160, v206, 0x7fff
	v_cndmask_b16 v252.h, 0x7fff, v228.h, s3
	v_bfe_u32 v228, v152, 16, 1
	v_cndmask_b16 v208.h, 0x7fff, v208.h, s2
	v_cndmask_b16 v205.h, 0x7fff, v205.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v194, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v194, v176, 16, 1
	v_add3_u32 v228, v152, v228, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_cmp_o_f32_e64 s2, v146, v146
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v205.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v176, v194, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v204.h
	v_mov_b16_e64 v249.l, v202.h
	v_mov_b16_e64 v248.l, v200.h
	v_mov_b16_e64 v246.l, v196.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v194.h, s0
	v_cmp_o_f32_e64 s0, v164, v164
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v244.h, v192.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v245.l, v194.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v198.h, 0x7fff, v198.h, s0
	v_cmp_o_f32_e64 s0, v160, v160
	v_cndmask_b16 v18.h, 0x7fff, v228.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v50.l, v17.h
	v_mov_b16_e32 v49.l, v3.h
	v_mov_b16_e64 v247.l, v198.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v206.h, s0
	v_cmp_o_f32_e64 s0, v150, v150
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v47.l, v18.h
	v_mov_b16_e64 v46.l, v252.h
	v_wmma_f32_16x16x16_bf16 v[73:80], v[244:251], v[130:137], v[73:80]
	v_mov_b16_e64 v45.l, v208.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v207.h
	v_mov_b16_e64 v43.l, v206.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v178, v192
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v48.l, v19.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v24.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v193, v193
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v24.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[43:50], v[106:113], v[73:80]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v204.l, v24.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v229, v235
	v_dual_mov_b32 v228, v231 :: v_dual_mov_b32 v231, v234
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[244:251], v[7:14], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v7, v2, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v9, v162, v196 :: v_dual_sub_f32 v14, v172, v205
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b32_e32 v233, v236
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v24.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v7, v2, v7, 0x7fff
	v_bfe_u32 v2, v1, 16, 1
	v_bfe_u32 v10, v9, 16, 1
	v_cmp_o_f32_e64 s3, v9, v9
	v_bfe_u32 v15, v14, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v2, v1, v2, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v176, v194
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v9, v10, 0x7fff
	v_bfe_u32 v9, v195, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v2.h, s0
	v_bfe_u32 v8, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	v_add3_u32 v9, v195, v9, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v166, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v8, v1, v8, 0x7fff
	v_bfe_u32 v1, v193, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_cmp_o_f32_e64 s6, v237, v237
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v1, v193, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v208.l, v24.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v10, v11, 0x7fff
	v_bfe_u32 v10, v199, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v1.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v164, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v199, v199
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_add3_u32 v12, v199, v10, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v168, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v197, v197
	v_cmp_o_f32_e64 s1, v203, v203
	v_bfe_u32 v13, v10, 16, 1
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v197, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s2
	v_add3_u32 v13, v10, v13, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v2.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v170, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v197, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s3
	v_bfe_u32 v14, v190, 16, 1
	v_bfe_u32 v13, v2, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v1.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	v_cmp_o_f32_e64 s3, v190, v190
	v_add3_u32 v14, v190, v14, 0x7fff
	v_add3_u32 v13, v2, v13, 0x7fff
	v_bfe_u32 v2, v203, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[43:50], v[226:233], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v2, v203, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v240, v240
	v_cmp_o_f32_e64 s2, v209, v209
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v148, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.h, 0x7fff, v2.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v177, v60
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v1, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v201, v1, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v175, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[7:14], v[130:137], v[73:80]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v163, v59
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v8, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v165, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v9, v2, 16, 1
	v_bfe_u32 v15, v7, 16, 1
	v_add3_u32 v8, v1, v8, 0x7fff
	v_bfe_u32 v1, v240, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v167, v57
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v15, v7, v15, 0x7fff
	v_bfe_u32 v7, v237, 16, 1
	v_add3_u32 v1, v240, v1, 0x7fff
	v_add3_u32 v9, v2, v9, 0x7fff
	v_bfe_u32 v2, v209, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v169, v42
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v16, v237, v7, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v10, 16, 1
	v_add3_u32 v2, v209, v2, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b16 v9.l, 0x7fff, v15.h, s3
	v_add3_u32 v1, v10, v1, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v2.h, s2
	v_bfe_u32 v2, v97, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v171, v62 :: v_dual_sub_f32 v14, v173, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v15, v11, v10, 0x7fff
	v_bfe_u32 v10, v64, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_add3_u32 v2, v97, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v97, v97
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v11, v64, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v16.h, s6
	v_cmp_o_f32_e64 s2, v64, v64
	v_cndmask_b16 v11.l, 0x7fff, v15.h, s1
	v_bfe_u32 v15, v14, 16, 1
	v_add3_u32 v16, v12, v10, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v13, 16, 1
	v_cmp_o_f32_e64 s3, v12, v12
	v_cndmask_b16 v10.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s2
	v_bfe_u32 v1, v63, 16, 1
	v_add3_u32 v2, v13, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_bfe_u32 v13, v189, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v14, v14
	v_bfe_u32 v14, v191, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v16.h, s3
	v_add3_u32 v1, v63, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_add3_u32 v13, v189, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v189, v189
	v_add3_u32 v14, v191, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v191, v191
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[138:145], v[226:233], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v12.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v2.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v160, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v187, v187
	v_cmp_o_f32_e64 s0, v188, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[7:14], v[130:137], v[65:72]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v158, v207
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v13, v3, 16, 1
	v_bfe_u32 v8, v7, 16, 1
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v188, 16, 1
	v_add3_u32 v13, v3, v13, 0x7fff
	v_add3_u32 v8, v7, v8, 0x7fff
	v_bfe_u32 v7, v187, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v188, v1, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v187, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v1.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v156, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v186, v186
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v154, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v185, v185
	v_bfe_u32 v2, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_u32 v10, v9, 16, 1
	v_cmp_o_f32_e64 s1, v9, v9
	v_add3_u32 v2, v1, v2, 0x7fff
	v_bfe_u32 v1, v186, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v9, v10, 0x7fff
	v_bfe_u32 v9, v185, 16, 1
	v_add3_u32 v1, v186, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_add3_u32 v11, v185, v9, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v152, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v182, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s2
	v_bfe_u32 v12, v9, 16, 1
	v_cmp_o_f32_e64 s3, v9, v9
	v_cmp_o_f32_e64 s2, v3, v3
	v_bfe_u32 v3, v180, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v12, v9, v12, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v184, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v150, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v11.l, 0x7fff, v12.h, s3
	v_add3_u32 v1, v184, v1, 0x7fff
	v_add3_u32 v3, v180, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v180, v180
	v_bfe_u32 v12, v2, 16, 1
	v_cmp_o_f32_e64 s0, v2, v2
	v_cndmask_b16 v11.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v146, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s2
	v_add3_u32 v12, v2, v12, 0x7fff
	v_bfe_u32 v2, v182, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v3.h, s3
	v_bfe_u32 v14, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s0
	v_add3_u32 v2, v182, v2, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v14, v1, v14, 0x7fff
	v_bfe_u32 v1, v40, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v157, v29
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v12.h, 0x7fff, v2.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v2, v159, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v1, v40, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v181, v181
	v_cmp_o_f32_e64 s3, v3, v3
	v_cmp_o_f32_e64 s1, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v14.h, 0x7fff, v1.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v161, v34
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v183, v183
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[7:14], v[106:113], v[73:80]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v8, v2, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v155, v36
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v9, v3, 16, 1
	v_add3_u32 v7, v1, v7, 0x7fff
	v_bfe_u32 v1, v183, 16, 1
	v_add3_u32 v8, v2, v8, 0x7fff
	v_bfe_u32 v2, v181, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v153, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v1, v183, v1, 0x7fff
	v_add3_u32 v9, v3, v9, 0x7fff
	v_add3_u32 v2, v181, v2, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	v_cndmask_b16 v7.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v179, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v2.h, s2
	v_bfe_u32 v2, v10, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v151, v35
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_add3_u32 v1, v179, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v2, v10, v2, 0x7fff
	v_bfe_u32 v10, v28, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v149, v32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v9.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v147, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v3, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	v_add3_u32 v1, v11, v1, 0x7fff
	v_add3_u32 v11, v28, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_add3_u32 v3, v33, v3, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s2, v28, v28
	v_cndmask_b16 v11.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v15, v12, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v2.h, s0
	v_bfe_u32 v2, v13, 16, 1
	v_cmp_o_f32_e64 s0, v13, v13
	v_cndmask_b16 v10.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v12.l, 0x7fff, v15.h, s3
	v_bfe_u32 v1, v27, 16, 1
	v_add3_u32 v2, v13, v2, 0x7fff
	v_bfe_u32 v13, v14, 16, 1
	v_bfe_u32 v3, v26, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s2
	v_add3_u32 v1, v27, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v15, v14, v13, 0x7fff
	v_bfe_u32 v13, v25, 16, 1
	v_add3_u32 v3, v26, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v26, v26
	v_cmp_o_f32_e64 s2, v14, v14
	v_cmp_o_f32_e64 s3, v25, v25
	v_add3_u32 v14, v25, v13, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v2.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[7:14], v[106:113], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:540
	scratch_load_b32 v3, off, off offset:548
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s67, 1
	s_or_b32 s1, s67, 2
	s_or_b32 s2, s67, 3
	s_or_b32 s3, s67, 4
	s_or_b32 s6, s67, 5
	s_or_b32 s7, s67, 6
	s_or_b32 s8, s67, 7
	s_or_b32 s9, s67, 8
	s_or_b32 s10, s67, 9
	s_or_b32 s11, s67, 10
	s_or_b32 s12, s67, 11
	s_or_b32 s14, s67, 12
	s_or_b32 s15, s67, 13
	s_or_b32 s16, s67, 14
	s_or_b32 s17, s67, 15
	s_or_b32 s22, s67, 16
	s_or_b32 s23, s67, 17
	s_or_b32 s26, s67, 18
	s_or_b32 s27, s67, 19
	s_or_b32 s50, s67, 20
	s_or_b32 s51, s67, 21
	s_or_b32 s54, s67, 22
	s_or_b32 s55, s67, 23
	s_or_b32 s68, s67, 24
	s_or_b32 s69, s67, 25
	s_or_b32 s96, s67, 26
	s_or_b32 s97, s67, 27
	s_or_b32 s98, s67, 28
	s_or_b32 s99, s67, 29
	s_or_b32 s100, s67, 30
	s_or_b32 s101, s67, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s67, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v247, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s0, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v249, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v246, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s2, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v244, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s3, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v248, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s6, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v250, v243
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s7, s18
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s8, s18
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s9, s18
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s10, s18
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s11, s18
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s12, s18
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s14, s18
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s15, s18
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s16, s18
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s17, s18
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s22, s18
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s23, s18
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s26, s18
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s27, s18
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s50, s18
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s51, s18
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s54, s18
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s55, s18
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s68, s18
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s69, s18
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s96, s18
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s97, s18
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s98, s18
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s99, s18
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s100, s18
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s101, s18
	s_cselect_b32 s26, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s54, s67, s65
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s95
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s54, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v1, s0, v0, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v3, 1
	scratch_load_b32 v3, off, off offset:556 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s94
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s93
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v3, 1
	scratch_load_b32 v3, off, off offset:564 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s0, v3, 1
	scratch_load_b32 v3, off, off offset:572 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s0, v3, 1
	scratch_load_b32 v3, off, off offset:580 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s0, v3, 1
	scratch_load_b32 v3, off, off offset:604 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x6
	buffer_load_u16 v117, v1, s[44:47], 0 offen
	buffer_load_u16 v118, v2, s[44:47], 0 offen
	buffer_load_u16 v119, v7, s[44:47], 0 offen
	buffer_load_u16 v120, v8, s[44:47], 0 offen
	buffer_load_u16 v121, v9, s[44:47], 0 offen
	buffer_load_u16 v122, v10, s[44:47], 0 offen
	buffer_load_u16 v123, v11, s[44:47], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:588
	scratch_load_b32 v2, off, off offset:596
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v7, s0, v3, 1
	scratch_load_b32 v3, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v1, s0, v1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s0, v2, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v3, 1
	scratch_load_b32 v3, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s0, v3, 1
	scratch_load_b32 v3, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s0, v3, 1
	scratch_load_b32 v3, off, off offset:636 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s0, v3, 1
	scratch_load_b32 v3, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s0, v3, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v3, off, off offset:660 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x6
	buffer_load_u16 v124, v2, s[44:47], 0 offen
	buffer_load_u16 v125, v7, s[44:47], 0 offen
	buffer_load_u16 v126, v8, s[44:47], 0 offen
	buffer_load_u16 v127, v9, s[44:47], 0 offen
	buffer_load_u16 v128, v10, s[44:47], 0 offen
	buffer_load_u16 v129, v11, s[44:47], 0 offen
	buffer_load_u16 v130, v12, s[44:47], 0 offen
	scratch_load_b32 v2, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v7, s0, v3, 1
	scratch_load_b32 v3, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v2, s0, v2, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v3, 1
	scratch_load_b32 v3, off, off offset:676 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s0, v3, 1
	scratch_load_b32 v3, off, off offset:684 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s0, v3, 1
	scratch_load_b32 v3, off, off offset:692 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s0, v3, 1
	scratch_load_b32 v3, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s0, v3, 1
	scratch_load_b32 v3, off, off offset:708 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s0, v3, 1
	scratch_load_b32 v3, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, s0, v3, 1
	scratch_load_b32 v3, off, off offset:732 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	s_clause 0x6
	buffer_load_u16 v131, v7, s[44:47], 0 offen
	buffer_load_u16 v132, v8, s[44:47], 0 offen
	buffer_load_u16 v133, v9, s[44:47], 0 offen
	buffer_load_u16 v134, v10, s[44:47], 0 offen
	buffer_load_u16 v135, v11, s[44:47], 0 offen
	buffer_load_u16 v136, v12, s[44:47], 0 offen
	buffer_load_u16 v137, v13, s[44:47], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v9, s0, v21, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v15, s0, v3, 1
	scratch_load_b32 v3, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v16, s0, v3, 1
	scratch_load_b32 v3, off, off offset:748 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v3, 1
	scratch_load_b32 v3, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v3, 1
	scratch_load_b32 v3, off, off offset:716 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x5
	buffer_load_u16 v138, v14, s[44:47], 0 offen
	buffer_load_u16 v139, v15, s[44:47], 0 offen
	buffer_load_u16 v140, v16, s[44:47], 0 offen
	buffer_load_u16 v141, v7, s[44:47], 0 offen
	buffer_load_u16 v142, v8, s[44:47], 0 offen
	buffer_load_u16 v143, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, s35, v22
	v_add_lshl_u32 v7, s0, v22, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v9, s0, v9, 1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v8, s0, v3, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_load_u16 v144, v7, s[44:47], 0 offen
	buffer_load_u16 v26, v1, s[44:47], 0 offen
	buffer_load_u16 v25, v2, s[44:47], 0 offen
	buffer_load_u16 v24, v8, s[44:47], 0 offen
	buffer_load_u16 v145, v9, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v212, v117
	ds_store_b16 v212, v124 offset:1024
	ds_store_b16 v212, v131 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v212, v138 offset:3072
	ds_store_b16 v213, v118
	ds_store_b16 v213, v125 offset:1024
	ds_store_b16 v213, v132 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v213, v139 offset:3072
	ds_store_b16 v214, v119
	ds_store_b16 v214, v126 offset:1024
	ds_store_b16 v214, v133 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v214, v140 offset:3072
	ds_store_b16 v215, v120
	ds_store_b16 v215, v127 offset:1024
	ds_store_b16 v215, v134 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v215, v141 offset:3072
	ds_store_b16 v216, v121
	ds_store_b16 v216, v128 offset:1024
	ds_store_b16 v216, v135 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v216, v142 offset:3072
	ds_store_b16 v217, v122
	ds_store_b16 v217, v129 offset:1024
	ds_store_b16 v217, v136 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v217, v143 offset:3072
	ds_store_b16 v218, v123
	ds_store_b16 v218, v130 offset:1024
	ds_store_b16 v218, v137 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v218, v144 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v219, v26
	s_waitcnt vmcnt(2)
	ds_store_b16 v219, v25 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v219, v24 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v219, v145 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v1, off, off offset:312
	scratch_load_b128 v[7:10], off, off
	scratch_load_b128 v[11:14], off, off offset:16
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v2, 4, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v2, s67, v2
	.loc	1 671 30 is_stmt 1              ; attention_backward.py:671:30
	v_mov_b32_e32 v245, v243
	v_dual_mov_b32 v105, v243 :: v_dual_mov_b32 v106, v244
	v_dual_mov_b32 v108, v246 :: v_dual_mov_b32 v109, v247
	v_dual_mov_b32 v110, v248 :: v_dual_mov_b32 v107, v245
	v_dual_mov_b32 v111, v249 :: v_dual_mov_b32 v112, v250
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s18, v2
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, s0
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_b128 v[27:30], v1
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[31:34], v1
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[7:14], v[27:34], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:32
	scratch_load_b128 v[11:14], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[27:30], v1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[31:34], v1
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[7:14], v[27:34], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:64
	scratch_load_b128 v[11:14], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[27:30], v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[31:34], v1
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[7:14], v[27:34], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[7:10], off, off offset:96
	scratch_load_b128 v[11:14], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[27:30], v1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[31:34], v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v1, s67, v225
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s101, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[7:14], v[27:34], v[105:112]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v7, 8, v225
	v_or_b32_e32 v8, 12, v225
	v_or_b32_e32 v9, 16, v225
	v_or_b32_e32 v10, 20, v225
	v_or_b32_e32 v11, 24, v225
	v_or_b32_e32 v12, 28, v225
	.loc	1 608 29 is_stmt 0              ; attention_backward.py:608:29
	v_or_b32_e32 v7, s67, v7
	v_or_b32_e32 v8, s67, v8
	v_or_b32_e32 v9, s67, v9
	v_or_b32_e32 v10, s67, v10
	v_or_b32_e32 v11, s67, v11
	v_or_b32_e32 v12, s67, v12
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s18, v7
	v_cmp_gt_i32_e64 s2, s18, v8
	v_cmp_gt_i32_e64 s3, s18, v9
	v_cmp_gt_i32_e64 s6, s18, v10
	v_cmp_gt_i32_e64 s7, s18, v11
	v_cmp_gt_i32_e64 s8, s18, v12
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v27, s31, v1
	v_add_nc_u32_e32 v28, s31, v2
	v_add_nc_u32_e32 v29, s31, v7
	v_add_nc_u32_e32 v30, s31, v8
	v_add_nc_u32_e32 v31, s31, v9
	v_add_nc_u32_e32 v32, s31, v10
	v_add_nc_u32_e32 v33, s31, v11
	v_add_nc_u32_e32 v34, s31, v12
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s1
	s_and_b32 s55, s5, s2
	s_and_b32 s102, s5, s3
	s_and_b32 s100, s5, s6
	s_and_b32 s98, s5, s7
	s_and_b32 s96, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v222, v27
	v_cmp_le_i32_e64 s0, v222, v28
	v_cmp_le_i32_e64 s1, v222, v29
	v_cmp_le_i32_e64 s2, v222, v30
	v_cmp_le_i32_e64 s3, v222, v31
	v_cmp_le_i32_e64 s6, v222, v32
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s9, s101, vcc_lo
	s_and_b32 s0, s99, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v222, v33
	v_cmp_le_i32_e64 s8, v222, v34
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s97, s1
	s_and_b32 s2, s55, s2
	s_and_not1_b32 s10, s101, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s11, s99, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s3, s102, s3
	s_and_b32 s6, s100, s6
	s_or_b32 s101, s10, s9
	s_or_b32 s99, s11, s0
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s9, s55, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s98, s7
	s_and_b32 s8, s96, s8
	s_or_b32 s97, s0, s1
	s_or_b32 s55, s9, s2
	s_and_not1_b32 s0, s102, exec_lo
	s_and_b32 s1, s3, exec_lo
	s_and_not1_b32 s2, s100, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s102, s0, s1
	s_or_b32 s100, s2, s3
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s2, s96, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_or_b32 s98, s0, s1
	s_or_b32 s96, s2, s3
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s57
	s_cbranch_vccnz .LBB0_7
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v1, s29, v27
	v_subrev_nc_u32_e32 v2, s29, v28
	v_subrev_nc_u32_e32 v7, s29, v29
	v_subrev_nc_u32_e32 v8, s29, v30
	v_subrev_nc_u32_e32 v9, s29, v31
	v_subrev_nc_u32_e32 v10, s29, v32
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v222, v1
	v_cmp_ge_i32_e64 s0, v222, v2
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v1, s30, v27
	v_add_nc_u32_e32 v2, s30, v28
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v11, s29, v33
	v_subrev_nc_u32_e32 v12, s29, v34
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v222, v7
	v_cmp_ge_i32_e64 s2, v222, v8
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v7, s30, v29
	v_add_nc_u32_e32 v8, s30, v30
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v222, v9
	v_cmp_ge_i32_e64 s6, v222, v10
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v9, s30, v31
	v_add_nc_u32_e32 v10, s30, v32
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v222, v1
	v_cmp_le_i32_e64 s10, v222, v2
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v222, v11
	v_cmp_ge_i32_e64 s8, v222, v12
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v11, s30, v33
	v_add_nc_u32_e32 v12, s30, v34
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v222, v7
	v_cmp_le_i32_e64 s12, v222, v8
	v_cmp_le_i32_e64 s14, v222, v9
	v_cmp_le_i32_e64 s15, v222, v10
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s0, s0, s10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v222, v11
	v_cmp_le_i32_e64 s17, v222, v12
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s9, s101
	s_and_b32 s0, s0, s99
	s_and_b32 s1, s1, s11
	s_and_b32 s2, s2, s12
	s_and_b32 s1, s1, s97
	s_and_b32 s2, s2, s55
	s_and_b32 s3, s3, s14
	s_and_b32 s6, s6, s15
	s_and_not1_b32 s10, s101, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s11, s99, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s3, s3, s102
	s_and_b32 s6, s6, s100
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s17
	s_or_b32 s101, s10, s9
	s_or_b32 s99, s11, s0
	s_and_not1_b32 s0, s97, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s9, s55, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s7, s98
	s_and_b32 s8, s8, s96
	s_or_b32 s97, s0, s1
	s_or_b32 s55, s9, s2
	s_and_not1_b32 s0, s102, exec_lo
	s_and_b32 s1, s3, exec_lo
	s_and_not1_b32 s2, s100, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s102, s0, s1
	s_or_b32 s100, s2, s3
	s_and_not1_b32 s0, s98, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s2, s96, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_or_b32 s98, s0, s1
	s_or_b32 s96, s2, s3
	s_branch .LBB0_7
.LBB0_12:                               ; %Flow535
	.loc	1 0 21                          ; attention_backward.py:0:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v50, off, off offset:768
	scratch_load_b32 v51, off, off offset:772
	scratch_load_b32 v52, off, off offset:776
	s_branch .LBB0_14
.LBB0_13:
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v71, v72
	v_mov_b32_e32 v70, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v68, v72
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v80, v72
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v77, v72
	v_mov_b32_e32 v76, v72
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v81, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
.LBB0_14:                               ; %._crit_edge134
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v51
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v50
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v52
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s40, s36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v1, 46, v0
	v_or_b32_e32 v14, 2, v0
	v_or_b32_e32 v13, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v17, v16, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s35, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e32 vcc_lo, s56, v1
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s35, v14
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v19, v16, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, s5, vcc_lo
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v18, v16, v14
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s35, v13
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v19, s33, 2
	v_add_lshl_u32 v18, v18, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s16
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v20, v16, v15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s17
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v21, v16, v12
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s35, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v22, v16, v11
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s35, v12
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v89, v17, s[40:43], 0 offen
	v_add_lshl_u32 v17, v20, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v23, v16, v10
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s35, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v90, v18, s[40:43], 0 offen
	buffer_store_b32 v91, v19, s[40:43], 0 offen
	v_add_lshl_u32 v18, v21, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v8, 32, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s18
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s35, v10
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v22, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s19
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v24, v16, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v23, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s20
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v25, v16, v8
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s35, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s21
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v26, v16, v7
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s35, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	s_clause 0x1
	buffer_store_b32 v92, v17, s[40:43], 0 offen
	buffer_store_b32 v93, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v24, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v27, v16, v6
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s35, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v25, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s22
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s35, v6
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v94, v19, s[40:43], 0 offen
	buffer_store_b32 v95, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v26, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, s34, v50
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s23
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v28, v16, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v27, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s24
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v29, v16, v4
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s35, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s25
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v21, v21, s56
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v30, v16, v3
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s35, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	s_clause 0x1
	buffer_store_b32 v96, v17, s[40:43], 0 offen
	buffer_store_b32 v81, v18, s[40:43], 0 offen
	v_add_lshl_u32 v17, v28, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v31, v16, v2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s35, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v29, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v16, v16, v1
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s26
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s56, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s35, v2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v82, v19, s[40:43], 0 offen
	buffer_store_b32 v83, v20, s[40:43], 0 offen
	v_add_lshl_u32 v19, v30, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s27
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s30, s35, v1
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v31, s33, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v21, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s56, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v16, v16, s33, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v21, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, s5, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s5, s30
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, s5, s12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v16, 0x80000000, v16, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s56, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v84, v17, s[40:43], 0 offen
	buffer_store_b32 v85, v18, s[40:43], 0 offen
	buffer_store_b32 v86, v19, s[40:43], 0 offen
	buffer_store_b32 v87, v20, s[40:43], 0 offen
	buffer_store_b32 v88, v16, s[40:43], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s41, s39, 0xffff
	s_mov_b32 s40, s38
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s56, v15
	v_cmp_gt_i32_e64 s11, s56, v12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v14, v21, v14, 2
	buffer_store_b32 v73, v0, s[40:43], 0 offen
	v_add_lshl_u32 v0, v21, v15, 2
	v_add_lshl_u32 v12, v21, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s5, s13
	s_and_b32 s12, s5, s12
	s_and_b32 s11, s5, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s8, s56, v9
	v_cmp_gt_i32_e64 s10, s56, v11
	v_cmp_gt_i32_e64 s7, s56, v8
	v_cmp_gt_i32_e64 s9, s56, v10
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v74, v14, s[40:43], 0 offen
	buffer_store_b32 v75, v13, s[40:43], 0 offen
	v_add_lshl_u32 v11, v21, v11, 2
	s_clause 0x1
	buffer_store_b32 v76, v0, s[40:43], 0 offen
	buffer_store_b32 v77, v12, s[40:43], 0 offen
	v_add_lshl_u32 v0, v21, v9, 2
	v_add_lshl_u32 v10, v21, v10, 2
	v_add_lshl_u32 v8, v21, v8, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s10, s5, s10
	s_and_b32 s8, s5, s8
	s_and_b32 s9, s5, s9
	s_and_b32 s7, s5, s7
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s7
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s56, v5
	v_cmp_gt_i32_e64 s6, s56, v7
	v_cmp_gt_i32_e64 s2, s56, v4
	v_cmp_gt_i32_e64 s4, s56, v6
	v_cmp_gt_i32_e64 s1, s56, v3
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_clause 0x1
	buffer_store_b32 v78, v11, s[40:43], 0 offen
	buffer_store_b32 v79, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v21, v7, 2
	s_clause 0x1
	buffer_store_b32 v80, v0, s[40:43], 0 offen
	buffer_store_b32 v65, v8, s[40:43], 0 offen
	v_add_lshl_u32 v0, v21, v5, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s56, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v21, v6, 2
	v_add_lshl_u32 v4, v21, v4, 2
	v_add_lshl_u32 v3, v21, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s6, s5, s6
	s_and_b32 s3, s5, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v21, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s5, s4
	s_and_b32 s2, s5, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v21, v1, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, s5, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s5, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b32 v66, v7, s[40:43], 0 offen
	buffer_store_b32 v67, v6, s[40:43], 0 offen
	buffer_store_b32 v68, v0, s[40:43], 0 offen
	buffer_store_b32 v69, v4, s[40:43], 0 offen
	buffer_store_b32 v70, v3, s[40:43], 0 offen
	buffer_store_b32 v71, v2, s[40:43], 0 offen
	buffer_store_b32 v72, v1, s[40:43], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 784
		.amdhsa_kernarg_size 184
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
		.amdhsa_next_free_sgpr 103
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 103
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 784
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28208
; TotalNumSgprs: 105
; NumVgprs: 256
; ScratchSize: 784
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 105
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
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
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
        .size:           4
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
      - .offset:         144
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           1
        .value_kind:     by_value
      - .offset:         149
        .size:           1
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 784
    .sgpr_count:     105
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_fp32_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 195
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
