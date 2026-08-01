	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_and_b32_e32 v54, 15, v0
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
	s_or_b32 s8, s14, 3
	s_or_b32 s10, s14, 4
	s_or_b32 s11, s14, 5
	s_or_b32 s12, s14, 6
	s_or_b32 s13, s14, 7
	s_or_b32 s20, s14, 8
	s_or_b32 s21, s14, 9
	s_or_b32 s22, s14, 10
	s_or_b32 s23, s14, 11
	s_or_b32 s24, s14, 12
	s_or_b32 s25, s14, 13
	s_or_b32 s26, s14, 14
	s_or_b32 s27, s14, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s14, s19
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s4, s19
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s6, s19
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s8, s19
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s19
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s11, s19
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s12, s19
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s13, s19
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s13, s35, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s20, s19
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s21, s19
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s22, s19
	s_mov_b32 s22, 0x7ffffffe
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s23, s19
	s_mov_b32 s23, 0x31027000
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s24, s19
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s25, s19
	s_load_b64 s[24:25], s[0:1], 0x28
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s26, s19
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_mov_b32 s20, s36
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s27, s19
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_mov_b32 s26, s22
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s34, s34, s14
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, s5, s13
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_mul_i32 s33, s34, s35
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s21, s37, 0xffff
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s33, v0
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
	s_and_b32 s4, s7, s13
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
	s_and_b32 s4, s9, s13
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
	s_and_b32 s4, s11, s13
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
	s_and_b32 s4, vcc_lo, s13
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
	s_and_b32 s4, s6, s13
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
	s_and_b32 s4, s8, s13
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
	s_and_b32 s4, s10, s13
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
	s_and_b32 s4, s12, s13
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
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s20, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s20, s20, 28
	s_add_i32 s4, s4, s20
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s20, s14, 1
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s4, s4, 4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v195, 0, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s21, s4, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v2, 0x90, v1
	v_xor_b32_e32 v19, 0x120, v1
	v_xor_b32_e32 v20, 0x1b0, v1
	v_xor_b32_e32 v21, 0x240, v1
	v_xor_b32_e32 v22, 0x2d0, v1
	v_xor_b32_e32 v23, 0x360, v1
	v_xor_b32_e32 v1, 0x3f0, v1
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s20, s21
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s21, s3, s21
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s36, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s21, s21, s20
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v196, 0, v2
	v_add_nc_u32_e32 v202, 0, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[1:2], null, s21, s56, v[0:1]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s4, s3, s4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v197, 0, v19
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s2, s4, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s56, v0
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s2, s2, s56
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v2, s2, v0, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v198, 0, v20
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s5, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v199, 0, v21
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s56, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s7, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v200, 0, v22
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v21, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s51, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v30, s56, v27
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v22, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s9, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v201, 0, v23
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s50, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v33, s56, v30
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s11, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s36, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s49, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v36, s56, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, vcc_lo, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v40, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s48, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v39, s56, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s6, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v31, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s47, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v19, s56, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v32, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s8, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s21, s39, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s46, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s20, s38
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s10, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v37, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s45, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s12, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v41, 0x80000000, v19, s2
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s18, 31
	s_mov_b32 s48, 0
	.loc	1 587 21 is_stmt 0              ; attention_backward.py:587:21
	s_ashr_i32 s5, s2, 31
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v195, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v195, v8 offset:1024
	ds_store_b16 v196, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v196, v10 offset:1024
	ds_store_b16 v197, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v197, v16 offset:1024
	ds_store_b16 v198, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v198, v9 offset:1024
	ds_store_b16 v199, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v199, v13 offset:1024
	ds_store_b16 v200, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v200, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v201, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v201, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v202, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v202, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v3, v20, s[24:27], 0 offen
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
	v_and_b32_e32 v2, 7, v0
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s5, s2, s5
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s43, s44
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v1, 4, v2
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s59, s5, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s5, s28, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v4, v54, 7, v1
	v_xor_b32_e32 v6, 16, v4
	v_add_nc_u32_e32 v5, 0, v4
	v_xor_b32_e32 v7, 32, v4
	v_xor_b32_e32 v8, 48, v4
	v_xor_b32_e32 v9, 64, v4
	v_add_nc_u32_e32 v6, 0, v6
	ds_load_b128 v[43:46], v5
	ds_load_b128 v[47:50], v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[43:46], v7
	ds_load_b128 v[47:50], v8
	v_xor_b32_e32 v10, 0x50, v4
	v_add_nc_u32_e32 v9, 0, v9
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:48 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v10, 0, v10
	ds_load_b128 v[43:46], v9
	ds_load_b128 v[47:50], v10
	v_xor_b32_e32 v11, 0x60, v4
	v_xor_b32_e32 v12, 0x70, v4
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:80 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v12, 0, v12
	ds_load_b128 v[43:46], v11
	ds_load_b128 v[47:50], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:112 ; 16-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v17.h, v3.l
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
	s_and_b32 s48, s20, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s59, s59, s5
.LBB0_2:
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, 0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v19.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v16.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v20.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v37.h
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v19
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v37.h
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v15.l, 15
	v_and_b16 v24.l, v16.l, 15
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v29
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v20
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 554 72 is_stmt 0              ; attention_backward.py:554:72
	v_and_b16 v25.l, v17.l, 15
	v_and_b16 v26.l, v18.l, 15
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v46, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v30
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v22.l
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_and_b32_e32 v3, 32, v0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v27.l, v13.l, 15
	v_and_b16 v28.l, v14.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v19.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v47, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v38
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v13
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v23.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v37, s7
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v37.h
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v52, -16, v35
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v36, 15, v14
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v45
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v18.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s11
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v37.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v53, -16, v36
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v17.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s8
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v14.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v18
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s6
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v13.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v48, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v34
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v24.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v39
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s12
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v33
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v16
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s5, s2, s40
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s10
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v37.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v32
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v55, 16, v0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v37.h
	v_mov_b16_e32 v19.l, v37.h
	v_mov_b16_e32 v20.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v49, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v40
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v37.h
	v_mov_b16_e32 v22.l, v37.h
	v_mov_b16_e32 v23.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v41
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v37.h
	v_mov_b16_e32 v25.l, v37.h
	v_mov_b16_e32 v26.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v51, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v27.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v42
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v37.h
	v_mov_b16_e32 v16.l, v37.h
	v_mov_b16_e32 v14.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v52, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v28.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v52, -16, v43
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v28.l, v37.h
	v_mov_b16_e32 v15.l, v37.h
	v_mov_b16_e32 v13.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v36, v36, v53, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v53, -16, v44
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s5, s43, s5
	s_xor_b32 s20, s41, s42
	s_add_i32 s21, s2, 1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v45, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_sub_i32 s22, s5, s40
	s_cmp_ge_u32 s5, s40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s21, s2
	s_cselect_b32 s5, s22, s5
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v17, v29, v17
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_add_i32 s21, s2, 1
	s_cmp_ge_u32 s5, s40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v45
	v_mul_f32_e32 v20, v38, v20
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v205, s14, v54
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v18, v37, v18
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v27, v34, v27
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v51, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	v_dual_mul_f32 v19, v30, v19 :: v_dual_mul_f32 v30, v35, v16
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v16, v18, 16, 1
	.loc	1 558 26 is_stmt 1              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v52, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s2, s21, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s20
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v44, v53, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v21, v31, v21 :: v_dual_mul_f32 v24, v40, v24
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v43, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v29, 0x7fff
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s19, v205
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s19, s2, s20
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	v_dual_mul_f32 v22, v39, v22 :: v_dual_mul_f32 v23, v32, v23
	v_mul_f32_e32 v32, v36, v15
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v15, v18, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v18, v18
	v_bfe_u32 v16, v19, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v44, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v21, 16, 1
	v_add3_u32 v16, v19, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v41, v26
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_bfe_u32 v17, v23, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v25, v33, v25
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v14.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v22, 16, 1
	v_bfe_u32 v18, v24, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v23, v23
	s_load_b128 s[36:39], s[0:1], 0x50
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v42, v28
	.loc	1 575 26                        ; attention_backward.py:575:26
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
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v56, 1, v3
	.loc	1 575 26                        ; attention_backward.py:575:26
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
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s19, 1
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v18.h, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s2
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s8
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v13
	ds_store_b16 v195, v17 offset:1024
	ds_store_b16_d16_hi v196, v13
	ds_store_b16_d16_hi v196, v17 offset:1024
	ds_store_b16 v197, v14
	ds_store_b16 v197, v18 offset:1024
	ds_store_b16_d16_hi v198, v14
	ds_store_b16_d16_hi v198, v18 offset:1024
	ds_store_b16 v199, v15
	ds_store_b16 v199, v19 offset:1024
	ds_store_b16_d16_hi v200, v15
	ds_store_b16_d16_hi v200, v19 offset:1024
	ds_store_b16 v201, v16
	ds_store_b16 v201, v20 offset:1024
	ds_store_b16_d16_hi v202, v16
	ds_store_b16_d16_hi v202, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph196
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[28:31], v12
	ds_load_b128 v[24:27], v11
	s_xor_b32 s2, s3, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v19, 4, v0
	s_ashr_i32 s2, s2, 31
	v_lshlrev_b32_e32 v33, 3, v54
	s_xor_b32 s6, s15, s2
	s_load_b256 s[20:27], s[0:1], 0x30
	s_sub_i32 s2, s6, s2
	s_clause 0x1
	s_load_b32 s6, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	v_or_b32_e32 v13, 4, v19
	v_or_b32_e32 v17, 8, v19
	v_or_b32_e32 v18, 12, v19
	v_or_b32_e32 v20, 16, v19
	v_or_b32_e32 v21, 20, v19
	v_or_b32_e32 v22, 24, v19
	v_or_b32_e32 v23, 28, v19
	scratch_store_b32 off, v13, off offset:128 ; 4-byte Folded Spill
	s_load_b64 s[40:41], s[0:1], 0x0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v21, off offset:144
	scratch_store_b32 off, v22, off offset:148
	scratch_store_b32 off, v23, off offset:152
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[24:27], off offset:156
	scratch_store_b128 off, v[28:31], off offset:172
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[28:31], v10
	ds_load_b128 v[24:27], v9
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[24:27], off offset:188
	scratch_store_b128 off, v[28:31], off offset:204
	ds_load_b128 v[28:31], v8
	ds_load_b128 v[24:27], v7
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[5:8], v5
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:252
	scratch_store_b128 off, v[9:12], off offset:268
	v_lshl_or_b32 v5, v3, 6, v4
	v_mul_lo_u32 v4, s6, v205
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[24:27], off offset:220
	scratch_store_b128 off, v[28:31], off offset:236
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s14, s31
	s_mul_i32 s0, s2, s17
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v9, 32, v5
	v_xor_b32_e32 v10, 48, v5
	v_xor_b32_e32 v11, 64, v5
	v_mad_u64_u32 v[7:8], null, s47, v13, v[4:5]
	v_xor_b32_e32 v14, 0x50, v5
	v_xor_b32_e32 v15, 0x60, v5
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v5, off offset:284
	scratch_store_b64 off, v[7:8], off offset:416
	scratch_store_b32 off, v17, off offset:132
	v_mad_u64_u32 v[7:8], null, s47, v17, v[4:5]
	v_xor_b32_e32 v16, 0x70, v5
	v_lshrrev_b32_e32 v17, 1, v55
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:424
	scratch_store_b32 off, v18, off offset:136
	v_mad_u64_u32 v[7:8], null, s47, v18, v[4:5]
	v_lshrrev_b32_e32 v18, 5, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:432
	scratch_store_b32 off, v20, off offset:140
	v_mad_u64_u32 v[7:8], null, s47, v20, v[4:5]
	v_lshlrev_b32_e32 v5, 5, v0
	v_mov_b32_e32 v97, 0
	s_max_i32 s1, s1, 0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s0, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_and_b32 s1, s1, 0x7fffffe0
	v_mad_u64_u32 v[12:13], null, s47, v21, v[4:5]
	scratch_store_b64 off, v[7:8], off offset:440 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v7, 2, v0
	v_and_b32_e32 v5, 0x180, v5
	v_and_b32_e32 v8, 2, v0
	s_max_u32 s1, s48, s1
	s_and_b32 s3, s58, exec_lo
	v_and_b32_e32 v7, 52, v7
	s_cselect_b32 s60, s1, s48
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v9, 0, v9
	v_add_nc_u32_e32 v10, 0, v10
	v_or3_b32 v5, v7, v8, v5
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_mad_u64_u32 v[7:8], null, s47, v22, v[4:5]
	v_mad_u64_u32 v[20:21], null, s47, v23, v[4:5]
	v_or3_b32 v18, v5, v17, v18
	v_lshrrev_b32_e32 v17, 1, v0
	scratch_store_b64 off, v[12:13], off offset:448 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v12, 2, v55
	scratch_store_b64 off, v[7:8], off offset:456 ; 8-byte Folded Spill
	v_lshrrev_b32_e32 v13, 4, v3
	scratch_store_b64 off, v[20:21], off offset:464 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v20, 3, v0
	v_and_b32_e32 v17, 12, v17
	v_mad_u64_u32 v[4:5], null, s47, v19, v[4:5]
	v_lshlrev_b32_e32 v19, 1, v54
	v_lshlrev_b32_e32 v21, 2, v55
	v_and_b32_e32 v20, 48, v20
	v_lshl_or_b32 v2, v2, 7, v17
	.loc	1 535 17 is_stmt 1              ; attention_backward.py:535:17
	v_add_nc_u32_e32 v17, s35, v0
	v_or3_b32 v7, v12, v13, v33
	v_or3_b32 v21, v19, v21, v3
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v22, s56, v0
	v_add3_u32 v220, 0, v3, v19
	v_lshl_or_b32 v19, v54, 6, v20
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v20, s35, v17
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v7, off offset:288
	scratch_store_b32 off, v18, off offset:292
	scratch_store_b32 off, v17, off offset:296
	scratch_store_b32 off, v22, off offset:300
	scratch_store_b32 off, v21, off offset:304
	scratch_store_b32 off, v19, off offset:316
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v22, s56, v22
	scratch_store_b32 off, v20, off offset:308 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v20, s35, v20
	v_xor_b32_e32 v3, 0x90, v21
	v_xor_b32_e32 v17, 0x120, v21
	v_or3_b32 v2, v2, v1, v13
	v_xor_b32_e32 v1, 0x1b0, v21
	v_add_nc_u32_e32 v23, s35, v20
	v_dual_mov_b32 v74, v97 :: v_dual_add_nc_u32 v21, s56, v22
	scratch_store_b64 off, v[4:5], off offset:472 ; 8-byte Folded Spill
	v_xor_b32_e32 v4, 0x90, v7
	v_add_nc_u32_e32 v26, s35, v23
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v24, s56, v21
	v_xor_b32_e32 v5, 0x120, v7
	v_mov_b32_e32 v78, v97
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v29, s35, v26
	v_dual_mov_b32 v76, v97 :: v_dual_add_nc_u32 v27, s56, v24
	v_xor_b32_e32 v7, 0x1b0, v7
	v_xor_b32_e32 v36, 16, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v32, s35, v29
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v20, off offset:320
	scratch_store_b32 off, v21, off offset:324
	scratch_store_b32 off, v23, off offset:328
	scratch_store_b32 off, v24, off offset:332
	scratch_store_b32 off, v26, off offset:336
	scratch_store_b32 off, v4, off offset:340
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v30, s56, v27
	scratch_store_b32 off, v27, off offset:352 ; 4-byte Folded Spill
	v_dual_mov_b32 v80, v97 :: v_dual_add_nc_u32 v35, s35, v32
	v_dual_mov_b32 v79, v97 :: v_dual_add_nc_u32 v4, 0, v5
	v_dual_mov_b32 v90, v97 :: v_dual_add_nc_u32 v249, 0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:392
	scratch_store_b32 off, v4, off offset:344
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v35, s35, v35
	v_add_nc_u32_e32 v4, 0, v7
	v_dual_mov_b32 v96, v97 :: v_dual_add_nc_u32 v3, 0, v36
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v29, off offset:356
	scratch_store_b32 off, v2, off offset:376
	v_xor_b32_e32 v13, 32, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:348
	scratch_store_b32 off, v35, off offset:400
	v_add_nc_u32_e32 v4, s35, v35
	v_mov_b32_e32 v35, v97
	scratch_store_b32 off, v3, off offset:364 ; 4-byte Folded Spill
	v_dual_mov_b32 v82, v97 :: v_dual_add_nc_u32 v3, 0, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v32, off offset:380
	scratch_store_b32 off, v4, off offset:408
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v4, s35, v4
	scratch_store_b32 off, v22, off offset:312 ; 4-byte Folded Spill
	v_xor_b32_e32 v19, 48, v19
	v_dual_mov_b32 v75, v97 :: v_dual_add_nc_u32 v34, s56, v30
	v_dual_mov_b32 v92, v97 :: v_dual_add_nc_u32 v251, 0, v1
	v_dual_mov_b32 v94, v97 :: v_dual_add_nc_u32 v1, s35, v4
	scratch_store_b32 off, v3, off offset:368 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, v97 :: v_dual_add_nc_u32 v3, 0, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v55, off offset:484
	scratch_store_b32 off, v34, off offset:384
	v_add_nc_u32_e32 v34, s56, v34
	v_dual_mov_b32 v194, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_mov_b32_e32 v86, v97
	v_mov_b32_e32 v77, v97
	scratch_store_b32 off, v34, off offset:396 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, s56, v34
	v_mov_b32_e32 v224, v1
	scratch_store_b32 off, v33, off offset:388 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, v97 :: v_dual_mov_b32 v211, v4
	v_add_nc_u32_e32 v5, s56, v34
	scratch_store_b32 off, v34, off offset:404 ; 4-byte Folded Spill
	v_mov_b32_e32 v40, v97
	scratch_store_b32 off, v3, off offset:372 ; 4-byte Folded Spill
	v_mov_b32_e32 v93, v97
	scratch_store_b32 off, v5, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s56, v5
	v_add_nc_u32_e32 v1, s35, v1
	v_mov_b32_e32 v95, v97
	v_mov_b32_e32 v83, v97
	v_xor_b32_e32 v20, 16, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v4, s56, v5
	v_add_nc_u32_e32 v1, s35, v1
	v_xor_b32_e32 v21, 32, v2
	v_xor_b32_e32 v22, 48, v2
	v_dual_mov_b32 v3, v4 :: v_dual_add_nc_u32 v4, s56, v4
	v_xor_b32_e32 v23, 64, v2
	v_xor_b32_e32 v24, 0x50, v2
	v_xor_b32_e32 v25, 0x60, v2
	v_xor_b32_e32 v26, 0x70, v2
	v_dual_mov_b32 v185, v4 :: v_dual_add_nc_u32 v4, s56, v4
	v_dual_mov_b32 v2, v5 :: v_dual_add_nc_u32 v5, s35, v1
	v_xor_b32_e32 v8, 16, v18
	v_xor_b32_e32 v12, 32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v203, v4 :: v_dual_add_nc_u32 v4, s56, v4
	v_xor_b32_e32 v18, 48, v18
	v_dual_mov_b32 v91, v97 :: v_dual_add_nc_u32 v250, 0, v17
	v_add_nc_u32_e32 v13, s35, v5
	v_dual_mov_b32 v243, v4 :: v_dual_add_nc_u32 v4, s56, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v39, v97 :: v_dual_add_nc_u32 v246, 0, v18
	v_add_nc_u32_e32 v18, s35, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v186, v13 :: v_dual_add_nc_u32 v17, s56, v4
	v_dual_mov_b32 v88, v97 :: v_dual_add_nc_u32 v207, 0, v20
	v_mov_b32_e32 v210, v18
	v_add_nc_u32_e32 v18, s35, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v19, s56, v17
	v_dual_mov_b32 v13, v17 :: v_dual_add_nc_u32 v208, 0, v21
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v20, s35, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v17, v19
	v_add_nc_u32_e32 v19, s56, v19
	v_dual_mov_b32 v190, v18 :: v_dual_add_nc_u32 v209, 0, v22
	v_mov_b32_e32 v204, v20
	v_add_nc_u32_e32 v22, s35, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v18, v19 :: v_dual_add_nc_u32 v21, s56, v19
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v212, 0, v23
	v_dual_mov_b32 v191, v22 :: v_dual_add_nc_u32 v20, s56, v21
	v_mov_b32_e32 v19, v21
	v_add_nc_u32_e32 v21, s35, v22
	v_add_nc_u32_e32 v213, 0, v24
	v_xor_b32_e32 v27, 0x90, v33
	v_add_nc_u32_e32 v22, s56, v20
	v_xor_b32_e32 v28, 0x120, v33
	v_add_nc_u32_e32 v23, s35, v21
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v206, 0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v24, s56, v22
	v_add_nc_u32_e32 v187, 0, v26
	v_add_nc_u32_e32 v25, s35, v23
	scratch_store_b32 off, v30, off offset:360 ; 4-byte Folded Spill
	v_xor_b32_e32 v29, 0x1b0, v33
	v_add_nc_u32_e32 v26, s56, v24
	v_xor_b32_e32 v30, 0x240, v33
	v_add_nc_u32_e32 v188, 0, v27
	v_add_nc_u32_e32 v189, 0, v28
	v_add_nc_u32_e32 v27, s35, v25
	v_add_nc_u32_e32 v28, s56, v26
	v_xor_b32_e32 v31, 0x2d0, v33
	v_xor_b32_e32 v32, 0x360, v33
	v_add_nc_u32_e32 v192, 0, v29
	v_add_nc_u32_e32 v215, 0, v30
	v_add_nc_u32_e32 v29, s35, v27
	v_add_nc_u32_e32 v30, s56, v28
	v_dual_mov_b32 v37, v97 :: v_dual_add_nc_u32 v244, 0, v8
	v_dual_mov_b32 v38, v97 :: v_dual_add_nc_u32 v245, 0, v12
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v1, 0, v31
	v_mov_b32_e32 v12, v4
	v_add_nc_u32_e32 v4, 0, v32
	v_add_nc_u32_e32 v31, s35, v29
	v_add_nc_u32_e32 v32, s56, v30
	v_xor_b32_e32 v33, 0x3f0, v33
	v_mov_b32_e32 v221, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v34, v97 :: v_dual_add_nc_u32 v41, s35, v31
	v_add_nc_u32_e32 v42, s56, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v5, 0, v33
	v_mov_b32_e32 v33, 0
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v47, v56, v54
	v_add_nc_u32_e32 v43, s35, v41
	v_add_nc_u32_e32 v44, s56, v42
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s63, s44, 0x3fb8aa3b
	s_cmp_lt_i32 s60, s59
	s_mov_b32 s28, 0
	v_add_nc_u32_e32 v45, s35, v43
	v_add_nc_u32_e32 v46, s56, v44
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s61, s19, s0
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s62, s2, s16
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s2, s45
	s_cselect_b32 s64, -1, 0
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:480
	scratch_store_b32 off, v56, off offset:488
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s28, s28, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s28, s19
	s_cbranch_scc0 .LBB0_28
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s64
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s28, s61
	s_mov_b32 s65, s60
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_add_i32 s22, s0, s62
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s23, s0, s46
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s22, s22, s18
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s23, s23, s45
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34 is_stmt 1              ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v48.h, 0xff, v101.h
	.loc	1 689 25 is_stmt 0              ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v146, s56, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v48.h
	v_and_b16 v48.h, 0xff, v101.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s100, s0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v48.h
	v_and_b16 v48.h, 0xff, v100.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v48.h
	v_and_b16 v48.h, 0xff, v100.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v100, 0, 1, s0
	s_and_b32 s0, s99, s1
	v_cndmask_b32_e64 v101, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v48.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v48.h, 8, v100.l
	s_and_b32 s0, s98, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v48.h, v101.l, v48.h
	v_cndmask_b32_e64 v100, 0, 1, s0
	s_and_b32 s0, s97, vcc_lo
	v_cndmask_b32_e64 v101, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v49.h, 8, v100.l
	scratch_load_b32 v100, off, off offset:288 ; 4-byte Folded Reload
	v_or_b16 v49.h, v101.l, v49.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, 0, v100
	ds_store_b16_d16_hi v100, v48
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v48.h, 0xff, v98.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v48.h
	v_and_b16 v48.h, 0xff, v98.l
	v_cmp_ne_u16_e64 s0, 0, v48.h
	v_and_b16 v48.h, 0xff, v99.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s93, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v48.h
	v_and_b16 v48.h, 0xff, v99.l
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	v_or_b32_e32 v99, s65, v47
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s65, s65, 32
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s96, s1
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v48.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v98, 0, 1, s1
	s_and_b32 s1, s95, vcc_lo
	.loc	1 609 29 is_stmt 1              ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v48.h, 8, v98.l
	v_cndmask_b32_e64 v98, 0, 1, s1
	s_and_b32 s1, s94, s2
	v_or_b16 v48.h, v98.l, v48.h
	v_cndmask_b32_e64 v98, 0, 1, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s55, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v99, s1, v0, 1
	v_add_lshl_u32 v126, s1, v2, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v50.h, 8, v98.l
	v_cndmask_b32_e64 v98, 0, 1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s54, s42
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s92
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v50.h, v98.l, v50.h
	scratch_load_b32 v98, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v127, s1, v3, 1
	v_add_lshl_u32 v128, s1, v185, 1
	v_add_lshl_u32 v129, s1, v203, 1
	v_add_lshl_u32 v130, s1, v243, 1
	v_add_lshl_u32 v132, s1, v13, 1
	v_add_lshl_u32 v133, s1, v17, 1
	v_add_lshl_u32 v134, s1, v18, 1
	v_add_lshl_u32 v135, s1, v19, 1
	v_add_lshl_u32 v136, s1, v20, 1
	v_add_lshl_u32 v137, s1, v22, 1
	v_add_lshl_u32 v138, s1, v24, 1
	v_add_lshl_u32 v139, s1, v32, 1
	v_add_lshl_u32 v140, s1, v42, 1
	v_add_lshl_u32 v144, s1, v44, 1
	v_add_lshl_u32 v145, s1, v46, 1
	v_add_lshl_u32 v146, s1, v146, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v49
	scratch_load_b32 v98, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v48
	scratch_load_b32 v98, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v98, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v100, off, off offset:300
	scratch_load_b32 v101, off, off offset:312
	scratch_load_b32 v102, off, off offset:324
	scratch_load_b32 v103, off, off offset:332
	scratch_load_b32 v104, off, off offset:352
	scratch_load_b32 v112, off, off offset:360
	scratch_load_b32 v122, off, off offset:384
	scratch_load_b32 v124, off, off offset:404
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v98, s55, v47, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s55, s43
	scratch_load_b32 v125, off, off offset:412 ; 4-byte Folded Reload
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v100, s1, v100, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v101, s1, v101, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v102, s1, v102, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v103, s1, v103, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v104, s1, v104, 1
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v112, s1, v112, 1
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v122, s1, v122, 1
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v124, s1, v124, 1
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v125, s1, v125, 1
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s87
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	s_clause 0x7
	buffer_load_u16 v99, v99, s[52:55], 0 offen
	buffer_load_u16 v100, v100, s[52:55], 0 offen
	buffer_load_u16 v101, v101, s[52:55], 0 offen
	buffer_load_u16 v102, v102, s[52:55], 0 offen
	buffer_load_u16 v103, v103, s[52:55], 0 offen
	buffer_load_u16 v104, v104, s[52:55], 0 offen
	buffer_load_u16 v123, v112, s[52:55], 0 offen
	buffer_load_u16 v122, v122, s[52:55], 0 offen
	scratch_load_b32 v112, off, off offset:396 ; 4-byte Folded Reload
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v112, s1, v112, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	s_clause 0x7
	buffer_load_u16 v131, v112, s[52:55], 0 offen
	buffer_load_u16 v124, v124, s[52:55], 0 offen
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v126, v126, s[52:55], 0 offen
	buffer_load_u16 v127, v127, s[52:55], 0 offen
	buffer_load_u16 v128, v128, s[52:55], 0 offen
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	v_add_lshl_u32 v112, s1, v12, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	s_clause 0x7
	buffer_load_u16 v141, v112, s[52:55], 0 offen
	buffer_load_u16 v132, v132, s[52:55], 0 offen
	buffer_load_u16 v133, v133, s[52:55], 0 offen
	buffer_load_u16 v134, v134, s[52:55], 0 offen
	buffer_load_u16 v135, v135, s[52:55], 0 offen
	buffer_load_u16 v136, v136, s[52:55], 0 offen
	buffer_load_u16 v142, v137, s[52:55], 0 offen
	buffer_load_u16 v143, v138, s[52:55], 0 offen
	v_add_lshl_u32 v112, s1, v26, 1
	v_add_lshl_u32 v137, s1, v28, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v138, s1, v30, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s42
	buffer_load_b32 v169, v98, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v170, v98, s[48:51], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v98, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	s_clause 0x7
	buffer_load_u16 v147, v112, s[52:55], 0 offen
	buffer_load_u16 v148, v137, s[52:55], 0 offen
	buffer_load_u16 v149, v138, s[52:55], 0 offen
	buffer_load_u16 v150, v139, s[52:55], 0 offen
	buffer_load_u16 v151, v140, s[52:55], 0 offen
	buffer_load_u16 v144, v144, s[52:55], 0 offen
	buffer_load_u16 v145, v145, s[52:55], 0 offen
	buffer_load_u16 v146, v146, s[52:55], 0 offen
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s65, s59
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v98, 0, v98
	ds_load_u8_d16 v112, v98
	ds_load_u8_d16 v137, v98 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v137, v244
	ds_load_u8_d16 v138, v244 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v138, v245
	ds_load_u8_d16 v139, v245 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v139, v246
	ds_load_u8_d16 v140, v246 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v99
	ds_store_b16 v195, v100 offset:128
	ds_store_b16 v195, v101 offset:256
	ds_store_b16 v195, v102 offset:384
	ds_store_b16 v195, v103 offset:512
	ds_store_b16 v195, v104 offset:640
	ds_store_b16 v195, v123 offset:768
	ds_store_b16 v195, v122 offset:896
	ds_store_b16 v195, v131 offset:1024
	ds_store_b16 v195, v124 offset:1152
	ds_store_b16 v195, v125 offset:1280
	ds_store_b16 v195, v126 offset:1408
	ds_store_b16 v195, v127 offset:1536
	ds_store_b16 v195, v128 offset:1664
	ds_store_b16 v195, v129 offset:1792
	ds_store_b16 v195, v130 offset:1920
	ds_store_b16 v195, v141 offset:2048
	ds_store_b16 v195, v132 offset:2176
	ds_store_b16 v195, v133 offset:2304
	ds_store_b16 v195, v134 offset:2432
	ds_store_b16 v195, v135 offset:2560
	ds_store_b16 v195, v136 offset:2688
	ds_store_b16 v195, v142 offset:2816
	ds_store_b16 v195, v143 offset:2944
	s_waitcnt vmcnt(7)
	ds_store_b16 v195, v147 offset:3072
	s_waitcnt vmcnt(6)
	ds_store_b16 v195, v148 offset:3200
	s_waitcnt vmcnt(5)
	ds_store_b16 v195, v149 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b16 v195, v150 offset:3456
	s_waitcnt vmcnt(3)
	ds_store_b16 v195, v151 offset:3584
	s_waitcnt vmcnt(2)
	ds_store_b16 v195, v144 offset:3712
	s_waitcnt vmcnt(1)
	ds_store_b16 v195, v145 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b16 v195, v146 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v163, v220 offset:640
	ds_load_u16_d16_hi v164, v220 offset:896
	ds_load_u16_d16_hi v148, v220 offset:960
	ds_load_u16_d16_hi v147, v220 offset:704
	ds_load_u16_d16_hi v165, v220 offset:1152
	ds_load_u16_d16_hi v166, v220 offset:1408
	ds_load_u16_d16_hi v150, v220 offset:1472
	ds_load_u16_d16_hi v149, v220 offset:1216
	ds_load_u16_d16_hi v167, v220 offset:1664
	ds_load_u16_d16_hi v168, v220 offset:1920
	ds_load_u16_d16_hi v152, v220 offset:1984
	ds_load_u16_d16_hi v151, v220 offset:1728
	ds_load_u16_d16_hi v153, v220 offset:2176
	ds_load_u16_d16_hi v154, v220 offset:2432
	ds_load_u16_d16_hi v106, v220 offset:2496
	ds_load_u16_d16_hi v105, v220 offset:2240
	ds_load_u16_d16_hi v155, v220 offset:2688
	ds_load_u16_d16_hi v156, v220 offset:2944
	ds_load_u16_d16_hi v108, v220 offset:3008
	ds_load_u16_d16_hi v107, v220 offset:2752
	ds_load_u16_d16_hi v157, v220 offset:3200
	ds_load_u16_d16_hi v158, v220 offset:3456
	ds_load_u16_d16_hi v110, v220 offset:3520
	ds_load_u16_d16_hi v109, v220 offset:3264
	ds_load_u16_d16_hi v159, v220 offset:3712
	ds_load_u16_d16_hi v160, v220 offset:3968
	ds_load_u16_d16_hi v112, v220 offset:4032
	ds_load_u16_d16_hi v111, v220 offset:3776
	ds_load_u16_d16_hi v161, v220 offset:128
	ds_load_u16_d16_hi v162, v220 offset:384
	ds_load_u16_d16_hi v146, v220 offset:448
	ds_load_u16_d16_hi v145, v220 offset:192
	ds_load_u16_d16_hi v70, v220 offset:320
	ds_load_u16_d16_hi v219, v220 offset:256
	ds_load_u16_d16_hi v222, v220
	ds_load_u16_d16_hi v71, v220 offset:64
	ds_load_u16_d16_hi v68, v220 offset:832
	ds_load_u16_d16_hi v193, v220 offset:768
	ds_load_u16_d16_hi v218, v220 offset:512
	ds_load_u16_d16_hi v69, v220 offset:576
	ds_load_u16_d16_hi v66, v220 offset:1344
	ds_load_u16_d16_hi v216, v220 offset:1280
	ds_load_u16_d16_hi v217, v220 offset:1024
	ds_load_u16_d16_hi v67, v220 offset:1088
	ds_load_u16_d16_hi v64, v220 offset:1856
	ds_load_u16_d16_hi v72, v220 offset:1792
	ds_load_u16_d16_hi v214, v220 offset:1536
	ds_load_u16_d16_hi v65, v220 offset:1600
	ds_load_u16_d16_hi v54, v220 offset:2368
	ds_load_u16_d16_hi v62, v220 offset:2304
	ds_load_u16_d16_hi v63, v220 offset:2048
	ds_load_u16_d16_hi v55, v220 offset:2112
	ds_load_u16_d16_hi v52, v220 offset:2880
	ds_load_u16_d16_hi v60, v220 offset:2816
	ds_load_u16_d16_hi v61, v220 offset:2560
	ds_load_u16_d16_hi v53, v220 offset:2624
	ds_load_u16_d16_hi v50, v220 offset:3392
	ds_load_u16_d16_hi v58, v220 offset:3328
	ds_load_u16_d16_hi v59, v220 offset:3072
	ds_load_u16_d16_hi v51, v220 offset:3136
	ds_load_u16_d16_hi v48, v220 offset:3904
	ds_load_u16_d16_hi v56, v220 offset:3840
	ds_load_u16_d16_hi v57, v220 offset:3584
	ds_load_u16_d16_hi v49, v220 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v99
	ds_store_b16 v195, v131 offset:1024
	ds_store_b16 v195, v141 offset:2048
	ds_store_b16 v195, v147 offset:3072
	ds_store_b16 v196, v100
	ds_store_b16 v196, v124 offset:1024
	ds_store_b16 v196, v132 offset:2048
	ds_store_b16 v196, v148 offset:3072
	ds_store_b16 v197, v101
	ds_store_b16 v197, v125 offset:1024
	ds_store_b16 v197, v133 offset:2048
	ds_store_b16 v197, v149 offset:3072
	ds_store_b16 v198, v102
	ds_store_b16 v198, v126 offset:1024
	ds_store_b16 v198, v134 offset:2048
	ds_store_b16 v198, v150 offset:3072
	ds_store_b16 v199, v103
	ds_store_b16 v199, v127 offset:1024
	ds_store_b16 v199, v135 offset:2048
	ds_store_b16 v199, v151 offset:3072
	ds_store_b16 v200, v104
	ds_store_b16 v200, v128 offset:1024
	ds_store_b16 v200, v136 offset:2048
	ds_store_b16 v200, v144 offset:3072
	ds_store_b16 v201, v123
	ds_store_b16 v201, v129 offset:1024
	ds_store_b16 v201, v142 offset:2048
	ds_store_b16 v201, v145 offset:3072
	ds_store_b16 v202, v122
	ds_store_b16 v202, v130 offset:1024
	ds_store_b16 v202, v143 offset:2048
	ds_store_b16 v202, v146 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[171:174], off, off offset:252
	scratch_load_b128 v[175:178], off, off offset:268
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[121:124], v121
	ds_load_b128 v[125:128], v6
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v104, v97
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	v_mov_b32_e32 v103, v97
	v_mov_b32_e32 v136, v104
	v_dual_mov_b32 v132, v100 :: v_dual_mov_b32 v131, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v134, v102 :: v_dual_mov_b32 v133, v101
	v_dual_mov_b32 v135, v103 :: v_dual_mov_b32 v130, v98
	v_mov_b32_e32 v129, v97
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v98, s63, v113, -v169
	v_fma_f32 v100, s63, v114, -v169
	v_fma_f32 v99, s63, v117, -v169
	v_fma_f32 v103, s63, v118, -v169
	v_fma_f32 v101, s63, v115, -v169
	v_fma_f32 v102, s63, v116, -v169
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v100
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v104, s63, v119, -v169
	v_fma_f32 v113, s63, v120, -v169
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v152.l, v64.h
	v_mov_b16_e64 v151.l, v65.h
	v_mov_b16_e64 v150.l, v66.h
	v_mov_b16_e64 v149.l, v67.h
	v_mov_b16_e64 v148.l, v68.h
	v_mov_b16_e64 v147.l, v69.h
	v_mov_b16_e64 v146.l, v70.h
	v_mov_b16_e64 v145.l, v71.h
	v_mov_b16_e64 v168.l, v72.h
	v_mov_b16_e64 v167.l, v214.h
	v_mov_b16_e64 v166.l, v216.h
	v_mov_b16_e64 v165.l, v217.h
	v_mov_b16_e64 v164.l, v193.h
	v_mov_b16_e64 v163.l, v218.h
	v_mov_b16_e64 v162.l, v219.h
	v_mov_b16_e64 v161.l, v222.h
	v_mov_b16_e64 v160.l, v56.h
	v_mov_b16_e64 v159.l, v57.h
	v_mov_b16_e64 v158.l, v58.h
	v_mov_b16_e64 v157.l, v59.h
	v_mov_b16_e64 v156.l, v60.h
	v_mov_b16_e64 v155.l, v61.h
	v_mov_b16_e64 v154.l, v62.h
	v_mov_b16_e64 v153.l, v63.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[171:178], v[121:128], v[129:136]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[171:174], off, off offset:220
	scratch_load_b128 v[175:178], off, off offset:236
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[121:124], v9
	ds_load_b128 v[125:128], v10
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[171:178], v[121:128], v[129:136]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[171:174], off, off offset:188
	scratch_load_b128 v[175:178], off, off offset:204
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[121:124], v11
	ds_load_b128 v[125:128], v14
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[171:178], v[121:128], v[129:136]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[171:174], off, off offset:156
	scratch_load_b128 v[175:178], off, off offset:172
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[121:124], v15
	ds_load_b128 v[125:128], v16
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[171:178], v[121:128], v[129:136]
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v122, v98
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v98.l, 1, v112.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v112.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v114, v129, v170
	v_sub_f32_e32 v118, v133, v170
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v98.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v115, v130, v170
	v_sub_f32_e32 v121, v136, v170
	v_sub_f32_e32 v117, v132, v170
	v_sub_f32_e32 v116, v131, v170
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v122, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v119, v134, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_mul_f32_e32 v114, v98, v114
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v114, s44, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v122, v114, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_add3_u32 v114, v114, v122, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v122, v99
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v99.l, 1, v137.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s0, 1, v99.l
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v177, 0, v122, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v99, v177, v118
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v99, s44, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v118, v99, 16, 1
	v_cmp_o_f32_e64 s0, v99, v99
	v_add3_u32 v99, v99, v118, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v99.l, 1, v137.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s0
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v99.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v114.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v114, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v178, 0, v100, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v100, v178, v115
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v100, s44, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v115, v100, 16, 1
	v_cmp_o_f32_e64 s1, v100, v100
	v_add3_u32 v100, v100, v115, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, 0, v114
	ds_store_b16 v114, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v100.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v114, v99 offset:512
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v101
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v99.h, 1, v138.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v99.h
	v_and_b16 v99.h, 1, v139.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v179, 0, v100, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v99.h
	v_and_b16 v99.h, 1, v138.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v100, v179, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v99.h
	v_and_b16 v99.h, 1, v139.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v100, s44, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s2, 1, v99.h
	v_and_b16 v99.h, 1, v140.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v101, v100, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v99.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v100, v100, v101, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v101, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v180, 0, v101, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v180, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s44, v101
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v102, v101, 16, 1
	v_cmp_o_f32_e64 s0, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v102, v101, v102, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v101, v103
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v181, 0, v101, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v120, v135, v170 :: v_dual_mul_f32 v101, v181, v119
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s44, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v101, 16, 1
	v_cmp_o_f32_e64 s1, v101, v101
	v_add3_u32 v103, v101, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v101, v104
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v103.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v249, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v100.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_bfe_u32 v100, v179, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v249, v99 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v182, 0, v101, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v179, v179
	v_add3_u32 v100, v179, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v182, v120
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v223.h, 0x7fff, v100.h, s1
	v_bfe_u32 v100, v177, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s44, v101
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v177, v177
	v_add3_u32 v100, v177, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v104, v101, 16, 1
	v_cmp_o_f32_e64 s2, v101, v101
	v_add3_u32 v104, v101, v104, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v101, v113
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e32 v104.l, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v99.h, 0x7fff, v104.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v250, v99
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.l, 0x7fff, v102.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v178, v178
	v_bfe_u32 v102, v182, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v250, v99 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v183, 0, v101, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v181, v181
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v223.l, v104.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v102, v182, v102, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v222.l, v104.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v183, v121
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v103, v183, 16, 1
	v_cmp_o_f32_e64 s6, v183, v183
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v217.l, v104.l
	v_mov_b16_e64 v216.l, v104.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s44, v101
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v103, v183, v103, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v219.l, v104.l
	v_mov_b16_e64 v218.l, v104.l
	v_mov_b16_e64 v214.l, v104.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v113, v101, 16, 1
	v_cmp_o_f32_e64 s3, v101, v101
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v193.l, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v113, v101, v113, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v101, v181, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v99.h, 0x7fff, v113.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v251, v99
	ds_store_b16_d16_hi v251, v99 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v99, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v101, v181, v101, 0x7fff
	v_cmp_o_f32_e64 s3, v182, v182
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, 0, v99
	ds_load_b128 v[113:116], v99
	scratch_load_b32 v99, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v99
	scratch_load_b32 v99, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[121:124], v99
	scratch_load_b32 v99, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[125:128], v99
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v195, v48
	ds_store_b16 v195, v49 offset:128
	ds_store_b16 v195, v50 offset:256
	ds_store_b16 v195, v51 offset:384
	ds_store_b16 v195, v52 offset:512
	ds_store_b16 v195, v53 offset:640
	ds_store_b16 v195, v54 offset:768
	ds_store_b16 v195, v111 offset:896
	ds_store_b16 v195, v55 offset:1024
	ds_store_b16 v195, v56 offset:1152
	ds_store_b16 v195, v57 offset:1280
	ds_store_b16 v195, v58 offset:1408
	ds_store_b16 v195, v59 offset:1536
	ds_store_b16 v195, v60 offset:1664
	ds_store_b16 v195, v61 offset:1792
	ds_store_b16 v195, v110 offset:1920
	ds_store_b16 v195, v62 offset:2048
	ds_store_b16 v195, v63 offset:2176
	ds_store_b16 v195, v64 offset:2304
	ds_store_b16 v195, v65 offset:2432
	ds_store_b16 v195, v66 offset:2560
	ds_store_b16 v195, v67 offset:2688
	ds_store_b16 v195, v68 offset:2816
	ds_store_b16 v195, v109 offset:2944
	ds_store_b16 v195, v69 offset:3072
	ds_store_b16 v195, v70 offset:3200
	ds_store_b16 v195, v71 offset:3328
	ds_store_b16 v195, v72 offset:3456
	ds_store_b16 v195, v105 offset:3584
	ds_store_b16 v195, v106 offset:3712
	ds_store_b16 v195, v107 offset:3840
	ds_store_b16 v195, v108 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v171, v220 offset:512
	ds_load_u16_d16 v172, v220 offset:768
	ds_load_u16_d16 v173, v220 offset:1024
	ds_load_u16_d16 v176, v220 offset:1792
	ds_load_u16_d16 v174, v220 offset:1280
	ds_load_u16_d16 v229, v220 offset:1088
	ds_load_u16_d16 v228, v220 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v229, v220 offset:1216
	ds_load_u16_d16 v170, v220 offset:256
	ds_load_u16_d16 v169, v220
	ds_load_u16_d16 v175, v220 offset:1536
	ds_load_u16_d16_hi v171, v220 offset:640
	ds_load_u16_d16_hi v172, v220 offset:896
	ds_load_u16_d16_hi v173, v220 offset:1152
	ds_load_u16_d16 v230, v220 offset:1344
	ds_load_u16_d16 v132, v220 offset:2816
	ds_load_u16_d16 v133, v220 offset:3072
	ds_load_u16_d16 v139, v220 offset:2624
	ds_load_u16_d16 v138, v220 offset:2368
	ds_load_u16_d16 v129, v220 offset:2048
	ds_load_u16_d16 v130, v220 offset:2304
	ds_load_u16_d16 v131, v220 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v139, v220 offset:2752
	ds_load_u16_d16_hi v175, v220 offset:1664
	ds_load_u16_d16_hi v176, v220 offset:1920
	ds_load_u16_d16_hi v174, v220 offset:1408
	ds_load_u16_d16 v225, v220 offset:64
	ds_load_u16_d16_hi v170, v220 offset:384
	ds_load_u16_d16 v227, v220 offset:576
	ds_load_u16_d16 v226, v220 offset:320
	ds_load_u16_d16_hi v169, v220 offset:128
	ds_load_u16_d16 v231, v220 offset:1600
	ds_load_u16_d16 v137, v220 offset:2112
	ds_load_u16_d16 v232, v220 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v99, v98, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v144, v220 offset:3904
	ds_load_u16_d16 v140, v220 offset:2880
	ds_load_u16_d16 v134, v220 offset:3328
	ds_load_u16_d16 v141, v220 offset:3136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v138, v220 offset:2496
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v137, v220 offset:2240
	ds_load_u16_d16 v135, v220 offset:3584
	ds_load_u16_d16 v136, v220 offset:3840
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v99, v98, v99, 0x7fff
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16_hi v225, v220 offset:192
	ds_load_u16_d16_hi v228, v220 offset:960
	ds_load_u16_d16_hi v227, v220 offset:704
	ds_load_u16_d16_hi v226, v220 offset:448
	ds_load_u16_d16_hi v230, v220 offset:1472
	ds_load_u16_d16_hi v231, v220 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v232, v220 offset:1984
	ds_load_u16_d16_hi v132, v220 offset:2944
	ds_load_u16_d16_hi v131, v220 offset:2688
	ds_load_u16_d16_hi v130, v220 offset:2432
	ds_load_u16_d16_hi v129, v220 offset:2176
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v144, v220 offset:4032
	ds_load_u16_d16_hi v133, v220 offset:3200
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v140, v220 offset:3008
	ds_load_u16_d16 v143, v220 offset:3648
	ds_load_u16_d16 v142, v220 offset:3392
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v134, v220 offset:3456
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v141, v220 offset:3264
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v104.h, 0x7fff, v99.h, vcc_lo
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v135, v220 offset:3712
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v136, v220 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v143, v220 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v142, v220 offset:3520
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v98, v98, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[81:88], v[225:232], v[113:120], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[169:176], v[113:120], v[89:96]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v99, v98, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v229.h, 0x7fff, v100.h, s1
	v_cndmask_b16 v228.h, 0x7fff, v101.h, s2
	v_cndmask_b16 v227.h, 0x7fff, v102.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v99, v98, v99, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v98, v178, 16, 1
	v_cndmask_b16 v226.h, 0x7fff, v103.h, s6
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v225.l, v104.l
	v_mov_b16_e64 v229.l, v104.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v48.l, 0x7fff, v99.h, vcc_lo
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v98, v178, v98, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v230.l, v104.l
	v_mov_b16_e64 v226.l, v104.l
	v_mov_b16_e64 v227.l, v104.l
	v_mov_b16_e64 v228.l, v104.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v225.h, 0x7fff, v98.h, s0
	v_bfe_u32 v98, v180, 16, 1
	v_cmp_o_f32_e64 s0, v180, v180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v111.l, v49.h
	v_mov_b16_e32 v110.l, v50.h
	v_mov_b16_e32 v109.l, v51.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v98, v180, v98, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v108.l, v52.h
	v_mov_b16_e32 v107.l, v53.h
	v_mov_b16_e32 v106.l, v54.h
	v_mov_b16_e32 v105.l, v55.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v230.h, 0x7fff, v98.h, s0
	scratch_load_b32 v98, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v72.l, v104.l
	v_mov_b16_e32 v71.l, v104.l
	v_mov_b16_e32 v69.l, v104.l
	v_mov_b16_e32 v67.l, v104.l
	v_mov_b16_e32 v65.l, v104.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v72, v72, v72
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v70.l, v104.l
	v_mov_b16_e32 v68.l, v104.l
	v_mov_b16_e32 v61.l, v104.l
	v_mov_b16_e32 v64.l, v104.l
	v_mov_b16_e32 v59.l, v104.l
	v_mov_b16_e32 v66.l, v104.l
	v_mov_b16_e32 v63.l, v104.l
	v_mov_b16_e32 v62.l, v104.l
	v_mov_b16_e32 v60.l, v104.l
	v_mov_b16_e32 v55.l, v104.l
	v_mov_b16_e32 v58.l, v104.l
	v_mov_b16_e32 v57.l, v104.l
	v_mov_b16_e32 v56.l, v104.l
	v_mov_b16_e32 v51.l, v104.l
	v_mov_b16_e32 v54.l, v104.l
	v_mov_b16_e32 v49.l, v104.l
	v_mov_b16_e32 v53.l, v104.l
	v_mov_b16_e32 v50.l, v104.l
	v_mov_b16_e32 v52.l, v104.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[121:128], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[137:144], v[121:128], v[81:88]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v71, v71
	v_sub_f32_e32 v69, v69, v69
	v_sub_f32_e32 v67, v67, v67
	v_sub_f32_e32 v65, v65, v65
	v_dual_sub_f32 v63, v63, v63 :: v_dual_sub_f32 v68, v68, v68
	v_sub_f32_e32 v64, v64, v64
	v_dual_sub_f32 v66, v66, v66 :: v_dual_sub_f32 v61, v61, v61
	v_dual_sub_f32 v59, v59, v59 :: v_dual_sub_f32 v62, v62, v62
	v_sub_f32_e32 v55, v55, v55
	v_dual_sub_f32 v57, v57, v57 :: v_dual_sub_f32 v60, v60, v60
	v_dual_sub_f32 v58, v58, v58 :: v_dual_sub_f32 v53, v53, v53
	v_dual_sub_f32 v56, v56, v56 :: v_dual_sub_f32 v51, v51, v51
	v_dual_sub_f32 v54, v54, v54 :: v_dual_sub_f32 v49, v49, v49
	v_sub_f32_e32 v50, v50, v50
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v52, v52, v52 :: v_dual_add_nc_u32 v115, 0, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	ds_store_b16_d16_hi v115, v104
	ds_store_b16_d16_hi v207, v225
	ds_store_b16_d16_hi v208, v223
	ds_store_b16_d16_hi v209, v230
	ds_store_b16_d16_hi v212, v229
	ds_store_b16_d16_hi v213, v228
	ds_store_b16_d16_hi v206, v227
	ds_store_b16_d16_hi v187, v226
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v98, off, off offset:388 ; 4-byte Folded Reload
	ds_load_b64 v[116:117], v188
	ds_load_b64 v[118:119], v1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v161.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v169.h, v116.l
	v_mov_b16_e64 v173.h, v117.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v184, 0, v98
	ds_load_b64 v[171:172], v189
	ds_load_b64 v[98:99], v192
	ds_load_b64 v[174:175], v184
	ds_load_b64 v[102:103], v4
	ds_load_b64 v[100:101], v5
	ds_load_b64 v[113:114], v215
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v115, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v170.l, v171.l
	v_mov_b16_e64 v170.h, v98.l
	v_mov_b16_e64 v98.l, v171.h
	v_mov_b16_e64 v173.l, v175.l
	v_mov_b16_e64 v116.l, v174.h
	v_mov_b16_e64 v117.l, v175.h
	v_mov_b16_e64 v174.h, v99.l
	v_mov_b16_e64 v99.l, v172.h
	v_mov_b16_e64 v171.h, v118.l
	v_mov_b16_e64 v175.l, v114.l
	v_mov_b16_e64 v175.h, v119.l
	v_mov_b16_e32 v118.l, v113.h
	v_mov_b16_e32 v119.l, v114.h
	v_mov_b16_e64 v176.h, v101.l
	v_mov_b16_e32 v101.l, v103.h
	v_mov_b32_e32 v114, v98
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v98, v178, v225
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v172.h, v100.l
	v_mov_b16_e32 v100.l, v102.h
	v_dual_mov_b32 v115, v118 :: v_dual_mov_b32 v118, v99
	v_dual_mov_b32 v120, v101 :: v_dual_sub_f32 v99, v179, v223
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v101, v177, v229
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v229, v104, v104
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v178, v98, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v171.l, v113.l
	v_mov_b32_e32 v113, v116
	v_mov_b32_e32 v116, v100
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v100, v180, v230
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v178, v98, v178, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_bfe_u32 v98, v99, 16, 1
	v_cmp_o_f32_e64 s0, v99, v99
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v169.l, v174.l
	v_mov_b16_e64 v174.l, v172.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v48.l, 0x7fff, v178.h, vcc_lo
	v_add3_u32 v98, v99, v98, 0x7fff
	v_bfe_u32 v99, v100, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v172.l, v102.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v102, v181, v228
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v100, v100
	ds_store_b16 v207, v48
	v_add3_u32 v99, v100, v99, 0x7fff
	v_bfe_u32 v100, v101, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v98.h, s0
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v176.l, v103.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v103, v182, v227
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v101, v101
	v_add3_u32 v100, v101, v100, 0x7fff
	v_bfe_u32 v101, v102, 16, 1
	ds_store_b16 v208, v48
	v_cndmask_b16 v48.l, 0x7fff, v99.h, s1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v177, v183, v226
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v102, v102
	v_add3_u32 v101, v102, v101, 0x7fff
	v_bfe_u32 v102, v103, 16, 1
	ds_store_b16 v209, v48
	v_cndmask_b16 v48.l, 0x7fff, v100.h, s2
	v_cmp_o_f32_e64 s6, v103, v103
	v_cmp_o_f32_e64 s7, v177, v177
	v_add3_u32 v102, v103, v102, 0x7fff
	v_bfe_u32 v103, v177, 16, 1
	ds_store_b16 v212, v48
	v_cndmask_b16 v48.l, 0x7fff, v101.h, s3
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[145:152], v[169:176], v[33:40]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v162.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v103, v177, v103, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[161:168], v[169:176], v[73:80]
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v213, v48
	v_cndmask_b16 v48.l, 0x7fff, v102.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[113:120], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v229, v229
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[153:160], v[113:120], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v69, v69
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v206, v48
	v_cndmask_b16 v48.l, 0x7fff, v103.h, s7
	ds_store_b16 v187, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[177:178], v184
	ds_load_b64 v[239:240], v189
	ds_load_b64 v[241:242], v192
	ds_load_b64 v[180:181], v188
	ds_load_b64 v[182:183], v1
	ds_load_b64 v[254:255], v4
	ds_load_b64 v[247:248], v5
	ds_load_b64 v[252:253], v215
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v48.l, v104.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v48, v48
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(7)
	v_mov_b16_e64 v231.l, v177.l
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v232.l, v239.l
	s_waitcnt lgkmcnt(5)
	v_mov_b16_e64 v232.h, v241.l
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v231.h, v180.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v233.l, v252.l
	v_mov_b16_e64 v233.h, v182.l
	v_mov_b16_e64 v234.l, v254.l
	v_mov_b16_e64 v234.h, v247.l
	v_mov_b16_e64 v235.l, v178.l
	v_mov_b16_e64 v235.h, v181.l
	v_mov_b16_e64 v236.l, v240.l
	v_mov_b16_e64 v236.h, v242.l
	v_mov_b16_e64 v237.l, v253.l
	v_mov_b16_e64 v237.h, v183.l
	v_mov_b16_e64 v238.l, v255.l
	v_mov_b16_e64 v238.h, v248.l
	v_mov_b16_e64 v241.l, v239.h
	v_mov_b16_e64 v242.l, v240.h
	v_mov_b16_e64 v247.l, v254.h
	v_mov_b16_e64 v180.l, v177.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[145:152], v[231:238], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v149.l, v229.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v228, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v163.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[161:168], v[231:238], v[73:80]
	v_mov_b16_e64 v182.l, v252.h
	v_mov_b16_e64 v248.l, v255.h
	v_mov_b16_e64 v181.l, v178.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v227, v104, v104 :: v_dual_mov_b32 v178, v241
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v164.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v183.l, v253.h
	v_mov_b32_e32 v179, v182
	v_dual_mov_b32 v182, v242 :: v_dual_mov_b32 v177, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v225, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v165.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v180, v247
	v_mov_b32_e32 v184, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v227, v227
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v223, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v166.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[153:160], v[177:184], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v159.l, v72.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v226, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v167.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v230, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v168.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v153.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v153.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v154, v193, v193 :: v_dual_sub_f32 v161, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v155.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v155.l, v154.h
	v_mov_b16_e64 v155.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v156.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v156, v217, v217 :: v_dual_and_b32 v155, 1, v155
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v157.l, v156.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v102, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v157.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v157.h, v104.l
	v_add3_u32 v155, v154, v155, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v158.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v158.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v100, v104, v104 :: v_dual_and_b32 v157, 1, v157
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v159.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v159.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v160.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v98, v104, v104 :: v_dual_and_b32 v159, 1, v159
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v145.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v159, v72, v159, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v146.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v164, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v147.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v148.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v104, v104
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v149.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v149.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v150.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v150, v222, v222 :: v_dual_and_b32 v149, 1, v149
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v228, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v151.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v151.l, v150.h
	v_mov_b16_e64 v151.h, v104.l
	v_cmp_o_f32_e64 s0, v150, v150
	v_add3_u32 v149, v229, v149, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v104.h, v152.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v152, v219, v219
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v151, 1, v151
	v_cndmask_b16 v149.h, 0x7fff, v149.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v153.l, v152.h
	v_cmp_o_f32_e64 s2, v152, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v151, v150, v151, 0x7fff
	v_mov_b16_e64 v150.l, v228.h
	v_mov_b16_e64 v150.h, v104.l
	v_and_b32_e32 v153, 1, v153
	v_cndmask_b16 v149.l, 0x7fff, v151.h, s0
	v_cmp_o_f32_e64 s0, v225, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v150, 1, v150
	v_add3_u32 v153, v152, v153, 0x7fff
	v_mov_b16_e64 v152.l, v227.h
	v_mov_b16_e64 v152.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v150, v228, v150, 0x7fff
	v_cndmask_b16 v150.l, 0x7fff, v153.h, s2
	v_mov_b16_e64 v153.h, v104.l
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v152, 1, v152
	v_cmp_o_f32_e64 s2, v223, v223
	v_cndmask_b16 v150.h, 0x7fff, v150.h, s1
	v_cmp_o_f32_e64 s1, v154, v154
	v_mov_b16_e64 v154.l, v223.h
	v_add3_u32 v152, v227, v152, 0x7fff
	v_mov_b16_e64 v154.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v151.h, 0x7fff, v152.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v152, v218, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v154, 1, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v153.l, v152.h
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v154, v223, v154, 0x7fff
	v_mov_b16_e64 v154.l, v226.h
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v153, v152, v153, 0x7fff
	v_mov_b16_e64 v152.l, v225.h
	v_mov_b16_e64 v152.h, v104.l
	v_cndmask_b16 v151.l, 0x7fff, v153.h, vcc_lo
	v_cndmask_b16 v153.h, 0x7fff, v154.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v152, 1, v152
	v_mov_b16_e64 v154.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v226, v226
	v_add3_u32 v152, v225, v152, 0x7fff
	v_cndmask_b16 v152.l, 0x7fff, v155.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v157, v156, v157, 0x7fff
	v_cmp_o_f32_e64 s3, v156, v156
	v_mov_b16_e64 v156.h, v104.l
	v_cndmask_b16 v152.h, 0x7fff, v152.h, s0
	v_mov_b16_e64 v156.l, v155.h
	v_and_b32_e32 v154, 1, v154
	v_cndmask_b16 v153.l, 0x7fff, v157.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v214, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v155, v155
	v_and_b32_e32 v156, 1, v156
	v_add3_u32 v154, v226, v154, 0x7fff
	v_cmp_o_f32_e64 s1, v230, v230
	v_mov_b16_e64 v158.l, v157.h
	v_cmp_o_f32_e64 s2, v157, v157
	v_add3_u32 v156, v155, v156, 0x7fff
	v_mov_b16_e64 v155.l, v230.h
	v_mov_b16_e64 v155.h, v104.l
	v_and_b32_e32 v158, 1, v158
	v_cmp_o_f32_e64 s3, v166, v166
	v_cndmask_b16 v154.h, 0x7fff, v154.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v155, 1, v155
	v_add3_u32 v158, v157, v158, 0x7fff
	v_mov_b16_e64 v157.l, v166.h
	v_mov_b16_e64 v157.h, v104.l
	v_cndmask_b16 v154.l, 0x7fff, v156.h, s0
	v_add3_u32 v155, v230, v155, 0x7fff
	v_cndmask_b16 v155.l, 0x7fff, v158.h, s2
	v_cndmask_b16 v156.l, 0x7fff, v159.h, vcc_lo
	v_and_b32_e32 v157, 1, v157
	v_cmp_o_f32_e64 s0, v71, v71
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s1
	v_cmp_o_f32_e64 s1, v164, v164
	v_mov_b16_e64 v72.l, v165.h
	v_add3_u32 v157, v166, v157, 0x7fff
	v_mov_b16_e32 v72.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v156.h, 0x7fff, v157.h, s3
	v_cmp_o_f32_e64 s3, v163, v163
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[149:156], v[169:176], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v149.l, v71.h
	v_mov_b16_e64 v149.h, v104.l
	v_add3_u32 v72, v165, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v149, 1, v149
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[105:112], v[177:184], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v150, v71, v149, 0x7fff
	v_mov_b16_e64 v149.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v70, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v71.l, v164.h
	v_mov_b16_e32 v71.h, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v149.l, v70.h
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v149, 1, v149
	v_cmp_o_f32_e64 s2, v70, v70
	v_add3_u32 v71, v164, v71, 0x7fff
	v_mov_b16_e32 v71.l, v67.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v151, v70, v149, 0x7fff
	v_mov_b16_e64 v70.l, v163.h
	v_mov_b16_e32 v70.h, v104.l
	v_mov_b16_e64 v149.l, v69.h
	v_mov_b16_e64 v149.h, v104.l
	v_cndmask_b16 v150.l, 0x7fff, v151.h, s2
	v_cmp_o_f32_e64 s2, v67, v67
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v149, 1, v149
	v_add3_u32 v70, v163, v70, 0x7fff
	v_mov_b16_e32 v70.l, v68.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v152, v69, v149, 0x7fff
	v_cndmask_b16 v149.l, 0x7fff, v150.h, s0
	v_cmp_o_f32_e64 s0, v68, v68
	v_cndmask_b16 v151.h, 0x7fff, v70.h, s3
	v_mov_b16_e32 v70.h, v104.l
	v_cndmask_b16 v150.h, 0x7fff, v71.h, s1
	v_cmp_o_f32_e64 s1, v147, v147
	v_mov_b16_e32 v71.h, v104.l
	v_mov_b16_e64 v69.l, v148.h
	v_and_b32_e32 v70, 1, v70
	v_mov_b16_e32 v69.h, v104.l
	v_cmp_o_f32_e64 s3, v146, v146
	v_and_b32_e32 v71, 1, v71
	v_cndmask_b16 v149.h, 0x7fff, v72.h, vcc_lo
	v_add3_u32 v70, v68, v70, 0x7fff
	v_mov_b16_e64 v68.l, v147.h
	v_mov_b16_e32 v68.h, v104.l
	v_add3_u32 v71, v67, v71, 0x7fff
	v_mov_b16_e64 v67.l, v146.h
	v_mov_b16_e32 v67.h, v104.l
	v_and_b32_e32 v69, 1, v69
	v_and_b32_e32 v68, 1, v68
	v_cndmask_b16 v152.l, 0x7fff, v70.h, s0
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_cndmask_b16 v153.l, 0x7fff, v71.h, s2
	v_add3_u32 v69, v148, v69, 0x7fff
	v_add3_u32 v68, v147, v68, 0x7fff
	v_mov_b16_e32 v68.l, v65.h
	v_cndmask_b16 v151.l, 0x7fff, v152.h, s6
	v_cmp_o_f32_e64 s0, v145, v145
	v_cndmask_b16 v152.h, 0x7fff, v69.h, vcc_lo
	v_cndmask_b16 v153.h, 0x7fff, v68.h, s1
	v_mov_b16_e32 v68.h, v104.l
	v_cmp_o_f32_e64 s1, v65, v65
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_mov_b16_e32 v69.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v65, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v105.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v155.l, 0x7fff, v68.h, s1
	v_mov_b16_e32 v69.l, v65.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v70, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v67, v146, v67, 0x7fff
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v106.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v65, v65
	v_cmp_o_f32_e64 s1, v161, v161
	v_cndmask_b16 v154.h, 0x7fff, v67.h, s3
	v_mov_b16_e32 v67.h, v104.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v71, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v107.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v64, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v72, v104, v104 :: v_dual_and_b32 v67, 1, v67
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v108.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v67, v66, v67, 0x7fff
	v_mov_b16_e64 v66.l, v145.h
	v_mov_b16_e32 v66.h, v104.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v109.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b16 v154.l, 0x7fff, v67.h, vcc_lo
	v_and_b32_e32 v66, 1, v66
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v69, v65, v69, 0x7fff
	v_mov_b16_e32 v65.l, v64.h
	v_mov_b16_e32 v65.h, v104.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v110.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v66, v145, v66, 0x7fff
	v_mov_b16_e32 v66.l, v62.h
	v_cndmask_b16 v156.h, 0x7fff, v69.h, s2
	v_cmp_o_f32_e64 s2, v62, v62
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v104, v104
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v111.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v65, 1, v65
	v_cndmask_b16 v155.h, 0x7fff, v66.h, s0
	v_mov_b16_e32 v66.h, v104.l
	v_cmp_o_f32_e64 s0, v63, v63
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v64, v65, 0x7fff
	v_mov_b16_e32 v65.l, v63.h
	v_and_b32_e32 v66, 1, v66
	v_mov_b16_e64 v64.l, v162.h
	v_mov_b16_e32 v64.h, v104.l
	v_cndmask_b16 v156.l, 0x7fff, v65.h, s3
	v_mov_b16_e32 v65.h, v104.l
	v_add3_u32 v66, v62, v66, 0x7fff
	v_mov_b16_e32 v66.l, v60.h
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s3, v101, v101
	v_and_b32_e32 v65, 1, v65
	v_mov_b16_e32 v67.l, v57.h
	v_mov_b16_e32 v67.h, v104.l
	v_add3_u32 v64, v162, v64, 0x7fff
	v_mov_b16_e32 v64.l, v103.h
	v_add3_u32 v65, v63, v65, 0x7fff
	v_mov_b16_e64 v63.l, v161.h
	v_mov_b16_e32 v63.h, v104.l
	v_mov_b16_e32 v65.l, v61.h
	v_cndmask_b16 v62.h, 0x7fff, v64.h, vcc_lo
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s0
	v_mov_b16_e32 v65.h, v104.l
	v_and_b32_e32 v63, 1, v63
	v_cmp_o_f32_e64 s0, v61, v61
	v_mov_b16_e32 v64.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v63, v161, v63, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v66.h, s2
	v_mov_b16_e32 v66.h, v104.l
	v_cmp_o_f32_e64 s2, v60, v60
	v_add3_u32 v65, v61, v65, 0x7fff
	v_mov_b16_e32 v61.l, v102.h
	v_mov_b16_e32 v61.h, v104.l
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v64, 1, v64
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s1
	v_cmp_o_f32_e64 s1, v102, v102
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v66, v60, v66, 0x7fff
	v_mov_b16_e32 v60.l, v101.h
	v_mov_b16_e32 v60.h, v104.l
	v_add3_u32 v64, v103, v64, 0x7fff
	v_add3_u32 v61, v102, v61, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s0
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s2
	v_and_b32_e32 v60, 1, v60
	v_mov_b16_e32 v61.l, v58.h
	v_cndmask_b16 v65.h, 0x7fff, v61.h, s1
	v_mov_b16_e32 v61.h, v104.l
	v_cndmask_b16 v64.h, 0x7fff, v64.h, vcc_lo
	v_add3_u32 v60, v101, v60, 0x7fff
	v_mov_b16_e32 v60.l, v59.h
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_and_b32_e32 v61, 1, v61
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v66.h, 0x7fff, v60.h, s3
	v_mov_b16_e32 v60.h, v104.l
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v61, v58, v61, 0x7fff
	v_mov_b16_e32 v58.l, v99.h
	v_mov_b16_e32 v58.h, v104.l
	v_and_b32_e32 v60, 1, v60
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v104.h, v112.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v69, v57, v67, 0x7fff
	v_cmp_o_f32_e64 s3, v57, v57
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v60, v59, v60, 0x7fff
	v_mov_b16_e32 v59.l, v100.h
	v_mov_b16_e32 v59.h, v104.l
	v_mov_b16_e32 v57.l, v98.h
	v_mov_b16_e32 v57.h, v104.l
	v_cmp_o_f32_e64 s0, v100, v100
	v_add3_u32 v58, v99, v58, 0x7fff
	v_and_b32_e32 v59, 1, v59
	v_cmp_o_f32_e64 s2, v99, v99
	v_and_b32_e32 v57, 1, v57
	v_cndmask_b16 v66.l, 0x7fff, v60.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_add3_u32 v59, v100, v59, 0x7fff
	v_mov_b16_e32 v59.l, v56.h
	v_add3_u32 v57, v98, v57, 0x7fff
	v_cndmask_b16 v68.h, 0x7fff, v58.h, s2
	v_mov_b16_e32 v58.l, v54.h
	v_cndmask_b16 v67.h, 0x7fff, v59.h, s0
	v_mov_b16_e32 v59.h, v104.l
	v_mov_b16_e32 v58.h, v104.l
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s3
	v_cndmask_b16 v69.h, 0x7fff, v57.h, vcc_lo
	v_mov_b16_e32 v57.l, v55.h
	v_and_b32_e32 v59, 1, v59
	v_mov_b16_e32 v57.h, v104.l
	v_and_b32_e32 v58, 1, v58
	v_cmp_o_f32_e64 s0, v56, v56
	v_cmp_o_f32_e64 s2, v54, v54
	v_add3_u32 v59, v56, v59, 0x7fff
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v58, v54, v58, 0x7fff
	v_mov_b16_e32 v54.l, v72.h
	v_mov_b16_e32 v54.h, v104.l
	v_cndmask_b16 v69.l, 0x7fff, v59.h, s0
	v_mov_b16_e32 v56.l, v70.h
	v_mov_b16_e32 v56.h, v104.l
	v_add3_u32 v57, v55, v57, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_and_b32_e32 v54, 1, v54
	v_mov_b16_e32 v57.l, v53.h
	v_and_b32_e32 v56, 1, v56
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_mov_b16_e32 v55.l, v71.h
	v_add3_u32 v59, v72, v54, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v57.h, s0
	v_mov_b16_e32 v57.h, v104.l
	v_add3_u32 v56, v70, v56, 0x7fff
	v_mov_b16_e32 v55.h, v104.l
	v_cndmask_b16 v67.l, 0x7fff, v61.h, s1
	v_cmp_o_f32_e64 s1, v71, v71
	v_and_b32_e32 v57, 1, v57
	v_cndmask_b16 v54.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v55, 1, v55
	v_cmp_o_f32_e64 s3, v72, v72
	v_add3_u32 v57, v53, v57, 0x7fff
	v_mov_b16_e32 v57.l, v52.h
	v_mov_b16_e32 v53.l, v105.h
	v_add3_u32 v55, v71, v55, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v58.h, s2
	v_cndmask_b16 v56.l, 0x7fff, v57.h, vcc_lo
	v_mov_b16_e32 v57.h, v104.l
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s1
	v_cmp_o_f32_e64 s1, v106, v106
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s3
	v_and_b32_e32 v57, 1, v57
	v_mov_b16_e32 v53.h, v104.l
	v_cmp_o_f32_e64 s2, v51, v51
	v_cmp_o_f32_e64 s0, v105, v105
	v_cmp_o_f32_e64 s3, v107, v107
	v_add3_u32 v58, v52, v57, 0x7fff
	v_mov_b16_e32 v52.l, v106.h
	v_mov_b16_e32 v52.h, v104.l
	v_mov_b16_e32 v57.l, v51.h
	v_mov_b16_e32 v57.h, v104.l
	v_and_b32_e32 v53, 1, v53
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[149:156], v[169:176], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v52, 1, v52
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[62:69], v[113:120], v[73:80]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v53, v105, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v52, v106, v52, 0x7fff
	v_mov_b16_e32 v52.l, v49.h
	v_add3_u32 v59, v51, v57, 0x7fff
	v_mov_b16_e32 v51.l, v107.h
	v_mov_b16_e32 v51.h, v104.l
	v_cndmask_b16 v57.l, 0x7fff, v58.h, vcc_lo
	v_cndmask_b16 v58.h, 0x7fff, v52.h, s1
	v_mov_b16_e32 v52.h, v104.l
	v_cmp_o_f32_e64 s1, v49, v49
	v_and_b32_e32 v51, 1, v51
	v_cndmask_b16 v57.h, 0x7fff, v53.h, s0
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s2
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e32 v53.h, v104.l
	v_add3_u32 v51, v107, v51, 0x7fff
	v_mov_b16_e32 v51.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v52, v49, v52, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v104, v104
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v59.h, 0x7fff, v51.h, s3
	v_mov_b16_e32 v51.h, v104.l
	v_cmp_o_f32_e64 s0, v108, v108
	v_cmp_o_f32_e64 s3, v48, v48
	v_mov_b16_e32 v53.l, v49.h
	v_cmp_o_f32_e64 s2, v49, v49
	v_and_b32_e32 v51, 1, v51
	v_cndmask_b16 v60.l, 0x7fff, v52.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v51, v50, v51, 0x7fff
	v_mov_b16_e32 v50.l, v108.h
	v_mov_b16_e32 v50.h, v104.l
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v53, v49, v53, 0x7fff
	v_mov_b16_e32 v49.h, v104.l
	v_mov_b16_e32 v49.l, v48.h
	v_cndmask_b16 v59.l, 0x7fff, v51.h, vcc_lo
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v61.h, 0x7fff, v53.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v50, v108, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v48, v49, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v50.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v61.l, 0x7fff, v49.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[54:61], v[113:120], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v49, off, off offset:296
	scratch_load_b32 v50, off, off offset:308
	scratch_load_b32 v51, off, off offset:320
	scratch_load_b32 v52, off, off offset:328
	scratch_load_b32 v53, off, off offset:336
	scratch_load_b32 v54, off, off offset:356
	scratch_load_b32 v55, off, off offset:380
	scratch_load_b32 v56, off, off offset:400
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_or_b32 s0, s65, 1
	s_or_b32 s1, s65, 2
	s_or_b32 s2, s65, 3
	s_or_b32 s3, s65, 4
	s_or_b32 s6, s65, 5
	s_or_b32 s7, s65, 6
	s_or_b32 s8, s65, 7
	s_or_b32 s9, s65, 8
	s_or_b32 s10, s65, 9
	s_or_b32 s11, s65, 10
	s_or_b32 s12, s65, 11
	s_or_b32 s14, s65, 12
	s_or_b32 s15, s65, 13
	s_or_b32 s16, s65, 14
	s_or_b32 s17, s65, 15
	s_or_b32 s26, s65, 16
	s_or_b32 s27, s65, 17
	s_or_b32 s50, s65, 18
	s_or_b32 s51, s65, 19
	s_or_b32 s55, s65, 20
	s_or_b32 s66, s65, 21
	s_or_b32 s67, s65, 22
	s_or_b32 s68, s65, 23
	s_or_b32 s69, s65, 24
	s_or_b32 s93, s65, 25
	s_or_b32 s94, s65, 26
	s_or_b32 s95, s65, 27
	s_or_b32 s96, s65, 28
	s_or_b32 s97, s65, 29
	s_or_b32 s98, s65, 30
	s_or_b32 s99, s65, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s65, s18
	v_add_nc_u32_e32 v102, s35, v45
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s0, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s2, s18
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v57, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s3, s18
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s6, s18
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s7, s18
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s8, s18
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s9, s18
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s10, s18
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s11, s18
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s12, s18
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s14, s18
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s15, s18
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s16, s18
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s17, s18
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s26, s18
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s27, s18
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s50, s18
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s51, s18
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s55, s18
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s66, s18
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s67, s18
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s68, s18
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s69, s18
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s93, s18
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s94, s18
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s95, s18
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s96, s18
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s97, s18
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s98, s18
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s99, s18
	s_cselect_b32 s26, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s55, s65, s22
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s54
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s55, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s0, v0, 1
	v_add_lshl_u32 v58, s0, v211, 1
	v_add_lshl_u32 v59, s0, v194, 1
	v_add_lshl_u32 v60, s0, v224, 1
	v_add_lshl_u32 v61, s0, v7, 1
	v_add_lshl_u32 v62, s0, v8, 1
	v_add_lshl_u32 v63, s0, v186, 1
	v_add_lshl_u32 v64, s0, v210, 1
	v_add_lshl_u32 v65, s0, v190, 1
	v_add_lshl_u32 v66, s0, v204, 1
	v_add_lshl_u32 v67, s0, v191, 1
	v_add_lshl_u32 v68, s0, v21, 1
	v_add_lshl_u32 v69, s0, v25, 1
	v_add_lshl_u32 v70, s0, v27, 1
	v_add_lshl_u32 v71, s0, v29, 1
	v_add_lshl_u32 v72, s0, v31, 1
	v_add_lshl_u32 v100, s0, v41, 1
	v_add_lshl_u32 v101, s0, v43, 1
	v_add_lshl_u32 v102, s0, v102, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v49, s0, v49, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v50, s0, v50, 1
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v51, s0, v51, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v52, s0, v52, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v53, s0, v53, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v54, s0, v54, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v55, s0, v55, 1
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v56, s0, v56, 1
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v98, 0x80000000, v55, vcc_lo
	scratch_load_b32 v55, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v57, s0, v57, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v55, s0, v55, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v48, v48, s[40:43], 0 offen
	buffer_load_u16 v49, v49, s[40:43], 0 offen
	buffer_load_u16 v50, v50, s[40:43], 0 offen
	buffer_load_u16 v51, v51, s[40:43], 0 offen
	buffer_load_u16 v52, v52, s[40:43], 0 offen
	buffer_load_u16 v53, v53, s[40:43], 0 offen
	buffer_load_u16 v54, v54, s[40:43], 0 offen
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v99, 0x80000000, v62, vcc_lo
	v_add_lshl_u32 v62, s0, v221, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v55, v55, s[40:43], 0 offen
	buffer_load_u16 v56, v56, s[40:43], 0 offen
	buffer_load_u16 v57, v57, s[40:43], 0 offen
	buffer_load_u16 v58, v58, s[40:43], 0 offen
	buffer_load_u16 v59, v59, s[40:43], 0 offen
	buffer_load_u16 v60, v60, s[40:43], 0 offen
	buffer_load_u16 v61, v61, s[40:43], 0 offen
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x6
	buffer_load_u16 v62, v62, s[40:43], 0 offen
	buffer_load_u16 v63, v63, s[40:43], 0 offen
	buffer_load_u16 v64, v64, s[40:43], 0 offen
	buffer_load_u16 v65, v65, s[40:43], 0 offen
	buffer_load_u16 v66, v66, s[40:43], 0 offen
	buffer_load_u16 v67, v67, s[40:43], 0 offen
	buffer_load_u16 v68, v68, s[40:43], 0 offen
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	s_clause 0x5
	buffer_load_u16 v69, v69, s[40:43], 0 offen
	buffer_load_u16 v70, v70, s[40:43], 0 offen
	buffer_load_u16 v71, v71, s[40:43], 0 offen
	buffer_load_u16 v72, v72, s[40:43], 0 offen
	buffer_load_u16 v105, v100, s[40:43], 0 offen
	buffer_load_u16 v106, v101, s[40:43], 0 offen
	v_add_lshl_u32 v100, s0, v45, 1
	v_add_lshl_u32 v101, s0, v23, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v102, 0x80000000, v102, vcc_lo
	s_clause 0x4
	buffer_load_u16 v107, v100, s[40:43], 0 offen
	buffer_load_u16 v111, v98, s[40:43], 0 offen
	buffer_load_u16 v110, v99, s[40:43], 0 offen
	buffer_load_u16 v109, v101, s[40:43], 0 offen
	buffer_load_u16 v108, v102, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v100, v97
	v_mov_b32_e32 v101, v97
	v_mov_b32_e32 v102, v97
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(31)
	ds_store_b16 v195, v48
	s_waitcnt vmcnt(24)
	ds_store_b16 v195, v55 offset:1024
	s_waitcnt vmcnt(17)
	ds_store_b16 v195, v62 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v195, v69 offset:3072
	ds_store_b16 v196, v49
	ds_store_b16 v196, v56 offset:1024
	ds_store_b16 v196, v63 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v196, v70 offset:3072
	ds_store_b16 v197, v50
	ds_store_b16 v197, v57 offset:1024
	ds_store_b16 v197, v64 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v197, v71 offset:3072
	ds_store_b16 v198, v51
	ds_store_b16 v198, v58 offset:1024
	ds_store_b16 v198, v65 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v198, v72 offset:3072
	ds_store_b16 v199, v52
	ds_store_b16 v199, v59 offset:1024
	ds_store_b16 v199, v66 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v199, v105 offset:3072
	ds_store_b16 v200, v53
	ds_store_b16 v200, v60 offset:1024
	ds_store_b16 v200, v67 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v200, v106 offset:3072
	ds_store_b16 v201, v54
	ds_store_b16 v201, v61 offset:1024
	ds_store_b16 v201, v68 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v201, v107 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v202, v111
	s_waitcnt vmcnt(2)
	ds_store_b16 v202, v110 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v202, v109 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v202, v108 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b32 v98, off, off offset:284
	scratch_load_b128 v[130:133], off, off
	scratch_load_b128 v[134:137], off, off offset:16
	scratch_load_b32 v112, off, off offset:152
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v121, 0, v98
	ds_load_b128 v[122:125], v121
	ds_load_b128 v[126:129], v6
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	v_dual_mov_b32 v120, v104 :: v_dual_mov_b32 v119, v103
	v_dual_mov_b32 v118, v102 :: v_dual_mov_b32 v117, v101
	v_dual_mov_b32 v116, v100 :: v_dual_mov_b32 v115, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v114, v98 :: v_dual_mov_b32 v113, v97
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v99, off, off offset:128
	scratch_load_b32 v100, off, off offset:132
	scratch_load_b32 v101, off, off offset:136
	scratch_load_b32 v102, off, off offset:140
	scratch_load_b32 v103, off, off offset:144
	scratch_load_b32 v104, off, off offset:148
	v_lshrrev_b32_e32 v98, 4, v0
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v112, s65, v112
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[130:137], v[122:129], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[130:133], off, off offset:32
	scratch_load_b128 v[134:137], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[122:125], v9
	ds_load_b128 v[126:129], v10
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v98, s65, v98
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s18, v112
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v112, s31, v112
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v98
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v98, s31, v98
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s94, s5, s8
	s_and_b32 s99, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v99, s65, v99
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v100, s65, v100
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v101, s65, v101
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v102, s65, v102
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v103, s65, v103
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v104, s65, v104
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s18, v99
	v_cmp_gt_i32_e64 s1, s18, v100
	v_cmp_gt_i32_e64 s2, s18, v101
	v_cmp_gt_i32_e64 s3, s18, v102
	v_cmp_gt_i32_e64 s6, s18, v103
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[130:137], v[122:129], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[130:133], off, off offset:64
	scratch_load_b128 v[134:137], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[122:125], v11
	ds_load_b128 v[126:129], v14
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s18, v104
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v99, s31, v99
	v_add_nc_u32_e32 v100, s31, v100
	v_add_nc_u32_e32 v101, s31, v101
	v_add_nc_u32_e32 v102, s31, v102
	v_add_nc_u32_e32 v103, s31, v103
	v_add_nc_u32_e32 v104, s31, v104
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s0
	s_and_b32 s95, s5, s1
	s_and_b32 s93, s5, s2
	s_and_b32 s100, s5, s3
	s_and_b32 s98, s5, s6
	s_and_b32 s96, s5, s7
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[130:137], v[122:129], v[113:120]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[130:133], off, off offset:96
	scratch_load_b128 v[134:137], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[122:125], v15
	ds_load_b128 v[126:129], v16
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[130:137], v[122:129], v[113:120]
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v205, v98
	v_cmp_le_i32_e64 s0, v205, v99
	v_cmp_le_i32_e64 s1, v205, v100
	v_cmp_le_i32_e64 s2, v205, v101
	v_cmp_le_i32_e64 s3, v205, v102
	v_cmp_le_i32_e64 s6, v205, v103
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s9, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v205, v104
	v_cmp_le_i32_e64 s8, v205, v112
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s95, s1
	s_and_b32 s2, s93, s2
	s_and_not1_b32 s10, s99, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s11, s97, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s3, s100, s3
	s_and_b32 s6, s98, s6
	s_or_b32 s99, s10, s9
	s_or_b32 s97, s11, s0
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s9, s93, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s96, s7
	s_and_b32 s8, s94, s8
	s_or_b32 s95, s0, s1
	s_or_b32 s93, s9, s2
	s_and_not1_b32 s0, s100, exec_lo
	s_and_b32 s1, s3, exec_lo
	s_and_not1_b32 s2, s98, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s100, s0, s1
	s_or_b32 s98, s2, s3
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s2, s94, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_or_b32 s96, s0, s1
	s_or_b32 s94, s2, s3
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s57
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v122, s29, v98
	v_subrev_nc_u32_e32 v123, s29, v99
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v98, s30, v98
	v_add_nc_u32_e32 v99, s30, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v124, s29, v100
	v_subrev_nc_u32_e32 v125, s29, v101
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v100, s30, v100
	v_add_nc_u32_e32 v101, s30, v101
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v126, s29, v102
	v_subrev_nc_u32_e32 v127, s29, v103
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v102, s30, v102
	v_add_nc_u32_e32 v103, s30, v103
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v205, v122
	v_cmp_ge_i32_e64 s0, v205, v123
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v205, v98
	v_cmp_le_i32_e64 s10, v205, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v128, s29, v104
	v_subrev_nc_u32_e32 v129, s29, v112
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v104, s30, v104
	v_add_nc_u32_e32 v112, s30, v112
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v205, v124
	v_cmp_ge_i32_e64 s2, v205, v125
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v205, v100
	v_cmp_le_i32_e64 s12, v205, v101
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v205, v126
	v_cmp_ge_i32_e64 s6, v205, v127
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v205, v102
	v_cmp_le_i32_e64 s15, v205, v103
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s0, s0, s10
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v205, v128
	v_cmp_ge_i32_e64 s8, v205, v129
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v205, v104
	v_cmp_le_i32_e64 s17, v205, v112
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s9, s9, s99
	s_and_b32 s0, s0, s97
	s_and_b32 s1, s1, s11
	s_and_b32 s2, s2, s12
	s_and_b32 s1, s1, s95
	s_and_b32 s2, s2, s93
	s_and_b32 s3, s3, s14
	s_and_b32 s6, s6, s15
	s_and_not1_b32 s10, s99, exec_lo
	s_and_b32 s9, s9, exec_lo
	s_and_not1_b32 s11, s97, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_b32 s3, s3, s100
	s_and_b32 s6, s6, s98
	s_and_b32 s7, s7, s16
	s_and_b32 s8, s8, s17
	s_or_b32 s99, s10, s9
	s_or_b32 s97, s11, s0
	s_and_not1_b32 s0, s95, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s9, s93, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_b32 s7, s7, s96
	s_and_b32 s8, s8, s94
	s_or_b32 s95, s0, s1
	s_or_b32 s93, s9, s2
	s_and_not1_b32 s0, s100, exec_lo
	s_and_b32 s1, s3, exec_lo
	s_and_not1_b32 s2, s98, exec_lo
	s_and_b32 s3, s6, exec_lo
	s_or_b32 s100, s0, s1
	s_or_b32 s98, s2, s3
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s2, s94, exec_lo
	s_and_b32 s3, s8, exec_lo
	s_or_b32 s96, s0, s1
	s_or_b32 s94, s2, s3
.LBB0_12:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 21                          ; attention_backward.py:0:21
	v_mov_b16_e32 v100.h, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s0, s65, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s23, s0
	v_mov_b16_e32 v101.l, v100.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s99
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[98:99], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s0, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v99, 31, v98
	v_add_co_u32 v98, vcc_lo, s20, v98
	v_add_co_ci_u32_e64 v99, null, s21, v99, vcc_lo
	global_load_d16_u8 v101, v[98:99], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s97
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[98:99], off, off offset:416 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s0, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v99, 31, v98
	v_add_co_u32 v98, vcc_lo, s20, v98
	v_add_co_ci_u32_e64 v99, null, s21, v99, vcc_lo
	global_load_d16_hi_u8 v100, v[98:99], off
.LBB0_16:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v98.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v98.h, v98.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s95
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:424 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v99
	v_add_co_u32 v102, vcc_lo, s20, v99
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_hi_u8 v98, v[102:103], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s93
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:432 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v99
	v_add_co_u32 v102, vcc_lo, s20, v99
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_u8 v98, v[102:103], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v100.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.h, v100.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s100
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:440 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v99
	v_add_co_u32 v102, vcc_lo, s20, v99
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_hi_u8 v101, v[102:103], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s98
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:448 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v99
	v_add_co_u32 v102, vcc_lo, s20, v99
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_u8 v100, v[102:103], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v99.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.h, v99.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s96
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, vcc_lo, s20, v102
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_hi_u8 v99, v[102:103], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s94
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[102:103], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v103, 31, v102
	v_add_co_u32 v102, vcc_lo, s20, v102
	v_add_co_ci_u32_e64 v103, null, s21, v103, vcc_lo
	global_load_d16_u8 v99, v[102:103], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow353
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:480
	scratch_load_b32 v55, off, off offset:484
	scratch_load_b32 v56, off, off offset:488
	s_branch .LBB0_30
.LBB0_29:
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v80, v40
	v_mov_b32_e32 v79, v40
	v_mov_b32_e32 v78, v40
	v_mov_b32_e32 v77, v40
	v_mov_b32_e32 v76, v40
	v_mov_b32_e32 v75, v40
	v_mov_b32_e32 v74, v40
	v_mov_b32_e32 v73, v40
	v_mov_b32_e32 v88, v40
	v_mov_b32_e32 v87, v40
	v_mov_b32_e32 v86, v40
	v_mov_b32_e32 v85, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v83, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	v_mov_b32_e32 v96, v40
	v_mov_b32_e32 v95, v40
	v_mov_b32_e32 v94, v40
	v_mov_b32_e32 v93, v40
	v_mov_b32_e32 v92, v40
	v_mov_b32_e32 v91, v40
	v_mov_b32_e32 v90, v40
	v_mov_b32_e32 v89, v40
.LBB0_30:                               ; %._crit_edge197
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v0, 4, v55
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v16, s35, v54
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s41, s37, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, v0, v56
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
	v_add_nc_u32_e32 v21, s34, v54
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
	buffer_store_b32 v33, v8, s[40:43], 0 offen
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
	buffer_store_b32 v34, v7, s[40:43], 0 offen
	buffer_store_b32 v35, v6, s[40:43], 0 offen
	buffer_store_b32 v36, v0, s[40:43], 0 offen
	buffer_store_b32 v37, v4, s[40:43], 0 offen
	buffer_store_b32 v38, v3, s[40:43], 0 offen
	buffer_store_b32 v39, v2, s[40:43], 0 offen
	buffer_store_b32 v40, v1, s[40:43], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 496
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
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 496
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21524
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 496
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 103
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 496
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 123
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
