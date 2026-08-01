	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v54, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v19, 0x1b0, v23
	v_xor_b32_e32 v20, 0x240, v23
	v_xor_b32_e32 v21, 0x2d0, v23
	v_xor_b32_e32 v22, 0x360, v23
	v_add_nc_u32_e32 v220, 0, v23
	v_add_nc_u32_e32 v223, 0, v19
	v_add_nc_u32_e32 v224, 0, v20
	v_add_nc_u32_e32 v225, 0, v21
	v_add_nc_u32_e32 v226, 0, v22
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
	v_add_nc_u32_e32 v221, 0, v1
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s21, s4, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v222, 0, v2
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
	v_add_nc_u32_e32 v227, 0, v23
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
	s_and_b32 s5, s7, s4
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
	s_and_b32 s5, s9, s4
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
	s_and_b32 s5, s11, s4
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
	s_and_b32 s5, vcc_lo, s4
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
	s_and_b32 s5, s6, s4
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
	s_and_b32 s5, s8, s4
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
	s_and_b32 s5, s10, s4
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
	s_and_b32 s5, s12, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v41, 0x80000000, v19, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s18, 31
	s_mov_b32 s46, 0
	.loc	1 587 21 is_stmt 0              ; attention_backward.py:587:21
	s_ashr_i32 s5, s2, 31
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	s_waitcnt vmcnt(15)
	ds_store_b16 v220, v11
	s_waitcnt vmcnt(9)
	ds_store_b16 v220, v8 offset:1024
	ds_store_b16 v221, v12
	s_waitcnt vmcnt(8)
	ds_store_b16 v221, v10 offset:1024
	ds_store_b16 v222, v3
	s_waitcnt vmcnt(7)
	ds_store_b16 v222, v16 offset:1024
	ds_store_b16 v223, v4
	s_waitcnt vmcnt(6)
	ds_store_b16 v223, v9 offset:1024
	ds_store_b16 v224, v5
	s_waitcnt vmcnt(5)
	ds_store_b16 v224, v13 offset:1024
	ds_store_b16 v225, v6
	s_waitcnt vmcnt(4)
	ds_store_b16 v225, v14 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b16 v226, v7
	s_waitcnt vmcnt(2)
	ds_store_b16 v226, v17 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v227, v18
	s_waitcnt vmcnt(0)
	ds_store_b16 v227, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_clause 0xf
	buffer_load_u16 v8, v20, s[24:27], 0 offen
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
	v_lshl_or_b32 v1, v54, 7, v2
	v_xor_b32_e32 v5, 16, v1
	v_add_nc_u32_e32 v4, 0, v1
	v_xor_b32_e32 v6, 32, v1
	v_xor_b32_e32 v7, 48, v1
	v_xor_b32_e32 v9, 64, v1
	v_add_nc_u32_e32 v5, 0, v5
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[47:50], v5
	v_add_nc_u32_e32 v6, 0, v6
	v_add_nc_u32_e32 v7, 0, v7
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off   ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:16 ; 16-byte Folded Spill
	ds_load_b128 v[43:46], v6
	ds_load_b128 v[47:50], v7
	v_xor_b32_e32 v10, 0x50, v1
	v_add_nc_u32_e32 v9, 0, v9
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[43:46], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[47:50], off offset:48 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v10, 0, v10
	ds_load_b128 v[43:46], v9
	ds_load_b128 v[47:50], v10
	v_xor_b32_e32 v11, 0x60, v1
	v_xor_b32_e32 v12, 0x70, v1
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
	v_mov_b16_e32 v17.h, v8.l
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
	s_and_b32 s46, s20, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s59, s59, s5
.LBB0_2:
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, 0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v21.l, v19.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v19.l
	v_lshrrev_b16 v40.l, 4, v16.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v20.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v40.h, v37.h
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v19
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v45, 0, v37, s7
	.loc	1 554 72 is_stmt 0              ; attention_backward.py:554:72
	v_and_b16 v23.l, v15.l, 15
	v_and_b16 v24.l, v16.l, 15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v29
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v21.l
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_and_b32_e32 v8, 32, v0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v25.l, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v20.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v37.h
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v46, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v45
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v32, 15, v16
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v22.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v26.l, v18.l, 15
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s9
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v27.l, v13.l, 15
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v32
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v28.l, v14.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v37.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v17.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v18
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v37.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s11
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v18.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v37.h
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v34
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v17
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s6
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v13.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s8
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v33
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v20
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v14.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s10
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s5, s2, s40
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v30
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v55, 16, v0
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v37.h
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v47, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v23.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v38
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v13
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v37.h
	v_mov_b16_e32 v19.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v48, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v24.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v52, -16, v35
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v39
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v37.h
	v_mov_b16_e32 v21.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v32, v32, v49, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v25.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v40
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v37.h
	v_mov_b16_e32 v23.l, v37.h
	v_mov_b16_e32 v24.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v41
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v37.h
	v_mov_b16_e32 v26.l, v37.h
	v_mov_b16_e32 v16.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v51, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v27.l
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v36, 15, v14
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v42
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v37.h
	v_mov_b16_e32 v14.l, v37.h
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v35, v35, v52, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v53, -16, v36
	.loc	1 557 34                        ; attention_backward.py:557:34
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
	v_cvt_f32_i32_e32 v37, v45
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v18, v37, v18
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v17, v29, v17
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s21, s2
	s_cselect_b32 s5, s22, s5
	s_add_i32 s21, s2, 1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v49, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cmp_ge_u32 s5, s40
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v20, v38, v20
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v17, 16, 1
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v230, s14, v54
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v50, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v19, v30, v19
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v51, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v31, v21
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s21, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s5, s19, v230
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s20
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v52, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s19, s2, s20
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v44, v53, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v42, v28
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v22, v39, v22 :: v_dual_mul_f32 v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_mul_f32_e32 v30, v35, v16
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v16, v18, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v31, v43, v14
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v29, 0x7fff
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v32, v36, v15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s2, v18, v18
	v_add3_u32 v15, v18, v16, 0x7fff
	v_bfe_u32 v16, v19, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v29, v44, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v20, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v24, v40, v24
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v21, 16, 1
	v_add3_u32 v16, v19, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v14, v20, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v20, v20
	v_bfe_u32 v17, v23, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v25, v33, v25
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v21, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v14.l, 0x7fff, v16.h, vcc_lo
	v_bfe_u32 v16, v22, 16, 1
	v_bfe_u32 v18, v24, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v26, v41, v26 :: v_dual_mul_f32 v27, v34, v27
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v23, v23
	s_load_b128 s[36:39], s[0:1], 0x50
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
	v_lshrrev_b32_e32 v56, 1, v8
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
	ds_store_b16 v220, v13
	ds_store_b16 v220, v17 offset:1024
	ds_store_b16_d16_hi v221, v13
	ds_store_b16_d16_hi v221, v17 offset:1024
	ds_store_b16 v222, v14
	ds_store_b16 v222, v18 offset:1024
	ds_store_b16_d16_hi v223, v14
	ds_store_b16_d16_hi v223, v18 offset:1024
	ds_store_b16 v224, v15
	ds_store_b16 v224, v19 offset:1024
	ds_store_b16_d16_hi v225, v15
	ds_store_b16_d16_hi v225, v19 offset:1024
	ds_store_b16 v226, v16
	ds_store_b16 v226, v20 offset:1024
	ds_store_b16_d16_hi v227, v16
	ds_store_b16_d16_hi v227, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph133
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[24:27], v12
	ds_load_b128 v[20:23], v11
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v14, 2, v0
	v_lshlrev_b32_e32 v13, 5, v0
	v_and_b32_e32 v15, 2, v0
	v_lshrrev_b32_e32 v17, 1, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v16, 52, v14
	v_dual_mov_b32 v42, v97 :: v_dual_and_b32 v13, 0x180, v13
	v_mov_b32_e32 v46, v97
	v_lshrrev_b32_e32 v18, 5, v8
	v_lshrrev_b32_e32 v19, 1, v0
	v_mov_b32_e32 v44, v97
	v_or3_b32 v13, v16, v15, v13
	s_clause 0x3
	s_load_b128 s[40:43], s[0:1], 0x80
	s_load_b64 s[44:45], s[0:1], 0x0
	s_load_b256 s[20:27], s[0:1], 0x30
	s_load_b32 s0, s[0:1], 0x90
	v_mov_b32_e32 v81, 0
	v_or3_b32 v17, v13, v17, v18
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:128
	scratch_store_b128 off, v[24:27], off offset:144
	ds_load_b128 v[24:27], v10
	ds_load_b128 v[20:23], v9
	v_dual_mov_b32 v48, v97 :: v_dual_and_b32 v9, 12, v19
	v_xor_b32_e32 v13, 0xcc0, v14
	v_xor_b32_e32 v15, 0xdd0, v14
	v_xor_b32_e32 v16, 0xee0, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 7, v9
	s_xor_b32 s2, s3, s17
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s1, s14, s31
	s_ashr_i32 s2, s2, 31
	s_max_i32 s1, s1, 0
	s_xor_b32 s6, s15, s2
	s_and_b32 s1, s1, 0x7fffffe0
	s_sub_i32 s2, s6, s2
	s_max_u32 s1, s46, s1
	s_mul_i32 s6, s2, s17
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v231, v56, v54
	.loc	1 0 0 is_stmt 0                 ; attention_backward.py:0
	s_sub_i32 s3, s3, s6
	.loc	1 602 9 is_stmt 1               ; attention_backward.py:602:9
	s_and_b32 s6, s58, exec_lo
	s_cselect_b32 s60, s1, s46
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:160
	scratch_store_b128 off, v[24:27], off offset:176
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[22:25], v7
	ds_load_b128 v[18:21], v6
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s63, s40, 0x3fb8aa3b
	s_cmp_lt_i32 s60, s59
	s_mov_b32 s28, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s61, s19, s3
	.loc	1 662 35                        ; attention_backward.py:662:35
	s_mul_i32 s62, s2, s16
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s41, s2, s41
	s_cselect_b32 s64, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:776
	scratch_store_b32 off, v56, off offset:784
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[18:21], off offset:196
	scratch_store_b128 off, v[22:25], off offset:212
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[22:25], v5
	ds_load_b128 v[18:21], v4
	v_lshrrev_b32_e32 v4, 4, v8
	v_lshrrev_b32_e32 v5, 2, v55
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[18:21], off offset:228
	scratch_store_b128 off, v[22:25], off offset:244
	v_or3_b32 v20, v3, v2, v4
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshl_or_b32 v21, v8, 6, v1
	v_mul_lo_u32 v1, s0, v230
	v_dual_mov_b32 v34, v97 :: v_dual_lshlrev_b32 v19, 3, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v3, 4, v2
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v17, off offset:192
	scratch_store_b32 off, v55, off offset:780
	scratch_store_b32 off, v20, off offset:264
	scratch_store_b32 off, v19, off offset:260
	scratch_store_b32 off, v3, off offset:276
	v_mad_u64_u32 v[11:12], null, s43, v3, v[1:2]
	v_or3_b32 v18, v5, v4, v19
	v_or_b32_e32 v4, 8, v2
	v_or_b32_e32 v5, 12, v2
	v_or_b32_e32 v6, 16, v2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:712
	scratch_store_b32 off, v4, off offset:280
	v_mad_u64_u32 v[3:4], null, s43, v4, v[1:2]
	v_or_b32_e32 v7, 20, v2
	v_or_b32_e32 v9, 24, v2
	v_or_b32_e32 v10, 28, v2
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:720
	scratch_store_b32 off, v5, off offset:284
	v_mad_u64_u32 v[3:4], null, s43, v5, v[1:2]
	v_xor_b32_e32 v5, 0x440, v14
	v_xor_b32_e32 v11, 0xaa0, v14
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:728
	scratch_store_b32 off, v6, off offset:288
	v_mad_u64_u32 v[3:4], null, s43, v6, v[1:2]
	v_xor_b32_e32 v6, 0x550, v14
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:736
	scratch_store_b32 off, v7, off offset:292
	v_mad_u64_u32 v[3:4], null, s43, v7, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:744
	scratch_store_b32 off, v9, off offset:296
	v_mad_u64_u32 v[3:4], null, s43, v9, v[1:2]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:752
	scratch_store_b32 off, v10, off offset:300
	v_mad_u64_u32 v[3:4], null, s43, v10, v[1:2]
	v_mad_u64_u32 v[1:2], null, s43, v2, v[1:2]
	v_mov_b32_e32 v43, v97
	v_mov_b32_e32 v36, v97
	v_xor_b32_e32 v7, 0x660, v14
	v_xor_b32_e32 v9, 0x880, v14
	v_xor_b32_e32 v10, 0x990, v14
	v_xor_b32_e32 v12, 0xbb0, v14
	scratch_store_b64 off, v[1:2], off offset:768 ; 8-byte Folded Spill
	v_mul_u32_u24_e32 v1, 0x110, v54
	v_lshlrev_b32_e32 v2, 2, v55
	v_mov_b32_e32 v38, v97
	v_mov_b32_e32 v40, v97
	v_mov_b32_e32 v90, v97
	v_lshl_or_b32 v22, v8, 7, v1
	v_dual_mov_b32 v92, v97 :: v_dual_lshlrev_b32 v1, 1, v54
	v_mov_b32_e32 v94, v97
	v_mov_b32_e32 v96, v97
	v_mov_b32_e32 v82, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v23, v1, v2, v8
	v_add3_u32 v246, 0, v8, v1
	v_lshl_add_u32 v1, v8, 1, 0
	v_xor_b32_e32 v2, 0x110, v14
	v_xor_b32_e32 v8, 0x770, v14
	scratch_store_b32 off, v23, off offset:308 ; 4-byte Folded Spill
	v_mov_b32_e32 v84, v97
	v_lshl_add_u32 v247, v54, 2, v1
	v_dual_mov_b32 v86, v97 :: v_dual_lshlrev_b32 v1, 3, v0
	v_mov_b32_e32 v88, v97
	v_mov_b32_e32 v45, v97
	v_mov_b32_e32 v47, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v1, 48, v1
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v35, v97
	v_mov_b32_e32 v37, v97
	v_mov_b32_e32 v39, v97
	v_lshl_or_b32 v24, v54, 6, v1
	v_xor_b32_e32 v1, 16, v21
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v91, v97
	v_mov_b32_e32 v93, v97
	v_mov_b32_e32 v95, v97
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b64 off, v[3:4], off offset:760 ; 8-byte Folded Spill
	v_xor_b32_e32 v3, 0x220, v14
	v_xor_b32_e32 v4, 0x330, v14
	v_xor_b32_e32 v14, 0xff0, v14
	scratch_store_b32 off, v1, off offset:316 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:320 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:324 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:328 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x50, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:332 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:336
	scratch_store_b32 off, v21, off offset:272
	v_xor_b32_e32 v1, 0x70, v21
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:344 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x120, v18
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:348
	scratch_store_b32 off, v18, off offset:268
	v_xor_b32_e32 v1, 0x1b0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v17
	v_add_nc_u32_e32 v219, 0, v1
	v_xor_b32_e32 v1, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v237, 0, v1
	v_xor_b32_e32 v1, 48, v17
	v_add_nc_u32_e32 v238, 0, v1
	v_add_nc_u32_e32 v1, 0, v2
	v_dual_mov_b32 v83, v97 :: v_dual_add_nc_u32 v2, s56, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:356
	scratch_store_b32 off, v2, off offset:492
	v_add_nc_u32_e32 v1, 0, v3
	v_dual_mov_b32 v85, v97 :: v_dual_add_nc_u32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:360
	scratch_store_b32 off, v2, off offset:500
	v_add_nc_u32_e32 v1, 0, v4
	v_dual_mov_b32 v87, v97 :: v_dual_add_nc_u32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:364
	scratch_store_b32 off, v2, off offset:508
	v_add_nc_u32_e32 v1, 0, v5
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:368
	scratch_store_b32 off, v2, off offset:516
	v_add_nc_u32_e32 v1, 0, v6
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:372
	scratch_store_b32 off, v2, off offset:524
	v_add_nc_u32_e32 v1, 0, v7
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:376
	scratch_store_b32 off, v2, off offset:532
	v_add_nc_u32_e32 v1, 0, v8
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:380
	scratch_store_b32 off, v2, off offset:540
	v_add_nc_u32_e32 v1, 0, v9
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:384
	scratch_store_b32 off, v2, off offset:548
	v_add_nc_u32_e32 v1, 0, v10
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v2, off offset:556
	v_add_nc_u32_e32 v1, 0, v11
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:392
	scratch_store_b32 off, v2, off offset:564
	v_add_nc_u32_e32 v1, 0, v12
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:396
	scratch_store_b32 off, v2, off offset:572
	v_add_nc_u32_e32 v1, 0, v13
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:400
	scratch_store_b32 off, v2, off offset:580
	v_add_nc_u32_e32 v1, 0, v15
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:404
	scratch_store_b32 off, v2, off offset:588
	v_add_nc_u32_e32 v1, 0, v16
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:408
	scratch_store_b32 off, v2, off offset:596
	v_add_nc_u32_e32 v1, 0, v14
	v_add_nc_u32_e32 v2, s56, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:412
	scratch_store_b32 off, v2, off offset:604
	v_xor_b32_e32 v1, 16, v22
	v_add_nc_u32_e32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:612 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v22
	scratch_store_b32 off, v2, off offset:620 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:628 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:420 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 48, v22
	scratch_store_b32 off, v2, off offset:636 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 64, v22
	scratch_store_b32 off, v2, off offset:652 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:660
	scratch_store_b32 off, v1, off offset:428
	v_xor_b32_e32 v1, 0x50, v22
	v_add_nc_u32_e32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x60, v22
	scratch_store_b32 off, v2, off offset:676 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x70, v22
	scratch_store_b32 off, v2, off offset:692 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v2, off offset:700 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x80, v22
	scratch_store_b32 off, v2, off offset:708 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v80, v2 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v22
	v_add_nc_u32_e32 v236, s56, v2
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xa0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xb0, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:456 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xc0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xd0, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0xe0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:468
	scratch_store_b32 off, v22, off offset:304
	v_xor_b32_e32 v1, 0xf0, v22
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 0x90, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, 0, v1
	v_xor_b32_e32 v1, 0x120, v23
	v_add_nc_u32_e32 v17, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v18, 0, v1
	v_xor_b32_e32 v1, 16, v24
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:480
	scratch_store_b32 off, v24, off offset:312
	v_xor_b32_e32 v1, 48, v24
	v_add_nc_u32_e32 v1, 0, v1
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v1, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v22, 0, v1
	v_xor_b32_e32 v1, 32, v20
	v_add_nc_u32_e32 v23, 0, v1
	v_xor_b32_e32 v1, 48, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v24, 0, v1
	v_xor_b32_e32 v1, 64, v20
	v_add_nc_u32_e32 v25, 0, v1
	v_xor_b32_e32 v1, 0x50, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v26, 0, v1
	v_xor_b32_e32 v1, 0x60, v20
	v_add_nc_u32_e32 v27, 0, v1
	v_xor_b32_e32 v1, 0x70, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v28, 0, v1
	v_xor_b32_e32 v1, 0x90, v19
	v_add_nc_u32_e32 v29, 0, v1
	v_xor_b32_e32 v1, 0x120, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v30, 0, v1
	v_xor_b32_e32 v1, 0x1b0, v19
	v_add_nc_u32_e32 v31, 0, v1
	v_xor_b32_e32 v1, 0x240, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v32, 0, v1
	v_xor_b32_e32 v1, 0x2d0, v19
	v_add_nc_u32_e32 v49, 0, v1
	v_xor_b32_e32 v1, 0x360, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v50, 0, v1
	v_xor_b32_e32 v1, 0x3f0, v19
	v_add_nc_u32_e32 v51, 0, v1
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add_nc_u32_e32 v1, s35, v0
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:560 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:576 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:592 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:600 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:608 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:616 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:632 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:640 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:648 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:656 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:680 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:688 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:696 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	scratch_store_b32 off, v1, off offset:704 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s35, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v79, v1 :: v_dual_add_nc_u32 v232, s35, v1
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
	s_mul_i32 s23, s0, s42
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_mul_i32 s22, s22, s18
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s23, s23, s41
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 25 is_stmt 1              ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_and_b16 v2.h, 0xff, v101.h
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_dual_mov_b32 v102, v97 :: v_dual_add_nc_u32 v73, 0x400, v247
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v74, 0x800, v247
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v104, v97 :: v_dual_add_nc_u32 v75, 0xc00, v247
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.h
	v_and_b16 v2.h, 0xff, v101.l
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v103, v97 :: v_dual_add_nc_u32 v76, 0x1000, v247
	v_mov_b32_e32 v101, v97
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s3, s100, vcc_lo
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s0, 0, v2.h
	v_and_b16 v2.h, 0xff, v98.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v5, 0, 1, s3
	s_and_b32 s0, s99, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v2.h
	s_waitcnt vmcnt(1)
	v_and_b16 v2.h, 0xff, v100.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v6, 0, 1, s0
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v2.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v2.h, 8, v5.l
	s_and_b32 s0, s98, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v2.h, v6.l, v2.h
	v_cndmask_b32_e64 v5, 0, 1, s0
	s_and_b32 s0, s97, s1
	v_add_nc_u32_e32 v70, s56, v236
	v_cndmask_b32_e64 v6, 0, 1, s0
	v_lshlrev_b16 v3.h, 8, v5.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.h, v6.l, v3.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, 0, v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	ds_store_b16_d16_hi v5, v2
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v2.h, 0xff, v99.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v2.h
	v_and_b16 v2.h, 0xff, v98.h
	v_cmp_ne_u16_e64 s0, 0, v2.h
	v_and_b16 v2.h, 0xff, v100.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s0, s93, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v2.h
	v_and_b16 v2.h, 0xff, v99.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s96, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v2.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v5, 0, 1, s1
	s_and_b32 s1, s95, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v2.h, 8, v5.l
	v_cndmask_b32_e64 v5, 0, 1, s1
	s_and_b32 s1, s94, s2
	v_or_b16 v2.h, v5.l, v2.h
	v_cndmask_b32_e64 v5, 0, 1, s1
	.loc	1 708 21 is_stmt 1              ; attention_backward.py:708:21
	s_mul_i32 s1, s55, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v68, s1, v80, 2
	v_add_lshl_u32 v69, s1, v236, 2
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v4.h, 8, v5.l
	v_cndmask_b32_e64 v5, 0, 1, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s54, s46
	v_add_lshl_u32 v70, s1, v70, 2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_or_b16 v4.h, v5.l, v4.h
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v3
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v2
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v1, v4
	v_mov_b32_e32 v1, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v5, s65, v1
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v6, s55, v1, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	s_mov_b32 s55, s47
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s65, s65, 32
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v5
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v5, s1, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s1, v1, 2
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s1, v1, 2
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s1, v1, 2
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s1, v1, 2
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s1, v1, 2
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s87
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, s1, v1, 2
	scratch_load_b32 v1, off, off offset:540 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s86
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s1, v1, 2
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x7
	buffer_load_b32 v14, v5, s[52:55], 0 offen
	buffer_load_b32 v7, v7, s[52:55], 0 offen
	buffer_load_b32 v8, v8, s[52:55], 0 offen
	buffer_load_b32 v9, v9, s[52:55], 0 offen
	buffer_load_b32 v10, v10, s[52:55], 0 offen
	buffer_load_b32 v11, v11, s[52:55], 0 offen
	buffer_load_b32 v12, v12, s[52:55], 0 offen
	buffer_load_b32 v13, v13, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s85
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v5, s1, v1, 2
	scratch_load_b32 v1, off, off offset:556 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s84
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v15, s1, v1, 2
	scratch_load_b32 v1, off, off offset:564 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s83
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s1, v1, 2
	scratch_load_b32 v1, off, off offset:572 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s1, v1, 2
	scratch_load_b32 v1, off, off offset:580 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s81
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v21, s1, v1, 2
	scratch_load_b32 v1, off, off offset:588 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s80
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v52, s1, v1, 2
	scratch_load_b32 v1, off, off offset:596 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s79
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v53, s1, v1, 2
	scratch_load_b32 v1, off, off offset:604 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s78
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v54, s1, v1, 2
	scratch_load_b32 v1, off, off offset:612 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, 0x80000000, v54, s0
	s_clause 0x7
	buffer_load_b32 v55, v5, s[52:55], 0 offen
	buffer_load_b32 v15, v15, s[52:55], 0 offen
	buffer_load_b32 v19, v19, s[52:55], 0 offen
	buffer_load_b32 v20, v20, s[52:55], 0 offen
	buffer_load_b32 v21, v21, s[52:55], 0 offen
	buffer_load_b32 v52, v52, s[52:55], 0 offen
	buffer_load_b32 v53, v53, s[52:55], 0 offen
	buffer_load_b32 v54, v54, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s77
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v5, s1, v1, 2
	scratch_load_b32 v1, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s76
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v56, s1, v1, 2
	scratch_load_b32 v1, off, off offset:628 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v56, 0x80000000, v56, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v57, s1, v1, 2
	scratch_load_b32 v1, off, off offset:636 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v57, 0x80000000, v57, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v58, s1, v1, 2
	scratch_load_b32 v1, off, off offset:644 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v58, 0x80000000, v58, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s73
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v59, s1, v1, 2
	scratch_load_b32 v1, off, off offset:652 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v59, 0x80000000, v59, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s72
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v60, s1, v1, 2
	scratch_load_b32 v1, off, off offset:660 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v60, 0x80000000, v60, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s71
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v61, s1, v1, 2
	scratch_load_b32 v1, off, off offset:668 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s70
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v62, s1, v1, 2
	scratch_load_b32 v1, off, off offset:676 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v62, 0x80000000, v62, s0
	s_clause 0x7
	buffer_load_b32 v63, v5, s[52:55], 0 offen
	buffer_load_b32 v56, v56, s[52:55], 0 offen
	buffer_load_b32 v57, v57, s[52:55], 0 offen
	buffer_load_b32 v58, v58, s[52:55], 0 offen
	buffer_load_b32 v59, v59, s[52:55], 0 offen
	buffer_load_b32 v60, v60, s[52:55], 0 offen
	buffer_load_b32 v61, v61, s[52:55], 0 offen
	buffer_load_b32 v62, v62, s[52:55], 0 offen
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s69
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v5, s1, v1, 2
	scratch_load_b32 v1, off, off offset:684 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s68
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v64, s1, v1, 2
	scratch_load_b32 v1, off, off offset:692 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v65, s1, v1, 2
	scratch_load_b32 v1, off, off offset:700 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v66, s1, v1, 2
	scratch_load_b32 v1, off, off offset:708 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s51
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s51, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v67, s1, v1, 2
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s50
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s50, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s27
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s27, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 s0, s4, s26
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s26, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v70, 0x80000000, v70, s0
	s_clause 0x7
	buffer_load_b32 v71, v5, s[52:55], 0 offen
	buffer_load_b32 v64, v64, s[52:55], 0 offen
	buffer_load_b32 v65, v65, s[52:55], 0 offen
	buffer_load_b32 v66, v66, s[52:55], 0 offen
	buffer_load_b32 v67, v67, s[52:55], 0 offen
	buffer_load_b32 v68, v68, s[52:55], 0 offen
	buffer_load_b32 v69, v69, s[52:55], 0 offen
	buffer_load_b32 v70, v70, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s65, s59
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v72, 0, v1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 689 25                        ; attention_backward.py:689:25
	ds_load_u8_d16_hi v116, v72
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v116, v72 offset:64
	ds_load_u8_d16_hi v115, v219
	ds_load_u8_d16 v114, v219 offset:64
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v115, v237
	ds_load_u8_d16_hi v113, v237 offset:64
	s_waitcnt lgkmcnt(2)
	ds_load_u8_d16_hi v114, v238
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v113, v238 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v72, v220, v1
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v6, v5, s[24:27], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v5, v5, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v72, v14, v7 offset1:1
	ds_store_2addr_stride64_b32 v72, v8, v9 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v72, v10, v11 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v72, v12, v13 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v72, v55, v15 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v72, v19, v20 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v72, v21, v52 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v72, v53, v54 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v72, v63, v56 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v72, v57, v58 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v72, v59, v60 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v72, v61, v62 offset0:22 offset1:23
	s_waitcnt vmcnt(8)
	ds_store_2addr_stride64_b32 v72, v71, v64 offset0:24 offset1:25
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b32 v72, v65, v66 offset0:26 offset1:27
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b32 v72, v67, v68 offset0:28 offset1:29
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b32 v72, v69, v70 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v98, 0x1400, v247
	v_add_nc_u32_e32 v99, 0x1800, v247
	v_add_nc_u32_e32 v100, 0x1c00, v247
	ds_load_2addr_b32 v[172:173], v73 offset1:32
	ds_load_2addr_b32 v[188:189], v73 offset0:64 offset1:96
	ds_load_2addr_b32 v[174:175], v73 offset0:128 offset1:160
	ds_load_2addr_b32 v[190:191], v73 offset0:192 offset1:224
	ds_load_2addr_b32 v[176:177], v74 offset1:32
	ds_load_2addr_b32 v[192:193], v74 offset0:64 offset1:96
	ds_load_2addr_b32 v[178:179], v74 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v74 offset0:192 offset1:224
	ds_load_2addr_b32 v[180:181], v75 offset1:32
	ds_load_2addr_b32 v[196:197], v75 offset0:64 offset1:96
	ds_load_2addr_b32 v[170:171], v75 offset0:128 offset1:160
	ds_load_2addr_b32 v[198:199], v75 offset0:192 offset1:224
	ds_load_2addr_b32 v[168:169], v76 offset1:32
	ds_load_2addr_b32 v[200:201], v76 offset0:64 offset1:96
	ds_load_2addr_b32 v[166:167], v76 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v76 offset0:192 offset1:224
	ds_load_2addr_b32 v[164:165], v98 offset1:32
	ds_load_2addr_b32 v[204:205], v98 offset0:64 offset1:96
	ds_load_2addr_b32 v[162:163], v98 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v98 offset0:192 offset1:224
	ds_load_2addr_b32 v[160:161], v99 offset1:32
	ds_load_2addr_b32 v[208:209], v99 offset0:64 offset1:96
	ds_load_2addr_b32 v[158:159], v99 offset0:128 offset1:160
	ds_load_2addr_b32 v[210:211], v99 offset0:192 offset1:224
	ds_load_2addr_b32 v[156:157], v100 offset1:32
	ds_load_2addr_b32 v[212:213], v100 offset0:64 offset1:96
	ds_load_2addr_b32 v[154:155], v100 offset0:128 offset1:160
	ds_load_2addr_b32 v[214:215], v100 offset0:192 offset1:224
	ds_load_2addr_b32 v[182:183], v247 offset1:32
	ds_load_2addr_b32 v[186:187], v247 offset0:64 offset1:96
	ds_load_2addr_b32 v[184:185], v247 offset0:128 offset1:160
	ds_load_2addr_b32 v[216:217], v247 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v99, v97
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_store_2addr_stride64_b32 v72, v14, v63 offset1:16
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v98, v97
	v_mov_b32_e32 v100, v97
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v2.h, 1, v116.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v7, v56 offset1:16
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v8, v57 offset1:16
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v9, v58 offset1:16
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v10, v59 offset1:16
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v11, v60 offset1:16
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v12, v61 offset1:16
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v13, v62 offset1:16
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v55, v71 offset1:16
	scratch_load_b32 v1, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v15, v64 offset1:16
	scratch_load_b32 v1, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v19, v65 offset1:16
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v20, v66 offset1:16
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v21, v67 offset1:16
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v52, v68 offset1:16
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v53, v69 offset1:16
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v1, v54, v70 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, 0, v1
	scratch_load_b32 v1, off, off offset:416 ; 4-byte Folded Reload
	ds_load_b128 v[7:10], v7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v15, v7, v15, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_add3_u32 v20, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v21, v10, v7, 0x7fff
	v_bfe_u32 v7, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_add3_u32 v53, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v54, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_add3_u32 v55, v14, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v56, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v56, v7, v56, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s2
	v_add3_u32 v58, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v52.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v53.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v59, v10, v7, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v54.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v55.h, s8
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v60, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v56.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v57.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v61, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v58.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v59.h, s12
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v52, v97 :: v_dual_mov_b32 v53, v98
	v_mov_b32_e32 v54, v99
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v62, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v60.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v61.h, s15
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v55, v100 :: v_dual_mov_b32 v56, v101
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v14, v14, v7, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v62.h, s16
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[60:63], off, off offset:228
	scratch_load_b128 v[64:67], off, off offset:244
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v57, v102 :: v_dual_mov_b32 v58, v103
	v_mov_b32_e32 v59, v104
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[52:59], v[60:67], v[7:14], v[52:59]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v15, v7, v15, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_add3_u32 v20, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v21, v10, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v60, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	v_add3_u32 v62, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v63, v14, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v64, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v64, v7, v64, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s2
	v_add3_u32 v66, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v60.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v67, v10, v7, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v62.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v63.h, s8
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v68, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v64.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v65.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v69, v12, v7, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v67.h, s12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[60:63], off, off offset:196
	scratch_load_b128 v[64:67], off, off offset:212
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v68.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v69.h, s15
	v_add3_u32 v71, v14, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v14.l, 0x7fff, v70.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.h, 0x7fff, v71.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[52:59], v[60:67], v[7:14], v[52:59]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v15, v7, v15, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_add3_u32 v20, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v21, v10, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v60, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	v_add3_u32 v62, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v63, v14, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v64, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v64, v7, v64, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s2
	v_add3_u32 v66, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v60.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v67, v10, v7, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v62.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v63.h, s8
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v68, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v64.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v65.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v69, v12, v7, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v67.h, s12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[60:63], off, off offset:160
	scratch_load_b128 v[64:67], off, off offset:176
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v68.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v69.h, s15
	v_add3_u32 v71, v14, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v14.l, 0x7fff, v70.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.h, 0x7fff, v71.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[52:59], v[60:67], v[7:14], v[52:59]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_add3_u32 v15, v7, v15, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_add3_u32 v20, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v21, v10, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	scratch_load_b32 v1, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v14, v14
	v_add3_u32 v60, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v12, v7, 0x7fff
	v_bfe_u32 v7, v13, 16, 1
	v_add3_u32 v62, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v63, v14, v7, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v1
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v64, v7, 16, 1
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_cmp_o_f32_e64 s11, v9, v9
	v_cmp_o_f32_e64 s12, v10, v10
	v_add3_u32 v64, v7, v64, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v65, v8, v7, 0x7fff
	v_bfe_u32 v7, v9, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s1
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s2
	v_add3_u32 v66, v9, v7, 0x7fff
	v_bfe_u32 v7, v10, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v60.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v61.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v67, v10, v7, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v62.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v63.h, s8
	s_waitcnt vmcnt(0)
	ds_load_b128 v[11:14], v1
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v7, v11, 16, 1
	v_cmp_o_f32_e64 s14, v11, v11
	v_cmp_o_f32_e64 s15, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s17, v14, v14
	v_add3_u32 v68, v11, v7, 0x7fff
	v_bfe_u32 v7, v12, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v64.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v65.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v69, v12, v7, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v66.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v67.h, s12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[60:63], off, off offset:128
	scratch_load_b128 v[64:67], off, off offset:144
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v7, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v70, v13, v7, 0x7fff
	v_bfe_u32 v7, v14, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v68.h, s14
	v_cndmask_b16 v13.h, 0x7fff, v69.h, s15
	v_add3_u32 v71, v14, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_cndmask_b16 v14.l, 0x7fff, v70.h, s16
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v15, s63, v112, -v6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v14.h, 0x7fff, v71.h, s17
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v2.h
	v_and_b16 v2.h, 1, v116.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v70, v202, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v2.h
	v_and_b16 v2.h, 1, v115.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v70, v202, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v2.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[52:59], v[60:67], v[7:14], v[52:59]
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v7, s63, v105, -v6
	v_fma_f32 v8, s63, v106, -v6
	v_fma_f32 v9, s63, v107, -v6
	v_fma_f32 v10, s63, v108, -v6
	v_fma_f32 v11, s63, v109, -v6
	v_fma_f32 v13, s63, v110, -v6
	v_fma_f32 v14, s63, v111, -v6
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v6, v52, v5
	v_sub_f32_e32 v19, v53, v5
	v_sub_f32_e32 v20, v54, v5
	v_sub_f32_e32 v21, v55, v5
	v_sub_f32_e32 v52, v56, v5
	v_sub_f32_e32 v53, v57, v5
	v_sub_f32_e32 v54, v58, v5
	v_sub_f32_e32 v55, v59, v5
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v5, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v12, 0, v5, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v5, v12, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v5, s40, v5
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v5, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v5, v11
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v7.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, 0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v6, v5, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v6, s40, v6
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v6, 16, 1
	v_cmp_o_f32_e64 s0, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v6, v11, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v6, v8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v11.h, s0
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v7, v2
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v6, 0, v6, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v8, v6, v19
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v8, s40, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v19, v8, 16, 1
	v_cmp_o_f32_e64 s1, v8, v8
	v_add3_u32 v19, v8, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b16 v2.h, 0x7fff, v19.h, s1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16_d16_hi v7, v3 offset:512
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v7, v9
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v3.h, 1, v115.l
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.h
	v_and_b16 v3.h, 1, v114.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v3.h
	v_and_b16 v3.h, 1, v114.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v8, v7, v20
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s1, 1, v3.h
	v_and_b16 v3.h, 1, v113.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v8, s40, v8
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s2, 1, v3.h
	v_and_b16 v3.h, 1, v113.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v9, v8, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s3, 1, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v19, v8, v9, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v8, v10
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v9, v8, v21
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v9, s40, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v10, v9, 16, 1
	v_cmp_o_f32_e64 s0, v9, v9
	v_add3_u32 v20, v9, v10, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v9, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v10, v9, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v10, s40, v10
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v10, 16, 1
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v10, v11, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v10, v14
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v13.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v16, v2
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v19.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v16, v3 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v10, 0, v10, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v10, v54
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s40, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v11, 16, 1
	v_cmp_o_f32_e64 s2, v11, v11
	v_add3_u32 v14, v11, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v14.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v17, v2
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v2.h, 0x7fff, v20.h, s0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s0, v6, v6
	v_bfe_u32 v14, v9, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v17, v3 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v11, 0, v11, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v9, v9
	v_add3_u32 v14, v9, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v11, v55
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s40, v15
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v15, 16, 1
	v_cmp_o_f32_e64 s3, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v15, v21, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v15, v10, 16, 1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v18, v2
	ds_store_b16_d16_hi v18, v3 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v21, v10, v15, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_bfe_u32 v15, v11, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v1
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	ds_load_b128 v[52:55], v13
	s_waitcnt vmcnt(0)
	ds_load_b128 v[56:59], v1
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v13, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v13, v5, v13, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[98:101], v1
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[102:105], v1
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v220, v117
	ds_store_b16 v220, v118 offset:128
	ds_store_b16 v220, v119 offset:256
	ds_store_b16 v220, v120 offset:384
	ds_store_b16 v220, v121 offset:512
	ds_store_b16 v220, v122 offset:640
	ds_store_b16 v220, v123 offset:768
	ds_store_b16 v220, v4 offset:896
	ds_store_b16 v220, v124 offset:1024
	ds_store_b16 v220, v125 offset:1152
	ds_store_b16 v220, v126 offset:1280
	ds_store_b16 v220, v127 offset:1408
	ds_store_b16 v220, v128 offset:1536
	ds_store_b16 v220, v129 offset:1664
	ds_store_b16 v220, v130 offset:1792
	ds_store_b16 v220, v3 offset:1920
	ds_store_b16 v220, v131 offset:2048
	ds_store_b16 v220, v132 offset:2176
	ds_store_b16 v220, v133 offset:2304
	ds_store_b16 v220, v134 offset:2432
	ds_store_b16 v220, v135 offset:2560
	ds_store_b16 v220, v136 offset:2688
	ds_store_b16 v220, v137 offset:2816
	ds_store_b16 v220, v2 offset:2944
	ds_store_b16 v220, v138 offset:3072
	ds_store_b16 v220, v139 offset:3200
	ds_store_b16 v220, v140 offset:3328
	ds_store_b16 v220, v141 offset:3456
	ds_store_b16 v220, v142 offset:3584
	ds_store_b16 v220, v143 offset:3712
	ds_store_b16 v220, v144 offset:3840
	ds_store_b16 v220, v145 offset:3968
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v108, v246 offset:512
	ds_load_u16_d16 v109, v246 offset:768
	ds_load_u16_d16 v110, v246 offset:1024
	ds_load_u16_d16 v113, v246 offset:1792
	ds_load_u16_d16 v111, v246 offset:1280
	ds_load_u16_d16 v129, v246 offset:1088
	ds_load_u16_d16 v128, v246 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v129, v246 offset:1216
	ds_load_u16_d16 v107, v246 offset:256
	ds_load_u16_d16 v106, v246
	ds_load_u16_d16 v112, v246 offset:1536
	ds_load_u16_d16_hi v108, v246 offset:640
	ds_load_u16_d16_hi v109, v246 offset:896
	ds_load_u16_d16_hi v110, v246 offset:1152
	ds_load_u16_d16 v130, v246 offset:1344
	ds_load_u16_d16 v117, v246 offset:2816
	ds_load_u16_d16 v118, v246 offset:3072
	ds_load_u16_d16 v124, v246 offset:2624
	ds_load_u16_d16 v123, v246 offset:2368
	ds_load_u16_d16 v114, v246 offset:2048
	ds_load_u16_d16 v115, v246 offset:2304
	ds_load_u16_d16 v116, v246 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v124, v246 offset:2752
	ds_load_u16_d16_hi v112, v246 offset:1664
	ds_load_u16_d16_hi v113, v246 offset:1920
	ds_load_u16_d16_hi v111, v246 offset:1408
	ds_load_u16_d16 v125, v246 offset:64
	ds_load_u16_d16_hi v107, v246 offset:384
	ds_load_u16_d16 v127, v246 offset:576
	ds_load_u16_d16 v126, v246 offset:320
	ds_load_u16_d16_hi v106, v246 offset:128
	ds_load_u16_d16 v131, v246 offset:1600
	ds_load_u16_d16 v122, v246 offset:2112
	ds_load_u16_d16 v132, v246 offset:1856
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v246 offset:192
	ds_load_u16_d16_hi v128, v246 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v127, v246 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v126, v246 offset:448
	ds_load_u16_d16_hi v130, v246 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v131, v246 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v132, v246 offset:1984
	ds_load_u16_d16_hi v117, v246 offset:2944
	ds_load_u16_d16_hi v116, v246 offset:2688
	ds_load_u16_d16_hi v115, v246 offset:2432
	ds_load_u16_d16_hi v114, v246 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v2, v12, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[106:113], v[52:59], v[89:96]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v2, v12, v2, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v2.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v2.h, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v19.l, v2.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v62.l, v2.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v13.l, v2.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v144.l, v2.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[125:132], v[52:59], v[81:88]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v125, v246 offset:2880
	ds_load_u16_d16 v119, v246 offset:3328
	ds_load_u16_d16 v126, v246 offset:3136
	ds_load_u16_d16_hi v123, v246 offset:2496
	ds_load_u16_d16_hi v122, v246 offset:2240
	ds_load_u16_d16 v120, v246 offset:3584
	ds_load_u16_d16 v121, v246 offset:3840
	ds_load_u16_d16_hi v118, v246 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v246 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v119, v246 offset:3456
	ds_load_u16_d16 v129, v246 offset:3904
	ds_load_u16_d16 v128, v246 offset:3648
	ds_load_u16_d16 v127, v246 offset:3392
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v126, v246 offset:3264
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v120, v246 offset:3712
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v121, v246 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v129, v246 offset:4032
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v128, v246 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v127, v246 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v12, v2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v52, v11, v15, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v15.l, v2.l
	v_mov_b16_e32 v14.l, v2.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v147.l, v2.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v4, v3, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v146.l, v2.l
	v_mov_b16_e32 v60.l, v2.l
	v_mov_b16_e32 v61.l, v2.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v3, v4, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v6, 16, 1
	v_bfe_u32 v4, v7, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v63.l, v2.l
	v_mov_b16_e32 v64.l, v2.l
	v_mov_b16_e32 v65.l, v2.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v3, v6, v3, 0x7fff
	v_add3_u32 v12, v7, v4, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v4.l, v2.l
	v_mov_b16_e32 v3.l, v2.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v66.l, v2.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v4.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v8, 16, 1
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s0, v8, v8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v67.l, v2.l
	v_mov_b16_e64 v153.l, v2.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v12, v8, v12, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v13.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v21.h, s3
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v12.l, v2.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v77.l, v2.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v19.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v52.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v52, v217, 16, 1
	v_cmp_o_f32_e64 s0, v217, v217
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v5, v5, v15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v2.l
	v_mov_b16_e64 v148.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v52, v217, v52, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v149.l, v2.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v5, v5
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v150.l, v2.l
	v_mov_b16_e64 v151.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v61.h, 0x7fff, v52.h, s0
	v_bfe_u32 v52, v203, 16, 1
	v_cmp_o_f32_e64 s0, v203, v203
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v152.l, v2.l
	v_mov_b16_e64 v235.l, v2.l
	v_mov_b16_e32 v54.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v52, v203, v52, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v2.l
	v_mov_b16_e32 v57.l, v2.l
	v_mov_b16_e32 v78.l, v2.l
	v_mov_b16_e64 v218.l, v2.l
	v_mov_b16_e32 v55.l, v2.l
	v_mov_b16_e32 v53.l, v2.l
	v_mov_b16_e64 v244.l, v2.l
	v_mov_b16_e32 v56.l, v2.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[89:96], v[114:121], v[98:105], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[122:129], v[98:105], v[81:88]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, 0, v1
	ds_store_b16_d16_hi v21, v2
	ds_store_b16_d16_hi v22, v4
	ds_store_b16_d16_hi v23, v3
	ds_store_b16_d16_hi v24, v19
	ds_store_b16_d16_hi v25, v15
	ds_store_b16_d16_hi v26, v14
	ds_store_b16_d16_hi v27, v13
	ds_store_b16_d16_hi v28, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.h, 0x7fff, v20.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	ds_load_b64 v[109:110], v29
	ds_load_b64 v[111:112], v49
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v4, v6, v4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v187, v187
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v6, v8, v19
	v_sub_f32_e32 v8, v10, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v10, v4, 16, 1
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v10, v4, v10, 0x7fff
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v130.h, v109.l
	v_mov_b16_e64 v134.h, v110.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, 0, v1
	ds_load_b64 v[132:133], v30
	ds_load_b64 v[138:139], v31
	ds_load_b64 v[135:136], v20
	ds_load_b64 v[106:107], v50
	ds_load_b64 v[140:141], v51
	ds_load_b64 v[142:143], v32
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v21, v2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v21, v187, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v1.l, v2.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v187, v21, 0x7fff
	v_cndmask_b16 v60.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v189, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v189, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v131.h, v138.l
	v_mov_b16_e64 v138.l, v132.h
	v_mov_b16_e64 v137.l, v107.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v189, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v137.h, v141.l
	v_mov_b16_e64 v141.l, v107.h
	v_mov_b32_e32 v107, v138
	v_mov_b16_e64 v109.l, v135.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v62.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v191, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v191, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v135.h, v139.l
	v_mov_b16_e64 v139.l, v133.h
	v_mov_b16_e64 v133.h, v140.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v191, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v140.l, v106.h
	v_mov_b16_e64 v130.l, v135.l
	v_mov_b16_e64 v135.l, v133.l
	v_mov_b16_e64 v133.l, v106.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v63.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v193, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v193, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_dual_mov_b32 v106, v109 :: v_dual_mov_b32 v109, v140
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v189, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v193, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v113, v141
	v_mov_b16_e64 v132.h, v111.l
	v_mov_b16_e64 v111.l, v142.h
	v_mov_b16_e64 v110.l, v136.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v64.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v195, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v136.h, v112.l
	v_mov_b16_e64 v112.l, v143.h
	v_mov_b32_e32 v108, v111
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v195, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v111, v139
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v52.h, s0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v139.l, v2.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v187, v60
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v197, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v203, v139
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v203, v178, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v134.l, v136.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v197, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v131.l, v132.l
	v_mov_b16_e64 v132.l, v142.l
	v_mov_b16_e64 v136.l, v143.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v138.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v66.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v199, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v199, v199
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v140.l, v2.l
	v_mov_b16_e64 v141.l, v2.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v197, v197, v66
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v21, v199, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v195, v195, v65
	v_sub_f32_e32 v193, v193, v64
	v_sub_f32_e32 v191, v191, v63
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v142.l, v2.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v67.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v201, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v201, v201
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v203, v178, v203, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v199, v199, v67
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v201, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v138.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v205, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v205, v205
	v_add3_u32 v21, v205, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v140.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	v_add3_u32 v21, v207, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v209, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v209, v209
	v_add3_u32 v21, v209, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v142.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v211, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	v_add3_u32 v21, v211, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v143.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v213, v213
	v_add3_u32 v21, v213, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v144.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v215, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v215, v215
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v3, v7, v3
	v_sub_f32_e32 v7, v9, v14
	v_sub_f32_e32 v9, v11, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v21, v215, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v205, v140
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v3, v3
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s7, v9, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v145.h, 0x7fff, v21.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_bfe_u32 v4, v3, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v2.l
	v_mov_b16_e32 v21.l, v2.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v2.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v207, v141
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v22, v2
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s0
	v_add3_u32 v3, v6, v3, 0x7fff
	v_bfe_u32 v6, v5, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v4, v173, 16, 1
	v_cmp_o_f32_e64 s0, v173, v173
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v23, v2
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s1
	v_add3_u32 v6, v5, v6, 0x7fff
	v_bfe_u32 v5, v7, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v3, v183, 16, 1
	v_add3_u32 v4, v173, v4, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v24, v2
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s2
	v_add3_u32 v5, v7, v5, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v183, v3, 0x7fff
	v_bfe_u32 v6, v177, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v25, v2
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s3
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v21.h, 0x7fff, v3.h, vcc_lo
	v_bfe_u32 v3, v185, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v26, v2
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_add3_u32 v8, v9, v8, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v175, 16, 1
	v_bfe_u32 v7, v179, 16, 1
	v_add3_u32 v3, v185, v3, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v27, v2
	v_cndmask_b16 v2.h, 0x7fff, v8.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_add3_u32 v5, v175, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v175, v175
	v_add3_u32 v6, v177, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v177, v177
	v_add3_u32 v7, v179, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v179, v179
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16_d16_hi v28, v2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v55.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v53.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v52.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v244.h, 0x7fff, v7.h, s3
	v_bfe_u32 v3, v181, 16, 1
	v_bfe_u32 v4, v171, 16, 1
	v_bfe_u32 v5, v169, 16, 1
	v_bfe_u32 v6, v167, 16, 1
	v_bfe_u32 v7, v165, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[68:69], v20
	ds_load_b64 v[233:234], v30
	ds_load_b64 v[228:229], v31
	ds_load_b64 v[71:72], v29
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v3, v181, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	v_add3_u32 v4, v171, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v171, v171
	v_add3_u32 v5, v169, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v169, v169
	v_add3_u32 v6, v167, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v167, v167
	v_add3_u32 v7, v165, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v165, v165
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[73:74], v49
	ds_load_b64 v[239:240], v50
	ds_load_b64 v[241:242], v51
	ds_load_b64 v[75:76], v32
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v57.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v56.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v14.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v7.h, s3
	v_bfe_u32 v3, v163, 16, 1
	v_bfe_u32 v4, v161, 16, 1
	v_bfe_u32 v5, v159, 16, 1
	v_bfe_u32 v6, v157, 16, 1
	v_bfe_u32 v7, v155, 16, 1
	v_add3_u32 v3, v163, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v4, v161, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v161, v161
	v_add3_u32 v5, v159, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v6, v157, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v157, v157
	v_add3_u32 v9, v155, v7, 0x7fff
	v_cmp_o_f32_e64 s3, v155, v155
	v_cndmask_b16 v19.h, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v5.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v6.h, s2
	v_cndmask_b16 v6.h, 0x7fff, v9.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v67.l, v56.h
	v_mov_b16_e32 v66.l, v57.h
	v_mov_b16_e64 v65.l, v244.h
	v_mov_b16_e32 v64.l, v52.h
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v62.l, v54.h
	v_mov_b16_e32 v60.l, v21.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e64 v248.h, v71.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v178, v178
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v71.l, v68.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v217, v217, v61
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v61.l, v55.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v4, v213, v144
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v144.l, v7.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v211, v143
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v143.l, v8.h
	v_wmma_f32_16x16x16_bf16 v[33:40], v[60:67], v[130:137], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v209, v142
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v142.l, v15.h
	v_mov_b16_e64 v141.l, v19.h
	v_mov_b16_e64 v140.l, v12.h
	v_mov_b16_e64 v139.l, v13.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v250.h, v73.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v235.h, 0x7fff, v203.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v189, v201, v138
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v138.l, v14.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v73.l, v75.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v215, v145
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v145.l, v6.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v248.l, v68.l
	v_mov_b16_e64 v249.l, v233.l
	v_mov_b16_e64 v249.h, v228.l
	v_mov_b16_e64 v250.l, v75.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[138:145], v[106:113], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v251.l, v239.l
	v_mov_b16_e64 v251.h, v241.l
	v_mov_b16_e64 v252.l, v69.l
	v_mov_b16_e64 v252.h, v72.l
	v_mov_b16_e64 v253.l, v234.l
	v_mov_b16_e64 v253.h, v229.l
	v_mov_b16_e64 v254.l, v76.l
	v_mov_b16_e64 v254.h, v74.l
	v_mov_b16_e64 v255.l, v240.l
	v_mov_b16_e64 v255.h, v242.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v20, v182, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cmp_o_f32_e64 s0, v216, v216
	v_bfe_u32 v203, v164, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[60:67], v[248:255], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v216, 16, 1
	v_add3_u32 v20, v182, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v67.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v203, v164, v203, 0x7fff
	v_cmp_o_f32_e64 s2, v164, v164
	v_add3_u32 v60, v216, v60, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_cndmask_b16 v205.h, 0x7fff, v203.h, s2
	v_cndmask_b16 v61.h, 0x7fff, v60.h, s0
	v_cmp_o_f32_e64 s0, v202, v202
	v_add3_u32 v20, v188, v20, 0x7fff
	v_bfe_u32 v201, v184, 16, 1
	v_cmp_o_f32_e64 s1, v176, v176
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v62.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v147.h, 0x7fff, v70.h, s0
	v_cndmask_b16 v62.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v190, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_add3_u32 v201, v184, v201, 0x7fff
	v_cmp_o_f32_e64 s0, v184, v184
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v211, v188, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v190, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v66.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v70, v186, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v63.l, v2.l
	v_mov_b16_e64 v207.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v63.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_add3_u32 v70, v186, v70, 0x7fff
	v_cmp_o_f32_e64 s3, v180, v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v213, v190, v63 :: v_dual_sub_f32 v54, v173, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v192, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v64.l, v2.l
	v_mov_b16_e32 v61.l, v2.l
	v_mov_b16_e32 v65.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v154, v154
	v_cndmask_b16 v64.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v194, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v194, v194
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v2.h, v60.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v228.l, v233.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v215, v192, v64
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v194, v20, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v229.l, v234.h
	v_mov_b16_e64 v241.l, v239.h
	v_mov_b16_e64 v242.l, v240.h
	v_mov_b16_e32 v72.l, v69.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v74.l, v76.h
	v_dual_mov_b32 v69, v228 :: v_dual_sub_f32 v12, v165, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v196, v20, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v68, v71
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v7.l, v2.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v75, v242
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v6.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v66.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v198, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v71, v241
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v2.l
	v_mov_b16_e32 v8.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v198, v20, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v211, v211
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v183, v21
	v_sub_f32_e32 v13, v167, v13
	v_sub_f32_e32 v15, v161, v15
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v67.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v245, v198, v67
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v200, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v198, v202, v147
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v202, v176, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v146.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_add3_u32 v202, v176, v202, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v200, v146
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v204, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v1.h, 0x7fff, v202.h, s1
	v_bfe_u32 v202, v166, 16, 1
	v_cmp_o_f32_e64 s1, v166, v166
	v_cndmask_b16 v148.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v206, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v202, v166, v202, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v64.l, v1.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v176, v1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v206, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v207.h, 0x7fff, v202.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v243, v196, v66
	v_sub_f32_e32 v196, v204, v148
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v149.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_bfe_u32 v204, v180, 16, 1
	v_cmp_o_f32_e64 s1, v156, v156
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v148.l, v205.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v208, v20, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v147.l, v207.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v204, v180, v204, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v150.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v210, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	v_cndmask_b16 v77.h, 0x7fff, v204.h, s3
	v_bfe_u32 v204, v162, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v192, v208, v150
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v210, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v162, v162
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v66.l, v77.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v204, v162, v204, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v208.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v151.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v212, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v212, v212
	v_cndmask_b16 v203.h, 0x7fff, v204.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v190, v210, v151
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v212, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v210.l, v2.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v152.h, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v214, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v212, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v214, v20, 0x7fff
	v_cndmask_b16 v212.h, 0x7fff, v201.h, s0
	v_bfe_u32 v201, v174, 16, 1
	v_cmp_o_f32_e64 s0, v174, v174
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v212.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v153.h, 0x7fff, v20.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_add3_u32 v201, v174, v201, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v214, v153
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v210.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v172, 16, 1
	v_cndmask_b16 v218.h, 0x7fff, v201.h, s0
	v_bfe_u32 v201, v168, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_cmp_o_f32_e64 s0, v168, v168
	v_add3_u32 v70, v172, v70, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v63.l, v218.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v201, v168, v201, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v60.h, v210.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v2.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v214.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v170, 16, 1
	v_cndmask_b16 v208.h, 0x7fff, v201.h, s0
	v_bfe_u32 v201, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cmp_o_f32_e64 s0, v158, v158
	v_add3_u32 v70, v170, v70, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v62.l, v214.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v204, v158, v201, 0x7fff
	v_bfe_u32 v201, v156, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v146.l, v208.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.h, 0x7fff, v70.h, vcc_lo
	v_bfe_u32 v70, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_add3_u32 v202, v156, v201, 0x7fff
	v_bfe_u32 v201, v154, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v209, v216, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v70, v160, v70, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v216, v194, v65
	v_sub_f32_e32 v194, v206, v149
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v201, v154, v201, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v67.l, v78.h
	v_mov_b16_e64 v65.l, v235.h
	v_mov_b16_e64 v61.l, v212.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s1
	v_cndmask_b16 v201.h, 0x7fff, v201.h, s2
	v_cndmask_b16 v204.h, 0x7fff, v204.h, s0
	v_cndmask_b16 v206.h, 0x7fff, v70.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[60:67], v[130:137], v[41:48]
	v_mov_b16_e64 v152.l, v202.h
	v_mov_b16_e64 v153.l, v201.h
	v_mov_b16_e64 v151.l, v204.h
	v_mov_b16_e64 v150.l, v206.h
	v_mov_b16_e64 v149.l, v203.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v70, v73
	v_mov_b32_e32 v73, v229
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v2.l
	v_mov_b16_e64 v204.l, v2.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[106:113], v[41:48]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v2.l
	v_mov_b16_e64 v201.l, v2.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[60:67], v[248:255], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v182, v2
	v_sub_f32_e32 v60, v186, v210
	v_sub_f32_e32 v2, v155, v6
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[138:145], v[68:75], v[33:40]
	v_wmma_f32_16x16x16_bf16 v[41:48], v[146:153], v[68:75], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v62, v61, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_cmp_o_f32_e64 s0, v60, v60
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v68, v170, v78
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v209, v209
	v_add3_u32 v62, v61, v62, 0x7fff
	v_bfe_u32 v61, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v69, v68, 16, 1
	v_add3_u32 v61, v60, v61, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v184, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v69, v68, v69, 0x7fff
	v_bfe_u32 v63, v60, 16, 1
	v_cmp_o_f32_e64 s1, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v60, v63, 0x7fff
	v_bfe_u32 v60, v209, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v63.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v64, v209, v60, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v172, v214
	v_sub_f32_e32 v63, v174, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v1, v1
	v_bfe_u32 v65, v60, 16, 1
	v_cmp_o_f32_e64 s3, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v60, v65, 0x7fff
	v_bfe_u32 v60, v211, 16, 1
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v66, v211, v60, 0x7fff
	v_bfe_u32 v65, v1, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s0
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s2
	v_bfe_u32 v64, v63, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v62.h, vcc_lo
	v_cndmask_b16 v62.h, 0x7fff, v66.h, s6
	v_add3_u32 v65, v1, v65, 0x7fff
	v_bfe_u32 v1, v215, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v178, v235
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v64, v63, v64, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_bfe_u32 v63, v213, 16, 1
	v_add3_u32 v1, v215, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v215, v215
	v_bfe_u32 v67, v66, 16, 1
	v_cmp_o_f32_e64 s3, v66, v66
	v_add3_u32 v63, v213, v63, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v64.h, vcc_lo
	v_cndmask_b16 v64.h, 0x7fff, v1.h, s2
	v_add3_u32 v67, v66, v67, 0x7fff
	v_bfe_u32 v1, v216, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v66, v180, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v213, v213
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s3
	v_add3_u32 v1, v216, v1, 0x7fff
	v_bfe_u32 v67, v66, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s0
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s1
	v_cmp_o_f32_e64 s0, v66, v66
	v_cmp_o_f32_e64 s2, v68, v68
	v_add3_u32 v67, v66, v67, 0x7fff
	v_bfe_u32 v66, v243, 16, 1
	v_bfe_u32 v68, v245, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v185, v55
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v243, v243
	v_add3_u32 v66, v243, v66, 0x7fff
	v_add3_u32 v68, v245, v68, 0x7fff
	v_cmp_o_f32_e64 s3, v245, v245
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v175, v53
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v53, v1, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s0
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s1
	v_cndmask_b16 v67.l, 0x7fff, v69.h, s2
	v_cndmask_b16 v67.h, 0x7fff, v68.h, s3
	v_add3_u32 v53, v1, v53, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_bfe_u32 v1, v217, 16, 1
	v_cmp_o_f32_e64 s2, v217, v217
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[60:67], v[130:137], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v177, v52
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v52, v21, 16, 1
	v_add3_u32 v1, v217, v1, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v63, v171, v56
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v56, v54, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v52, v21, v52, 0x7fff
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	v_cndmask_b16 v53.h, 0x7fff, v1.h, s2
	v_bfe_u32 v1, v55, 16, 1
	v_add3_u32 v56, v54, v56, 0x7fff
	v_cmp_o_f32_e64 s3, v54, v54
	v_bfe_u32 v54, v58, 16, 1
	v_bfe_u32 v21, v59, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v1, v55, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_bfe_u32 v55, v60, 16, 1
	v_add3_u32 v54, v58, v54, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v179, v244
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v59, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cndmask_b16 v54.l, 0x7fff, v56.h, s3
	v_add3_u32 v56, v60, v55, 0x7fff
	v_bfe_u32 v55, v193, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v181, v57
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v21.h, s0
	v_bfe_u32 v21, v191, 16, 1
	v_cmp_o_f32_e64 s6, v58, v58
	v_add3_u32 v57, v193, v55, 0x7fff
	v_bfe_u32 v55, v61, 16, 1
	v_cmp_o_f32_e64 s0, v191, v191
	v_add3_u32 v21, v191, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v61, v61
	v_cmp_o_f32_e64 s1, v60, v60
	v_add3_u32 v58, v61, v55, 0x7fff
	v_cmp_o_f32_e64 s2, v193, v193
	v_cndmask_b16 v55.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v55.h, 0x7fff, v21.h, s0
	v_bfe_u32 v1, v195, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s3
	v_bfe_u32 v21, v62, 16, 1
	v_bfe_u32 v58, v197, 16, 1
	v_bfe_u32 v59, v63, 16, 1
	v_bfe_u32 v60, v199, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s1
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s2
	v_add3_u32 v1, v195, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v195, v195
	v_add3_u32 v21, v62, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v62, v62
	v_add3_u32 v58, v197, v58, 0x7fff
	v_cmp_o_f32_e64 s1, v197, v197
	v_add3_u32 v59, v63, v59, 0x7fff
	v_cmp_o_f32_e64 s2, v63, v63
	v_add3_u32 v60, v199, v60, 0x7fff
	v_cmp_o_f32_e64 s3, v199, v199
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s6
	v_cndmask_b16 v57.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v58.l, 0x7fff, v21.h, s0
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s1
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s2
	v_cndmask_b16 v59.h, 0x7fff, v60.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v168, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v200, v200
	v_cmp_o_f32_e64 s2, v198, v198
	v_cmp_o_f32_e64 s6, v196, v196
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[52:59], v[130:137], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v166, v207
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v21, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v154, v201
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v53, v52, 16, 1
	v_cmp_o_f32_e64 s1, v52, v52
	v_add3_u32 v21, v1, v21, 0x7fff
	v_bfe_u32 v1, v200, 16, 1
	v_bfe_u32 v60, v59, 16, 1
	v_add3_u32 v53, v52, v53, 0x7fff
	v_bfe_u32 v52, v198, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v200, v1, 0x7fff
	v_add3_u32 v60, v59, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s1
	v_add3_u32 v54, v198, v52, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v164, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v53.h, 0x7fff, v54.h, s2
	v_bfe_u32 v55, v52, 16, 1
	v_cmp_o_f32_e64 s3, v52, v52
	v_cmp_o_f32_e64 s2, v192, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v55, v52, v55, 0x7fff
	v_bfe_u32 v52, v196, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v55.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v56, v196, v52, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v160, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.h, 0x7fff, v1.h, s0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v162, v203
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v52.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s6
	v_bfe_u32 v56, v55, 16, 1
	v_cmp_o_f32_e64 s1, v55, v55
	v_bfe_u32 v21, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v194, v194
	v_add3_u32 v56, v55, v56, 0x7fff
	v_bfe_u32 v55, v192, 16, 1
	v_add3_u32 v21, v1, v21, 0x7fff
	v_bfe_u32 v1, v194, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s1
	v_add3_u32 v57, v192, v55, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v158, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v1, v194, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v188, v188
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_bfe_u32 v58, v55, 16, 1
	v_cmp_o_f32_e64 s3, v55, v55
	v_cmp_o_f32_e64 s2, v59, v59
	v_bfe_u32 v59, v20, 16, 1
	v_add3_u32 v58, v55, v58, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v190, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v156, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s3
	v_add3_u32 v1, v190, v1, 0x7fff
	v_add3_u32 v59, v20, v59, 0x7fff
	v_cmp_o_f32_e64 s3, v20, v20
	v_bfe_u32 v58, v21, 16, 1
	v_cmp_o_f32_e64 s0, v21, v21
	v_cndmask_b16 v57.h, 0x7fff, v1.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v169, v14
	v_sub_f32_e32 v20, v157, v7
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v58, v21, v58, 0x7fff
	v_bfe_u32 v21, v188, 16, 1
	v_bfe_u32 v7, v13, 16, 1
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s0
	v_add3_u32 v21, v188, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v189, v189
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v189, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v163, v19
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v58.h, 0x7fff, v21.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v159, v8
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v7, v13, v7, 0x7fff
	v_add3_u32 v1, v189, v1, 0x7fff
	v_cmp_o_f32_e64 s1, v13, v13
	v_bfe_u32 v8, v187, 16, 1
	v_bfe_u32 v13, v12, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v11, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s2
	v_cndmask_b16 v59.h, 0x7fff, v59.h, s3
	v_add3_u32 v8, v187, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v187, v187
	v_add3_u32 v13, v12, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_add3_u32 v1, v11, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_bfe_u32 v12, v10, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.l, 0x7fff, v13.h, s3
	v_cmp_o_f32_e64 s1, v10, v10
	v_add3_u32 v12, v10, v12, 0x7fff
	v_bfe_u32 v13, v9, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v19, 16, 1
	v_bfe_u32 v11, v14, 16, 1
	v_bfe_u32 v10, v15, 16, 1
	v_add3_u32 v13, v9, v13, 0x7fff
	v_cmp_o_f32_e64 s3, v9, v9
	v_add3_u32 v1, v19, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s1
	v_bfe_u32 v12, v4, 16, 1
	v_add3_u32 v11, v14, v11, 0x7fff
	v_add3_u32 v10, v15, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v15, v15
	v_cndmask_b16 v11.l, 0x7fff, v1.h, vcc_lo
	v_bfe_u32 v1, v5, 16, 1
	v_add3_u32 v12, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v4, v4
	v_bfe_u32 v4, v2, 16, 1
	v_cmp_o_f32_e64 s0, v14, v14
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s2
	v_add3_u32 v1, v5, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_bfe_u32 v5, v20, 16, 1
	v_add3_u32 v4, v2, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v11.h, s0
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s3
	v_add3_u32 v5, v20, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e64 s3, v3, v3
	v_cndmask_b16 v11.h, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s1
	v_cndmask_b16 v12.l, 0x7fff, v5.h, s0
	v_cndmask_b16 v13.l, 0x7fff, v4.h, s2
	v_cndmask_b16 v13.h, 0x7fff, v2.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[52:59], v[106:113], v[41:48]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[6:13], v[106:113], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 663 37                        ; attention_backward.py:663:37
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
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
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v104, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s0, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v98, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s2, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v102, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s3, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s6, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v99, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s7, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v101, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s8, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v112, v104 :: v_dual_mov_b32 v111, v103
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s9, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v110, v102 :: v_dual_mov_b32 v109, v101
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s10, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v108, v100 :: v_dual_mov_b32 v107, v99
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s11, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v106, v98 :: v_dual_mov_b32 v105, v97
	.loc	1 609 29                        ; attention_backward.py:609:29
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
	v_add_lshl_u32 v2, s0, v0, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s0, v1, 1
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s92
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s91
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v1, 1
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v1, 1
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s90
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s89
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s0, v1, 1
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v1, 1
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s88
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s87
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v1, 1
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x6
	buffer_load_u16 v117, v2, s[44:47], 0 offen
	buffer_load_u16 v118, v3, s[44:47], 0 offen
	buffer_load_u16 v119, v4, s[44:47], 0 offen
	buffer_load_u16 v120, v5, s[44:47], 0 offen
	buffer_load_u16 v121, v6, s[44:47], 0 offen
	buffer_load_u16 v122, v7, s[44:47], 0 offen
	buffer_load_u16 v123, v8, s[44:47], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s86
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v2, s0, v1, 1
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v3, s0, v1, 1
	scratch_load_b32 v1, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v1, 1
	scratch_load_b32 v1, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v1, 1
	scratch_load_b32 v1, off, off offset:568 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s85
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s84
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s0, v1, 1
	scratch_load_b32 v1, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v1, 1
	scratch_load_b32 v1, off, off offset:584 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s83
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s82
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v1, 1
	scratch_load_b32 v1, off, off offset:592 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s0, v1, 1
	scratch_load_b32 v1, off, off offset:600 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s81
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s80
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s79
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x6
	buffer_load_u16 v124, v3, s[44:47], 0 offen
	buffer_load_u16 v125, v4, s[44:47], 0 offen
	buffer_load_u16 v126, v5, s[44:47], 0 offen
	buffer_load_u16 v127, v6, s[44:47], 0 offen
	buffer_load_u16 v128, v7, s[44:47], 0 offen
	buffer_load_u16 v129, v8, s[44:47], 0 offen
	buffer_load_u16 v130, v9, s[44:47], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s78
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v3, s0, v1, 1
	scratch_load_b32 v1, off, off offset:608 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s77
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v1, 1
	scratch_load_b32 v1, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v1, 1
	scratch_load_b32 v1, off, off offset:624 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s76
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s75
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v6, s0, v1, 1
	scratch_load_b32 v1, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v7, s0, v1, 1
	scratch_load_b32 v1, off, off offset:640 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s74
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s73
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, s0, v1, 1
	scratch_load_b32 v1, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, s0, v1, 1
	scratch_load_b32 v1, off, off offset:656 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s72
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s71
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v10, s0, v1, 1
	scratch_load_b32 v1, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v11, s0, v1, 1
	scratch_load_b32 v1, off, off offset:680 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s69
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x6
	buffer_load_u16 v131, v4, s[44:47], 0 offen
	buffer_load_u16 v132, v5, s[44:47], 0 offen
	buffer_load_u16 v133, v6, s[44:47], 0 offen
	buffer_load_u16 v134, v7, s[44:47], 0 offen
	buffer_load_u16 v135, v8, s[44:47], 0 offen
	buffer_load_u16 v136, v9, s[44:47], 0 offen
	buffer_load_u16 v137, v10, s[44:47], 0 offen
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s68
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v6, s0, v79, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v12, s0, v1, 1
	scratch_load_b32 v1, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v13, s0, v1, 1
	scratch_load_b32 v1, off, off offset:696 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s67
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s66
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v4, s0, v1, 1
	scratch_load_b32 v1, off, off offset:704 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v5, s0, v1, 1
	scratch_load_b32 v1, off, off offset:664 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s51
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s50
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x5
	buffer_load_u16 v138, v11, s[44:47], 0 offen
	buffer_load_u16 v139, v12, s[44:47], 0 offen
	buffer_load_u16 v140, v13, s[44:47], 0 offen
	buffer_load_u16 v141, v4, s[44:47], 0 offen
	buffer_load_u16 v142, v5, s[44:47], 0 offen
	buffer_load_u16 v143, v6, s[44:47], 0 offen
	v_add_nc_u32_e32 v6, s35, v232
	v_add_lshl_u32 v4, s0, v232, 1
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s70
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v5, s0, v1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 668 30                        ; attention_backward.py:668:30
	s_and_b32 vcc_lo, s13, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x4
	buffer_load_u16 v144, v4, s[44:47], 0 offen
	buffer_load_u16 v4, v2, s[44:47], 0 offen
	buffer_load_u16 v3, v3, s[44:47], 0 offen
	buffer_load_u16 v2, v5, s[44:47], 0 offen
	buffer_load_u16 v145, v6, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v220, v117
	ds_store_b16 v220, v124 offset:1024
	ds_store_b16 v220, v131 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v220, v138 offset:3072
	ds_store_b16 v221, v118
	ds_store_b16 v221, v125 offset:1024
	ds_store_b16 v221, v132 offset:2048
	s_waitcnt vmcnt(9)
	ds_store_b16 v221, v139 offset:3072
	ds_store_b16 v222, v119
	ds_store_b16 v222, v126 offset:1024
	ds_store_b16 v222, v133 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b16 v222, v140 offset:3072
	ds_store_b16 v223, v120
	ds_store_b16 v223, v127 offset:1024
	ds_store_b16 v223, v134 offset:2048
	s_waitcnt vmcnt(7)
	ds_store_b16 v223, v141 offset:3072
	ds_store_b16 v224, v121
	ds_store_b16 v224, v128 offset:1024
	ds_store_b16 v224, v135 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b16 v224, v142 offset:3072
	ds_store_b16 v225, v122
	ds_store_b16 v225, v129 offset:1024
	ds_store_b16 v225, v136 offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b16 v225, v143 offset:3072
	ds_store_b16 v226, v123
	ds_store_b16 v226, v130 offset:1024
	ds_store_b16 v226, v137 offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b16 v226, v144 offset:3072
	s_waitcnt vmcnt(3)
	ds_store_b16 v227, v4
	s_waitcnt vmcnt(2)
	ds_store_b16 v227, v3 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b16 v227, v2 offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b16 v227, v145 offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v1, off, off offset:272
	scratch_load_b128 v[52:55], off, off
	scratch_load_b128 v[56:59], off, off offset:16
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v5, 0, v1
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	ds_load_b128 v[5:8], v5
	s_waitcnt vmcnt(0)
	ds_load_b128 v[9:12], v1
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[52:59], v[5:12], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[52:55], off, off offset:32
	scratch_load_b128 v[56:59], off, off offset:48
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[5:8], v1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[9:12], v1
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[52:59], v[5:12], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[52:55], off, off offset:64
	scratch_load_b128 v[56:59], off, off offset:80
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[5:8], v1
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[9:12], v1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[52:59], v[5:12], v[105:112]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[52:55], off, off offset:96
	scratch_load_b128 v[56:59], off, off offset:112
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[5:8], v1
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[9:12], v1
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[52:59], v[5:12], v[105:112]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v5, s65, v1
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s18, v5
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v5, s31, v5
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s99, s5, vcc_lo
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s58
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v6, s65, v1
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s18, v6
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v6, s31, v6
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s97, s5, s0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v7, s65, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s18, v7
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v7, s31, v7
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s95, s5, s1
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v8, s65, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s18, v8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v8, s31, v8
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s93, s5, s2
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v9, s65, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s18, v9
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s100, s5, s3
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v10, s65, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s6, s18, v10
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v10, s31, v10
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s98, s5, s6
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v11, s65, v1
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s7, s18, v11
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v11, s31, v11
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s96, s5, s7
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v12, s65, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s18, v12
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v12, s31, v12
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s94, s5, s8
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v230, v5
	v_cmp_le_i32_e64 s0, v230, v6
	v_cmp_le_i32_e64 s1, v230, v7
	v_cmp_le_i32_e64 s2, v230, v8
	v_cmp_le_i32_e64 s3, v230, v9
	v_cmp_le_i32_e64 s6, v230, v10
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s9, s99, vcc_lo
	s_and_b32 s0, s97, s0
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v230, v11
	v_cmp_le_i32_e64 s8, v230, v12
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
	v_subrev_nc_u32_e32 v13, s29, v5
	v_subrev_nc_u32_e32 v14, s29, v6
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v5, s30, v5
	v_add_nc_u32_e32 v6, s30, v6
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v15, s29, v7
	v_subrev_nc_u32_e32 v19, s29, v8
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v7, s30, v7
	v_add_nc_u32_e32 v8, s30, v8
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v20, s29, v9
	v_subrev_nc_u32_e32 v21, s29, v10
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v9, s30, v9
	v_add_nc_u32_e32 v10, s30, v10
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v230, v13
	v_cmp_ge_i32_e64 s0, v230, v14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s9, v230, v5
	v_cmp_le_i32_e64 s10, v230, v6
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v52, s29, v11
	v_subrev_nc_u32_e32 v53, s29, v12
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v11, s30, v11
	v_add_nc_u32_e32 v12, s30, v12
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v230, v15
	v_cmp_ge_i32_e64 s2, v230, v19
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v230, v7
	v_cmp_le_i32_e64 s12, v230, v8
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v230, v20
	v_cmp_ge_i32_e64 s6, v230, v21
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v230, v9
	v_cmp_le_i32_e64 s15, v230, v10
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s0, s0, s10
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v230, v52
	v_cmp_ge_i32_e64 s8, v230, v53
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s16, v230, v11
	v_cmp_le_i32_e64 s17, v230, v12
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
	v_mov_b16_e32 v98.l, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s0, s65, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s23, s0
	v_mov_b16_e32 v101.l, v98.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s99
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:768 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_u8 v101, v[5:6], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s97
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:712 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_u8 v98, v[5:6], off
.LBB0_16:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v98.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v99.l, v98.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s95
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:720 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_u8 v99, v[5:6], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s93
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:728 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_hi_u8 v98, v[5:6], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v100.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v101.h, v100.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s100
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:736 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_hi_u8 v101, v[5:6], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s98
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:744 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_hi_u8 v100, v[5:6], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v100.l, v99.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s96
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:752 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_u8 v100, v[5:6], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s1, s94
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[5:6], off, off offset:760 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s0, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_co_u32 v5, vcc_lo, s20, v5
	v_add_co_ci_u32_e64 v6, null, s21, v6, vcc_lo
	global_load_d16_hi_u8 v99, v[5:6], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow515
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:776
	scratch_load_b32 v55, off, off offset:780
	scratch_load_b32 v56, off, off offset:784
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
	v_mov_b32_e32 v48, v40
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
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
.LBB0_30:                               ; %._crit_edge134
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
	buffer_store_b32 v41, v0, s[40:43], 0 offen
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
	buffer_store_b32 v42, v14, s[40:43], 0 offen
	buffer_store_b32 v43, v13, s[40:43], 0 offen
	v_add_lshl_u32 v11, v21, v11, 2
	s_clause 0x1
	buffer_store_b32 v44, v0, s[40:43], 0 offen
	buffer_store_b32 v45, v12, s[40:43], 0 offen
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
	buffer_store_b32 v46, v11, s[40:43], 0 offen
	buffer_store_b32 v47, v10, s[40:43], 0 offen
	v_add_lshl_u32 v7, v21, v7, 2
	s_clause 0x1
	buffer_store_b32 v48, v0, s[40:43], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 792
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 792
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27640
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 792
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 792
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_bool_runtime_outbfloat16_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 197
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
