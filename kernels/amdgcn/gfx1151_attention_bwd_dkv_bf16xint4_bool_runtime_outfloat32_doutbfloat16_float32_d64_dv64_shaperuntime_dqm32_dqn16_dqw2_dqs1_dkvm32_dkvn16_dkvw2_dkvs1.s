	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_add_nc_u32_e32 v215, 0, v1
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
	v_add_nc_u32_e32 v216, 0, v2
	v_add_nc_u32_e32 v222, 0, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[1:2], null, s21, s56, v[0:1]
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s4, s3, s4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1c0000
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v217, 0, v19
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
	v_add_nc_u32_e32 v218, 0, v20
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s5, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v219, 0, v21
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v27, s56, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v20, 0x80000000, v2, s5
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s7, s4
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v220, 0, v22
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
	v_add_nc_u32_e32 v221, 0, v23
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
	ds_store_b16 v215, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v215, v8 offset:1024
	ds_store_b16 v216, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v216, v10 offset:1024
	ds_store_b16 v217, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v217, v16 offset:1024
	ds_store_b16 v218, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v218, v9 offset:1024
	ds_store_b16 v219, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v219, v13 offset:1024
	ds_store_b16 v220, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v220, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v221, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v221, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v222, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v222, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v42, v20, s[24:27], 0 offen
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
	buffer_load_u16 v43, v2, s[24:27], 0 offen
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
	s_lshr_b32 s5, s5, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s5, s2, s5
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s43, s44
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 4, v3
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s59, s5, 0xffffffe0
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s5, s28, 0x10008
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v4, v54, 7, v2
	v_xor_b32_e32 v1, 16, v4
	v_add_nc_u32_e32 v5, 0, v4
	v_xor_b32_e32 v7, 32, v4
	v_xor_b32_e32 v8, 48, v4
	v_xor_b32_e32 v9, 64, v4
	v_add_nc_u32_e32 v6, 0, v1
	ds_load_b128 v[44:47], v5
	ds_load_b128 v[48:51], v6
	v_add_nc_u32_e32 v7, 0, v7
	v_add_nc_u32_e32 v8, 0, v8
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[44:47], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[48:51], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[44:47], v7
	ds_load_b128 v[48:51], v8
	v_xor_b32_e32 v10, 0x50, v4
	v_add_nc_u32_e32 v9, 0, v9
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[44:47], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[48:51], off offset:48 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v10, 0, v10
	ds_load_b128 v[44:47], v9
	ds_load_b128 v[48:51], v10
	v_xor_b32_e32 v11, 0x60, v4
	v_xor_b32_e32 v12, 0x70, v4
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[44:47], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[48:51], off offset:80 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v11, 0, v11
	v_add_nc_u32_e32 v12, 0, v12
	ds_load_b128 v[44:47], v11
	ds_load_b128 v[48:51], v12
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[44:47], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[48:51], off offset:112 ; 16-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v17.h, v42.l
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
	v_mov_b16_e32 v13.h, v43.l
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
	v_and_b32_e32 v1, 32, v0
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
	v_or_b32_e32 v225, s14, v54
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
	v_cmp_gt_i32_e64 s5, s19, v225
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
	v_lshrrev_b32_e32 v56, 1, v1
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
	ds_store_b16 v215, v13
	ds_store_b16 v215, v17 offset:1024
	ds_store_b16_d16_hi v216, v13
	ds_store_b16_d16_hi v216, v17 offset:1024
	ds_store_b16 v217, v14
	ds_store_b16 v217, v18 offset:1024
	ds_store_b16_d16_hi v218, v14
	ds_store_b16_d16_hi v218, v18 offset:1024
	ds_store_b16 v219, v15
	ds_store_b16 v219, v19 offset:1024
	ds_store_b16_d16_hi v220, v15
	ds_store_b16_d16_hi v220, v19 offset:1024
	ds_store_b16 v221, v16
	ds_store_b16 v221, v20 offset:1024
	ds_store_b16_d16_hi v222, v16
	ds_store_b16_d16_hi v222, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph196
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[25:28], v12
	ds_load_b128 v[21:24], v11
	s_xor_b32 s2, s3, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v18, 4, v0
	s_ashr_i32 s2, s2, 31
	v_lshlrev_b32_e32 v39, 3, v54
	s_xor_b32 s6, s15, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_sub_i32 s2, s6, s2
	s_clause 0x1
	s_load_b32 s6, s[0:1], 0x90
	s_load_b128 s[44:47], s[0:1], 0x80
	v_or_b32_e32 v13, 4, v18
	v_or_b32_e32 v14, 8, v18
	v_or_b32_e32 v15, 12, v18
	v_or_b32_e32 v16, 16, v18
	v_or_b32_e32 v17, 20, v18
	v_or_b32_e32 v19, 24, v18
	v_or_b32_e32 v20, 28, v18
	scratch_store_b32 off, v13, off offset:128 ; 4-byte Folded Spill
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x30
	s_load_b64 s[40:41], s[0:1], 0x0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s14, s31
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:156
	scratch_store_b128 off, v[25:28], off offset:172
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[21:24], v9
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_i32 s1, s1, 0
	s_mul_i32 s0, s2, s17
	s_and_b32 s1, s1, 0x7fffffe0
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s0, s3, s0
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s1, s48, s1
	s_and_b32 s3, s58, exec_lo
	s_cselect_b32 s60, s1, s48
	.loc	1 608 39 is_stmt 1              ; attention_backward.py:608:39
	v_or_b32_e32 v238, v56, v54
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s63, s44, 0x3fb8aa3b
	s_cmp_lt_i32 s60, s59
	s_mov_b32 s28, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s61, s19, s0
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s62, s2, s16
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s45, s2, s45
	s_cselect_b32 s64, -1, 0
	s_mov_b32 s43, 0x31027000
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:188
	scratch_store_b128 off, v[25:28], off offset:204
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[25:28], v8
	ds_load_b128 v[21:24], v7
	ds_load_b128 v[9:12], v6
	ds_load_b128 v[5:8], v5
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:536
	scratch_store_b32 off, v56, off offset:544
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:252
	scratch_store_b128 off, v[9:12], off offset:268
	v_lshl_or_b32 v5, v1, 6, v4
	v_mul_lo_u32 v4, s6, v225
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[21:24], off offset:220
	scratch_store_b128 off, v[25:28], off offset:236
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v27, s35, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v20, off offset:152
	scratch_store_b32 off, v5, off offset:284
	v_xor_b32_e32 v6, 16, v5
	v_xor_b32_e32 v7, 32, v5
	v_xor_b32_e32 v8, 48, v5
	v_mad_u64_u32 v[11:12], null, s47, v13, v[4:5]
	v_xor_b32_e32 v9, 64, v5
	v_xor_b32_e32 v10, 0x50, v5
	v_xor_b32_e32 v44, 0x60, v5
	v_xor_b32_e32 v45, 0x70, v5
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:472
	scratch_store_b32 off, v14, off offset:132
	v_mad_u64_u32 v[11:12], null, s47, v14, v[4:5]
	v_and_b32_e32 v14, 2, v0
	v_lshrrev_b32_e32 v13, 4, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v28, s56, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:480
	scratch_store_b32 off, v15, off offset:136
	v_mad_u64_u32 v[11:12], null, s47, v15, v[4:5]
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v30, s35, v27
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:488
	scratch_store_b32 off, v16, off offset:140
	v_mad_u64_u32 v[11:12], null, s47, v16, v[4:5]
	v_add_nc_u32_e32 v31, s56, v28
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:496
	scratch_store_b32 off, v17, off offset:144
	v_mad_u64_u32 v[11:12], null, s47, v17, v[4:5]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:504
	scratch_store_b32 off, v19, off offset:148
	v_mad_u64_u32 v[11:12], null, s47, v19, v[4:5]
	v_lshlrev_b32_e32 v5, 5, v0
	v_and_b32_e32 v17, 24, v0
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v33, s35, v30
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v34, s56, v31
	v_add_nc_u32_e32 v44, 0, v44
	v_and_b32_e32 v5, 0x180, v5
	v_add_nc_u32_e32 v45, 0, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v36, s56, v34
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v28, off offset:324
	scratch_store_b32 off, v30, off offset:328
	scratch_store_b32 off, v31, off offset:332
	scratch_store_b32 off, v33, off offset:336
	v_mad_u64_u32 v[15:16], null, s47, v20, v[4:5]
	scratch_store_b64 off, v[11:12], off offset:512 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v11, 2, v0
	v_lshrrev_b32_e32 v12, 2, v55
	v_add_nc_u32_e32 v41, s56, v36
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v81, 0
	v_and_b32_e32 v11, 52, v11
	v_or3_b32 v19, v12, v13, v39
	v_lshrrev_b32_e32 v12, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v5, v11, v14, v5
	v_lshlrev_b32_e32 v11, 1, v17
	v_lshrrev_b32_e32 v17, 1, v17
	v_xor_b32_e32 v14, 0x90, v19
	v_mad_u64_u32 v[20:21], null, s47, v18, v[4:5]
	scratch_store_b64 off, v[15:16], off offset:520 ; 8-byte Folded Spill
	v_lshlrev_b32_e32 v16, 3, v0
	v_lshrrev_b32_e32 v15, 5, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v4, 48, v16
	scratch_store_b64 off, v[20:21], off offset:528 ; 8-byte Folded Spill
	v_or3_b32 v20, v5, v12, v15
	v_bfe_i32 v15, v0, 3, 1
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	v_xor_b32_e32 v11, v4, v11
	v_lshl_or_b32 v26, v54, 6, v4
	scratch_store_b32 off, v19, off offset:292 ; 4-byte Folded Spill
	v_xor_b32_e32 v5, 0x120, v19
	v_and_or_b32 v15, 0x210, v15, v16
	v_lshl_or_b32 v22, v0, 6, v11
	v_lshl_or_b32 v11, v3, 6, v4
	v_lshl_or_b32 v3, v3, 7, v17
	scratch_store_b32 off, v20, off offset:296 ; 4-byte Folded Spill
	v_xor_b32_e32 v40, 32, v26
	v_xor_b32_e32 v12, 0x1b0, v19
	v_xor_b32_e32 v24, v15, v11
	v_lshlrev_b32_e32 v11, 1, v54
	v_lshlrev_b32_e32 v15, 2, v55
	v_or3_b32 v13, v3, v2, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v22, off offset:300
	scratch_store_b32 off, v24, off offset:304
	v_xor_b32_e32 v23, 16, v24
	v_or3_b32 v25, v11, v15, v1
	v_xor_b32_e32 v15, 32, v24
	v_xor_b32_e32 v17, 48, v24
	v_xor_b32_e32 v3, 16, v26
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v26, off offset:312
	scratch_store_b32 off, v25, off offset:308
	scratch_store_b32 off, v27, off offset:320
	scratch_store_b32 off, v13, off offset:316
	v_xor_b32_e32 v4, 0x90, v25
	v_xor_b32_e32 v24, 0x120, v25
	v_xor_b32_e32 v2, 0x1b0, v25
	v_xor_b32_e32 v25, 48, v26
	v_xor_b32_e32 v26, 16, v13
	v_xor_b32_e32 v27, 32, v13
	v_xor_b32_e32 v28, 48, v13
	v_xor_b32_e32 v29, 64, v13
	v_xor_b32_e32 v30, 0x50, v13
	v_xor_b32_e32 v31, 0x60, v13
	v_xor_b32_e32 v48, 0x70, v13
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v33
	scratch_store_b32 off, v34, off offset:340 ; 4-byte Folded Spill
	v_add3_u32 v255, 0, v1, v11
	v_add_nc_u32_e32 v1, 0, v14
	v_add_nc_u32_e32 v5, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:344
	scratch_store_b32 off, v41, off offset:356
	v_add_nc_u32_e32 v13, s35, v13
	scratch_store_b32 off, v36, off offset:348 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v41, s56, v41
	v_add_nc_u32_e32 v235, 0, v17
	v_add_nc_u32_e32 v17, 0, v2
	scratch_store_b32 off, v13, off offset:352 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v13, s35, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:364
	scratch_store_b32 off, v13, off offset:360
	v_add_nc_u32_e32 v1, s35, v13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v11, s56, v41
	scratch_store_b32 off, v5, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 0, v12
	scratch_store_b32 off, v41, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v3
	v_add_nc_u32_e32 v3, 0, v40
	v_add_nc_u32_e32 v12, 0, v4
	scratch_store_b32 off, v5, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s56, v11
	scratch_store_b32 off, v1, off offset:380 ; 4-byte Folded Spill
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v11, off offset:384
	scratch_store_b32 off, v3, off offset:404
	scratch_store_b32 off, v5, off offset:392
	v_add_nc_u32_e32 v5, s56, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v55, off offset:540
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v3, 0, v25
	scratch_store_b32 off, v5, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s56, v5
	v_xor_b32_e32 v19, 32, v20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:400
	scratch_store_b32 off, v3, off offset:408
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v4, s56, v5
	scratch_store_b32 off, v5, off offset:420 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v232, 0, v19
	v_add_nc_u32_e32 v19, 0, v30
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:396
	scratch_store_b32 off, v1, off offset:424
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v4, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v4
	v_xor_b32_e32 v18, 16, v20
	v_add_nc_u32_e32 v40, 0, v9
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v41, 0, v10
	v_xor_b32_e32 v16, 48, v20
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_xor_b32_e32 v20, 16, v22
	v_xor_b32_e32 v21, 32, v22
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_xor_b32_e32 v22, 48, v22
	v_add_nc_u32_e32 v14, 0, v27
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v2, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v189, 0, v22
	v_add_nc_u32_e32 v193, 0, v15
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v15, 0, v28
	v_add_nc_u32_e32 v188, 0, v21
	v_add_nc_u32_e32 v13, 0, v24
	v_add_nc_u32_e32 v11, 0, v26
	v_mov_b32_e32 v33, v1
	v_add_nc_u32_e32 v1, s35, v1
	v_add_nc_u32_e32 v21, 0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v253, v1
	v_add_nc_u32_e32 v1, s35, v1
	v_mov_b32_e32 v38, v1
	v_xor_b32_e32 v46, 0x2d0, v39
	v_add_nc_u32_e32 v1, s35, v1
	v_xor_b32_e32 v49, 0x90, v39
	v_xor_b32_e32 v34, 0x120, v39
	v_xor_b32_e32 v35, 0x1b0, v39
	v_add_nc_u32_e32 v30, 0, v46
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v229, 0, v18
	v_dual_mov_b32 v254, v1 :: v_dual_add_nc_u32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v79, v46 :: v_dual_add_nc_u32 v226, 0, v20
	v_mov_b32_e32 v83, v46
	scratch_store_b32 off, v2, off offset:468 ; 4-byte Folded Spill
	v_dual_mov_b32 v87, v46 :: v_dual_add_nc_u32 v2, s56, v2
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_xor_b32_e32 v36, 0x240, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v231, v2 :: v_dual_add_nc_u32 v2, s56, v2
	v_xor_b32_e32 v47, 0x360, v39
	v_dual_mov_b32 v42, v1 :: v_dual_add_nc_u32 v1, s35, v1
	scratch_store_b32 off, v39, off offset:288 ; 4-byte Folded Spill
	v_mov_b32_e32 v186, v2
	v_add_nc_u32_e32 v2, s56, v2
	v_xor_b32_e32 v39, 0x3f0, v39
	v_mov_b32_e32 v223, v1
	v_add_nc_u32_e32 v1, s35, v1
	v_dual_mov_b32 v84, v46 :: v_dual_add_nc_u32 v233, 0, v16
	v_dual_mov_b32 v187, v2 :: v_dual_add_nc_u32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v37, v1
	v_add_nc_u32_e32 v1, s35, v1
	v_dual_mov_b32 v91, v46 :: v_dual_add_nc_u32 v16, 0, v29
	v_mov_b32_e32 v18, v2
	v_add_nc_u32_e32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v214, v1 :: v_dual_add_nc_u32 v1, s35, v1
	v_add_nc_u32_e32 v20, 0, v31
	v_add_nc_u32_e32 v25, 0, v34
	v_dual_mov_b32 v9, v2 :: v_dual_add_nc_u32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v43, v1 :: v_dual_add_nc_u32 v190, 0, v23
	v_add_nc_u32_e32 v1, s35, v1
	v_dual_mov_b32 v191, v2 :: v_dual_add_nc_u32 v26, 0, v35
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v29, 0, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v28, s35, v1
	v_add_nc_u32_e32 v31, 0, v47
	v_add_nc_u32_e32 v34, 0, v39
	v_mov_b32_e32 v10, v2
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v64, s35, v28
	v_add_nc_u32_e32 v35, 0, v6
	v_add_nc_u32_e32 v36, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v192, v2 :: v_dual_add_nc_u32 v39, 0, v8
	v_add_nc_u32_e32 v2, s56, v2
	v_mov_b32_e32 v74, v46
	v_mov_b32_e32 v75, v46
	v_mov_b32_e32 v76, v46
	v_mov_b32_e32 v77, v46
	v_mov_b32_e32 v22, v2
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v24, 0, v49
	v_mov_b32_e32 v78, v46
	v_mov_b32_e32 v80, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v66, v46 :: v_dual_add_nc_u32 v27, s56, v2
	v_mov_b32_e32 v67, v46
	v_mov_b32_e32 v68, v46
	v_mov_b32_e32 v69, v46
	v_dual_mov_b32 v70, v46 :: v_dual_add_nc_u32 v63, s56, v27
	v_mov_b32_e32 v71, v46
	v_mov_b32_e32 v72, v46
	v_mov_b32_e32 v90, v46
	v_mov_b32_e32 v92, v46
	v_dual_mov_b32 v93, v46 :: v_dual_add_nc_u32 v234, s56, v63
	v_mov_b32_e32 v23, v2
	v_mov_b32_e32 v94, v46
	v_mov_b32_e32 v95, v46
	v_mov_b32_e32 v96, v46
	v_mov_b32_e32 v230, v1
	v_mov_b32_e32 v82, v46
	v_mov_b32_e32 v85, v46
	v_mov_b32_e32 v86, v46
	v_add_nc_u32_e32 v236, s35, v64
	v_dual_mov_b32 v88, v46 :: v_dual_add_nc_u32 v237, s56, v234
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
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	s_waitcnt vmcnt(1)
	v_and_b16 v47.l, 0xff, v101.h
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_mov_b16_e64 v239.l, 0
	v_mov_b16_e64 v114.h, v200.l
	v_mov_b16_e64 v115.h, v199.l
	v_mov_b16_e64 v116.h, v198.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v47.l
	v_and_b16 v47.l, 0xff, v101.l
	v_mov_b16_e32 v117.h, v113.l
	v_mov_b16_e64 v118.h, v133.l
	v_mov_b16_e64 v119.h, v132.l
	.loc	1 689 25 is_stmt 0              ; attention_backward.py:689:25
	s_and_b32 s0, s100, s0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v47.l
	v_and_b16 v47.l, 0xff, v100.h
	v_mov_b16_e64 v120.h, v131.l
	v_mov_b16_e64 v121.h, v130.l
	v_mov_b16_e64 v122.h, v194.l
	v_mov_b16_e64 v123.h, v136.l
	v_cmp_ne_u16_e32 vcc_lo, 0, v47.l
	v_and_b16 v47.l, 0xff, v100.l
	v_mov_b16_e64 v124.h, v135.l
	v_mov_b16_e64 v125.h, v134.l
	v_mov_b16_e64 v126.h, v197.l
	v_mov_b16_e64 v127.h, v196.l
	v_cmp_ne_u16_e64 s2, 0, v47.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v47, 0, 1, s0
	s_and_b32 s0, s99, s1
	v_mov_b16_e64 v128.h, v195.l
	v_cndmask_b32_e64 v48, 0, 1, s0
	s_and_b32 s0, s98, s2
	v_lshlrev_b16 v47.l, 8, v47.l
	v_mov_b16_e64 v129.h, v145.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_or_b16 v47.l, v48.l, v47.l
	v_cndmask_b32_e64 v48, 0, 1, s0
	s_and_b32 s0, s97, vcc_lo
	v_cndmask_b32_e64 v49, 0, 1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v47.h, 8, v48.l
	v_or_b16 v47.h, v49.l, v47.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v48, 0, v1
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	ds_store_b16 v48, v47
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v47.l, 0xff, v98.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v47.l
	v_and_b16 v47.l, 0xff, v98.l
	v_cmp_ne_u16_e64 s0, 0, v47.l
	v_and_b16 v47.l, 0xff, v99.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s93, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v47.l
	v_and_b16 v47.l, 0xff, v99.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v49, 0, 1, s0
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s96, s1
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v47.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v48, 0, 1, s1
	s_and_b32 s1, s95, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s55, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v47.l, v48.l
	v_cndmask_b32_e64 v48, 0, 1, s1
	s_and_b32 s1, s94, s2
	v_lshlrev_b16 v47.l, 8, v47.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v47.l, v48.l, v47.l
	v_cndmask_b32_e64 v48, 0, 1, s1
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s84, s56
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v48.l, 8, v48.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v48.l, v49.l, v48.l
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v47
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v47
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v47, s1, v0, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s54, s42
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(0)
	ds_store_b16 v1, v48
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s1, v1, 1
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v137, v47, s[52:55], 0 offen
	buffer_load_u16 v138, v48, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v139, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v140, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s1, v1, 1
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v141, v47, s[52:55], 0 offen
	buffer_load_u16 v142, v48, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s1, v186, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v143, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v144, v47, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v178, v47, s[52:55], 0 offen
	buffer_load_u16 v179, v48, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v18, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v48, s1, v23, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v180, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v191, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v181, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v192, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v182, v47, s[52:55], 0 offen
	buffer_load_u16 v183, v48, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v63, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s78
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v48, s84, v238, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_u16 v184, v47, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v237, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	buffer_load_u16 v185, v47, s[52:55], 0 offen
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v47, s65, v238
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s65, s65, 32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v47, s1, v1, 1
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v49, s1, v1, 1
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s1, v1, 1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v51, s1, v1, 1
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s1, v1, 1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s1, v1, 1
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s1, v1, 1
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v55, s1, v1, 1
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	s_clause 0x7
	buffer_load_u16 v240, v51, s[52:55], 0 offen
	buffer_load_u16 v242, v50, s[52:55], 0 offen
	buffer_load_u16 v244, v49, s[52:55], 0 offen
	buffer_load_u16 v246, v47, s[52:55], 0 offen
	buffer_load_u16 v241, v55, s[52:55], 0 offen
	buffer_load_u16 v243, v54, s[52:55], 0 offen
	buffer_load_u16 v245, v53, s[52:55], 0 offen
	buffer_load_u16 v247, v52, s[52:55], 0 offen
	v_add_lshl_u32 v47, s1, v187, 1
	v_add_lshl_u32 v49, s1, v9, 1
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v50, s1, v10, 1
	v_add_lshl_u32 v51, s1, v231, 1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	v_add_nc_u32_e32 v54, s56, v237
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v52, s1, v27, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v53, s1, v234, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v54, s1, v54, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v55, s1, v22, 1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s0
	s_clause 0x7
	buffer_load_u16 v248, v50, s[52:55], 0 offen
	buffer_load_u16 v250, v49, s[52:55], 0 offen
	buffer_load_u16 v227, v47, s[52:55], 0 offen
	buffer_load_u16 v228, v51, s[52:55], 0 offen
	buffer_load_u16 v249, v54, s[52:55], 0 offen
	buffer_load_u16 v224, v53, s[52:55], 0 offen
	buffer_load_u16 v251, v52, s[52:55], 0 offen
	buffer_load_u16 v252, v55, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v47, 0x80000000, v48, vcc_lo
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v58, v47, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v59, v47, s[48:51], 0 offen
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v49, v46
	v_mov_b32_e32 v50, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v52, v46
	v_mov_b32_e32 v53, v46
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s65, s59
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(17)
	v_mov_b16_e64 v140.h, v240.l
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v139.h, v242.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_add_nc_u32_e32 v47, 0, v1
	ds_load_u8_d16 v54, v47
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v54, v47 offset:64
	ds_load_u8_d16 v55, v229
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v55, v229 offset:64
	ds_load_u8_d16 v56, v232
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v56, v232 offset:64
	ds_load_u8_d16 v57, v233
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v57, v233 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_mov_b16_e64 v138.h, v244.l
	s_waitcnt vmcnt(15)
	v_mov_b16_e64 v137.h, v246.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e64 v144.h, v241.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e64 v143.h, v243.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e64 v142.h, v245.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v141.h, v247.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v47, v46
	v_dual_mov_b32 v104, v53 :: v_dual_mov_b32 v103, v52
	v_dual_mov_b32 v102, v51 :: v_dual_mov_b32 v101, v50
	v_dual_mov_b32 v100, v49 :: v_dual_mov_b32 v99, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v98, v47 :: v_dual_mov_b32 v97, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v181.h, v248.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v180.h, v250.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v179.h, v227.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v178.h, v228.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v185.h, v249.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v184.h, v224.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v183.h, v251.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v182.h, v252.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v47, s63, v105, -v58
	v_fma_f32 v51, s63, v109, -v58
	v_fma_f32 v48, s63, v106, -v58
	v_fma_f32 v49, s63, v107, -v58
	v_fma_f32 v50, s63, v108, -v58
	v_fma_f32 v52, s63, v110, -v58
	v_fma_f32 v53, s63, v111, -v58
	v_fma_f32 v58, s63, v112, -v58
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v58, v58
	.loc	1 732 34 is_stmt 1              ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, 0, v1
	ds_store_b128 v60, v[137:140]
	ds_store_b128 v226, v[141:144]
	ds_store_b128 v188, v[178:181]
	ds_store_b128 v189, v[182:185]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, 0, v1
	ds_load_b128 v[174:177], v61
	ds_load_b128 v[166:169], v61 offset:2048
	ds_load_b128 v[170:173], v190
	ds_load_b128 v[162:165], v190 offset:2048
	ds_load_b128 v[158:161], v193
	ds_load_b128 v[150:153], v193 offset:2048
	ds_load_b128 v[154:157], v235
	ds_load_b128 v[146:149], v235 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v215, v137
	ds_store_b16 v215, v141 offset:1024
	ds_store_b16 v215, v178 offset:2048
	ds_store_b16 v215, v182 offset:3072
	ds_store_b16 v216, v246
	ds_store_b16 v216, v247 offset:1024
	ds_store_b16 v216, v228 offset:2048
	ds_store_b16 v216, v252 offset:3072
	ds_store_b16 v217, v138
	ds_store_b16 v217, v142 offset:1024
	ds_store_b16 v217, v179 offset:2048
	ds_store_b16 v217, v183 offset:3072
	ds_store_b16 v218, v244
	ds_store_b16 v218, v245 offset:1024
	ds_store_b16 v218, v227 offset:2048
	ds_store_b16 v218, v251 offset:3072
	ds_store_b16 v219, v139
	ds_store_b16 v219, v143 offset:1024
	ds_store_b16 v219, v180 offset:2048
	ds_store_b16 v219, v184 offset:3072
	ds_store_b16 v220, v242
	ds_store_b16 v220, v243 offset:1024
	ds_store_b16 v220, v250 offset:2048
	ds_store_b16 v220, v224 offset:3072
	ds_store_b16 v221, v140
	ds_store_b16 v221, v144 offset:1024
	ds_store_b16 v221, v181 offset:2048
	ds_store_b16 v221, v185 offset:3072
	ds_store_b16 v222, v240
	ds_store_b16 v222, v241 offset:1024
	ds_store_b16 v222, v248 offset:2048
	ds_store_b16 v222, v249 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:252
	scratch_load_b128 v[5:8], off, off offset:268
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v201
	ds_load_b128 v[205:208], v35
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:220
	scratch_load_b128 v[5:8], off, off offset:236
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v36
	ds_load_b128 v[205:208], v39
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:188
	scratch_load_b128 v[5:8], off, off offset:204
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v40
	ds_load_b128 v[205:208], v41
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:156
	scratch_load_b128 v[5:8], off, off offset:172
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[201:204], v44
	ds_load_b128 v[205:208], v45
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[1:8], v[201:208], v[97:104]
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v62, v97, v59
	v_sub_f32_e32 v97, v98, v59
	v_sub_f32_e32 v98, v99, v59
	v_sub_f32_e32 v99, v100, v59
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v100, v47
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v47.l, 1, v54.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v101, v101, v59
	v_sub_f32_e32 v102, v102, v59
	v_sub_f32_e32 v103, v103, v59
	v_sub_f32_e32 v59, v104, v59
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v47.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v104, 0, v100, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v47, v104, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v47, s44, v47
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v62, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v47, v62, 0x7fff
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	v_and_b16 v47.l, 1, v54.h
	v_cmp_eq_u16_e64 s0, 1, v47.l
	v_and_b16 v47.l, 1, v55.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v100, 0, v51, s0
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v47.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v100, v101
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v48, 0, v48, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s44, v51
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v54, v51, 16, 1
	v_cmp_o_f32_e64 s0, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v51, v51, v54, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v54, v48, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v51.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s44, v54
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v62, v54, 16, 1
	v_cmp_o_f32_e64 s1, v54, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v54, v54, v62, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, 0, v1
	ds_store_b16 v51, v47
	ds_store_b16_d16_hi v51, v47 offset:512
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v47.h, 1, v56.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v54.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v47.h
	v_and_b16 v47.h, 1, v57.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v49, 0, v49, vcc_lo
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v47.h
	v_and_b16 v47.h, 1, v55.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v49, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v50, 0, v50, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v47.h
	v_and_b16 v47.h, 1, v56.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s44, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v52, 0, v52, s1
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s2, 1, v47.h
	v_and_b16 v47.h, 1, v57.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v54, v51, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v55, v52, v102
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v53, 0, v53, s2
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v47.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v51, v51, v54, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v54, v50, v99
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v55, s44, v55
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v56, v53, v103
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v57, 0, v58, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s44, v54
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s1, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v56, s44, v56
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v58, v57, v59
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v57, v57
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v62, v54, 16, 1
	v_cmp_o_f32_e64 s0, v54, v54
	v_cmp_o_f32_e64 s2, v56, v56
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v58, s44, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v54, v54, v62, 0x7fff
	v_bfe_u32 v62, v55, 16, 1
	v_bfe_u32 v59, v58, 16, 1
	v_cmp_o_f32_e64 s3, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v55, v62, 0x7fff
	v_bfe_u32 v62, v56, 16, 1
	v_add3_u32 v58, v58, v59, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v59, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v55.h, s1
	v_add3_u32 v56, v56, v62, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v12, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v51.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v12, v47 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v56.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v55, v50, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v13, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.l, 0x7fff, v54.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v54, v49, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v13, v47 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v47.h, 0x7fff, v58.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v17, v47
	ds_store_b16_d16_hi v17, v47 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v48, v48
	v_add3_u32 v54, v49, v54, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_bfe_u32 v56, v100, 16, 1
	v_bfe_u32 v58, v52, 16, 1
	v_add3_u32 v55, v50, v55, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s1
	v_add3_u32 v56, v100, v56, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_add3_u32 v58, v52, v58, 0x7fff
	v_add3_u32 v59, v53, v59, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v54.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s1
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s2
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v55.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s3
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v56.l, v239.l
	v_mov_b16_e64 v58.l, v239.l
	v_mov_b16_e64 v59.l, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v52, v52, v58 :: v_dual_sub_f32 v53, v53, v59
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v52, v52
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, 0, v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	ds_load_b128 v[198:201], v47
	s_waitcnt vmcnt(0)
	ds_load_b128 v[202:205], v1
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v47, v104, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v104, v47, 0x7fff
	v_cndmask_b16 v239.h, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v47, v104, v239
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v51, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v47, v51, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v47, v48, 16, 1
	v_add3_u32 v47, v48, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v47.l, 0x7fff, v51.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s0
	v_cmp_o_f32_e64 s0, v50, v50
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s0
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[106:109], v1
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[110:113], v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v60, v[114:117]
	ds_store_b128 v226, v[118:121]
	ds_store_b128 v188, v[122:125]
	ds_store_b128 v189, v[126:129]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v190
	ds_load_b128 v[114:117], v61
	ds_load_b128 v[122:125], v61 offset:2048
	ds_load_b128 v[126:129], v190 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v60, v57, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v60, v57, v60, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v60.l, v239.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v53, v53
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[198:205], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[198:205], v[81:88]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[118:121], v235
	ds_load_b128 v[114:117], v193
	ds_load_b128 v[122:125], v193 offset:2048
	ds_load_b128 v[126:129], v235 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[106:113], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[106:113], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, 0, v1
	ds_store_b16_d16_hi v61, v239
	ds_store_b16_d16_hi v11, v47
	ds_store_b16_d16_hi v14, v54
	ds_store_b16_d16_hi v15, v55
	ds_store_b16_d16_hi v16, v56
	ds_store_b16_d16_hi v19, v58
	ds_store_b16_d16_hi v20, v59
	ds_store_b16_d16_hi v21, v60
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	ds_load_b64 v[101:102], v24
	ds_load_b64 v[103:104], v30
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v174.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v138.h, v101.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v140.h, v103.l
	v_mov_b16_e64 v144.h, v104.l
	v_mov_b16_e64 v142.h, v102.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, 0, v1
	ds_load_b64 v[210:211], v25
	ds_load_b64 v[204:205], v26
	ds_load_b64 v[212:213], v51
	ds_load_b64 v[98:99], v31
	ds_load_b64 v[206:207], v34
	ds_load_b64 v[208:209], v29
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v61, v47
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v47.l, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v47, v48, v47 :: v_dual_sub_f32 v48, v49, v54
	v_dual_sub_f32 v49, v50, v55 :: v_dual_sub_f32 v50, v100, v56
	v_sub_f32_e32 v54, v57, v60
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v55, v47, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e64 s1, v49, v49
	v_cmp_o_f32_e64 s2, v50, v50
	v_add3_u32 v55, v47, v55, 0x7fff
	v_bfe_u32 v47, v48, 16, 1
	v_cmp_o_f32_e64 s7, v54, v54
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v145.h, v207.l
	v_mov_b16_e64 v207.l, v99.h
	v_mov_b16_e64 v103.l, v208.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v47, v48, v47, 0x7fff
	v_bfe_u32 v48, v49, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v55.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v105, v207
	v_mov_b16_e64 v101.l, v212.h
	v_mov_b16_e64 v139.h, v204.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v48, v49, v48, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	ds_store_b16 v11, v47
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s0
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.h, v205.l
	v_mov_b16_e64 v204.l, v210.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v50, v49, 0x7fff
	v_bfe_u32 v50, v52, 16, 1
	ds_store_b16 v14, v47
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v205.l, v211.h
	v_mov_b16_e64 v141.h, v206.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v50, v52, v50, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	ds_store_b16 v15, v47
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v206.l, v98.h
	v_mov_b16_e64 v145.l, v99.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v52, v53, v52, 0x7fff
	v_bfe_u32 v53, v54, 16, 1
	ds_store_b16 v16, v47
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v99, v204 :: v_dual_mov_b32 v100, v103
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v53, v54, v53, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v103, v205
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v19, v47
	v_cndmask_b16 v47.l, 0x7fff, v52.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v209.h
	v_mov_b16_e64 v102.l, v213.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v20, v47
	v_cndmask_b16 v47.l, 0x7fff, v53.h, s7
	ds_store_b16 v21, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[135:136], v30
	ds_load_b64 v[133:134], v24
	ds_load_b64 v[130:131], v25
	ds_load_b64 v[194:195], v26
	ds_load_b64 v[200:201], v51
	ds_load_b64 v[198:199], v31
	ds_load_b64 v[196:197], v34
	ds_load_b64 v[202:203], v29
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v215, v137
	ds_store_b16 v215, v138 offset:256
	ds_store_b16 v215, v139 offset:512
	ds_store_b16 v215, v140 offset:768
	ds_store_b16 v215, v141 offset:1024
	ds_store_b16 v215, v142 offset:1280
	ds_store_b16 v215, v143 offset:1536
	ds_store_b16 v215, v144 offset:1792
	ds_store_b16 v215, v178 offset:2048
	ds_store_b16 v215, v179 offset:2304
	ds_store_b16 v215, v180 offset:2560
	ds_store_b16 v215, v181 offset:2816
	ds_store_b16 v215, v182 offset:3072
	ds_store_b16 v215, v183 offset:3328
	ds_store_b16 v215, v184 offset:3584
	ds_store_b16 v215, v185 offset:3840
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v208.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b16 v215, v246 offset:128
	ds_store_b16 v215, v244 offset:384
	ds_store_b16 v215, v242 offset:640
	ds_store_b16 v215, v240 offset:896
	ds_store_b16 v215, v247 offset:1152
	ds_store_b16 v215, v245 offset:1408
	ds_store_b16 v215, v243 offset:1664
	ds_store_b16 v215, v241 offset:1920
	ds_store_b16 v215, v228 offset:2176
	ds_store_b16 v215, v227 offset:2432
	ds_store_b16 v215, v250 offset:2688
	ds_store_b16 v215, v248 offset:2944
	ds_store_b16 v215, v252 offset:3200
	ds_store_b16 v215, v251 offset:3456
	ds_store_b16 v215, v224 offset:3712
	ds_store_b16 v215, v249 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v184, v255 offset:1536
	ds_load_u16_d16 v183, v255 offset:1280
	ds_load_u16_d16 v208, v255 offset:1088
	ds_load_u16_d16 v207, v255 offset:832
	ds_load_u16_d16 v180, v255 offset:512
	ds_load_u16_d16 v181, v255 offset:768
	ds_load_u16_d16 v182, v255 offset:1024
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v208, v255 offset:1216
	ds_load_u16_d16 v179, v255 offset:256
	ds_load_u16_d16 v178, v255
	ds_load_u16_d16 v242, v255 offset:2624
	ds_load_u16_d16 v241, v255 offset:2368
	ds_load_u16_d16 v48, v255 offset:2304
	ds_load_u16_d16 v49, v255 offset:2560
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v144.l, v209.l
	v_mov_b16_e64 v141.l, v98.l
	v_dual_mov_b32 v98, v101 :: v_dual_mov_b32 v101, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v242, v255 offset:2752
	ds_load_u16_d16 v185, v255 offset:1792
	ds_load_u16_d16 v47, v255 offset:2048
	ds_load_u16_d16 v51, v255 offset:3072
	ds_load_u16_d16 v50, v255 offset:2816
	ds_load_u16_d16 v52, v255 offset:3328
	ds_load_u16_d16 v53, v255 offset:3584
	ds_load_u16_d16 v54, v255 offset:3840
	ds_load_u16_d16 v209, v255 offset:1344
	ds_load_u16_d16_hi v184, v255 offset:1664
	ds_load_u16_d16_hi v182, v255 offset:1152
	ds_load_u16_d16_hi v180, v255 offset:640
	ds_load_u16_d16_hi v181, v255 offset:896
	ds_load_u16_d16_hi v183, v255 offset:1408
	ds_load_u16_d16 v204, v255 offset:64
	ds_load_u16_d16_hi v179, v255 offset:384
	ds_load_u16_d16_hi v178, v255 offset:128
	ds_load_u16_d16 v206, v255 offset:576
	ds_load_u16_d16 v205, v255 offset:320
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v139.l, v210.l
	v_mov_b16_e64 v143.l, v211.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v185, v255 offset:1920
	ds_load_u16_d16 v240, v255 offset:2112
	ds_load_u16_d16 v211, v255 offset:1856
	ds_load_u16_d16 v210, v255 offset:1600
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v47, v255 offset:2176
	ds_load_u16_d16_hi v48, v255 offset:2432
	ds_load_u16_d16_hi v49, v255 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v50, v255 offset:2944
	ds_load_u16_d16 v243, v255 offset:2880
	ds_load_u16_d16_hi v51, v255 offset:3200
	ds_load_u16_d16 v244, v255 offset:3136
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v52, v255 offset:3456
	ds_load_u16_d16 v247, v255 offset:3904
	ds_load_u16_d16 v246, v255 offset:3648
	ds_load_u16_d16 v245, v255 offset:3392
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v53, v255 offset:3712
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v54, v255 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v204, v255 offset:192
	ds_load_u16_d16_hi v207, v255 offset:960
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v206, v255 offset:704
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v205, v255 offset:448
	ds_load_u16_d16_hi v209, v255 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v210, v255 offset:1728
	ds_load_u16_d16_hi v241, v255 offset:2496
	ds_load_u16_d16_hi v240, v255 offset:2240
	ds_load_u16_d16_hi v211, v255 offset:1984
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v243, v255 offset:3008
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v244, v255 offset:3264
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v247, v255 offset:4032
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v246, v255 offset:3776
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v245, v255 offset:3520
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v212.l
	v_mov_b16_e64 v142.l, v213.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v55.l, v200.l
	v_mov_b16_e64 v55.h, v133.l
	v_mov_b16_e64 v56.l, v130.l
	v_mov_b16_e64 v56.h, v194.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[178:185], v[138:145], v[73:80]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v57.l, v202.l
	v_mov_b16_e64 v57.h, v135.l
	v_mov_b16_e64 v58.l, v198.l
	v_mov_b16_e64 v58.h, v196.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[47:54], v[98:105], v[73:80]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v59.l, v201.l
	v_mov_b16_e64 v59.h, v134.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[204:211], v[138:145], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v60.l, v131.l
	v_mov_b16_e64 v60.h, v195.l
	v_mov_b16_e64 v61.l, v203.l
	v_mov_b16_e64 v61.h, v136.l
	v_mov_b16_e64 v62.l, v199.l
	v_mov_b16_e64 v62.h, v197.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[240:247], v[98:105], v[65:72]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v133.l, v200.h
	v_mov_b16_e64 v194.l, v130.h
	v_mov_b16_e64 v195.l, v131.h
	v_mov_b16_e64 v135.l, v202.h
	v_mov_b16_e64 v196.l, v198.h
	v_mov_b16_e64 v197.l, v199.h
	v_wmma_f32_16x16x16_bf16 v[73:80], v[178:185], v[55:62], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[204:211], v[55:62], v[65:72]
	v_mov_b16_e64 v134.l, v201.h
	v_mov_b16_e64 v136.l, v203.h
	v_mov_b32_e32 v132, v135
	v_dual_mov_b32 v135, v195 :: v_dual_mov_b32 v130, v133
	v_mov_b32_e32 v137, v197
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v59, 0xffff0000, v171
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v131, v194
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v61, 0xffff0000, v173
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v133, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v62.h, v239.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v58, 0xffff0000, v170
	v_and_b32_e32 v60, 0xffff0000, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[47:54], v[130:137], v[73:80]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v49, 0xffff0000, v174
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v51, 0xffff0000, v175
	v_mov_b16_e64 v239.h, v175.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v52, 0xffff0000, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v48, v239, v239 :: v_dual_and_b32 v53, 0xffff0000, v177
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v176.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s2, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v239, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v62, 1, v62
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v177.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v62, v49, v62, 0x7fff
	v_mov_b16_e32 v49.l, v47.h
	v_mov_b16_e64 v49.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v170.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v171.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v47, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v172.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v173.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v47, v51, 0x7fff
	v_mov_b16_e32 v47.l, v48.h
	v_mov_b16_e64 v47.h, v239.l
	v_mov_b16_e32 v51.l, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v97, v48, v47, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s3, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v52, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s1
	v_mov_b16_e64 v51.h, v239.l
	v_cndmask_b16 v47.h, 0x7fff, v62.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s0
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s3
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e64 v52.h, v239.l
	v_cndmask_b16 v48.l, 0x7fff, v97.h, s2
	v_cmp_o_f32_e64 s2, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v50, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v49.l, 0x7fff, v51.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v50.h
	v_cmp_o_f32_e64 s0, v50, v50
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v52, v50, v52, 0x7fff
	v_mov_b16_e32 v50.l, v54.h
	v_mov_b16_e64 v50.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v51, v54, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v58, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v58.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v53.l, v50.h
	v_cmp_o_f32_e64 s1, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v50, v53, 0x7fff
	v_mov_b16_e32 v50.l, v55.h
	v_mov_b16_e64 v50.h, v239.l
	v_mov_b16_e32 v53.l, v56.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v54, v55, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v59, v59
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v55.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s2
	v_mov_b16_e32 v55.l, v50.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v50, v50
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v54, v60, v60 :: v_dual_and_b32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v55, v50, v55, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s0
	v_mov_b16_e32 v55.l, v54.h
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s1
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s3
	v_mov_b16_e64 v55.h, v239.l
	v_mov_b16_e64 v53.h, v239.l
	v_cmp_o_f32_e64 s0, v54, v54
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cmp_o_f32_e64 s1, v57, v57
	v_and_b32_e32 v55, 1, v55
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v54, v55, 0x7fff
	v_mov_b16_e32 v54.l, v57.h
	v_mov_b16_e64 v54.h, v239.l
	v_add3_u32 v53, v56, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v54, 1, v54
	v_cndmask_b16 v52.l, 0x7fff, v53.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v56, v56
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s0
	v_add3_u32 v54, v57, v54, 0x7fff
	v_mov_b16_e32 v57.l, v56.h
	v_mov_b16_e64 v57.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s1
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v57, v56, v57, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v158.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[240:247], v[130:137], v[65:72]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v136.h, v239.l
	v_cndmask_b16 v54.h, 0x7fff, v57.h, s2
	v_mov_b16_e32 v58.l, v56.h
	v_cmp_o_f32_e64 s3, v56, v56
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v132, 0xffff0000, v162
	v_and_b32_e32 v133, 0xffff0000, v163
	v_and_b32_e32 v134, 0xffff0000, v164
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v58, 1, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v135, 0xffff0000, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v58, v56, v58, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v58.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[47:54], v[138:145], v[73:80]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v49, 0xffff0000, v166
	v_and_b32_e32 v51, 0xffff0000, v167
	v_and_b32_e32 v52, 0xffff0000, v168
	v_and_b32_e32 v53, 0xffff0000, v169
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v136.l, v49.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v159.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v136, 1, v136
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v160.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v136, v49, v136, 0x7fff
	v_mov_b16_e64 v49.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v161.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v154.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v155.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v156.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v157.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v166.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v239, v239
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v167.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v49.l, v47.h
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v168.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v48, v48
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v169.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v47, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v162.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v239, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v163.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v47, v51, 0x7fff
	v_mov_b16_e32 v47.l, v48.h
	v_mov_b16_e64 v47.h, v239.l
	v_mov_b16_e32 v51.l, v50.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v164.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v137, v48, v47, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s3, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v52, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s1
	v_mov_b16_e64 v51.h, v239.l
	v_cndmask_b16 v47.h, 0x7fff, v136.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s0
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s3
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e64 v52.h, v239.l
	v_cndmask_b16 v48.l, 0x7fff, v137.h, s2
	v_cmp_o_f32_e64 s2, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v50, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v49.l, 0x7fff, v51.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v50.h
	v_cmp_o_f32_e64 s0, v50, v50
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v52, v50, v52, 0x7fff
	v_mov_b16_e32 v50.l, v54.h
	v_mov_b16_e64 v50.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v51, v54, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v132, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v132.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v165.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v53.l, v50.h
	v_cmp_o_f32_e64 s1, v50, v50
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v53, v50, v53, 0x7fff
	v_mov_b16_e32 v50.l, v97.h
	v_mov_b16_e64 v50.h, v239.l
	v_mov_b16_e64 v53.l, v130.h
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v97, v50, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v133, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v97.h, v239.l
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v97.l, v50.h
	v_cmp_o_f32_e64 s3, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v54, v134, v134 :: v_dual_and_b32 v97, 1, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v97, v50, v97, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v97.l, v54.h
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s1
	v_cndmask_b16 v52.h, 0x7fff, v97.h, s3
	v_mov_b16_e64 v97.h, v239.l
	v_mov_b16_e64 v53.h, v239.l
	v_cmp_o_f32_e64 s0, v54, v54
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_cmp_o_f32_e64 s1, v131, v131
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v97, v54, v97, 0x7fff
	v_mov_b16_e64 v54.l, v131.h
	v_mov_b16_e64 v54.h, v239.l
	v_add3_u32 v53, v130, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v54, 1, v54
	v_cndmask_b16 v52.l, 0x7fff, v53.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v130, v130
	v_cndmask_b16 v53.h, 0x7fff, v97.h, s0
	v_mov_b16_e64 v97.h, v239.l
	v_add3_u32 v54, v131, v54, 0x7fff
	v_mov_b16_e64 v131.l, v130.h
	v_mov_b16_e64 v131.h, v239.l
	v_cmp_o_f32_e64 s0, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s1
	v_and_b32_e32 v131, 1, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v131, v130, v131, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v150.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v131.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v132.l, v130.h
	v_cmp_o_f32_e64 s3, v130, v130
	v_cmp_o_f32_e64 s2, v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v132, v130, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v132.h, s3
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[47:54], v[138:145], v[65:72]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v47, 0xffff0000, v158
	v_and_b32_e32 v54, 0xffff0000, v157
	v_and_b32_e32 v48, 0xffff0000, v159
	v_and_b32_e32 v49, 0xffff0000, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v47, v47 :: v_dual_and_b32 v50, 0xffff0000, v161
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v53, 0xffff0000, v156
	v_and_b32_e32 v51, 0xffff0000, v154
	v_and_b32_e32 v52, 0xffff0000, v155
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v50, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v97.l, v47.h
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v97, 1, v97
	v_add3_u32 v97, v47, v97, 0x7fff
	v_mov_b16_e32 v47.l, v55.h
	v_mov_b16_e64 v47.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v106, v55, v47, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v48, v48
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v48, v47, v48, 0x7fff
	v_mov_b16_e32 v47.l, v56.h
	v_mov_b16_e64 v47.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s1
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v55, v56, v47, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v49, v49
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v49.h, v239.l
	v_mov_b16_e32 v56.l, v50.h
	v_mov_b16_e64 v56.h, v239.l
	v_cndmask_b16 v48.l, 0x7fff, v55.h, s2
	v_mov_b16_e32 v49.l, v47.h
	v_mov_b16_e32 v55.l, v57.h
	v_mov_b16_e64 v55.h, v239.l
	v_and_b32_e32 v56, 1, v56
	v_cmp_o_f32_e64 s3, v47, v47
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s2, v59, v59
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v56, v50, v56, 0x7fff
	v_mov_b16_e32 v56.l, v53.h
	v_add3_u32 v49, v47, v49, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v106.h, s0
	v_cmp_o_f32_e64 s0, v50, v50
	v_mov_b16_e32 v50.l, v58.h
	v_mov_b16_e64 v50.h, v239.l
	v_cndmask_b16 v47.h, 0x7fff, v97.h, vcc_lo
	v_add3_u32 v55, v57, v55, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s3
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.l, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_add3_u32 v55, v58, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	v_mov_b16_e32 v55.l, v60.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v51.l, v50.h
	v_cmp_o_f32_e64 s1, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v51, v50, v51, 0x7fff
	v_mov_b16_e32 v50.l, v59.h
	v_mov_b16_e64 v50.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s1
	v_cmp_o_f32_e64 s1, v61, v61
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v57, v59, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v52.h, v239.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v59, 0xffff0000, v147
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v51.l, 0x7fff, v57.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v52.l, v50.h
	v_cmp_o_f32_e64 s3, v50, v50
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v56.h, s0
	v_mov_b16_e64 v56.h, v239.l
	v_cmp_o_f32_e64 s0, v53, v53
	v_cndmask_b16 v50.l, 0x7fff, v55.h, vcc_lo
	v_mov_b16_e64 v55.h, v239.l
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s3
	v_and_b32_e32 v56, 1, v56
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_cmp_o_f32_e64 s3, v62, v62
	v_and_b32_e32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v56, v53, v56, 0x7fff
	v_mov_b16_e32 v53.l, v61.h
	v_mov_b16_e64 v53.h, v239.l
	v_add3_u32 v55, v60, v55, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v60, 0xffff0000, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v53, 1, v53
	v_cndmask_b16 v52.l, 0x7fff, v55.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v61, v53, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v54, v54
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v54.h, v239.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v61, 0xffff0000, v149
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v54.l, v53.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v53, v53
	v_and_b32_e32 v54, 1, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v53, v54, 0x7fff
	v_mov_b16_e32 v53.l, v62.h
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v58, v62, v53, 0x7fff
	v_cndmask_b16 v53.h, 0x7fff, v56.h, s0
	v_cndmask_b16 v53.l, 0x7fff, v57.h, s1
	v_mov_b16_e64 v62.h, v239.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v58.h, s3
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[73:80], v[47:54], v[98:105], v[73:80]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v49, 0xffff0000, v150
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v239, v239 :: v_dual_and_b32 v52, 0xffff0000, v152
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v51, 0xffff0000, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v49, v49, v49 :: v_dual_and_b32 v58, 0xffff0000, v146
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v151.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v53, 0xffff0000, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v62.l, v49.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v152.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v62, 1, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v48, v48
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v153.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v62, v49, v62, 0x7fff
	v_mov_b16_e32 v49.l, v47.h
	v_mov_b16_e64 v49.h, v239.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v146.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v49, 1, v49
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v147.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v47, v49, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v51.h, v239.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v239, v239
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v148.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v51.l, v47.h
	v_cmp_o_f32_e64 s1, v47, v47
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v239, v239
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v51, 1, v51
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v239.h, v149.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v47, v51, 0x7fff
	v_mov_b16_e32 v47.l, v48.h
	v_mov_b16_e64 v47.h, v239.l
	v_mov_b16_e32 v51.l, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v97, v48, v47, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v52, v52
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v48.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s3, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v52, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s1
	v_mov_b16_e64 v51.h, v239.l
	v_cndmask_b16 v47.h, 0x7fff, v62.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b16 v47.l, 0x7fff, v49.h, s0
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s3
	v_and_b32_e32 v51, 1, v51
	v_mov_b16_e64 v52.h, v239.l
	v_cndmask_b16 v48.l, 0x7fff, v97.h, s2
	v_cmp_o_f32_e64 s2, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v50, v51, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v53, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v53.h, v239.l
	v_cndmask_b16 v49.l, 0x7fff, v51.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v50.h
	v_cmp_o_f32_e64 s0, v50, v50
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v52, v50, v52, 0x7fff
	v_mov_b16_e32 v50.l, v54.h
	v_mov_b16_e64 v50.h, v239.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v51, v54, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v58, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v58.h, v239.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v53.l, v50.h
	v_cmp_o_f32_e64 s1, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v50, v53, 0x7fff
	v_mov_b16_e32 v50.l, v55.h
	v_mov_b16_e64 v50.h, v239.l
	v_mov_b16_e32 v53.l, v56.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v54, v55, v50, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v50, v59, v59
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v55.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s2
	v_mov_b16_e32 v55.l, v50.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v50, v50
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v54, v60, v60 :: v_dual_and_b32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v55, v50, v55, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s0
	v_mov_b16_e32 v55.l, v54.h
	v_cndmask_b16 v50.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s1
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s3
	v_mov_b16_e64 v55.h, v239.l
	v_mov_b16_e64 v53.h, v239.l
	v_cmp_o_f32_e64 s0, v54, v54
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cmp_o_f32_e64 s1, v57, v57
	v_and_b32_e32 v55, 1, v55
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v54, v55, 0x7fff
	v_mov_b16_e32 v54.l, v57.h
	v_mov_b16_e64 v54.h, v239.l
	v_add3_u32 v53, v56, v53, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v54, 1, v54
	v_cndmask_b16 v52.l, 0x7fff, v53.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v56, v56
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s0
	v_add3_u32 v54, v57, v54, 0x7fff
	v_mov_b16_e32 v57.l, v56.h
	v_mov_b16_e64 v57.h, v239.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s1
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v57, v56, v57, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v239, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v54.h, 0x7fff, v57.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v58.l, v56.h
	v_cmp_o_f32_e64 s3, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v58, 1, v58
	v_add3_u32 v58, v56, v58, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v54.l, 0x7fff, v58.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[65:72], v[47:54], v[98:105], v[65:72]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
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
	s_or_b32 s66, s65, 20
	s_or_b32 s67, s65, 21
	s_or_b32 s78, s65, 22
	s_or_b32 s79, s65, 23
	s_or_b32 s80, s65, 24
	s_or_b32 s84, s65, 25
	s_or_b32 s93, s65, 26
	s_or_b32 s94, s65, 27
	s_or_b32 s95, s65, 28
	s_or_b32 s96, s65, 29
	s_or_b32 s97, s65, 30
	s_or_b32 s98, s65, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s65, s18
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s0, s18
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s1, s18
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s2, s18
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s3, s18
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s6, s18
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s7, s18
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s8, s18
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s9, s18
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s10, s18
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s11, s18
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s12, s18
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s14, s18
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s15, s18
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s16, s18
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s17, s18
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s26, s18
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s27, s18
	s_cselect_b32 s27, -1, 0
	s_cmp_lt_i32 s50, s18
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s51, s18
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s66, s18
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s67, s18
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s78, s18
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s79, s18
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s80, s18
	s_cselect_b32 s82, -1, 0
	s_cmp_lt_i32 s84, s18
	s_cselect_b32 s26, -1, 0
	s_cmp_lt_i32 s93, s18
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s94, s18
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s95, s18
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s96, s18
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s97, s18
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s98, s18
	s_cselect_b32 s50, -1, 0
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s84, s65, s22
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s55
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s0, s84, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v47, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s0, v1, 1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s54
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x1
	buffer_load_u16 v114, v47, s[40:43], 0 offen
	buffer_load_u16 v115, v48, s[40:43], 0 offen
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v116, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v117, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s0, v1, 1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v118, v47, s[40:43], 0 offen
	buffer_load_u16 v119, v48, s[40:43], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s0, v253, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v120, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v121, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v122, v47, s[40:43], 0 offen
	buffer_load_u16 v123, v48, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v254, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v48, s0, v43, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v124, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v42, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v125, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v37, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	s_clause 0x1
	buffer_load_u16 v126, v47, s[40:43], 0 offen
	buffer_load_u16 v127, v48, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v28, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v128, v47, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v236, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	buffer_load_u16 v129, v47, s[40:43], 0 offen
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v47, s0, v1, 1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v48, s0, v1, 1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v49, s0, v1, 1
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v50, s0, v1, 1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v51, s0, v1, 1
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s0, v1, 1
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s0, v1, 1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	s_clause 0x7
	buffer_load_u16 v113, v53, s[40:43], 0 offen
	buffer_load_u16 v198, v49, s[40:43], 0 offen
	buffer_load_u16 v199, v48, s[40:43], 0 offen
	buffer_load_u16 v200, v47, s[40:43], 0 offen
	buffer_load_u16 v130, v54, s[40:43], 0 offen
	buffer_load_u16 v131, v52, s[40:43], 0 offen
	buffer_load_u16 v132, v51, s[40:43], 0 offen
	buffer_load_u16 v133, v50, s[40:43], 0 offen
	v_add_lshl_u32 v47, s0, v33, 1
	v_add_lshl_u32 v48, s0, v38, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v49, s0, v214, 1
	v_add_lshl_u32 v50, s0, v32, 1
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v51, s0, v230, 1
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v52, s0, v64, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s68
	v_add_nc_u32_e32 v54, s35, v236
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v53, s0, v223, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v54, s0, v54, 1
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	s_clause 0x7
	buffer_load_u16 v134, v53, s[40:43], 0 offen
	buffer_load_u16 v135, v50, s[40:43], 0 offen
	buffer_load_u16 v136, v48, s[40:43], 0 offen
	buffer_load_u16 v194, v47, s[40:43], 0 offen
	buffer_load_u16 v145, v54, s[40:43], 0 offen
	buffer_load_u16 v195, v52, s[40:43], 0 offen
	buffer_load_u16 v196, v51, s[40:43], 0 offen
	buffer_load_u16 v197, v49, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v53, v46
	v_mov_b32_e32 v47, v46
	v_mov_b32_e32 v48, v46
	v_mov_b32_e32 v49, v46
	v_mov_b32_e32 v50, v46
	v_mov_b32_e32 v51, v46
	v_mov_b32_e32 v52, v46
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_b16 v215, v114
	ds_store_b16 v215, v118 offset:1024
	ds_store_b16 v215, v122 offset:2048
	ds_store_b16 v215, v126 offset:3072
	s_waitcnt vmcnt(12)
	ds_store_b16 v216, v200
	s_waitcnt vmcnt(8)
	ds_store_b16 v216, v133 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b16 v216, v194 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v216, v197 offset:3072
	ds_store_b16 v217, v115
	ds_store_b16 v217, v119 offset:1024
	ds_store_b16 v217, v123 offset:2048
	ds_store_b16 v217, v127 offset:3072
	ds_store_b16 v218, v199
	ds_store_b16 v218, v132 offset:1024
	ds_store_b16 v218, v136 offset:2048
	ds_store_b16 v218, v196 offset:3072
	ds_store_b16 v219, v116
	ds_store_b16 v219, v120 offset:1024
	ds_store_b16 v219, v124 offset:2048
	ds_store_b16 v219, v128 offset:3072
	ds_store_b16 v220, v198
	ds_store_b16 v220, v131 offset:1024
	ds_store_b16 v220, v135 offset:2048
	ds_store_b16 v220, v195 offset:3072
	ds_store_b16 v221, v117
	ds_store_b16 v221, v121 offset:1024
	ds_store_b16 v221, v125 offset:2048
	ds_store_b16 v221, v129 offset:3072
	ds_store_b16 v222, v113
	ds_store_b16 v222, v130 offset:1024
	ds_store_b16 v222, v134 offset:2048
	ds_store_b16 v222, v145 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v112, v53 :: v_dual_mov_b32 v111, v52
	v_dual_mov_b32 v110, v51 :: v_dual_mov_b32 v109, v50
	v_dual_mov_b32 v108, v49 :: v_dual_mov_b32 v107, v48
	v_dual_mov_b32 v106, v47 :: v_dual_mov_b32 v105, v46
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off
	scratch_load_b128 v[51:54], off, off offset:16
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v201, 0, v1
	ds_load_b128 v[137:140], v201
	ds_load_b128 v[141:144], v35
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off offset:32
	scratch_load_b128 v[51:54], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v36
	ds_load_b128 v[141:144], v39
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off offset:64
	scratch_load_b128 v[51:54], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v40
	ds_load_b128 v[141:144], v41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[47:50], off, off offset:96
	scratch_load_b128 v[51:54], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[137:140], v44
	ds_load_b128 v[141:144], v45
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[47:54], v[137:144], v[105:112]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v48, off, off offset:128
	scratch_load_b32 v49, off, off offset:132
	scratch_load_b32 v50, off, off offset:136
	scratch_load_b32 v51, off, off offset:140
	scratch_load_b32 v52, off, off offset:144
	scratch_load_b32 v53, off, off offset:148
	scratch_load_b32 v54, off, off offset:152
	v_lshrrev_b32_e32 v47, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v47, s65, v47
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v47
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v98, s31, v47
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v48, s65, v48
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v49, s65, v49
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v50, s65, v50
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v51, s65, v51
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v52, s65, v52
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v53, s65, v53
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v54, s65, v54
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s18, v48
	v_cmp_gt_i32_e64 s1, s18, v49
	v_cmp_gt_i32_e64 s2, s18, v50
	v_cmp_gt_i32_e64 s3, s18, v51
	v_cmp_gt_i32_e64 s6, s18, v52
	v_cmp_gt_i32_e64 s7, s18, v53
	v_cmp_gt_i32_e64 s8, s18, v54
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v99, s31, v48
	v_add_nc_u32_e32 v100, s31, v49
	v_add_nc_u32_e32 v101, s31, v50
	v_add_nc_u32_e32 v102, s31, v51
	v_add_nc_u32_e32 v103, s31, v52
	v_add_nc_u32_e32 v104, s31, v53
	v_add_nc_u32_e32 v137, s31, v54
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s0
	s_and_b32 s95, s5, s1
	s_and_b32 s93, s5, s2
	s_and_b32 s100, s5, s3
	s_and_b32 s98, s5, s6
	s_and_b32 s96, s5, s7
	s_and_b32 s94, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v225, v98
	v_cmp_le_i32_e64 s0, v225, v99
	v_cmp_le_i32_e64 s1, v225, v100
	v_cmp_le_i32_e64 s2, v225, v101
	v_cmp_le_i32_e64 s3, v225, v102
	v_cmp_le_i32_e64 s6, v225, v103
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s9, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v225, v104
	v_cmp_le_i32_e64 s8, v225, v137
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
	v_subrev_nc_u32_e32 v47, s29, v98
	v_subrev_nc_u32_e32 v48, s29, v99
	v_subrev_nc_u32_e32 v49, s29, v100
	v_subrev_nc_u32_e32 v50, s29, v101
	v_subrev_nc_u32_e32 v51, s29, v102
	v_subrev_nc_u32_e32 v52, s29, v103
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v225, v47
	v_cmp_ge_i32_e64 s0, v225, v48
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v47, s30, v98
	v_add_nc_u32_e32 v48, s30, v99
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v53, s29, v104
	v_subrev_nc_u32_e32 v54, s29, v137
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v225, v49
	v_cmp_ge_i32_e64 s2, v225, v50
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v49, s30, v100
	v_add_nc_u32_e32 v50, s30, v101
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v225, v51
	v_cmp_ge_i32_e64 s6, v225, v52
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v51, s30, v102
	v_add_nc_u32_e32 v52, s30, v103
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v225, v47
	v_cmp_le_i32_e64 s10, v225, v48
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v225, v53
	v_cmp_ge_i32_e64 s8, v225, v54
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v53, s30, v104
	v_add_nc_u32_e32 v54, s30, v137
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v225, v49
	v_cmp_le_i32_e64 s12, v225, v50
	v_cmp_le_i32_e64 s14, v225, v51
	v_cmp_le_i32_e64 s15, v225, v52
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s0, s0, s10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v225, v53
	v_cmp_le_i32_e64 s17, v225, v54
	.loc	1 679 21                        ; attention_backward.py:679:21
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
	scratch_load_b64 v[1:2], off, off offset:528 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_u8 v101, v[47:48], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s97
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[1:2], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_hi_u8 v100, v[47:48], off
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
	scratch_load_b64 v[1:2], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_hi_u8 v98, v[47:48], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s93
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[1:2], off, off offset:488 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_u8 v98, v[47:48], off
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
	scratch_load_b64 v[1:2], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_hi_u8 v101, v[47:48], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s98
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[1:2], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_u8 v100, v[47:48], off
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
	scratch_load_b64 v[1:2], off, off offset:512 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_hi_u8 v99, v[47:48], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s94
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[1:2], off, off offset:520 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v47, s0, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v48, 31, v47
	v_add_co_u32 v47, vcc_lo, s20, v47
	v_add_co_ci_u32_e64 v48, null, s21, v48, vcc_lo
	global_load_d16_u8 v99, v[47:48], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow407
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:536
	scratch_load_b32 v55, off, off offset:540
	scratch_load_b32 v56, off, off offset:544
	s_branch .LBB0_30
.LBB0_29:
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 552
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 552
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21860
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 552
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 552
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outfloat32_doutbfloat16_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 137
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
